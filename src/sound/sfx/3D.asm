Sfx3D_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx3D_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02
	smpsHeaderSFXChannel cFM6, Sfx3D_FM6, $90, $00
	smpsHeaderSFXChannel cFM5, Sfx3D_FM5, $90, $02

Sfx3D_FM5:
	dc.b	nRst, $02
	smpsPitchSlideSpeed $FE

Sfx3D_FM6:
	smpsFMvoice         $00
	smpsModSet          $01, $01, $14, $00
	dc.b	nFs1, $04, nAb1, $0D
	smpsStop

Sfx3D_Voices:
	; Voice $00
	; $F6
	; $26, $21, $10, $00,	$1B, $10, $50, $48
	; $12, $31, $04, $02,	$0B, $1E, $1B, $16
	; $0F, $9F, $FF, $9F,	$2F, $19, $15, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $06
	smpsVcUnusedBits    $03, $00, $00, $01, $00
	smpsVcDetune        $00, $01, $02, $02
	smpsVcCoarseFreq    $00, $00, $01, $06
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $08, $10, $10, $1B
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $04, $11, $12
	smpsVcDecayRate2    $16, $1B, $1E, $0B
	smpsVcDecayLevel    $09, $0F, $09, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $15, $19, $2F
