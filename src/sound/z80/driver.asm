; -------------------------------------------------------------------------
; Z80 sound driver
; -------------------------------------------------------------------------

	include	"sound/z80/macro_setup.inc"
	CPU 68000
	padding off
	
; -------------------------------------------------------------------------
; External data structure
; -------------------------------------------------------------------------

	rsreset
zdata.priorities	rs.w 1					; SFX priorities
zdata.sfx_bg_index	rs.w 1
zdata.music_index	rs.w 1					; Music index
zdata.sfx_index		rs.w 1					; SFX index
zdata.vibrato_env	rs.w 1					; Vibrato envelopes
zdata.volume_env	rs.w 1					; Volume envelopes
zdata.sfx_id		rs.b 1					; Starting SFX ID
			rs.b 3
zdata.music_banks	rs.w 1					; Music banks

; -------------------------------------------------------------------------
; PSG registers structure
; -------------------------------------------------------------------------

	rsreset
zpsg.noise_mode		rs.b 0					; Noise mode
zpsg.frequency		rs.w 1					; Frequency
zpsg.volume		rs.b 1					; Volume
			rs.b 1
zpsg.struct_len		rs.b 0					; Length of structure

; -------------------------------------------------------------------------
; Setup Z80
; -------------------------------------------------------------------------

	include	"sound/z80/z80.inc"
	include	"sound/z80/constants.inc"
	include	"sound/z80/variables.inc"
	include	"sound/sound_ids.inc"

	CPU Z80
	dephase
	!org 0

; -------------------------------------------------------------------------
; Set music bank
; -------------------------------------------------------------------------

SET_MUSIC_BANK macro
	ld	hl,z_music_bank					; Set music bank
	ld	a,(hl)
	ld	hl,M68K_BANK_SET
	ld	(hl),a
	rra
	ld	(hl),a
	rra
	ld	(hl),a
	rra
	ld	(hl),a
	rra
	ld	(hl),a
	rra
	ld	(hl),a
	xor	a
	ld	(hl),a
	ld	(hl),a
	ld	(hl),1
	endm

; -------------------------------------------------------------------------
; Set bank
; -------------------------------------------------------------------------

SET_BANK macro bank
	if (bank<100h)|(bank>=120h)
		fatal "Bank must point to fixed 32X cartridge space ($880000-$8FFFFF)"
	endif
	ld	hl,M68K_BANK_SET				; Set SFX bank
	xor	a
	ld	e,1
.b := bank
	rept 8
		if (.b&1)==1
			ld	(hl),e
		else
			ld	(hl),a
		endif
.b := .b>>1
	endm
	ld	(hl),1
	endm

; -------------------------------------------------------------------------
; Driver entry point
; -------------------------------------------------------------------------

DriverStart:
	di							; Disable interrupts
	di
	im	1						; Interrupt mode 1

	jp	InitDriver					; Initialize driver

; -------------------------------------------------------------------------
; Read entry from pointer table
; -------------------------------------------------------------------------

	align	8
ReadPtrTable:
	ld	c,a						; Get table offset
	ld	b,0
	add	hl,bc
	add	hl,bc

	ld	a,(hl)						; Read pointer
	inc	hl
	ld	h,(hl)
	ld	l,a
	ret

; -------------------------------------------------------------------------
; Write track FM register
; -------------------------------------------------------------------------

	align 8
WriteFmTrack:
	bit	OVERRIDE_FLAG,(ix+zsnd.flags)			; Is this track being overridden?
	ret	nz						; If so, exit

	add	a,(ix+zsnd.type)				; Add channel ID to register ID
	bit	FM_P2_TYPE,(ix+zsnd.type)			; Is this a part 2 track?
	jr	nz,WriteFm2Track				; If so, branch

; -------------------------------------------------------------------------
; Write FM register (part 1)
; -------------------------------------------------------------------------

WriteFm1:
	ld	(YM_ADDR_0),a					; Write register value
	ld	a,c
	ld	(YM_DATA_0),a
	ret

; -------------------------------------------------------------------------
; Write FM register (part 2)
; -------------------------------------------------------------------------

WriteFm2Track:
	sub	1<<FM_P2_TYPE					; Remove part 2 bit

WriteFm2:
	ld	(YM_ADDR_1),a					; Write register value
	ld	a,c
	ld	(YM_DATA_1),a
	ret

; -------------------------------------------------------------------------
; V-BLANK interrupt
; -------------------------------------------------------------------------

	org 38h
VBlankInt:
	di							; Disable interrupts
	call	.CheckUpdate					; Check update

.CheckUpdate:
	ld	a,0						; Increment counter
	add	a,80h
	ld	(.CheckUpdate+1),a
	jr	nc,.End						; If we shouldn't update, branch

	call	ProcessSoundQueue				; Process sound queue
	call	UpdateSound					; Update sound

.End:
	ret

; -------------------------------------------------------------------------
; Signature
; -------------------------------------------------------------------------

	align 8
	db	"on by MILPO"

; -------------------------------------------------------------------------
; Initialize the driver
; -------------------------------------------------------------------------

InitDriver:
	ld	sp,Z80_END					; Set stack pointer

	ld	c,(10000h)&0FFFFh				; Delay for a while

.Delay:
	ld	b,(10000h)&0FFFFh
	djnz	$
	dec	c
	jr	nz,.Delay

	call	StopSound					; Stop sound
	call	UpdatePsgRegisters				; Initialize PSG registrs

	xor	a						; Clear PSG registers
	ld	hl,psg1_regs
	ld	b,10h

.ClearPsgRegisters:
	ld	(hl),a
	inc	hl
	djnz	.ClearPsgRegisters

	ld	hl,z_pwm1_sample				; Clear PWM samples
	ld	b,8

.ClearPwmSamples:
	ld	(hl),a
	inc	hl
	djnz	.ClearPwmSamples

	ld	(z_pwm_send),a					; Clear PWM send flag

	ld	a,8						; Set initial music bank
	ld	(z_music_bank),a

	SET_MUSIC_BANK						; Set music bank

; -------------------------------------------------------------------------

.Loop:
	ei							; Enable interrupts
	nop
	nop
	jr	.Loop						; Loop

; -------------------------------------------------------------------------
; Update sound
; -------------------------------------------------------------------------

UpdateSound:
	call	UpdatePause					; Update pause
	call	UpdateTempo					; Update tempo
	call	UpdateFadeOut					; Update fade out
	call	PlayQueuedSound					; Play queued sound
	call	UpdateSfx					; Update SFX

	xor	a						; Set to music type
	ld	(z_current_sound_type),a

	SET_MUSIC_BANK						; Set music bank

	ld	ix,z_music_dac					; Leftover from regular SMPS
	;call	UpdateDacTrack

	ld	b,MUSIC_TRACK_COUNT				; Update music tracks
	ld	ix,z_music_fm1
	call	UpdateTracks

	call	UpdatePsgRegisters				; Update PSG registers
	call	SendPwmSamples					; Send PWM samples
	ret

; -------------------------------------------------------------------------
; Update SFX
; -------------------------------------------------------------------------

UpdateSfx:
	ld	a,1						; Set to SFX type
	ld	(z_current_sound_type),a

	SET_BANK SOUND_BANK_2					; Set SFX bank

	ld	ix,z_sfx_tracks					; Update SFX tracks
	ld	b,SFX_TRACK_COUNT

; -------------------------------------------------------------------------
; Update tracks
; -------------------------------------------------------------------------

UpdateTracks:
	push	bc						; Save track count

	bit	PLAY_FLAG,(ix+zsnd.flags)			; Is this track playing?
	call	nz,UpdateTrack					; If so, update it

	ld	de,zsnd.struct_len				; Next track
	add	ix,de

	pop	bc						; Restore track count
	djnz	UpdateTracks					; Loop until finished
	ret

; -------------------------------------------------------------------------
; Update track
; -------------------------------------------------------------------------

UpdateTrack:
	bit	PSG_TYPE,(ix+zsnd.type)				; Is this a PSG track?
	jp	nz,UpdatePsgTrack				; If so, branch
	bit	PWM_TYPE,(ix+zsnd.type)				; Is this a PWM track?
	jp	nz,UpdatePwmTrack				; If so, branch

; -------------------------------------------------------------------------
; Update FM track
; -------------------------------------------------------------------------

UpdateFmTrack:
	call	UpdateDuration					; Update duration
	jr	nz,.NoteGoing					; If the current note is still playing, branch

	call	ProcessTrackData				; Process track data

	bit	VOLUME_END_FLAG,(ix+zsnd.flags)			; Has the volume envelope ended?
	ret	nz						; If so, exit

	call	PrepareVibrato					; Prepare vibrato
	call	UpdatePortamento				; Update portamento
	call	UpdateVibrato					; Update vibrato
	call	UpdateFmFrequency				; Update frequency

	jp	FmKeyOn						; Set key on

; -------------------------------------------------------------------------

.NoteGoing:
	call	UpdateFmPanEnvelope				; Update panning envelope

	bit	VOLUME_END_FLAG,(ix+zsnd.flags)			; Has the volume envelope ended?
	ret	nz						; If so, exit

	call	UpdateVolumeEnvelope				; Update volume envelope

	ld	a,(ix+zsnd.staccato_timer)			; Is staccato active?
	or	a
	jr	z,.NoStaccato					; If not, branch
	dec	(ix+zsnd.staccato_timer)			; Decrement staccato timer
	jp	z,TrackKeyOff					; If it has run out, set key off

.NoStaccato:
	call	UpdatePortamento				; Update portamento

	bit	VIBRATO_END_FLAG,(ix+zsnd.flags)		; Has the vibrato envelope ended?
	ret	nz						; If so, exit
	call	UpdateVibrato					; Update vibrato

; -------------------------------------------------------------------------
; Update FM frequency
; -------------------------------------------------------------------------

UpdateFmFrequency:
	bit	OVERRIDE_FLAG,(ix+zsnd.flags)			; Is this track being overridden?
	ret	nz						; If so, exit
	bit	REST_FLAG,(ix+zsnd.flags)			; Is this track rested?
	jp	nz,.Playing					; If not, branch

.SetFrequency:
	ld	a,0A4h						; Set frequency
	ld	c,h
	rst	WriteFmTrack
	ld	a,0A0h
	ld	c,l
	rst	WriteFmTrack
	ret

; -------------------------------------------------------------------------

.Playing:
	ld	a,(ix+zsnd.type)				; Is this an FM3 track?
	cp	FM3_TYPE
	jr	nz,.SetFrequency				; If not, branch

	call	GetFm3Frequencies				; Get frequencies
	ld	b,4						; Number of operators
	ld	hl,.Registers					; FM3 frequency registers

.SetFm3Frequency:
	push	bc						; Save counter

	ld	a,(hl)						; Get register
	inc	hl
	push	hl

	ex	de,hl						; Get FM3 frequency
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ex	de,hl

	ld	l,(ix+zsnd.frequency)				; Add track frequency
	ld	h,(ix+zsnd.frequency+1)
	add	hl,bc

	push	af						; Set frequency
	ld	c,h
	call	WriteFm1
	pop	af
	sub	4
	ld	c,l
	call	WriteFm1

	pop	hl						; Restore registers
	pop	bc
	djnz	.SetFm3Frequency				; Loop until finished
	ret

; -------------------------------------------------------------------------

.Registers:
	db	0ADh
	db	0AEh
	db	0ACh
	db	0A6h

; -------------------------------------------------------------------------
; Get FM3 frequencies
; -------------------------------------------------------------------------

GetFm3Frequencies:
	ld	de,z_music_fm3_frequencies			; Music FM3 frequencies
	ld	a,(z_current_sound_type)			; Are we processing music?
	or	a
	ret	z						; If so, exit

	ld	de,z_sfx_fm3_frequencies			; SFX FM3 frequencies
	ret	p						; If we are processing SFX, exit

	ld	de,z_bg_fm3_frequencies				; Background SFX frequencies (unused)
	ret

; -------------------------------------------------------------------------
; Process track data
; -------------------------------------------------------------------------

ProcessTrackData:
	ld	e,(ix+zsnd.track_data_addr)			; Get track data address
	ld	d,(ix+zsnd.track_data_addr+1)

	res	LEGATO_FLAG,(ix+zsnd.flags)			; Reset legato flag
	res	VOLUME_END_FLAG,(ix+zsnd.flags)			; Reset volume envelope end flag

; -------------------------------------------------------------------------

ProcessNextTrackData:
	ld	a,(de)						; Get track data
	inc	de
	cp	TRACK_CMDS_START				; Is it a track command?
	jp	nc,RunTrackCommand				; If so, branch

	ex	af,af'						; Save registers
	call	TrackKeyOff					; Set key off
	call	InitFmPanEnvelope				; Initialize FM pan envelope
	ex	af,af'						; Restore registers

	bit	RAW_FREQUENCY_FLAG,(ix+zsnd.flags)		; Is raw frequency mode set?
	jp	nz,.RawFrequency				; If so, branch

	or	a						; Is a note being played?
	jp	p,.GotDuration2					; If not, branch

	sub	NOTES_START+1					; Get note ID
	jp	p,.GotNote					; If it's not a rest note, branch

	call	MuteTrack					; Mute track
	jr	.CheckPortaSpeed				; Check for portamento speed

; -------------------------------------------------------------------------

.GotNote:
	add	a,(ix+zsnd.transpose)				; Add transposition

	ld	hl,PsgFrequencies				; Get PSG frequency
	push	af
	rst	ReadPtrTable
	pop	af

	bit	PSG_TYPE,(ix+zsnd.type)				; Is this a PSG track?
	jr	nz,.GotFrequency				; If so, branch

	push	de						; Save DE

	ld	d,8						; Block accumulator
	ld	e,0Ch						; Notes per octave

	ex	af,af'						; Reset octave block
	xor	a

.GetOctave:
	ex	af,af'						; Decrement octave
	sub	e
	jr	c,.GotOctave					; If we got the octave, branch

	ex	af,af'						; Add octave block
	add	a,d
	jr	.GetOctave					; Loop until finished

	ex	af,af'						; Never actually run

.GotOctave:
	add	a,e						; Add back octave

	ld	hl,FmFrequencies				; Get FM frequency
	rst	ReadPtrTable

	ex	af,af'						; Combine octave block
	or	h
	ld	h,a

	pop	de						; Restore DE

.GotFrequency:
	ld	(ix+zsnd.frequency),l				; Set frequency
	ld	(ix+zsnd.frequency+1),h

; -------------------------------------------------------------------------

.CheckPortaSpeed:
	bit	PORTAMENTO_FLAG,(ix+zsnd.flags)			; Is portamento enabled?
	jr	nz,.GetPortaSpeed				; If so, branch

	ld	a,(de)						; Is the next byte a duration?
	or	a
	jp	p,.GotDuration					; If so, branch

	ld	a,(ix+zsnd.duration)				; Reset duration
	ld	(ix+zsnd.duration_timer),a

	jr	.Finish						; Finish processing track data

; -------------------------------------------------------------------------

.GetPortaSpeed:
	ld	a,(de)						; Get portamento speed
	inc	de
	ld	(ix+zsnd.porta_speed),a

	jr	.GetDuration					; Get duration

; -------------------------------------------------------------------------

.RawFrequency:
	ld	h,a						; Get frequency
	ld	a,(de)
	inc	de
	ld	l,a
	or	h
	jr	z,.SetFrequency					; If it's 0, branch

	ld	a,(ix+zsnd.raw_detune)				; Get detune
	ld	b,0
	or	a						; Is it negative?
	jp	p,.AddDetune					; If not, branch
	dec	b						; If so, sign extend it

.AddDetune:
	ld	c,a						; Add detune
	add	hl,bc

.SetFrequency:
	ld	(ix+zsnd.frequency),l				; Set frequency
	ld	(ix+zsnd.frequency+1),h

; -------------------------------------------------------------------------

	bit	PORTAMENTO_FLAG,(ix+zsnd.flags)			; Is portamento active?
	jr	z,.GetDuration					; If not, branch

	ld	a,(de)						; Get portamento speed
	inc	de
	ld	(ix+zsnd.porta_speed),a

; -------------------------------------------------------------------------

.GetDuration:
	ld	a,(de)						; Get duration

.GotDuration:
	inc	de						; Advance over duration value

.GotDuration2:
	call	MultiplyTempoDivider				; Multiply by tempo divider
	ld	(ix+zsnd.duration),a

; -------------------------------------------------------------------------

.Finish:
	ld	(ix+zsnd.track_data_addr),e			; Update track data address
	ld	(ix+zsnd.track_data_addr+1),d

	ld	a,(ix+zsnd.duration)				; Reset duration
	ld	(ix+zsnd.duration_timer),a

	bit	LEGATO_FLAG,(ix+zsnd.flags)			; Is legato active?
	ret	nz						; If so, exit

	xor	a						; Reset vibrato envelope
	ld	(ix+zsnd.vibrato_env_cursor),a
	ld	(ix+zsnd.vibrato_env_mult),a

	ld	(ix+zsnd.vol_env_cursor),a			; Reset volume envelope cursor

	ld	a,(ix+zsnd.staccato)				; Reset staccato
	ld	(ix+zsnd.staccato_timer),a
	ret

; -------------------------------------------------------------------------
; Multiply tempo divider
; -------------------------------------------------------------------------

MultiplyTempoDivider:
	ld	b,(ix+zsnd.tempo_divider)			; Get tempo divider
	dec	b
	ret	z						; If it's 1, branch

	ld	c,a						; Prepare to multiply

.Multiply:
	add	a,c						; Multiply
	djnz	.Multiply					; Loop until finished
	ret

; -------------------------------------------------------------------------
; Update duration
; -------------------------------------------------------------------------

UpdateDuration:
	ld	a,(ix+zsnd.duration_timer)			; Decrement duration timer
	dec	a
	ld	(ix+zsnd.duration_timer),a
	ret

; -------------------------------------------------------------------------
; Set FM key on
; -------------------------------------------------------------------------

FmKeyOn:
	ld	a,(ix+zsnd.frequency)				; Is the frequency 0?
	or	(ix+zsnd.frequency+1)
	ret	z						; If so, exit

	ld	a,(ix+zsnd.flags)				; Is legato active or is this track being overridden?
	and	(1<<OVERRIDE_FLAG)|(1<<LEGATO_FLAG)
	ret	nz						; If so, exit

	ld	a,(ix+zsnd.type)				; Set key on
	or	0F0h
	ld	c,a
	ld	a,28h
	call	WriteFm1
	ret

; -------------------------------------------------------------------------
; Set track key off
; -------------------------------------------------------------------------

TrackKeyOff:
	ld	a,(ix+zsnd.flags)				; Is legato active or is this track being overridden?
	and	(1<<OVERRIDE_FLAG)|(1<<LEGATO_FLAG)
	ret	nz						; If so, exit

; -------------------------------------------------------------------------
; Force track key off
; -------------------------------------------------------------------------

ForceTrackKeyOff:
	ld	c,(ix+zsnd.type)
	bit	PSG_TYPE, c
	ret	nz

; -------------------------------------------------------------------------
; Force FM key off
; -------------------------------------------------------------------------

ForceFmKeyOff:
	ld	a,28h						; Set key off
	call	WriteFm1

	res	VIBRATO_END_FLAG,(ix+zsnd.flags)		; Clear vibrato envelope end flag
	ret

; -------------------------------------------------------------------------
; Initialize FM pan envelope
; -------------------------------------------------------------------------

InitFmPanEnvelope:
	ld	a,(ix+zsnd.fm_pan_env_type)			; Get envelope type
	dec	a
	ret	m						; If there's no envelope set, branch
	jr	nz,RestartFmPanEnvelope				; If it's not a looping envelope, branch

	bit	LEGATO_FLAG,(ix+zsnd.flags)			; Is legato active?
	ret	nz						; If so, exit

; -------------------------------------------------------------------------
; Process FM pan envelope
; -------------------------------------------------------------------------

ProcessFmPanEnvelope:
	dec	(ix+zsnd.fm_pan_env_timer)			; Decrement delay timer
	ret	nz						; If it hasn't run out, exit
	
	push	bc						; Save registers
	push	de
	push	hl
	
	ld	a,(ix+zsnd.fm_pan_env_delay)			; Reset delay timer
	ld	(ix+zsnd.fm_pan_env_timer),a
	
	ld	a,(ix+zsnd.fm_pan_env_id)			; Get envelope
	ld	hl,FmPanEnvelopes
	rst	ReadPtrTable
	
	ld	e,(ix+zsnd.fm_pan_env_cursor)			; Get and advance cursor
	inc	(ix+zsnd.fm_pan_env_cursor)
	
	ld	a,(ix+zsnd.fm_pan_env_length)			; Has it reached the end of the envelope?
	dec	a
	cp	e
	jr	nz,.SetPanning					; If not, branch
	
	dec	(ix+zsnd.fm_pan_env_cursor)			; Hold cursor in place
	
	ld	a,(ix+zsnd.fm_pan_env_type)			; Is this a looping envelope?
	cp	2
	jr	z,.SetPanning					; If not, branch
	
	ld	(ix+zsnd.fm_pan_env_cursor),0			; Reset cursor

.SetPanning:
	ld	d,0						; Set panning
	add	hl,de
	ex	de,hl
	call	SetFmPanning
	
	pop	hl						; Restore registers
	pop	de
	pop	bc
	ret

; -------------------------------------------------------------------------
; Restart FM pan envelope
; -------------------------------------------------------------------------

RestartFmPanEnvelope:
	xor	a						; Reset cursor
	ld	(ix+zsnd.fm_pan_env_cursor),a

; -------------------------------------------------------------------------
; Update FM pan envelope
; -------------------------------------------------------------------------

UpdateFmPanEnvelope:
	ld	a,(ix+zsnd.fm_pan_env_type)			; Is this a non-looping envelope?
	sub	2
	ret	m						; If so, exit
	
	jr	ProcessFmPanEnvelope				; Process envelope

; -------------------------------------------------------------------------
; FM pan envelopes
; -------------------------------------------------------------------------

FmPanEnvelopes:
	dw	FmPanEnv_00
	dw	FmPanEnv_01
	dw	FmPanEnv_02
	dw	FmPanEnv_03

; -------------------------------------------------------------------------

FmPanEnv_00:
	db	0C0h
FmPanEnv_01:
	db	80h
FmPanEnv_02:
	db	0C0h
FmPanEnv_03:
	db	40h, 0C0h, 80h

; -------------------------------------------------------------------------
; Update volume envelope
; -------------------------------------------------------------------------

UpdateVolumeEnvelope:
	ld	a,(ix+zsnd.vol_env_id)				; Get volume envelope
	or	a
	ret	z						; If it's not set, branch
	ret	m						; If it's disabled, branch
	
	dec	a						; Get voume envelope
	ld	hl,(z_external_data+zdata.volume_env)
	rst	ReadPtrTable
	
	call	ProcessVolumeEnvelope				; Process volume envelope
	
	ld	h,(ix+zsnd.fm_tl_values+1)			; Get TL register data
	ld	l,(ix+zsnd.fm_tl_values)
	ld	de,FmTlRegisters				; Get FL registers
	ld	b,4						; Number of operators
	ld	c,(ix+zsnd.vol_env_operators)			; Get operators to affect

.SetRegisters:
	push	af						; Should this operator be affected?
	sra	c
	push	bc
	jr	nc,.SkipRegister				; If not, branch
	
	add	a,(hl)						; Apply volume envelope
	and	7Fh
	ld	c,a
	ld	a,(de)
	rst	WriteFmTrack

.SkipRegister:
	pop	bc						; Next operator
	inc	de
	inc	hl
	pop	af
	djnz	.SetRegisters					; Loop until finished
	ret

; -------------------------------------------------------------------------
; Prepare vibrato
; -------------------------------------------------------------------------

PrepareVibrato:
	bit	7,(ix+zsnd.vibrato_env_id)			; Is vibrato envelope mode set?
	ret	z						; If so, exit
	
	bit	LEGATO_FLAG,(ix+zsnd.flags)			; Is legato active?
	ret	nz						; If so, exit
	
	ld	e,(ix+zsnd.vibrato_params)			; Get vibrato parameters
	ld	d,(ix+zsnd.vibrato_params+1)
	
	push	ix						; Go to track's vibrato parameters
	pop	hl
	ld	b,0
	ld	c,zsnd.vibrato_wait
	add	hl,bc
	ex	de,hl
	
	ldi							; Set vibrato wait time
	ldi							; Set vibrato speed counter
	ldi							; Set vibrato delta
	
	ld	a,(hl)						; Set vibrato step counter
	srl	a
	ld	(de),a
	
	xor	a						; Reset value
	ld	(ix+zsnd.vibrato),a
	ld	(ix+zsnd.vibrato+1),a
	ret

; -------------------------------------------------------------------------
; Update vibrato
; -------------------------------------------------------------------------

UpdateVibrato:
	ld	a,(ix+zsnd.vibrato_env_id)			; Is vibrato enabled?
	or	a
	ret	z						; If not, exit
	
	cp	80h						; Is vibrato envelope mode set?
	jr	nz,UpdateVibratoEnvelope			; If so, branch
	
	dec	(ix+zsnd.vibrato_wait)				; Decrement wait time
	ret	nz						; If it hasn't run out, branch
	inc	(ix+zsnd.vibrato_wait)				; Hold wait time
	
	push	hl						; Get vibrato value
	ld	l,(ix+zsnd.vibrato)
	ld	h,(ix+zsnd.vibrato+1)
	
	ld	e,(ix+zsnd.vibrato_params)			; Get vibrato parameters
	ld	d,(ix+zsnd.vibrato_params+1)
	push	de
	pop	iy
	
	dec	(ix+zsnd.vibrato_speed)				; Decrement speed counter
	jr	nz,.Apply					; If it hasn't run out, branch
	ld	a,(iy+1)					; Reset speed counter
	ld	(ix+zsnd.vibrato_speed),a
	
	ld	a,(ix+zsnd.vibrato_delta)			; Add delta
	ld	c,a
	and	80h
	rlca
	neg
	ld	b,a
	add	hl,bc
	
	ld	(ix+zsnd.vibrato),l				; Update vibrato value
	ld	(ix+zsnd.vibrato+1),h

.Apply:
	pop	bc						; Apply vibrato
	add	hl,bc
	
	dec	(ix+zsnd.vibrato_steps)				; Decrement step counter
	ret	nz						; If it hasn't run out, branch
	ld	a,(iy+3)					; Reset step counter
	ld	(ix+zsnd.vibrato_steps),a
	
	ld	a,(ix+zsnd.vibrato_delta)			; Reverse delta
	neg
	ld	(ix+zsnd.vibrato_delta),a
	ret

; -------------------------------------------------------------------------
; Update vibrato envelope
; -------------------------------------------------------------------------

UpdateVibratoEnvelope:
	dec	a						; Get envelope
	ex	de,hl
	ld	hl,(z_external_data+zdata.vibrato_env)
	rst	ReadPtrTable
	
	jr	.Process					; Start processing

; -------------------------------------------------------------------------

.SetCursor:
	ld	(ix+zsnd.vibrato_env_cursor),a			; Set cursor

; -------------------------------------------------------------------------

.Process:
	push	hl						; Get envelope value
	ld	c,(ix+zsnd.vibrato_env_cursor)
	ld	b,0
	add	hl,bc
	ld	a,(hl)
	pop	hl
	
	bit	7,a						; Is it a positive value?
	jp	z,.Positive					; If so, branch
	
	cp	82h						; Is this a loop flag?
	jr	z,.Loop						; If so, branch
	cp	80h						; Is this a restart flag?
	jr	z,.Restart					; If so, branch
	cp	84h						; Is this a multiplier flag?
	jr	z,.SetMultiplier				; If so, branch
	
	ld	h,0FFh						; Is this a negative value?
	jr	nc,.StartMultiply				; If so, branch

; -------------------------------------------------------------------------
	
.End:
	set	VIBRATO_END_FLAG,(ix+zsnd.flags)		; End of envelope
	pop	hl
	ret
	
; -------------------------------------------------------------------------

.Loop:
	inc	bc						; Go to loop point
	ld	a,(bc)
	jr	.SetCursor
	
; -------------------------------------------------------------------------

.Restart:
	xor	a						; Go to beginning
	jr	.SetCursor
	
; -------------------------------------------------------------------------

.SetMultiplier:
	inc	bc						; Add multiplier
	ld	a,(bc)
	add	a,(ix+zsnd.vibrato_env_mult)
	ld	(ix+zsnd.vibrato_env_mult),a
	
	inc	(ix+zsnd.vibrato_env_cursor)			; Advance cursor
	inc	(ix+zsnd.vibrato_env_cursor)
	jr	.Process
	
; -------------------------------------------------------------------------

.Positive:
	ld	h,0						; Positive sign extension

; -------------------------------------------------------------------------

.StartMultiply:
	ld	l,a						; Get multiplier
	ld	b,(ix+zsnd.vibrato_env_mult)
	inc	b
	ex	de,hl

.Multiply:
	add	hl,de						; Multiply vibrato value
	djnz	.Multiply					; Loop until finished
	
	inc	(ix+zsnd.vibrato_env_cursor)			; Advance cursor
	ret

; -------------------------------------------------------------------------
; Update portamento
; -------------------------------------------------------------------------

UpdatePortamento:
	ld	b,0						; Get portamento speed
	ld	a,(ix+zsnd.porta_speed)
	or	a
	jp	p,.GotSpeed
	dec	b

.GotSpeed:
	ld	h,(ix+zsnd.frequency+1)				; Get frequency
	ld	l,(ix+zsnd.frequency)
	
	ld	c,a						; Add portamento speed
	add	hl,bc
	
	bit	PSG_TYPE,(ix+zsnd.type)				; Is this a PSG track?
	jr	nz,.SetFrequency				; If so, branch
	
	ex	de,hl						; Get block frequency
	ld	a,7
	and	d
	ld	b,a
	ld	c,e
	
	or	a						; Has the frequency underflown?
	ld	hl,283h
	sbc	hl,bc
	jr	c,.CheckOverflow				; If not, branch
	
	ld	hl,-57Bh					; Move down an octabe
	add	hl,de
	jr	.SetFrequency

.CheckOverflow:
	or	a						; Has the frequency overflown?
	ld	hl,508h
	sbc	hl,bc
	jr	nc,.GotFrequency				; If not, branch
	
	ld	hl,57Ch						; Move up an octave
	add	hl,de
	ex	de,hl

.GotFrequency:
	ex	de,hl						; Get resulting frequency

.SetFrequency:
	bit	PORTAMENTO_FLAG,(ix+zsnd.flags)			; Is the portamento flag set?
	ret	z						; If not, branch
	
	ld	(ix+zsnd.frequency+1),h				; Update frequency
	ld	(ix+zsnd.frequency),l
	ret

; -------------------------------------------------------------------------
; Get FM instrument
; -------------------------------------------------------------------------

GetFmInstrument:
	ld	hl,(z_music_fm_instruments)			; Get music FM instruments
	ld	a,(z_current_sound_type)			; Are we processing music?
	or	a
	jr	z,GetFmInstrumentData				; If so, branch
	
	ld	l,(ix+zsnd.sfx_fm_instruments)			; Get SFX track's FM instruments
	ld	h,(ix+zsnd.sfx_fm_instruments+1)

; -------------------------------------------------------------------------
; Get FM instrument data
; -------------------------------------------------------------------------

GetFmInstrumentData:
	xor	a						; Are we getting the 1st instrument?
	or	b
	ret	z						; If so, branch
	
	ld	de,19h						; Length of FM instrument data

.GetInstrument:
	add	hl,de						; Get next instrument
	djnz	.GetInstrument					; Loop until finished
	ret

; -------------------------------------------------------------------------
; FM registers
; -------------------------------------------------------------------------

FmRegisters:
	db	0B0h
	db	30h, 38h, 34h, 3Ch
	db	50h, 58h, 54h, 5Ch
	db	60h, 68h, 64h, 6Ch
	db	70h, 78h, 74h, 7Ch
	db	80h, 88h, 84h, 8Ch
FmTlRegisters:
	db	40h, 48h, 44h, 4Ch
FmSsgEgRegisters:
	db	90h, 98h, 94h, 9Ch

; -------------------------------------------------------------------------
; Set FM instrument registers
; -------------------------------------------------------------------------

SetFmInstrumentRegs:
	ld	de,FmRegisters					; Get FM registers
	
	ld	c,(ix+zsnd.fm_pan_ams_fms)			; Set pan/FMS/ASM
	ld	a,0B4h
	rst	WriteFmTrack
	
	call	WriteFmInstrumentReg				; Set algorithm/feeedback
	ld	(ix+zsnd.fm_algo_feedback),a
	
	ld	b,14h						; Number of remaining registers

.SetRegisters:
	call	WriteFmInstrumentReg				; Set register
	djnz	.SetRegisters					; Loop until finished
	
	ld	(ix+zsnd.fm_tl_values),l			; Set TL register data address
	ld	(ix+zsnd.fm_tl_values+1),h
	
	jp	SetFmVolume					; Set FM volume

; -------------------------------------------------------------------------
; Write FM instrument register
; -------------------------------------------------------------------------

WriteFmInstrumentReg:
	ld	a,(de)						; Get register ID
	inc	de
	ld	c,(hl)						; Get register value
	inc	hl
	rst	WriteFmTrack					; Write register
	ret

; -------------------------------------------------------------------------
; Play queued sound
; -------------------------------------------------------------------------

PlayQueuedSound:
	ld	a,(z_queued_sound)				; Get queued sound
	
	cp	SFX_START					; Is it a song?
	jp	c,PlayMusic					; If so, branch
	cp	SFX_LAST					; Is it a SFX?
	jp	c,PlaySfx					; If so, branch
	cp	0F0h						; Is it a command?
	jp	c,StopSound					; If not, branch
	cp	0FFh
	jp	nc,StopSound					; If not, branch
	
	sub	0F0h						; Get command
	ld	hl,.Commands
	rst	ReadPtrTable
	
	xor	a						; Clear priority
	ld	(z_current_priority),a
	
	jp	(hl)						; Run command

; -------------------------------------------------------------------------

.Commands:
	dw	FadeOutSound
	dw	StopSound
	dw	MutePsg
	dw	FadeOutSound
	dw	StopSound
	dw	MutePsg
	dw	FadeOutSound
	dw	StopSound
	dw	MutePsg
	dw	FadeOutSound
	dw	StopSound
	dw	MutePsg
	dw	FadeOutSound
	dw	StopSound
	dw	MutePsg
	dw	StopSound

; -------------------------------------------------------------------------
; Play music
; -------------------------------------------------------------------------

PlayMusic:
	or	a						; Is this a valid song ID?
	ret	z						; If not, exit
	
	dec	a						; Get music ID
	
	ex	af,af'						; Stop sound
	call	StopSound
	ex	af,af'
	
	push	af						; Get music bank
	ld	hl,(z_external_data+zdata.music_banks)
	add	a,l
	ld	l,a
	adc	a,h
	sub	l
	ld	h,a
	ld	a,(hl)
	ld	(z_music_bank),a
	
	SET_MUSIC_BANK						; Set music bank
	pop	af
	
	ld	hl,(z_external_data+zdata.music_index)		; Get music data address
	rst	ReadPtrTable
	
	push	hl						; Get FM instruments address
	push	hl
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	(z_music_fm_instruments),hl
	
	pop	hl						; Get music metadata
	pop	iy
	
	ld	a,(iy+5)					; Get tempo
	ld	(z_music_tempo_counter),a
	ld	(z_music_tempo),a
	
	ld	de,6						; Get track metadata address
	add	hl,de
	ld	(z_cur_track_data_init),hl
	
	ld	hl,FmTrackTypeInit				; Get FM track type array address
	ld	(z_cur_track_type_init),hl
	
	ld	de,z_music_fm_tracks				; FM tracks
	ld	b,(iy+2)					; Get FM track count
	ld	a,(iy+4)					; Get tempo divider

.InitFmTracks:
	push	bc						; Save track counter

	ld	hl,(z_cur_track_type_init)			; Set track flags, type,and tempo divider
	ldi
	ldi
	ld	(de),a
	inc	de
	ld	(z_cur_track_type_init),hl
	
	ld	hl,(z_cur_track_data_init)			; Copy track metadata
	ldi
	ldi
	ldi
	ldi
	ld	(z_cur_track_data_init),hl
	
	call	InitTrack					; Initialize track
	pop	bc						; Restore track counter
	djnz	.InitFmTracks					; Loop until finished
	
	ld	a,(iy+3)					; Get PSG track count
	or	a
	jp	z,ClearQueuedSound				; If there are none, branch
	ld	b,a
	
	ld	hl,PsgTrackTypeInit				; Get PSG track type array address
	ld	(z_cur_track_type_init),hl
	
	ld	de,z_music_psg_tracks				; PSG tracks
	ld	a,(iy+4)					; Get tempo divider

.InitPsgTracks:
	push	bc						; Save track counter

	ld	hl,(z_cur_track_type_init)			; Set track flags, type,and tempo divider
	ldi
	ldi
	ld	(de),a
	inc	de
	ld	(z_cur_track_type_init),hl
	
	ld	hl,(z_cur_track_data_init)			; Copy track metadata
	ld	bc,6
	ldir
	ld	(z_cur_track_data_init),hl
	
	call	InitTrack2					; Initialize track
	pop	bc						; Restore track counter
	djnz	.InitPsgTracks					; Loop until finished
	
	ld	hl,PwmTrackTypeInit				; Get PWM track type array address
	ld	(z_cur_track_type_init),hl
	
	ld	de,z_music_pwm1					; Start with PWM1
	ld	a,(iy+4)					; Get tempo divider
	ld	b,MUSIC_PWM_TRACK_COUNT				; Number of PWM tracks

.InitPwmTracks:
	push	bc						; Save track counter

	ld	hl,(z_cur_track_type_init)			; Set track flags, type,and tempo divider
	ldi
	ldi
	ld	(de),a
	inc	de
	ld	(z_cur_track_type_init),hl
	
	ld	hl,(z_cur_track_data_init)			; Copy track metadata
	ldi
	ldi
	ldi
	ldi
	ld	(z_cur_track_data_init),hl
	
	call	InitTrack					; Initialize track
	pop	bc						; Restore track counter
	djnz	.InitPwmTracks					; Loop until finished

; -------------------------------------------------------------------------
; Clear queued sound
; -------------------------------------------------------------------------

ClearQueuedSound:
	xor	a						; Clear queued sound
	ld	(z_queued_sound),a
	ret

; -------------------------------------------------------------------------
; Track flags and types
; -------------------------------------------------------------------------

FmTrackTypeInit:
	db	1<<PLAY_FLAG, FM1_TYPE
	db	1<<PLAY_FLAG, FM2_TYPE
	db	1<<PLAY_FLAG, FM3_TYPE
	db	1<<PLAY_FLAG, FM4_TYPE
	db	1<<PLAY_FLAG, FM5_TYPE
	db	1<<PLAY_FLAG, FM6_TYPE
PsgTrackTypeInit:
	db	1<<PLAY_FLAG, PSG1_TYPE
	db	1<<PLAY_FLAG, PSG2_TYPE
	db	1<<PLAY_FLAG, PSG3_TYPE
PwmTrackTypeInit:
	db	1<<PLAY_FLAG, PWM1_TYPE
	db	1<<PLAY_FLAG, PWM2_TYPE
	db	1<<PLAY_FLAG, PWM3_TYPE
	db	1<<PLAY_FLAG, PWM4_TYPE

; -------------------------------------------------------------------------
; Play SFX
; -------------------------------------------------------------------------

PlaySfx:
	ex	af,af'						; Set SFX bank
	SET_BANK SOUND_BANK_2
	ex	af,af'
	
	sub	2Ah						; Get SFX ID
	ex	af,af'
	
	xor	a						; Set sound type to SFX
	ld	hl,(z_external_data+zdata.sfx_index)		; Get SFX index address
	ld	(z_current_sound_type),a
	
	ex	af,af'						; Get SFX data
	rst	ReadPtrTable
	
	push	hl						; Get FM instruments
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	(z_sfx_fm_instruments),hl
	
	xor	a						; Clear end flag
	ld	(z_end_flag),a
	
	pop	hl						; Get SFX metadata
	push	hl
	pop	iy
	
	ld	a,(iy+2)					; Set tempo divider
	ld	(z_sfx_tempo_divider),a
	
	ld	de,4						; Get track metadata
	add	hl,de
	
	ld	b,(iy+3)					; Get track count

.InitTracks:
	push	bc						; Save track counter
	
	push	hl						; Get SFX and music track
	inc	hl
	ld	c,(hl)
	call	GetSfxTrack
	
	set	OVERRIDE_FLAG,(hl)				; Override music track
	
	; BUG: Background SFX support was removed, so this is pointless.
	push	ix						; Use SFX track
	
	ld	a,(z_current_sound_type)			; Are we processing SFX?
	or	a
	jr	z,.GotTrack					; If so, branch
	
	pop	hl						; Use background SFX track
	push	iy

.GotTrack:
	pop	de						; Get track
	
	pop	hl						; Copy flags
	ldi
	
	; BUG: The track type hasn't been copied over yet, it should be
	; reading from HL, not DE. Not that it matters,as SFX never
	; even use FM3.
	ld	a,(de)						; Is this an FM3 track?
	cp	FM3_TYPE
	call	z,DisableSpecialFm3				; If so, disable special FM3 mode
	
	ldi							; Copy track type
	
	ld	a,(z_sfx_tempo_divider)				; Set tempo divider
	ld	(de),a
	inc	de
	
	ldi							; Copy track metadata
	ldi
	ldi
	ldi
	
	call	InitTrack					; Initialize track
	
	bit	PLAY_FLAG,(ix+zsnd.flags)			; Is this track playing?
	jr	z,.GetInstruments				; If not, branch
	
	; BUG: Background SFX support was removed, so IY remains to be the
	; SFX metadata address, which is in ROM. This is pointless.
	ld	a,(ix+zsnd.type)				; Does the track type match with the background SFX's?
	cp	(iy+zsnd.type)
	jr	nz,.GetInstruments				; If not, branch
	
	set	OVERRIDE_FLAG,(iy+zsnd.flags)			; Override background SFX track

.GetInstruments:
	push	hl						; Get FM instruments address
	ld	hl,(z_sfx_fm_instruments)
	
	; BUG: Background SFX support was removed, so this is pointless.
	ld	a,(z_current_sound_type)
	or	a
	jr	z,.SetInstruments
	
	push	iy						; Get background SFX FM instruments address
	pop	ix

.SetInstruments:
	ld	(ix+zsnd.sfx_fm_instruments),l			; Set FM instruments address
	ld	(ix+zsnd.sfx_fm_instruments+1),h
	
	call	TrackKeyOff					; Set key off
	
	bit	PSG_TYPE,(ix+zsnd.type)				; Is this a PSG track?
	call	z,DisableFmSsgEg				; If not, disable SSG-EG
	
	pop	hl						; Get next track
	pop	bc						; Restore track counter
	djnz	.InitTracks					; Loop until finished
	
	jp	ClearQueuedSound				; Clear queued sound

; -------------------------------------------------------------------------
; Get SFX track
; -------------------------------------------------------------------------

GetSfxTrack:
	bit	PSG_TYPE, c					; Is this a PSG track?
	jr	nz,.PsgTrack					; If som branch
	
	ld	a,c						; Is this a part 2 track?
	bit	FM_P2_TYPE,a
	jr	z,.FmTrack					; If not, branch
	
	dec	a						; Make FM track type linear
	jr	.FmTrack

.PsgTrack:
	ld	a,1Fh						; Mute PSG track
	push	bc
	call	MutePsgTrack
	pop	bc
	
	ld	a,0FFh						; Mute noise
	ld	(psg4_regs+zpsg.volume),a
	
	ld	a,c						; Get PSG track
	srl	a
	srl	a
	srl	a
	srl	a
	srl	a
	add	a,2						; Undo FM track offset

.FmTrack:
	sub	2						; Get FM track
	
	ld	(z_sfx_track_id),a				; Set track ID
	
	push	af						; Get SFX track
	ld	hl,SfxTracks
	rst	ReadPtrTable
	push	hl
	pop	ix
	pop	af
	
	; This was removed, but the SFX play routine still refers to IY,
	; although the sound type is never set to background SFX, so it
	; still goes unused.
	;push	af
	;ld	hl,SfxBgTracks
	;rst	ReadPtrTable
	;push	hl
	;pop	iy
	;pop	af
	
	ld	hl,SfxMusicTracks				; Get music track
	rst	ReadPtrTable
	ret

; -------------------------------------------------------------------------
; Initialize track
; -------------------------------------------------------------------------

InitTrack:
	ex	af,af'						; Reset vibrato type and instrument ID
	xor	a
	ld	(de),a
	inc	de
	ld	(de),a
	inc	de
	ex	af,af'

; -------------------------------------------------------------------------

InitTrack2:
	ex	de,hl						; Set call stack base
	ld	(hl),zsnd.call_stack_base
	inc	hl
	ld	(hl),0C0h					; Set pan/AMS/FMS
	inc	hl
	ld	(hl),1						; Set duration
	
	ld	b,zsnd.struct_len-zsnd.duration			; Remaining length

.ClearTrack:
	inc	hl						; Clear track variables
	ld	(hl),0
	djnz	.ClearTrack					; Loop until finished
	
	inc	hl						; End of track
	ex	de,hl
	ret

; -------------------------------------------------------------------------
; SFX tracks
; -------------------------------------------------------------------------

SfxTracks:
	dw	z_sfx_fm4
	dw	z_sfx_fm4
	dw	z_sfx_fm5
	dw	z_sfx_fm6
	dw	z_sfx_psg2
	dw	z_sfx_psg2
	dw	z_sfx_psg3
	dw	z_sfx_psg3
	
; -------------------------------------------------------------------------
; SFX associated music tracks
; -------------------------------------------------------------------------

SfxMusicTracks:
	dw	z_music_fm4
	dw	z_music_fm4
	dw	z_music_fm5
	dw	z_music_fm6
	dw	z_music_psg2
	dw	z_music_psg2
	dw	z_music_psg3
	dw	z_music_psg3

; -------------------------------------------------------------------------
; Update pause
; -------------------------------------------------------------------------

UpdatePause:
	ld	hl,z_paused					; Is sound paused?
	ld	a,(hl)
	or	a
	ret	z						; If not, exit
	jp	m,.Unpause					; If we are unpausing, branch
	
	pop	de						; Don't return to caller
	
	dec	a						; Are we already paused?
	ret	nz						; If so, exit
	
	ld	(hl),2						; Mark as paused
	jp	MuteSound					; Mute sound
	
; -------------------------------------------------------------------------

.Unpause:
	xor	a						; Clear paused flag
	ld	(hl),a
	
	ld	a,(z_fade_timer)				; Was sound being faded out?
	or	a
	jp	nz,StopSound					; If so, just stop all sound
	
	ld	ix,z_music_fm_tracks				; Music FM tracks
	ld	b,MUSIC_FM_TRACK_COUNT

.UnpauseMusicFmTracks:
	ld	a,(z_pause_command)				; Did a track send a pause command?
	or	a
	jr	nz,.UnmuteMusicFmTrack				; If so, branch
	
	bit	PLAY_FLAG,(ix+zsnd.flags)			; Is this track playing?
	jr	z,.NextMusicFmTrack				; If not, branch

.UnmuteMusicFmTrack:
	ld	c,(ix+zsnd.fm_pan_ams_fms)			; Unmute track
	ld	a,0B4h
	rst	WriteFmTrack

.NextMusicFmTrack:
	ld	de,zsnd.struct_len				; Next track
	add	ix,de
	djnz	.UnpauseMusicFmTracks				; Loop until finished
	
	ld	ix,z_sfx_tracks					; SFX tracks
	ld	b,SFX_TRACK_COUNT

.UnpauseSfxTracks:
	bit	PLAY_FLAG,(ix+zsnd.flags)			; Is this track playing?
	jr	z,.NextSfxTrack					; If not, branch
	bit	PSG_TYPE,(ix+zsnd.type)				; Is this a PSG track?
	jr	nz,.NextSfxTrack				; If so, branch
	
	ld	c,(ix+zsnd.fm_pan_ams_fms)			; Unmute track
	ld	a,0B4h
	rst	WriteFmTrack

.NextSfxTrack:
	ld	de,zsnd.struct_len				; Next track
	add	ix,de
	djnz	.UnpauseSfxTracks				; Loop until finished
	ret

; -------------------------------------------------------------------------
; Fade sound out
; -------------------------------------------------------------------------

FadeOutSound:
	ld	a,28h						; Set fade timer
	ld	(z_fade_timer),a
	ld	a,6						; Set fade delay
	ld	(z_fade_delay_timer),a
	ld	(z_fade_delay),a

; -------------------------------------------------------------------------
; Stop PSG tracks
; -------------------------------------------------------------------------

StopPsgTracks:
	xor	a						; Stop PSG1 and PSG2
	ld	(z_music_psg1+zsnd.flags),a
	ld	(z_music_psg2+zsnd.flags),a
	
	jp	MutePsg						; Mute PSG

; -------------------------------------------------------------------------
; Update fade out
; -------------------------------------------------------------------------

UpdateFadeOut:
	ld	hl,z_fade_timer					; Is sound being faded out?
	ld	a,(hl)
	or	a
	ret	z						; If not, exit
	
	call	m,StopPsgTracks					; Stop PSG, if set to
	res	7,(hl)						; Clear PSG stop flag
	
	ld	a,(z_fade_delay_timer)				; Decrement delay timer
	dec	a
	jr	z,.Update					; If it has run out, branch
	ld	(z_fade_delay_timer),a
	ret
	
; -------------------------------------------------------------------------

.Update:
	ld	a,(z_fade_delay)				; Reset delay timer
	ld	(z_fade_delay_timer),a
	
	ld	a,(z_fade_timer)				; Decrement fade timer
	dec	a
	ld	(z_fade_timer),a
	jr	z,StopSound					; If it has run out, stop sound
	
	ld	hl,z_fm_fade_volume				; Fade FM out
	inc	(hl)
	
	ld	ix,z_music_fm_tracks				; Music FM tracks
	ld	b,MUSIC_FM_TRACK_COUNT

.StopFmTracks:
	bit	PLAY_FLAG,(ix+zsnd.flags)			; Is this track playing?
	jr	z,.NextFmTrack					; If not, branch
	bit	OVERRIDE_FLAG,(ix+zsnd.flags)			; Is this track being overridden?
	jr	nz,.NextFmTrack					; If so, branch
	
	push	bc						; Update FM volume
	call	SetFmVolume
	pop	bc

.NextFmTrack:
	ld	de,zsnd.struct_len				; Next track
	add	ix,de
	djnz	.StopFmTracks					; Loop until finished
	ret

; -------------------------------------------------------------------------
; Stop sound
; -------------------------------------------------------------------------

StopSound:
	ld	hl,z_clear_vars					; Clear variables
	ld	de,z_clear_vars+1
	ld	bc,(z_clear_vars_end-z_clear_vars)-1
	ld	(hl),0
	ldir
	
	ld	ix,FmTrackTypeInit				; Music FM tracks
	ld	b,MUSIC_FM_TRACK_COUNT

.StopFmTracks:
	push	bc						; Stop FM track
	call	MuteFmTrack
	call	DisableFmSsgEg
	inc	ix
	inc	ix
	pop	bc
	
	djnz	.StopFmTracks					; Loop until finished
	
	ld	b,7						; Reset fading
	xor	a
	ld	(z_pwm_send),a
	ld	(z_fm_fade_volume),a
	ld	(z_fade_timer),a
	
	call	MutePsg						; Mute PSG
	
	ld	c,0						; Disable DAC
	ld	a,2Bh
	call	WriteFm1

; -------------------------------------------------------------------------
; Disable special FM3 mode
; -------------------------------------------------------------------------

DisableSpecialFm3:
	ld	a,0Fh						; Disable special FM3 mode
	ld	(z_fm_reg_27),a
	ld	c,a
	ld	a,27h
	call	WriteFm1
	
	jp	ClearQueuedSound				; Clear queued sound

; -------------------------------------------------------------------------
; Disable SSG-EG
; -------------------------------------------------------------------------

DisableFmSsgEg:
	ld	a,90h						; Clear SSG-EG registers
	ld	c,0
	jp	SetFmOperators

; -------------------------------------------------------------------------
; Mute sound
; -------------------------------------------------------------------------

MuteSound:
	call	MutePsg						; Mute PSG
	call	UpdatePsgRegisters
	
	push	bc						; Save registers
	push	af
	
	ld	b,3						; 3 part 1 channels
	ld	a,0B4h						; Pan/AMS/FMS register
	ld	c,0

.MuteFmPart1:
	push	af						; Mute channel
	call	WriteFm1
	pop	af
	inc	a						; Next channel
	djnz	.MuteFmPart1					; Loop until finished
	
	ld	b,3						; 3 part 2 channels
	ld	a,0B4h						; Pan/AMS/FMS register

.MuteFmPart2:
	push	af						; Mute channel
	call	WriteFm2
	pop	af
	inc	a						; Next channel
	djnz	.MuteFmPart2					; Loop until finished
	
	ld	c,0						; Key off value
	ld	b,6+1						; Set key off for all channels
	ld	a,28h						; Key off register

.KeyOff:
	push	af						; Set key off
	call	WriteFm1
	inc	c						; Next channel
	pop	af
	djnz	.KeyOff						; Loop until finished
	
	pop	af						; Restore registers
	pop	bc
	ret

; -------------------------------------------------------------------------
; Mute PSG
; -------------------------------------------------------------------------

MutePsg:
	push	bc						; Save registers
	push	hl
	push	de
	
	ld	b,4						; Number of PSG channels
	ld	a,9Fh						; PSG1 mute
	ld	hl,psg1_regs+zpsg.volume			; PSG registers
	ld	de,zpsg.struct_len				; Length of PSG register set

.SetRegisters:
	ld	(hl),a						; Mute PSG
	add	a,20h						; Next channel
	add	hl,de
	djnz	.SetRegisters					; Loop until finished
	
	pop	de						; Restore registers
	pop	hl
	pop	bc
	
	jp	ClearQueuedSound				; Clear queued sound

; -------------------------------------------------------------------------
; Update tempo
; -------------------------------------------------------------------------

UpdateTempo:
	ld	a,(z_music_tempo)				; Increment tempo counter
	ld	hl,z_music_tempo_counter
	add	a,(hl)
	ld	(hl),a
	ret	nc						; If it hasn't overflown, exit
	
	ld	hl,z_music_tracks+zsnd.duration_timer		; Tracks
	ld	de,zsnd.struct_len
	ld	b,MUSIC_TRACK_COUNT

.DelayTracks:
	inc	(hl)						; Delay track by 1 frame
	add	hl,de						; Next track
	djnz	.DelayTracks					; Loop until finished
	ret

; -------------------------------------------------------------------------
; Process sound queue
; -------------------------------------------------------------------------

ProcessSoundQueue:
	ld	a,r						; Save R register
	ld	(z_z80_r),a
	
	ld	de,z_sound_queue				; Sound queue
	ld	b,3

.Loop:
	ld	a,(de)						; Get queued sound ID
	ld	c,a
	or	a
	jr	z,.SkipSound					; If it's 0, branch
	jp	m,.Finish					; If it's negative, branch
	
	sub	2Ah						; Is this a SFX?
	jr	c,.Finish					; If not, branch
	
	ld	hl,(z_external_data+zdata.priorities)		; Get sound priority
	add	a,l
	ld	l,a
	adc	a,h
	sub	l
	ld	h,a
	
	ld	a,(z_current_priority)				; Is it higher priority than the current one?
	cp	(hl)
	jr	z,.QueueSound					; If so, branch
	jr	nc,.SkipSound					; If not, branch

.QueueSound:
	ld	a,c						; Queue sound
	ld	(z_queued_sound),a
	ld	a,(hl)						; Set current priority
	ld	(z_current_priority),a

.SkipSound:
	xor	a						; Clear queue slot
	ld	(de),a
	
	inc	de						; Next queue slot
	djnz	.Loop						; Loop until finished
	ret
	
; -------------------------------------------------------------------------

.Finish:
	ld	a,c						; Queue sound
	ld	(z_queued_sound),a
	
	xor	a						; Clear priority
	ld	(z_current_priority),a
	
	ld	de,z_sound_queue				; Clear sound queue
	ld	(de),a
	inc	de
	ld	(de),a
	inc	de
	ld	(de),a
	ret

; -------------------------------------------------------------------------
; Mute FM track
; -------------------------------------------------------------------------

MuteFmTrack:
	call	SetMaxFmSustainRelease				; Set maximum sustain and release rates
	
	ld	a,40h						; Set minimum volume
	ld	c,7Fh
	call	SetFmOperators
	
	ld	c,(ix+zsnd.type)				; Force key off
	jp	ForceFmKeyOff

; -------------------------------------------------------------------------
; Set maximum sustain and release rates
; -------------------------------------------------------------------------

SetMaxFmSustainRelease:
	ld	a,80h						; Sustain/release rates
	ld	c,0FFh						; Maximum value

; -------------------------------------------------------------------------
; Set FM operators
; -------------------------------------------------------------------------

SetFmOperators:
	ld	b,4						; Number of operators

.SetRegisters:
	push	af						; Set operator register
	rst	WriteFmTrack
	pop	af
	add	a,4						; Next operator
	djnz	.SetRegisters					; Loop until finished
	ret

; -------------------------------------------------------------------------
; Frequency tables
; -------------------------------------------------------------------------

PsgFrequencies:
	dw	3FFh, 3FFh, 3FFh, 3FFh, 3FFh, 3FFh, 3FFh, 3FFh, 3FFh, 3F7h, 3BEh, 388h
	dw	356h, 326h, 2F9h, 2CEh, 2A5h, 280h, 25Ch, 23Ah, 21Ah, 1FBh, 1DFh, 1C4h
	dw	1ABh, 193h, 17Dh, 167h, 153h, 140h, 12Eh, 11Dh, 10Dh, 0FEh, 0EFh, 0E2h
	dw	0D6h, 0C9h, 0BEh, 0B4h, 0A9h, 0A0h, 097h, 08Fh, 087h, 07Fh, 078h, 071h
	dw	06Bh, 065h, 05Fh, 05Ah, 055h, 050h, 04Bh, 047h, 043h, 040h, 03Ch, 039h
	dw	036h, 033h, 030h, 02Dh, 02Bh, 028h, 026h, 024h, 022h, 020h, 01Fh, 01Dh
	dw	01Bh, 01Ah, 018h, 017h, 016h, 015h, 013h, 012h, 011h, 010h, 000h, 000h
	
FmFrequencies:
	dw	284h, 2ABh, 2D3h, 2FEh, 32Dh, 35Ch, 38Fh, 3C5h, 3FFh, 43Ch, 47Ch, 4C0h

; -------------------------------------------------------------------------
; Run track command
; -------------------------------------------------------------------------

RunTrackCommand:
	ld	hl,TrackCommandFinished				; Return address

RunTrackCommand2:
	push	hl						; Push return address
	
	sub	0E0h						; Get command handler
	ld	hl,TrackCommands
	rst	ReadPtrTable
	ld	a,(de)						; Get first parameter
	jp	(hl)						; Run command
	
TrackCommandFinished:
	inc	de						; Process next set of track data
	jp	ProcessNextTrackData

; -------------------------------------------------------------------------

TrackCommands:
	dw	TrackCmd_FmPanning 
	dw	TrackCmd_PortamentoSpeed
	dw	TrackCmd_Communication
	dw	TrackCmd_MuteStopFm
	dw	TrackCmd_FmPanEnvelope
	dw	TrackCmd_FmPwmVolume2
	dw	TrackCmd_FmPwmVolume
	dw	TrackCmd_Legato
	dw	TrackCmd_Staccato
	dw	TrackCmd_FmAmsFms
	dw	TrackCmd_Null
	dw	TrackCmd_Loop0
	dw	TrackCmd_PsgVolume
	dw	TrackCmd_FmTrackRegister
	dw	TrackCmd_Fm1Register
	dw	TrackCmd_FmInstrument
	dw	TrackCmd_Vibrato
	dw	TrackCmd_ChooseVibratoEnvelope
	dw	TrackCmd_Stop
	dw	TrackCmd_PsgNoise
	dw	TrackCmd_VibratoEnvelope
	dw	TrackCmd_PsgInstrument
	dw	TrackCmd_Jump
	dw	TrackCmd_Loop
	dw	TrackCmd_Call
	dw	TrackCmd_Return
	dw	TrackCmd_TempoDivider
	dw	TrackCmd_Transpose
	dw	TrackCmd_Portamento
	dw	TrackCmd_RawFrequency
	dw	TrackCmd_SpecialFm3
	dw	TrackCmd_ExtendedCmd
	
ExtendedTrackCmds:
	dw	TrackCmd_Tempo
	dw	TrackCmd_PlaySound
	dw	TrackCmd_PauseMusic
	dw	TrackCmd_CopyData
	dw	TrackCmd_TempoDividerAll
	dw	TrackCmd_FmSsgEg
	dw	TrackCmd_FmVolumeEnvelope

; -------------------------------------------------------------------------
; Null track command
; -------------------------------------------------------------------------

TrackCmd_Null:
	dec	de
	ret

; -------------------------------------------------------------------------
; Set FM panning
; -------------------------------------------------------------------------

SetFmPanning:
TrackCmd_FmPanning:
	ld	c,00111111b					; Mask out panning bits

; -------------------------------------------------------------------------

SetFmPanAmsFmsRegister:
	ld	a,(ix+zsnd.fm_pan_ams_fms)			; Combine new bits
	and	c
	ex	de,hl
	or	(hl)
	ld	(ix+zsnd.fm_pan_ams_fms),a
	
	ld	c,a						; Set pan/AMS/FMS
	ld	a,0B4h
	rst	WriteFmTrack
	ex	de,hl
	ret

; -------------------------------------------------------------------------
; Set AMS/FMS
; -------------------------------------------------------------------------

TrackCmd_FmAmsFms:
	ld	c,a						; Set LFO
	ld	a,22h
	call	WriteFm1
	
	inc	de						; Set AMS/FMS
	ld	c,11000000b
	jr	SetFmPanAmsFmsRegister

; -------------------------------------------------------------------------
; Set portamento speed
; -------------------------------------------------------------------------

TrackCmd_PortamentoSpeed:
	ld	(ix+zsnd.porta_speed),a				; Set portamento speed
	ret

; -------------------------------------------------------------------------
; Set communication flag
; -------------------------------------------------------------------------

TrackCmd_Communication:
	ld	(z_communication),a				; Set communication flag
	ret

; -------------------------------------------------------------------------
; Mute and stop FM track
; -------------------------------------------------------------------------

TrackCmd_MuteStopFm:
	call	MuteFmTrack					; Mute track
	jp	TrackCmd_Stop					; Stop track

; -------------------------------------------------------------------------
; Set pan envelope
; -------------------------------------------------------------------------

TrackCmd_FmPanEnvelope:
	push	ix						; Get pan envelope parameters
	pop	hl
	ld	bc,zsnd.fm_pan_env_type
	add	hl,bc
	ex	de,hl
	
	ld	bc,zsnd.fm_pan_env_timer-zsnd.fm_pan_env_type	; Set pan envelope parameters
	ldir
	
	ld	a,1						; Set pan envelope delay timer
	ld	(de),a
	ex	de,hl
	dec	de
	ret

; -------------------------------------------------------------------------
; Add FM/PWM volume
; -------------------------------------------------------------------------

TrackCmd_FmPwmVolume2:
	inc	de						; Add volume
	add	a,(ix+zsnd.volume)
	ld	(ix+zsnd.volume),a
	ld	a,(de)

; -------------------------------------------------------------------------

TrackCmd_FmPwmVolume:
	bit	PSG_TYPE,(ix+zsnd.type)				; Is this a PSG track?
	ret	nz						; If so, exit
	
	add	a,(ix+zsnd.volume)				; Add volume
	ld	(ix+zsnd.volume),a
	
	bit	PWM_TYPE,(ix+zsnd.type)				; Is this a PWM track?
	jp	nz,SetPwmVolume					; If so, branch

; -------------------------------------------------------------------------
; Set FM volume
; -------------------------------------------------------------------------

SetFmVolume:
	push	de						; Save registers
	
	ld	de,FmTlRegisters				; TL registers
	ld	l,(ix+zsnd.fm_tl_values)
	ld	h,(ix+zsnd.fm_tl_values+1)
	ld	b,4

.Loop:
	ld	a,(hl)						; Get TL register data
	or	a
	jp	p,.SetVolume					; If it's not an output operator, branch
	
	add	a,(ix+zsnd.volume)				; Add volume
	jp	m,.AddFadeVolume				; If it hasn't overflown, branch
	ld	a,0FFh						; Cap at minimum volume

.AddFadeVolume:
	push	hl						; Add fade volume
	ld	hl,z_fm_fade_volume
	add	a,(hl)
	jp	m,.GotVolume					; If it hasn't overflown, branch
	ld	a,0FFh						; Cap at minimum volume

.GotVolume:
	pop	hl

.SetVolume:
	and	7Fh						; Set TL register
	ld	c,a
	ld	a,(de)
	rst	WriteFmTrack
	
	inc	de						; Next register
	inc	hl
	djnz	.Loop						; Loop until finished
	
	pop	de						; Restore registers
	ret

; -------------------------------------------------------------------------
; Set legato
; -------------------------------------------------------------------------

TrackCmd_Legato:
	set	LEGATO_FLAG,(ix+zsnd.flags)			; Set legato flag
	dec	de
	ret

; -------------------------------------------------------------------------
; Set staccato
; -------------------------------------------------------------------------

TrackCmd_Staccato:
	call	MultiplyTempoDivider				; Set staccato
	ld	(ix+zsnd.staccato_timer),a
	ld	(ix+zsnd.staccato),a
	ret

; -------------------------------------------------------------------------
; Loop after counter reaches 0
; -------------------------------------------------------------------------

TrackCmd_Loop0:
	inc	de						; Get loop counter
	add	a,zsnd.loop_counters
	ld	c,a
	ld	b,0
	push	ix
	pop	hl
	add	hl,bc
	
	ld	a,(hl)						; Decrement loop count
	dec	a
	jp	z,.Jump						; If it has run out, branch
	inc	de
	ret

.Jump:
	xor	a						; Reset loop count
	ld	(hl),a
	jp	TrackCmd_Jump					; Jump

; -------------------------------------------------------------------------
; Add PSG volume
; -------------------------------------------------------------------------

TrackCmd_PsgVolume:
	bit	PSG_TYPE,(ix+zsnd.type)				; Is this a PSG track?
	ret	z						; If not, exit
	
	res	VOLUME_END_FLAG,(ix+zsnd.flags)			; Clear volume envelope end flag
	dec	(ix+zsnd.vol_env_cursor)			; Move volume envelope cursor back
	
	add	a,(ix+zsnd.volume)				; Add volume
	cp	0Fh						; Did it overflow?
	jp	c,.SetVolume					; If not, branch
	ld	a,0Fh						; Cap at minimum volume

.SetVolume:
	ld	(ix+zsnd.volume),a				; Set volume
	ret

; -------------------------------------------------------------------------
; Set FM track register
; -------------------------------------------------------------------------

TrackCmd_FmTrackRegister:
	call	GetFmWriteParams				; Set FM register
	rst	WriteFmTrack
	ret

; -------------------------------------------------------------------------
; Set FM part 1 register
; -------------------------------------------------------------------------

TrackCmd_Fm1Register:
	call	GetFmWriteParams				; Set FM register
	call	WriteFm1
	ret

; -------------------------------------------------------------------------
; Get FM register parameters
; -------------------------------------------------------------------------

GetFmWriteParams:
	ex	de,hl						; Get register ID
	ld	a,(hl)
	inc	hl
	
	ld	c,(hl)						; Get register value
	ex	de,hl
	ret

; -------------------------------------------------------------------------
; Set FM instrument
; -------------------------------------------------------------------------

TrackCmd_FmInstrument:
	bit	PSG_TYPE,(ix+zsnd.type)				; Is this a PSG track?
	jr	nz,SkipFmInstrument				; If so, branch
	
	call	SetMaxFmSustainRelease				; Set maximum sustain and release rates
	
	ld	a,(de)						; Set instrument ID
	ld	(ix+zsnd.instrument),a
	or	a
	jp	p,SetFmInstrument				; If it's not from another song, branch
	
	inc	de						; Set external instrument song ID
	ld	a,(de)
	ld	(ix+zsnd.fm_instrument_song),a

; -------------------------------------------------------------------------
; Set external song instrument
; -------------------------------------------------------------------------

SetSongFmInstrument:
	push	de						; Get song FM instruments address
	ld	a,(ix+zsnd.fm_instrument_song)
	sub	81h
	ld	hl,(z_external_data+zdata.music_index)
	rst	ReadPtrTable
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,(ix+zsnd.instrument)
	
	and	7Fh						; Set FM instrument
	ld	b,a
	call	GetFmInstrumentData
	jr	GotFmInstrumentData

; -------------------------------------------------------------------------
; Set FM instrument
; -------------------------------------------------------------------------

SetFmInstrument:
	push	de						; Set FM instrument
	ld	b,a
	call	GetFmInstrument

; -------------------------------------------------------------------------
; Set FM instrument registers
; -------------------------------------------------------------------------

GotFmInstrumentData:
	call	SetFmInstrumentRegs				; Set FM instrument registers
	pop	de
	ret

; -------------------------------------------------------------------------
; Skip FM instrument
; -------------------------------------------------------------------------

SkipFmInstrument:
	or	a						; Is this an external FM instrument ID?
	ret	p						; If not, exit
	inc	de						; If so, skip over song ID
	ret

; -------------------------------------------------------------------------
; Set vibrato
; -------------------------------------------------------------------------

TrackCmd_Vibrato:
	ld	(ix+zsnd.vibrato_params),e			; Set vibrato parameters address
	ld	(ix+zsnd.vibrato_params+1),d
	
	ld	(ix+zsnd.vibrato_env_id),80h			; Disable vibrato envelope
	
	inc	de						; Skip over parameters
	inc	de
	inc	de
	ret

; -------------------------------------------------------------------------
; Choose vibrato envelope based on track type
; -------------------------------------------------------------------------

TrackCmd_ChooseVibratoEnvelope:
	inc	de						; Advance track data address
	
	bit	PSG_TYPE,(ix+zsnd.type)				; Is this a PSG track?
	jr	nz,TrackCmd_VibratoEnvelope			; If so, branch
	
	ld	a,(de)						; Use alternative vibrato envelope

; -------------------------------------------------------------------------
; Set vibrato envelope
; -------------------------------------------------------------------------

TrackCmd_VibratoEnvelope:
	ld	(ix+zsnd.vibrato_env_id),a			; Set vibrato envelope
	ret

; -------------------------------------------------------------------------
; Stop track
; -------------------------------------------------------------------------

TrackCmd_Stop:
	res	PLAY_FLAG,(ix+zsnd.flags)			; Stop playing track
	
	ld	a,1Fh						; Set end flag
	ld	(z_end_flag),a
	
	ld	a,(z_updating_pwm)				; Is this a PWM track?
	or	a
	jp	m,.StopPwm					; If so, branch
	
	call	TrackKeyOff					; Set key off
	
	ld	c,(ix+zsnd.type)				; Get SFX track
	push	ix
	call	GetSfxTrack
	
	ld	a,(z_current_sound_type)			; Are we processing music?
	or	a
	jp	z,.End						; If so, branch
	
	xor	a						; Clear current priority
	ld	(z_current_priority),a
	
	push	hl						; Get music FM instruments
	ld	hl,(z_music_fm_instruments)
	pop	ix
	
	res	OVERRIDE_FLAG,(ix+zsnd.flags)			; Clear override flag
	
	bit	PSG_TYPE,(ix+zsnd.type)				; Is the music track a PSG track?
	jr	nz,.StopPsg					; If so, branch
	bit	PLAY_FLAG,(ix+zsnd.flags)			; Is the music track playing?
	jr	z,.End						; If not, branch
	
	ld	a,FM3_TYPE					; Is the music track type FM3?
	cp	(ix+zsnd.type)
	jr	nz,.NotFm3					; If not, branch
	
	ld	a,4Fh						; Enable special FM3 mode
	bit	REST_FLAG,(ix+zsnd.flags)			; Is the music track rested?
	jr	nz,.SetFm3SpecialMode				; If so, branch
	and	0Fh						; Disable special FM3 mode

.SetFm3SpecialMode:
	call	SetFm3SpecialMode				; Set special FM3 mode

.NotFm3:
	ld	a,(ix+zsnd.instrument)				; Get FM instrument ID
	or	a
	jp	p,.GetFmInstrument				; If it's not external, branch
	
	call	SetSongFmInstrument				; Set external FM instrument
	jr	.SetSsgEg
	
; -------------------------------------------------------------------------

.GetFmInstrument:
	ld	b,a						; Set music bank
	push	hl
	SET_MUSIC_BANK
	pop	hl
	
	call	GetFmInstrumentData				; Set music FM instrument
	call	SetFmInstrumentRegs
	
	push	hl						; Set SFX bank
	SET_BANK SOUND_BANK_2
	pop	hl
	
	ld	a,(ix+zsnd.vol_env_id)				; Is volume envelope disabled?
	or	a
	jp	p,.End						; If not, branch
	
	ld	e,(ix+zsnd.fm_ssg_eg_values)			; Get SSG-EG register values
	ld	d,(ix+zsnd.fm_ssg_eg_values+1)

.SetSsgEg:
	call	SetFmSsgEgRegisters				; Set SSG-EG registers

.End:
	pop	ix						; Restore registers
	pop	hl
	
	pop	hl						; Don't return to caller
	ret
	
; -------------------------------------------------------------------------

.StopPwm:
	xor	a						; Stop updating PWM
	ld	(z_updating_pwm),a
	pop	hl
	ret
	
; -------------------------------------------------------------------------

.StopPsg:
	bit	REST_FLAG,(ix+zsnd.flags)			; Is the music track rested?
	jr	z,.End						; If not, branch
	
	ld	a,(ix+zsnd.psg_noise)				; Is the music track using PSG noise?
	or	a
	jp	p,.PsgEnd					; If not, branch
	
	ld	(psg4_regs+zpsg.noise_mode),a			; Set noise mode

.PsgEnd:
	jr	.End

; -------------------------------------------------------------------------
; Set PSG noise
; -------------------------------------------------------------------------

TrackCmd_PsgNoise:
	bit	FM_P2_TYPE,(ix+zsnd.type)			; Is this an FM part 2 track?
	ret	nz						; If so, branch
	
	ld	a,0DFh						; Silence PSG3
	ld	(psg3_regs+zpsg.volume),a
	
	ld	a,(de)						; Set noise mode
	ld	(ix+zsnd.psg_noise),a
	
	set	REST_FLAG,(ix+zsnd.flags)			; Set rest flag
	or	a						; Is the noise mode valid?
	jr	nz,.SetNoiseMode				; If so, branch
	
	res	REST_FLAG,(ix+zsnd.flags)			; Clear rest flag
	
	ld	a,0FFh						; Silence PSG4
	ld	(psg4_regs+zpsg.volume),a
	ret

.SetNoiseMode:
	ld	(psg4_regs+zpsg.noise_mode),a			; Set noise mode
	ret

; -------------------------------------------------------------------------
; Set PSG instrument
; -------------------------------------------------------------------------

TrackCmd_PsgInstrument:
	bit	PLAY_FLAG,(ix+zsnd.type)			; Is this track playing?
	ret	z						; If not, exit
	
	ld	(ix+zsnd.instrument),a				; Set instrument ID
	ret

; -------------------------------------------------------------------------
; Jump
; -------------------------------------------------------------------------

TrackCmd_Jump:
	ex	de,hl						; Jump to address
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	ret

; -------------------------------------------------------------------------
; Loop
; -------------------------------------------------------------------------

TrackCmd_Loop:
	inc	de						; Get loop counter
	add	a,zsnd.loop_counters
	ld	c,a
	ld	b,0
	push	ix
	pop	hl
	add	hl,bc
	
	ld	a,(hl)						; Has the counter been set?
	or	a
	jr	nz,.Jump					; If so, branch
	
	ld	a,(de)						; Initialize counter
	ld	(hl),a

.Jump:
	inc	de						; Advance past loop count
	dec	(hl)						; Decrement counter
	jp	nz,TrackCmd_Jump				; If it hasn't run out, jump to the address
	
	inc	de						; Advance past address
	ret

; -------------------------------------------------------------------------
; Call
; -------------------------------------------------------------------------

TrackCmd_Call:
	ld	c,a						; Get call address
	inc	de
	ld	a,(de)
	ld	b,a
	push	bc
	
	push	ix						; Get call stack address
	pop	hl
	dec	(ix+zsnd.call_stack_addr)
	ld	c,(ix+zsnd.call_stack_addr)
	dec	(ix+zsnd.call_stack_addr)
	ld	b,0
	add	hl,bc
	
	ld	(hl),d						; Push return address
	dec	hl
	ld	(hl),e
	
	pop	de						; Jump to call address
	dec	de
	ret

; -------------------------------------------------------------------------
; Return
; -------------------------------------------------------------------------

TrackCmd_Return:
	push	ix						; Pop return address
	pop	hl
	ld	c,(ix+zsnd.call_stack_addr)
	ld	b,0
	add	hl,bc
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	
	inc	(ix+zsnd.call_stack_addr)			; Move call stack address down
	inc	(ix+zsnd.call_stack_addr)
	ret

; -------------------------------------------------------------------------
; Set tempo divider
; -------------------------------------------------------------------------

TrackCmd_TempoDivider:
	ld	(ix+zsnd.tempo_divider),a			; Set tempo divider
	ret

; -------------------------------------------------------------------------
; Add transposition
; -------------------------------------------------------------------------

TrackCmd_Transpose:
	add	a,(ix+zsnd.transpose)				; Add transposition
	ld	(ix+zsnd.transpose),a
	ret

; -------------------------------------------------------------------------
; Set portamento mode
; -------------------------------------------------------------------------

TrackCmd_Portamento:
	cp	1						; Is portamento being disabled?
	jr	nz,.Disable					; If so, branch
	
	set	PORTAMENTO_FLAG,(ix+zsnd.flags)			; Set portamento flag
	ret

.Disable:
	res	LEGATO_FLAG,(ix+zsnd.flags)			; Clear legato flag
	res	PORTAMENTO_FLAG,(ix+zsnd.flags)			; Clear portamento flag
	
	xor	a						; Reset portamento speed
	ld	(ix+zsnd.porta_speed),a
	ret

; -------------------------------------------------------------------------
; Set raw frequency mode
; -------------------------------------------------------------------------

TrackCmd_RawFrequency:
	cp	1						; Is raw frequency mode being disabled?
	jr	nz,.Disable					; If not, branch
	
	set	RAW_FREQUENCY_FLAG,(ix+zsnd.flags)		; Set raw frequency mode flag
	ret

.Disable:
	res	RAW_FREQUENCY_FLAG,(ix+zsnd.flags)		; Clear raw frequency mode flag
	ret

; -------------------------------------------------------------------------
; Set special FM3 mode
; -------------------------------------------------------------------------

TrackCmd_SpecialFm3:
	ld	a,(ix+zsnd.type)				; Is this an FM3 track?
	cp	FM3_TYPE
	jr	nz,SkipSpecialFm3				; If not, branch
	
	set	REST_FLAG,(ix+zsnd.flags)			; Set rest flag
	
	ex	de,hl						; Get FM3 frequencies
	call	GetFm3Frequencies
	ld	b,4						; Number of operators

.SetFrequencies:
	push	bc						; Save counter
	
	ld	a,(hl)						; Get detune frequency
	inc	hl
	push	hl
	ld	hl,Fm3Detune
	add	a,a
	ld	c,a
	ld	b,0
	add	hl,bc
	ldi
	ldi
	pop	hl
	
	pop	bc						; Restore counter
	djnz	.SetFrequencies					; Loop until finished
	
	ex	de,hl
	dec	de
	
	ld	a,4Fh						; Enable FM3 special mode

; -------------------------------------------------------------------------
; Set FM3 special mode
; -------------------------------------------------------------------------

SetFm3SpecialMode:
	ld	(z_fm_reg_27),a					; Set FM3 special mode
	ld	c,a
	ld	a,27h
	call	WriteFm1
	ret

; -------------------------------------------------------------------------
; Skip special FM3 mode parameters
; -------------------------------------------------------------------------

SkipSpecialFm3:
	inc	de						; Skip FM3 special mode parameters
	inc	de
	inc	de
	ret

; -------------------------------------------------------------------------
; FM3 detune frequencies
; -------------------------------------------------------------------------

Fm3Detune:
	dw	000h
	dw	132h
	dw	18Eh
	dw	1E4h
	dw	234h
	dw	27Eh
	dw	2C2h
	dw	2F0h

; -------------------------------------------------------------------------
; Extended track command
; -------------------------------------------------------------------------

TrackCmd_ExtendedCmd:
	ld	hl,ExtendedTrackCmds				; Run extended command handler
	rst	ReadPtrTable
	inc	de
	ld	a,(de)
	jp	(hl)

; -------------------------------------------------------------------------
; Set tempo
; -------------------------------------------------------------------------

TrackCmd_Tempo:
	ld	(z_music_tempo),a				; Set tempo
	ld	(z_music_tempo_counter),a
	ret

; -------------------------------------------------------------------------
; Play sound
; -------------------------------------------------------------------------

TrackCmd_PlaySound:
	ld	(z_queued_sound),a				; Queue sound for playing
	ret

; -------------------------------------------------------------------------
; Pause music
; -------------------------------------------------------------------------

TrackCmd_PauseMusic:
	ld	(z_pause_command),a				; Set pause command
	or	a
	jr	z,.Unpause					; If we are unpausing, branch
	
	push	ix						; Save registers
	push	de
	
	ld	ix,z_music_tracks				; Music tracks
	ld	b,MUSIC_TRACK_COUNT
	ld	de,zsnd.struct_len

.PauseTracks:
	res	PLAY_FLAG,(ix+zsnd.flags)			; Stop playing track
	call	ForceTrackKeyOff				; Set key off
	
	add	ix,de						; Next track
	djnz	.PauseTracks					; Loop until finished
	
	pop	de						; Restore registers
	pop	ix
	
	jp	MutePsg						; Mute PSG
	
; -------------------------------------------------------------------------

.Unpause:
	push	ix						; Save registers
	push	de
	
	ld	ix,z_music_tracks				; Music tracks
	ld	b,MUSIC_TRACK_COUNT
	ld	de,zsnd.struct_len

.UnpauseTracks:
	set	PLAY_FLAG,(ix+zsnd.flags)			; Play track
	
	add	ix,de						; Next track
	djnz	.UnpauseTracks					; Loop until finished
	
	pop	de						; Restore registers
	pop	ix
	ret

; -------------------------------------------------------------------------
; Copy data
; -------------------------------------------------------------------------

TrackCmd_CopyData:
	ex	de,hl						; Get copy destination
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	
	ld	c,(hl)						; Get copy length
	ld	b,0
	
	inc	hl						; Copy data
	ex	de,hl
	ldir
	dec	de
	ret

; -------------------------------------------------------------------------
; Set tempo divider for all tracks
; -------------------------------------------------------------------------

TrackCmd_TempoDividerAll:
	ld	b,MUSIC_TRACK_COUNT				; Music tracks
	ld	hl,z_music_tracks+zsnd.tempo_divider

.SetTempoDivider:
	push	bc						; Set tempo divider
	ld	bc,zsnd.struct_len
	ld	(hl),a
	add	hl,bc						; Next track
	pop	bc
	djnz	.SetTempoDivider				; Loop until finished
	ret

; -------------------------------------------------------------------------
; Set SSG-EG
; -------------------------------------------------------------------------

TrackCmd_FmSsgEg:
	ld	(ix+zsnd.vol_env_id),80h			; Disable volume envelope
	
	ld	(ix+zsnd.fm_ssg_eg_values),e			; Set SSG-EG parameters address
	ld	(ix+zsnd.fm_ssg_eg_values+1),d

; -------------------------------------------------------------------------
; Set SSG-EG registers
; -------------------------------------------------------------------------

SetFmSsgEgRegisters:
	ld	hl,FmSsgEgRegisters				; SSG-EG registers
	ld	b,4

.SetRegisters:
	ld	a,(de)						; Set SSG-EG register
	inc	de
	ld	c,a
	ld	a,(hl)
	inc	hl
	rst	WriteFmTrack
	
	djnz	.SetRegisters					; Loop until finished
	dec	de
	ret

; -------------------------------------------------------------------------
; Set FM volume envelope
; -------------------------------------------------------------------------

TrackCmd_FmVolumeEnvelope:
	ld	(ix+zsnd.vol_env_id),a				; Set volume envelope
	inc	de
	
	ld	a,(de)						; Set volume envelope output operators
	ld	(ix+zsnd.vol_env_operators),a
	ret

; -------------------------------------------------------------------------
; Update PSG track
; -------------------------------------------------------------------------

UpdatePsgTrack:
	call	UpdateDuration					; Update duration
	jr	nz,.NoteGoing					; If the current note is still playing, branch
	
	call	ProcessTrackData				; Process track data
	
	bit	VOLUME_END_FLAG,(ix+zsnd.flags)			; Has the volume envelope ended?
	ret	nz						; If so, exit
	
	call	PrepareVibrato					; Prepare vibrato
	jr	.Update

; -------------------------------------------------------------------------

.NoteGoing:
	ld	a,(ix+zsnd.staccato_timer)			; Is staccato active?
	or	a
	jr	z,.Update					; If not, branch
	dec	(ix+zsnd.staccato_timer)			; Decrement staccato timer
	jp	z,MuteTrack					; If it has run out, mute track

; -------------------------------------------------------------------------

.Update:
	call	UpdatePortamento				; Update portamento
	call	UpdateVibrato					; Update vibrato
	
	bit	OVERRIDE_FLAG,(ix+zsnd.flags)			; Is this track being overridden?
	ret	nz						; If so, exit
	
	ld	c,(ix+zsnd.type)				; Get lower frequency setting
	ld	a,l
	and	0Fh
	or	c
	
	exx							; Get registers
	push	af
	ld	a,(ix+zsnd.type)
	sub	PSG1_TYPE
	srl	a
	srl	a
	srl	a
	ld	b,0
	ld	c,a
	ld	hl,psg1_regs
	add	hl,bc
	pop	af
	
	ld	(hl),a						; Set lower frequency setting
	inc	hl
	exx
	
	ld	a,l						; Set upper frequency setting
	and	0F0h
	or	h
	rrca
	rrca
	rrca
	rrca
	exx
	ld	(hl),a
	
	exx							; Get instrument ID
	ld	a,(ix+zsnd.instrument)
	or	a
	ld	c,0
	jr	z,.NoVolumeEnvelope				; If it's not set, branch
	
	dec	a						; Process volume envelope
	ld	hl,(z_external_data+zdata.volume_env)
	rst	ReadPtrTable
	call	ProcessVolumeEnvelope
	ld	c,a

.NoVolumeEnvelope:
	bit	VOLUME_END_FLAG,(ix+zsnd.flags)			; Has the volume envelope ended?
	ret	nz						; If so, exit
	
	ld	a,(ix+zsnd.volume)				; Add volume
	add	a,c
	bit	4,a						; Has it overflown?
	jr	z,.SetVolume					; If not, branch
	ld	a,0Fh						; Cap at minimum

.SetVolume:
	or	(ix+zsnd.type)					; Get volume setting
	add	a,10h
	
	bit	REST_FLAG,(ix+zsnd.flags)			; Is this track rested?
	jr	nz,.SetNoiseVolume				; If not, branch
	
	push	af						; Set volume setting
	ld	a,(ix+zsnd.type)
	sub	PSG1_TYPE
	srl	a
	srl	a
	srl	a
	ld	b,0
	ld	c,a
	ld	hl,psg1_regs+zpsg.volume
	add	hl,bc
	pop	af
	ld	(hl),a
	ret
	
.SetNoiseVolume:
	or	0F0h						; Set noise volume
	ld	(psg4_regs+zpsg.volume),a
	ret

; -------------------------------------------------------------------------
; Process volume envelope
; -------------------------------------------------------------------------

SetVolumeEnvelopeCursor:
	ld	(ix+zsnd.vol_env_cursor),a			; Set cursor

ProcessVolumeEnvelope:
	push	hl						; Get envelope data
	ld	c,(ix+zsnd.vol_env_cursor)
	ld	b,0
	add	hl,bc
	ld	a,(hl)
	pop	hl
	
	bit	7,a						; Is it a flag?
	jr	z,.Advance					; If not, branch
	
	cp	83h						; Is this a stop and mute flag?
	jr	z,.StopMute					; If so, branch
	cp	81h						; Is this a stop and hold flag?
	jr	z,.StopHold					; If so, branch
	cp	80h						; Is this a restart flag?
	jr	z,.Restart					; If so, branch

.Loop:
	inc	bc						; Go to loop point
	ld	a,(bc)
	jr	SetVolumeEnvelopeCursor
	
; -------------------------------------------------------------------------

.StopMute:
	set	VOLUME_END_FLAG,(ix+zsnd.flags)			; Set envelope end flag
	pop	hl						; Mute track
	jp	MuteTrack

; -------------------------------------------------------------------------

.Restart:
	xor	a						; Go to beginning of envelope
	jr	SetVolumeEnvelopeCursor
	
; -------------------------------------------------------------------------

.StopHold:
	pop	hl						; Set envelope end flag
	set	VOLUME_END_FLAG,(ix+zsnd.flags)
	ret

; -------------------------------------------------------------------------

.Advance:
	inc	(ix+zsnd.vol_env_cursor)			; Advance cursor
	ret

; -------------------------------------------------------------------------
; Mute track
; -------------------------------------------------------------------------

MuteTrack:
	set	VOLUME_END_FLAG,(ix+zsnd.flags)			; Set volume envelope end flag
	
	bit	OVERRIDE_FLAG,(ix+zsnd.flags)			; Is this track being overridden?
	ret	nz						; If so, branch

; -------------------------------------------------------------------------
; Mute PSG track
; -------------------------------------------------------------------------

MutePsgTrack:
	ld	a,(ix+zsnd.type)				; Get PSG volume register address
	or	a
	ret	p
	sub	PSG1_TYPE
	srl	a
	srl	a
	srl	a
	ld	b,0
	ld	c,a
	ld	hl,psg1_regs+zpsg.volume
	add	hl,bc
	
	ld	a,1Fh						; Set mute setting
	add	a,(ix+zsnd.type)
	ld	(hl),a
	
	bit	REST_FLAG,(ix+zsnd.flags)			; Is this track rested?
	ret	z						; If not, exit
	
	ld	a,0FFh						; Mute noise
	ld	(psg4_regs+zpsg.volume),a
	ret

; -------------------------------------------------------------------------
; Update PSG registers
; -------------------------------------------------------------------------

UpdatePsgRegisters:
	; According to the 32X manual, there is a problem with the
	; bank setting after writing to the PSG control port that
	; messes with the 32X if accessing ROM. This is a workaround
	; by moving the bank out of any of the ROM areas.
	ld	hl,M68K_BANK_SET				; Move bank out of "danger zone" ($400000)
	xor	a
	ld	b,7

.MoveBank:
	ld	(hl),a
	djnz	.MoveBank
	ld	(hl),1
	ld	(hl),a
	
	ld	hl,psg1_regs					; Normal PSG registers
	ld	b,3

.UpdateRegisters:
	ld	a,(hl)						; Get frequency
	inc	hl
	ld	c,(hl)
	inc	hl
	
	or	a						; Are we actually setting a frequency?
	jr	z,.CheckVolume					; If not, branch
	
	ld	(PSG_CTRL),a					; Set frequency
	ld	a,c
	ld	(PSG_CTRL),a

.CheckVolume:
	ld	a,(hl)						; Get volume
	inc	hl
	inc	hl
	
	or	a						; Are we actually setting a volume?
	jr	z,.NextRegister					; If not, branch
	
	ld	(PSG_CTRL),a					; Set volume

.NextRegister:
	djnz	.UpdateRegisters
	
	ld	a,(hl)						; Get noise mode
	inc	hl
	inc	hl
	
	or	a						; Are we actually setting a noise mode?
	jr	z,.CheckNoiseVolume				; If not, branch
	
	ld	(PSG_CTRL),a					; Set noise mode

.CheckNoiseVolume:
	ld	a,(hl)						; Get volume
	
	or	a						; Are we actually setting a volume?
	jr	z,.ClearRegisters				; If not, branch
	
	ld	(PSG_CTRL),a					; Set volume

.ClearRegisters:
	ld	hl,psg1_regs+zpsg.frequency			; Clear register data
	ld	de,psg1_regs+zpsg.frequency+1
	ld	bc,(zpsg.struct_len*4)-1
	ld	(hl),0
	ldir
	
	SET_MUSIC_BANK						; Set music bank
	ret

; -------------------------------------------------------------------------
; PSG register data
; -------------------------------------------------------------------------

psg1_regs:
	rept zpsg.struct_len
		db	0
	endr
psg2_regs:
	rept zpsg.struct_len
		db	0
	endr
psg3_regs:
	rept zpsg.struct_len
		db	0
	endr
psg4_regs:
	rept zpsg.struct_len
		db	0
	endr

; -------------------------------------------------------------------------
; Update PWM track
; -------------------------------------------------------------------------

UpdatePwmTrack:
	call	UpdateDuration					; Update duration
	ret	nz						; If the current note is still playing, exit
	
	ld	a,80h						; Updating PWM
	ld	(z_updating_pwm),a
	
	ld	e,(ix+zsnd.track_data_addr)			; Get track data address
	ld	d,(ix+zsnd.track_data_addr+1)

	res	LEGATO_FLAG,(ix+zsnd.flags)			; Reset legato flag

; -------------------------------------------------------------------------

.ProcessNextData:
	ld	a,(de)						; Get track data
	inc	de
	ld	hl,.TrackCommandFinished			; Track command return address
	cp	TRACK_CMDS_START				; Is it a track command?
	jp	nc,RunTrackCommand2				; If so, branch

	or	a						; Is a sample being played?
	jp	p,.GotDuration2					; If not, branch
	
	ld	(ix+zsnd.pwm_sample),a				; Set sample ID
	
	ld	a,(de)						; Is the next byte a duration?
	or	a
	jp	p,.GotDuration					; If so, branch
	
	ld	a,(ix+zsnd.duration)				; Reset duration
	ld	(ix+zsnd.duration_timer),a

; -------------------------------------------------------------------------

.PlaySample:
	ld	hl,z_pwm1_sample				; Get sample data
	ld	a,(ix+zsnd.type)
	sub	PWM1_TYPE
	ld	c,a
	ld	b,0
	add	hl,bc
	
	ld	a,(ix+zsnd.pwm_sample)				; Is this a rest note?
	cp	NOTES_START
	jp	z,.GotVolume					; If so, branch
	
	ld	a,(ix+zsnd.volume)				; Set volume
	ld	(hl),a

.GotVolume:
	inc	hl						; Go to sample ID area
	
	bit	LEGATO_FLAG,(ix+zsnd.flags)			; Is legato set?
	jr	nz,.Finish					; If so, branch
	
	ld	a,(ix+zsnd.pwm_sample)				; Get sample ID
	sub	NOTES_START+1
	jp	m,.Finish					; If it's invalid, branch
	
	ld	(hl),a						; Set sample ID

.Finish:
	ld	(ix+zsnd.track_data_addr),e			; Update track data address
	ld	(ix+zsnd.track_data_addr+1),d
	
	ld	a,(ix+zsnd.duration)				; Reset duration
	ld	(ix+zsnd.duration_timer),a
	
	xor	a						; Not updating PWM
	ld	(z_updating_pwm),a
	ret
	
; -------------------------------------------------------------------------

.TrackCommandFinished:
	inc	de						; Process next set of track data
	jp	.ProcessNextData
	
; -------------------------------------------------------------------------

.GotDuration:
	inc	de						; Advance over duration value

.GotDuration2:
	call	MultiplyTempoDivider				; Multiply by tempo divider
	ld	(ix+zsnd.duration),a
	
	jp	.PlaySample					; Play sample

; -------------------------------------------------------------------------
; Set PWM volume
; -------------------------------------------------------------------------

SetPwmVolume:
	; Doesn't actually do anything
	ret

; -------------------------------------------------------------------------
; Send PWM samples for playing
; -------------------------------------------------------------------------

SendPwmSamples:
	ld	hl,z_pwm_send					; Set PWM send flag
	dec	(hl)
	ret

; -------------------------------------------------------------------------
