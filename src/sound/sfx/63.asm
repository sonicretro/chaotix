Sfx63_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx63_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01
	smpsHeaderSFXChannel cFM6, Sfx63_FM6, $12, $08

Sfx63_FM6:
	smpsFMvoice         $00
	dc.b	nC3, $05, nCs3, nD3, $05, $05, $05, $05
	dc.b	$05, $05, $05, $05
	smpsStop

Sfx63_Voices:
	; Voice $00
	; $A4
	; $5F, $55, $37, $10,	$17, $57, $37, $57
	; $0F, $11, $0F, $15,	$03, $06, $03, $03
	; $5F, $5F, $5F, $9F,	$06, $80, $18, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $04
	smpsVcUnusedBits    $02
	smpsVcDetune        $01, $03, $05, $05
	smpsVcCoarseFreq    $00, $07, $05, $0F
	smpsVcRateScale     $01, $00, $01, $00
	smpsVcAttackRate    $17, $37, $17, $17
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $15, $0F, $11, $0F
	smpsVcDecayRate2    $03, $03, $06, $03
	smpsVcDecayLevel    $09, $05, $05, $05
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $18, $80, $06
