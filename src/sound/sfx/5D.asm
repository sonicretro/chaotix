Sfx5D_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx5D_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01
	smpsHeaderSFXChannel cFM6, Sfx5D_FM6, $00, $06

Sfx5D_FM6:
	smpsFMvoice         $00
	dc.b	nF4, $04, nFs4, nG4
	smpsStop

Sfx5D_Voices:
	; Voice $00
	; $3C
	; $74, $32, $38, $74,	$5F, $5B, $5F, $55
	; $00, $0B, $00, $0B,	$00, $00, $00, $00
	; $0F, $59, $0F, $5F,	$1B, $80, $14, $8D
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $03, $07
	smpsVcCoarseFreq    $04, $08, $02, $04
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $15, $1F, $1B, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $00, $0B, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $05, $00, $05, $00
	smpsVcReleaseRate   $0F, $0F, $09, $0F
	smpsVcTotalLevel    $8D, $14, $80, $1B
