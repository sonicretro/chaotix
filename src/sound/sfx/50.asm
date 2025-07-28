Sfx50_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx50_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01
	smpsHeaderSFXChannel cFM6, Sfx50_FM6, $00, $00

Sfx50_FM6:
	smpsFMvoice         $00
	dc.b	nA4, $04
	smpsFMAlterVol      $04
	dc.b	nA4, $06
	smpsFMAlterVol      $FC
	smpsStop

Sfx50_Voices:
	; Voice $00
	; $5A
	; $17, $35, $03, $52,	$8F, $CE, $5F, $CF
	; $08, $01, $11, $11,	$00, $00, $23, $0F
	; $0F, $9F, $7F, $9F,	$0B, $09, $19, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $03
	smpsVcUnusedBits    $01
	smpsVcDetune        $05, $00, $03, $01
	smpsVcCoarseFreq    $02, $03, $05, $07
	smpsVcRateScale     $03, $01, $03, $02
	smpsVcAttackRate    $0F, $1F, $0E, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $11, $11, $01, $08
	smpsVcDecayRate2    $0F, $23, $00, $00
	smpsVcDecayLevel    $09, $07, $09, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $19, $09, $0B
