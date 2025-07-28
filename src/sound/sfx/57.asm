Sfx57_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx57_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02
	smpsHeaderSFXChannel cFM6, Sfx57_FM6, $00, $07
	smpsHeaderSFXChannel cFM5, Sfx57_FM5, $00, $07

Sfx57_FM5:
	smpsPitchSlideSpeed $F9
	dc.b	nRst, $04

Sfx57_FM6:
	smpsFMvoice         $00
	smpsModSet          $01, $01, $09, $00
	dc.b	nB4, $52
	smpsModSet          $00, $00, $00, $00
	dc.b	smpsNoAttack, $60
	smpsStop

Sfx57_Voices:
	; Voice $00
	; $3A
	; $01, $11, $02, $02,	$67, $89, $87, $17
	; $00, $04, $0E, $03,	$00, $04, $00, $00
	; $14, $08, $18, $09,	$19, $22, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $01, $00
	smpsVcCoarseFreq    $02, $02, $01, $01
	smpsVcRateScale     $00, $02, $02, $01
	smpsVcAttackRate    $17, $07, $09, $27
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $04, $00
	smpsVcDecayRate2    $00, $00, $04, $00
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $09, $08, $08, $04
	smpsVcTotalLevel    $80, $27, $22, $19
