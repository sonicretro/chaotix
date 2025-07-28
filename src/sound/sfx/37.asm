Sfx37_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx37_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01
	smpsHeaderSFXChannel cFM6, Sfx37_FM6, $00, $03

Sfx37_FM6:
	smpsFMvoice         $00
	smpsModSet          $01, $01, $09, $00
	dc.b	nC3, $15, smpsNoAttack

Sfx37_Jump1:
	smpsModSet          $00, $00, $00, $00
	dc.b	smpsNoAttack, $01
	smpsJump            Sfx37_Jump1

Sfx37_Voices:
	; Voice $00
	; $EB
	; $18, $76, $D0, $10,	$1C, $0B, $0F, $0F
	; $00, $00, $00, $00,	$00, $00, $00, $03
	; $D5, $05, $03, $1F,	$0F, $2A, $20, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $05
	smpsVcUnusedBits    $03
	smpsVcDetune        $01, $0D, $07, $01
	smpsVcCoarseFreq    $00, $00, $06, $08
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0F, $0F, $0B, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $03, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $00, $0D
	smpsVcReleaseRate   $0F, $03, $05, $05
	smpsVcTotalLevel    $80, $20, $2A, $0F
