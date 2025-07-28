Sfx43_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx43_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01
	smpsHeaderSFXChannel cFM6, Sfx43_FM6, $00, $0D

Sfx43_FM6:
	smpsFMvoice         $00
	smpsModSet          $01, $01, $E4, $00
	dc.b	nF5, $01
	smpsFMAlterVol      $05
	dc.b	nEb5, $04
	smpsStop

Sfx43_Voices:
	; Voice $00
	; $07
	; $41, $45, $72, $7E,	$4F, $5E, $15, $15
	; $10, $0D, $00, $00,	$10, $10, $00, $00
	; $9F, $5F, $0F, $0F,	$80, $80, $80, $80
	smpsVcAlgorithm     $07
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $04, $04
	smpsVcCoarseFreq    $0E, $02, $05, $01
	smpsVcRateScale     $00, $00, $01, $01
	smpsVcAttackRate    $15, $15, $1E, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $0D, $10
	smpsVcDecayRate2    $00, $00, $10, $10
	smpsVcDecayLevel    $00, $00, $05, $09
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $80, $80, $80
