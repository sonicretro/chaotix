; -------------------------------------------------------------------------
; Macro setup for Z80
; -------------------------------------------------------------------------

	padding off
	listing	purecode
	page 0
	supmode on
	
; -------------------------------------------------------------------------
; 128 = 80h = z80, 32988 = 80DCh = z80unDoC 
; -------------------------------------------------------------------------

NOT_Z80 function cpu,(cpu<>128)&&(cpu<>32988)

; -------------------------------------------------------------------------
; Make org safer (impossible to overwrite previously assembled bytes) and also
; make it work in Z80 code without creating a new segment
; -------------------------------------------------------------------------

org macro address
	if address<$
		error "Too much stuff before org 0\{address}h (0\{($-address)}h bytes)"
	else
		while address>$
			db 0
		endm
	endif
	endm

; -------------------------------------------------------------------------
; Define the cnop pseudo-instruction
; -------------------------------------------------------------------------

cnop macro offset,alignment
	org ($-1+(alignment)-(($-1+(-(offset)))#(alignment)))
	endm

; -------------------------------------------------------------------------
; Redefine align in terms of cnop
; -------------------------------------------------------------------------

align macro alignment
	cnop 0,alignment
	endm

; -------------------------------------------------------------------------
; Define the even pseudo-instruction
; -------------------------------------------------------------------------

even macro
	if $&1
		db 0
	endif
	endm

; -------------------------------------------------------------------------
; Make ds work in Z80 code without creating a new segment
; -------------------------------------------------------------------------

ds macro num
	if NOT_Z80(MOMCPU)
		!ds.ATTRIBUTE num
	else
		rept num
			db 0
		endm
	endif
	endm

; -------------------------------------------------------------------------
; Start RS structure
; -------------------------------------------------------------------------

rsset macro org
	dephase
	phase org
	endm

; -------------------------------------------------------------------------
; Start RS structure at 0
; -------------------------------------------------------------------------

rsreset macro
	rsset 0
	endm

; -------------------------------------------------------------------------
; RS structure entry
; -------------------------------------------------------------------------

rs macro num
	ds.ATTRIBUTE num
	endm

; -------------------------------------------------------------------------
