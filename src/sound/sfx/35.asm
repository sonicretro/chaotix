Sfx35_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx35_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01
	smpsHeaderSFXChannel cFM6, Sfx35_FM6, $00, $00

Sfx35_FM6:
	smpsFMvoice         $00
	smpsPan             panLeft, $00
	dc.b	nEb5, $0E
	smpsFMAlterVol      $0F
	dc.b	$0E
	smpsFMAlterVol      $F1
	smpsPan             panRight, $00
	dc.b	nE5, $0E
	smpsFMAlterVol      $0F
	dc.b	$0E
	smpsFMAlterVol      $F1
	smpsStop

Sfx35_Voices:
	; Voice $00
	; $0C
	; $07, $02, $09, $03,	$8F, $CE, $5F, $CF
	; $07, $0E, $11, $10,	$00, $10, $23, $0F
	; $FF, $5F, $7F, $1F,	$1A, $80, $2B, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $03, $09, $02, $07
	smpsVcRateScale     $03, $01, $03, $02
	smpsVcAttackRate    $0F, $1F, $0E, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $11, $0E, $07
	smpsVcDecayRate2    $0F, $23, $10, $00
	smpsVcDecayLevel    $01, $07, $05, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $2B, $80, $1A
