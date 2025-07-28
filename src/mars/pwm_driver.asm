; ------------------------------------------------------------------------------
; PWM driver
; ------------------------------------------------------------------------------

	include	"mars/mars.inc"
	org	CACHE

; ------------------------------------------------------------------------------
; PWM channel structure
; ------------------------------------------------------------------------------

	rsreset
pwm.address		rs.l 1					; Address
pwm.length		rs.l 1					; Length
pwm.loop		rs.l 1					; Loop point
pwm.loop_length		rs.l 1					; Loop length
pwm.samples_left	rs.l 1					; Samples left
pwm.pan_left		rs.l 1					; Left panning
pwm.pan_right		rs.l 1					; Right panning
pwm.pitch		rs.l 1					; Pitch
pwm.sample_left		rs.l 1					; Left sample
pwm.sample_right	rs.l 1					; Right sample
pwm.pitch_counter	rs.l 1					; Pitch counter
pwm.struct_len		rs.b 0					; Size of structure

; ------------------------------------------------------------------------------
; Initial PWM channel data
; ------------------------------------------------------------------------------

PWM_CHANNEL macro
	dc.l	0						; Address
	dc.l	1						; Length
	dc.l	0						; Loop point
	dc.l	0						; Loop length
	dc.l	1						; Samples left
	dc.l	$10						; Left panning
	dc.l	$10						; Right panning
	dc.l	$800						; Pitch
	dc.l	0						; Left sample
	dc.l	0						; Right sample
	dc.l	0						; Pitch counter
	endm

; ------------------------------------------------------------------------------
; Entry points
; ------------------------------------------------------------------------------

	bra	InitPwmDriver					; Initialization
	nop
	bra	UpdatePwmDriver					; Interrupt
	nop

;------------------------------------------------------------------------------
; Initialize driver
;------------------------------------------------------------------------------

InitPwmDriver:
	mov.l	#%10101010101010101010101010101010,r0		; Initialize update sequence
	mov.l	#pwm_update_sequence,r1
	mov.l	r0,@r1

	mov.l	#SYS_REGS,r1					; Set up interrupt
	mov.b	#1,r0
	mov.w	r0,@(PWM_CLEAR,r1)
	mov.b	r0,@(INT_MASK,r1)

	mov.l	#SYS_REGS+PWM_TIMER,r0				; Set interrupt interval and panning
	mov.w	#%0000000100000101,r1
	mov.w	r1,@r0
	
	mov.l	#SYS_REGS+PWM_CYCLE,r0				; Set PWM cycle
	mov.w	#1047,r1
	mov.w	r1,@r0

	mov.l	#SYS_REGS+PWM_LEFT,r6				; Fill PWM FIFO
	mov.l	#SYS_REGS+PWM_RIGHT,r7
	mov.b	#0,r0
	mov.w	r0,@r6
	mov.w	r0,@r6
	mov.w	r0,@r6
	mov.w	r0,@r7
	mov.w	r0,@r7
	mov.w	r0,@r7

	rts
	nop

	lits

;------------------------------------------------------------------------------
; Update driver
;------------------------------------------------------------------------------

UpdatePwmDriver:
	mov.w	#FRT,r1						; Toggle FRT bit as required
	mov.b	@(TOCR,r1),r0
	xor	#2,r0
	mov.b	r0,@(TOCR,r1)

	mov.l	#SYS_REGS+PWM_CLEAR,r1				; Clear interrupt flag
	mov.w	r0,@r1

	mov.l	#pwm_update_sequence,r1				; Update sequence
	mov.l	@r1,r0
	rotr	r0
	bf/s	PwmDriverDone					; If we should not update on this interrupt, branch
	mov.l	r0,@r1

	mov.l	r2,@-r15					; Save registers
	mov.l	r6,@-r15
	mov.l	r7,@-r15
	mov.l	r4,@-r15
	mov.l	r5,@-r15
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	sts.l	macl,@-r15

	mov.b	#0,r4						; Clear sample data
	mov.b	#0,r5
	mov.b	#0,r6
	mov.b	#0,r7

	mov.l	#SYS_REGS+COMM_8,r1				; Mix PWM1
	mov.l	#pwm_channel_1,r14
	bsr	MixPwmChannel
	nop

	mov.l	#SYS_REGS+COMM_10,r1				; Mix PWM2
	mov.l	#pwm_channel_2,r14
	bsr	MixPwmChannel
	nop

	mov.l	#SYS_REGS+COMM_12,r1				; Mix PWM3
	mov.l	#pwm_channel_3,r14
	bsr	MixPwmChannel
	nop

	mov.l	#SYS_REGS+COMM_14,r1				; Mix PWM4
	mov.l	#pwm_channel_4,r14
	bsr	MixPwmChannel
	nop

	mov.w	#$400,r1					; Convert sample data
	xor	r1,r4
	xor	r1,r5
	xor	r1,r6
	xor	r1,r7
	mov.w	#$7FF,r1
	and	r1,r4
	and	r1,r5
	and	r1,r6
	and	r1,r7
	mov.w	#$200,r1
	sub	r1,r4
	sub	r1,r5
	sub	r1,r6
	sub	r1,r7
	
	mov.l	#SYS_REGS+PWM_LEFT,r0				; Sample registers
	mov.l	#SYS_REGS+PWM_RIGHT,r1
	
	lds.l	@r15+,macl					; Restore registers
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	
	mov.w	r4,@r0						; Send sample data
	mov.w	r5,@r1
	
	mov.l	@r15+,r5					; Restore registers
	mov.l	@r15+,r4

.WaitPwmFifo:
	mov.w	@r0,r2						; Is the FIFO full?
	cmp/pz	r2
	bt	.SendNextSamples				; If not, branch

	mov.b	#$18,r2						; Delay for a bit

.Delay:
	dt	r2
	bf	.Delay
	bt	.WaitPwmFifo

.SendNextSamples:
	mov.w	r6,@r0						; Send sample data
	mov.w	r7,@r1

	mov.l	@r15+,r7					; Restore registers
	mov.l	@r15+,r6
	mov.l	@r15+,r2

PwmDriverDone:
	rts
	nop

	lits

;------------------------------------------------------------------------------
; Mix PWM channel
;------------------------------------------------------------------------------
; PARAMETERS:
;	r1.l  - Queued sample data
;	r4.l  - Left channel data 1
;	r5.l  - Right channel data 1
;	r6.l  - Left channel data 2
;	r7.l  - Right channel data 2
;	r14.l - Sample variables
; RETURNS:
;	r4.l  - Mixed left channel data 1
;	r5.l  - Mixed right channel data 1
;	r6.l  - Mixed left channel data 2
;	r7.l  - Mixed right channel data 2
;------------------------------------------------------------------------------

MixPwmChannel:
	mov.w	@r1,r2						; Has a sample been queued?
	tst	r2,r2
	bt	.NoReset					; If not, branch
	mov.w	@r1,r0						; Has it suddenly changed?
	cmp/eq	r2,r0
	bf	MixPwmChannel					; If so, retrieve it again

	mov.b	#0,r0						; Clear queue
	mov.w	r0,@r1

	extu.b	r2,r0						; Get sample ID

	mov.l	#pwm_sample_table,r1				; Get sample metadata
	shll2	r0
	mov.l	@r1,r1
	shll2	r0
	add	r0,r1

	; BUG: They forgot to set the loop section length
	mov.l	@r1+,r0						; Set sample address
	mov.l	r0,@(pwm.address,r14)
	mov.l	@r1+,r0						; Set sample length
	mov.l	r0,@(pwm.length,r14)
	mov.l	r0,@(pwm.samples_left,r14)
	mov.l	@r1+,r0						; Set loop point
	mov.l	r0,@(pwm.loop,r14)
	mov.l	@r1+,r0						; Set pitch
	mov.l	r0,@(pwm.pitch,r14)
	mov.b	#0,r0						; Reset pitch counter
	mov.l	r0,@(pwm.pitch_counter,r14)

.SetPanning:
	swap.b	r2,r0						; Set left panning
	shlr2	r0
	shlr	r0
	and	#$1E,r0
	add	#2,r0
	mov.l	r0,@(pwm.pan_left,r14)

	swap.b	r2,r0						; Set right panning
	shll	r0
	and	#$1E,r0
	add	#2,r0
	mov.l	r0,@(pwm.pan_right,r14)

; ------------------------------------------------------------------------------

.NoReset:
	mov.l	@(pwm.pitch_counter,r14),r0			; Increment pitch counter
	mov.l	@(pwm.pitch,r14),r1

	mov.w	#$800,r2					; Is it time to fetch a sample?
	add	r1,r0
	mov.l	r0,@(pwm.pitch_counter,r14)
	cmp/hs	r2,r0
	bt	.GetSample					; If so, branch

	mov.l	@(pwm.sample_left,r14),r0			; Reuse previous samples
	mov.l	@(pwm.sample_right,r14),r1
	add	r0,r4
	add	r0,r6
	add	r1,r5
	rts
	add	r1,r7
	
	lits

; ------------------------------------------------------------------------------

.GetSample:
	sub	r2,r0						; Reset pitch counter
	mov.l	r0,@(pwm.pitch_counter,r14)

	mov.l	@(pwm.samples_left,r14),r0			; Get samples left
	mov.l	@(pwm.address,r14),r1				; Get sample data
	dt	r0						; Decrement samples left
	bf	.ReadSample					; If we are not at the end, branch

	mov.l	@(pwm.loop,r14),r1				; Get loop point
	tst	r1,r1
	bt	PwmDriverDone					; If it's not set, branch
	mov.l	@(pwm.loop_length,r14),r0			; Get loop section length

.ReadSample:
	mov.b	@r1+,r2						; Read sample
	mov.l	r0,@(pwm.samples_left,r14)			; Reset samples left
	mov.l	r1,@(pwm.address,r14)				; Reset sample data address

	mov	#$FFFFFF80,r0					; Fix sample
	xor	r0,r2

	mov.l	@(pwm.pan_left,r14),r1				; Mix left channel
	muls	r1,r2
	mov.l	@(pwm.sample_left,r14),r1
	sts	macl,r0
	shar	r0
	shar	r0
	shar	r0
	shar	r0
	mov.l	r0,@(pwm.sample_left,r14)
	add	r0,r6
	add	r1,r0
	shar	r0
	add	r0,r4

	mov.l	@(pwm.pan_right,r14),r1				; Mix right channel
	muls	r1,r2
	mov.l	@(pwm.sample_right,r14),r1
	sts	macl,r0
	shar	r0
	shar	r0
	shar	r0
	shar	r0
	mov.l	r0,@(pwm.sample_right,r14)
	add	r0,r7
	add	r1,r0
	shar	r0
	rts
	add	r0,r5

	lits

; ------------------------------------------------------------------------------
; Variables
; ------------------------------------------------------------------------------

	cnop 0,4

pwm_update_sequence:
	dc.l	%10101010101010101010101010101010		; Update sequence

pwm_sample_table:
	dc.l	0						; Sample table address (gets patched in)

pwm_channel_1:
	PWM_CHANNEL						; PWM1
pwm_channel_2:
	PWM_CHANNEL						; PWM2
pwm_channel_3:
	PWM_CHANNEL						; PWM3
pwm_channel_4:
	PWM_CHANNEL						; PWM4

	dcb.b	(CACHE+$400)-*, $FF
	
;------------------------------------------------------------------------------
