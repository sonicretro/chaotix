Sfx61_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx61_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01
	smpsHeaderSFXChannel cFM6, Sfx61_FM6, $D9, $00

Sfx61_FM6:
	smpsFMvoice         $00
	smpsModSet          $01, $01, $09, $00
	dc.b	nEb3, $30
	smpsModSet          $00, $00, $00, $00
	dc.b	smpsNoAttack, $11
	smpsStop

Sfx61_Voices:
	; Voice $00
	; $04
	; $2F, $07, $06, $00,	$17, $17, $07, $17
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$30, $80, $20, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $02
	smpsVcCoarseFreq    $00, $06, $07, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $17, $07, $17, $17
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $20, $80, $30
