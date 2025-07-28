Sfx51_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx51_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01
	smpsHeaderSFXChannel cFM6, Sfx51_FM6, $00, $06

Sfx51_FM6:
	smpsFMvoice         $00
	smpsModSet          $01, $01, $CB, $16
	dc.b	nB0, $09, $06
	smpsStop

Sfx51_Voices:
	; Voice $00
	; $09
	; $01, $20, $10, $10,	$1F, $1F, $1F, $BF
	; $0F, $0B, $09, $04,	$0B, $14, $10, $05
	; $6F, $5F, $4F, $4F,	$14, $23, $10, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $01, $02, $00
	smpsVcCoarseFreq    $00, $00, $00, $01
	smpsVcRateScale     $02, $00, $00, $00
	smpsVcAttackRate    $3F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $09, $0B, $0F
	smpsVcDecayRate2    $05, $10, $14, $0B
	smpsVcDecayLevel    $04, $04, $05, $06
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $10, $23, $14
