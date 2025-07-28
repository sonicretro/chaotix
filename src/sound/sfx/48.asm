Sfx48_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx48_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $03
	smpsHeaderSFXChannel cFM6, Sfx48_FM6, $00, $06
	smpsHeaderSFXChannel cFM5, Sfx48_FM5, $00, $0E
	smpsHeaderSFXChannel cFM4, Sfx48_FM4, $00, $0E

Sfx48_FM6:
	smpsFMvoice         $00
	dc.b	nE2, $08, $06, nRst, $01
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsStop

Sfx48_FM4:
	smpsAlterPitch      $FD

Sfx48_FM5:
	smpsFMvoice         $01
	dc.b	nA5, $08, nB5, $06, nRst, $01
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsStop

Sfx48_Voices:
	; Voice $00
	; $3C
	; $01, $03, $00, $00,	$1F, $1F, $15, $1F
	; $11, $0D, $10, $05,	$07, $04, $09, $02
	; $55, $1A, $55, $1A,	$0E, $80, $08, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $03, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $15, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $10, $0D, $11
	smpsVcDecayRate2    $02, $09, $04, $07
	smpsVcDecayLevel    $01, $05, $01, $05
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $80, $08, $80, $0E

	; Voice $01
	; $3D
	; $02, $02, $01, $02,	$94, $19, $19, $19
	; $0F, $0D, $0D, $0D,	$07, $04, $04, $04
	; $25, $1A, $1A, $1A,	$14, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $02, $02
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $19, $19, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0D, $0D, $0F
	smpsVcDecayRate2    $04, $04, $04, $07
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $80, $80, $80, $14
