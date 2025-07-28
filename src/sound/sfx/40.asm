Sfx40_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx40_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02
	smpsHeaderSFXChannel cFM6, Sfx40_FM6, $E0, $00
	smpsHeaderSFXChannel cFM5, Sfx40_FM5, $E3, $02

Sfx40_FM6:
	smpsFMvoice         $00
	dc.b	nCs4, $30
	smpsStop

Sfx40_FM5:
	dc.b	nRst, $02
	smpsFMvoice         $00
	dc.b	nC4, $2B
	smpsStop

Sfx40_Voices:
	; Voice $00
	; $3B
	; $03, $31, $00, $01,	$5F, $5F, $5F, $5F
	; $09, $15, $0A, $0B,	$00, $07, $0D, $00
	; $9F, $6F, $FF, $FF,	$0D, $10, $09, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $03, $00
	smpsVcCoarseFreq    $01, $00, $01, $03
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $0A, $15, $09
	smpsVcDecayRate2    $00, $0D, $07, $00
	smpsVcDecayLevel    $0F, $0F, $06, $09
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $09, $10, $0D
