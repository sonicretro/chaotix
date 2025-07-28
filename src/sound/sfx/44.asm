Sfx44_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx44_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01
	smpsHeaderSFXChannel cFM6, Sfx44_FM6, $00, $01

Sfx44_FM6:
	smpsFMvoice         $00
	dc.b	nG2, $04, nAb2, $09
	smpsStop

Sfx44_Voices:
	; Voice $00
	; $3B
	; $30, $50, $30, $70,	$13, $7E, $35, $50
	; $10, $0A, $1B, $10,	$09, $16, $1E, $16
	; $3F, $FF, $FF, $FF,	$0F, $16, $05, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $05, $03
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $01, $00, $01, $00
	smpsVcAttackRate    $10, $35, $3E, $13
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $1B, $0A, $10
	smpsVcDecayRate2    $16, $1E, $16, $09
	smpsVcDecayLevel    $0F, $0F, $0F, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $05, $16, $0F
