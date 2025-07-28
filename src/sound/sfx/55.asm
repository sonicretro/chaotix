Sfx55_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx55_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02
	smpsHeaderSFXChannel cPSG3, Sfx55_PSG3, $23, $00
	smpsHeaderSFXChannel cFM6, Sfx55_FM6, $00, $00

Sfx55_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        cTone_01
	dc.b	nB3, $03
	smpsPSGvoice        cTone_0E
	dc.b	nB3, $08
	smpsStop

Sfx55_FM6:
	smpsFMvoice         $00
	dc.b	nRst, $03, nC4, $08
	smpsStop

Sfx55_Voices:
	; Voice $00
	; $3A
	; $09, $02, $12, $01,	$5F, $5F, $1F, $1F
	; $19, $02, $19, $11,	$05, $02, $00, $0F
	; $0F, $0F, $CF, $EF,	$00, $00, $00, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $00, $00
	smpsVcCoarseFreq    $01, $02, $02, $09
	smpsVcRateScale     $00, $00, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $11, $19, $02, $19
	smpsVcDecayRate2    $0F, $00, $02, $05
	smpsVcDecayLevel    $0E, $0C, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $00, $00, $00
