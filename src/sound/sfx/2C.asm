Sfx2C_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx2C_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02
	smpsHeaderSFXChannel cFM5, Sfx2C_FM5, $00, $05
	smpsHeaderSFXChannel cFM6, Sfx2C_FM6, $00, $08

Sfx2C_FM5:
	smpsFMvoice         $00
	dc.b	nA5, $02, $05, $05, $05, $05, $05, $05
	dc.b	$3A
	smpsStop

Sfx2C_FM6:
	smpsFMvoice         $00
	dc.b	nRst, $02, nG5, $02, $05, $15, $02, $05
	dc.b	$32
	smpsStop

Sfx2C_Voices:
	; Voice $00
	; $04
	; $37, $72, $77, $49,	$1F, $1F, $1F, $1F
	; $07, $0A, $07, $0D,	$00, $0B, $00, $0B
	; $1F, $0F, $1F, $0F,	$23, $80, $23, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $07, $07, $03
	smpsVcCoarseFreq    $09, $07, $02, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $07, $0A, $07
	smpsVcDecayRate2    $0B, $00, $0B, $00
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $23, $80, $23
