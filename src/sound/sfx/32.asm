Sfx32_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx32_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02
	smpsHeaderSFXChannel cFM6, Sfx32_FM6, $00, $04
	smpsHeaderSFXChannel cFM5, Sfx32_FM5, $00, $04

Sfx32_FM6:
	dc.b	nE0, $05

Sfx32_FM5:
	smpsFMvoice         $00
	dc.b	nAb0, $09, nBb0, $07, nAb0, $09, nBb0, $07
	smpsJump            Sfx32_FM6

Sfx32_Voices:
	; Voice $00
	; $FA
	; $21, $30, $10, $32,	$1F, $0F, $1F, $1F
	; $05, $18, $09, $02,	$06, $0F, $06, $02
	; $1F, $07, $4F, $2F,	$0F, $0E, $0E, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $03
	smpsVcDetune        $03, $01, $03, $02
	smpsVcCoarseFreq    $02, $00, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $0F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $09, $18, $05
	smpsVcDecayRate2    $02, $06, $0F, $06
	smpsVcDecayLevel    $02, $04, $00, $01
	smpsVcReleaseRate   $0F, $0F, $07, $0F
	smpsVcTotalLevel    $80, $0E, $0E, $0F
