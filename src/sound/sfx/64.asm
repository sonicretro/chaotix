Sfx64_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx64_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02
	smpsHeaderSFXChannel cFM6, Sfx64_FM6, $EE, $08
	smpsHeaderSFXChannel cFM5, Sfx64_FM5, $EE, $08

Sfx64_FM5:
	dc.b	nRst, $0C
	smpsPitchSlideSpeed $1A

Sfx64_FM6:
	smpsFMvoice         $00
	smpsModSet          $01, $01, $0D, $00
	dc.b	nA2, $2F
	smpsModSet          $00, $00, $00, $00

Sfx64_Jump1:
	dc.b	smpsNoAttack, $01
	smpsJump            Sfx64_Jump1

Sfx64_Voices:
	; Voice $00
	; $2F
	; $50, $51, $12, $31,	$5B, $15, $56, $54
	; $00, $01, $00, $00,	$00, $03, $00, $00
	; $0F, $3F, $0F, $0F,	$81, $80, $80, $80
	smpsVcAlgorithm     $07
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $01, $05, $05
	smpsVcCoarseFreq    $01, $02, $01, $00
	smpsVcRateScale     $01, $01, $00, $01
	smpsVcAttackRate    $14, $16, $15, $1B
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $01, $00
	smpsVcDecayRate2    $00, $00, $03, $00
	smpsVcDecayLevel    $00, $00, $03, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $80, $80, $81
