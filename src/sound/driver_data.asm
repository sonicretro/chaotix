; -------------------------------------------------------------------------
; Sound driver external data
; -------------------------------------------------------------------------

; -------------------------------------------------------------------------
; Define Z80 address
; -------------------------------------------------------------------------
; PARAMETERS:
;	addr - Address
; -------------------------------------------------------------------------

Z80_ADDR macro addr
	dc.b	(\addr)&$FF
	dc.b	((\addr)>>8)&$FF
	endm
	
; -------------------------------------------------------------------------
; Define song
; -------------------------------------------------------------------------
; PARAMETERS:
;	addr - Song address
; -------------------------------------------------------------------------

__song_cnt = 0
DEFINE_SONG macro addr
	__song_\#__song_cnt\: = \addr
	__song_cnt: = __song_cnt+1
	endm
	
; -------------------------------------------------------------------------
; Store music bank index
; -------------------------------------------------------------------------

MUSIC_BANKS macro
	c: = 0
	rept __song_cnt
		dc.b	((__song_\#c\)/$8000)&$FF
		c: = c+1
	endr
	endm

; -------------------------------------------------------------------------
; Store music index
; -------------------------------------------------------------------------

MUSIC_INDEX macro
	c: = 0
	rept __song_cnt
		Z80_ADDR ((__song_\#c\)&$7FFF)|$8000
		c: = c+1
	endr
	endm
	
; -------------------------------------------------------------------------
; Define SFX
; -------------------------------------------------------------------------
; PARAMETERS:
;	addr     - SFX address
;	priority - Priority
; -------------------------------------------------------------------------

__sfx_cnt = 0
DEFINE_SFX macro addr, priority
	if ((\addr)/$8000)<>SOUND_BANK_2
		inform 2,"SFX data must be in bank $%h ($%h)", SOUND_BANK_2*$8000
	endif
	__sfx_\#__sfx_cnt\:		= \addr
	__sfx_priority\#__sfx_cnt\:	= \priority
	__sfx_cnt:			= __sfx_cnt+1
	endm

; -------------------------------------------------------------------------
; Store SFX index
; -------------------------------------------------------------------------

SFX_INDEX macro
	c: = 0
	rept __sfx_cnt
		Z80_ADDR ((__sfx_\#c\)&$7FFF)|$8000
		c: = c+1
	endr
	endm

; -------------------------------------------------------------------------
; Store SFX priorities
; -------------------------------------------------------------------------
; PARAMETERS:
;	cutoff - Cutoff point
; -------------------------------------------------------------------------

SFX_PRIORITIES macro cutoff
	c: = 0
	if (__sfx_cnt-cutoff)>0
		rept __sfx_cnt-cutoff
			dc.b	__sfx_priority\#c\
			c: = c+1
		endr
	endif
	endm

; -------------------------------------------------------------------------
; Index
; -------------------------------------------------------------------------

	obj z_external_data
	
	Z80_ADDR SfxPriorities
	Z80_ADDR SfxBgIndex
	Z80_ADDR MusicIndex
	Z80_ADDR SfxIndex
	Z80_ADDR VibratoEnvelopes
	Z80_ADDR VolumeEnvelopes
	dc.b	SFX_START
	dcb.b	3, 0
	Z80_ADDR MusicBanks

; -------------------------------------------------------------------------
; Music and SFX index tables
; -------------------------------------------------------------------------

	include	"sound/music_index.asm"
	include	"sound/sfx_index.asm"

; -------------------------------------------------------------------------

MusicBanks:
	MUSIC_BANKS
	
MusicIndex:
	MUSIC_INDEX

SfxBgIndex:

SfxIndex:
	SFX_INDEX

SfxPriorities:
	SFX_PRIORITIES 2

; -------------------------------------------------------------------------
; Envelopes
; -------------------------------------------------------------------------

	include	"sound/volume_envelopes.asm"
	include	"sound/vibrato_envelopes.asm"

; -------------------------------------------------------------------------

	objend

; -------------------------------------------------------------------------
