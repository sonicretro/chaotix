Sfx65_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx65_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01
	smpsHeaderSFXChannel cFM6, Sfx65_FM6, $00, $0D

Sfx65_FM6:
	smpsFMvoice         $00
	smpsModSet          $01, $01, $C6, $00
	dc.b	nBb4, $0E
	smpsStop

Sfx65_Voices:
	; Voice $00
	; $4F
	; $25, $00, $10, $00,	$17, $22, $56, $15
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$80, $80, $80, $80
	smpsVcAlgorithm     $07
	smpsVcFeedback      $01
	smpsVcUnusedBits    $01
	smpsVcDetune        $00, $01, $00, $02
	smpsVcCoarseFreq    $00, $00, $00, $05
	smpsVcRateScale     $00, $01, $00, $00
	smpsVcAttackRate    $15, $16, $22, $17
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $80, $80, $80
