; -------------------------------------------------------------------------
; Z80 constants
; -------------------------------------------------------------------------

FM_P2_TYPE		equ 2					; FM part 2 type
PWM_TYPE		equ 3					; PWM type
PSG_TYPE		equ 7					; PSG type

FM1_TYPE		equ 0					; FM1 type
FM2_TYPE		equ 1					; FM2 type
FM3_TYPE		equ 2					; FM3 type
FM4_TYPE		equ (1<<FM_P2_TYPE)|0			; FM4 type
FM5_TYPE		equ (1<<FM_P2_TYPE)|1			; FM5 type
FM6_TYPE		equ (1<<FM_P2_TYPE)|2			; FM6 type
PSG1_TYPE		equ (1<<PSG_TYPE)|(0<<5)		; PSG1 type
PSG2_TYPE		equ (1<<PSG_TYPE)|(1<<5)		; PSG2 type
PSG3_TYPE		equ (1<<PSG_TYPE)|(2<<5)		; PSG3 type
PSG4_TYPE		equ (1<<PSG_TYPE)|(3<<5)		; PSG4 type
PWM1_TYPE		equ $10|(1<<PWM_TYPE)|(0<<1)		; PWM1 type
PWM2_TYPE		equ $10|(1<<PWM_TYPE)|(1<<1)		; PWM2 type
PWM3_TYPE		equ $10|(1<<PWM_TYPE)|(2<<1)		; PWM3 type
PWM4_TYPE		equ $10|(1<<PWM_TYPE)|(3<<1)		; PWM4 type

MUSIC_FM_TRACK_COUNT	equ 6					; Number of music FM tracks
MUSIC_PSG_TRACK_COUNT	equ 3					; Number of music PSG tracks
MUSIC_PWM_TRACK_COUNT	equ 4					; Number of music PWM tracks
MUSIC_TRACK_COUNT	equ 13					; Number of music tracks

SFX_FM_TRACK_COUNT	equ 3					; Number of SFX FM tracks
SFX_PSG_TRACK_COUNT	equ 2					; Number of SFX PSG tracks
SFX_TRACK_COUNT		equ 5					; Number of SFX tracks

REST_FLAG		equ 0					; Rest flag
LEGATO_FLAG		equ 1					; Legato flag
OVERRIDE_FLAG		equ 2					; Override flag
RAW_FREQUENCY_FLAG	equ 3					; Raw frequency flag
VOLUME_END_FLAG		equ 4					; Volume envelope flag
PORTAMENTO_FLAG		equ 5					; Portamento flag
VIBRATO_END_FLAG	equ 6					; Vibrato envelope end flag
PLAY_FLAG		equ 7					; Play flag

NOTES_START		equ $80					; Note IDs start
TRACK_CMDS_START	equ $E0					; Track commands start

; -------------------------------------------------------------------------
