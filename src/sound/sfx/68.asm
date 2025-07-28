Sfx68_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx68_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $03
	smpsHeaderSFXChannel cFM6, Sfx68_FM6, $00, $0D
	smpsHeaderSFXChannel cFM5, Sfx68_FM5, $00, $0D
	smpsHeaderSFXChannel cPSG3, Sfx68_PSG3, $23, $00

Sfx68_FM5:
	dc.b	nRst, $05
	smpsPitchSlideSpeed $2A

Sfx68_FM6:
	smpsFMvoice         $00
	dc.b	nF1, $09, nA2, $25
	smpsStop

Sfx68_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        cTone_02
	dc.b	nC4, $09, nC4, $25
	smpsStop

Sfx68_Voices:
	; Voice $00
	; $B3
	; $74, $47, $20, $50,	$5F, $79, $7A, $7A
	; $08, $07, $07, $0C,	$12, $17, $0D, $03
	; $9F, $5F, $7F, $9F,	$13, $00, $05, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $06
	smpsVcUnusedBits    $02
	smpsVcDetune        $05, $02, $04, $07
	smpsVcCoarseFreq    $00, $00, $07, $04
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $3A, $3A, $39, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $07, $07, $08
	smpsVcDecayRate2    $03, $0D, $17, $12
	smpsVcDecayLevel    $09, $07, $05, $09
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $05, $00, $13
