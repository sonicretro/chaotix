Sfx4C_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx4C_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01
	smpsHeaderSFXChannel cFM6, Sfx4C_FM6, $00, $00

Sfx4C_FM6:
	smpsModSet          $01, $01, $07, $11
	smpsFMvoice         $00
	dc.b	nA4, $19
	smpsStop

Sfx4C_Voices:
	; Voice $00
	; $3C
	; $59, $00, $00, $32,	$5F, $1F, $1F, $1F
	; $0A, $0D, $16, $0F,	$03, $12, $00, $0F
	; $EF, $9F, $FF, $FF,	$00, $80, $00, $84
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $00, $05
	smpsVcCoarseFreq    $02, $00, $00, $09
	smpsVcRateScale     $00, $00, $00, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $16, $0D, $0A
	smpsVcDecayRate2    $0F, $00, $12, $03
	smpsVcDecayLevel    $0F, $0F, $09, $0E
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $84, $00, $80, $00
