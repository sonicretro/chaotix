Sfx66_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx66_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01
	smpsHeaderSFXChannel cFM6, Sfx66_FM6, $F0, $0F

Sfx66_FM6:
	smpsFMvoice         $00
	smpsModSet          $01, $01, $0C, $00
	dc.b	nEb3, $3F
	smpsModSet          $00, $00, $00, $00

Sfx66_Jump1:
	dc.b	smpsNoAttack, $01
	smpsJump            Sfx66_Jump1

Sfx66_Voices:
	; Voice $00
	; $54
	; $30, $06, $5A, $0B,	$17, $17, $07, $17
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$31, $80, $08, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $02
	smpsVcUnusedBits    $01
	smpsVcDetune        $00, $05, $00, $03
	smpsVcCoarseFreq    $0B, $0A, $06, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $17, $07, $17, $17
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $08, $80, $31
