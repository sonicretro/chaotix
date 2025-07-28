Sfx4B_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx4B_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02
	smpsHeaderSFXChannel cFM6, Sfx4B_FM6, $00, $05
	smpsHeaderSFXChannel cFM5, Sfx4B_FM5, $00, $07

Sfx4B_FM6:
	smpsFMvoice         $00
	dc.b	nC3, $28, $28
	smpsStop

Sfx4B_FM5:
	smpsModSet          $00, $00, $00, $00
	smpsFMvoice         $00
	smpsPitchSlideSpeed $F4
	dc.b	nRst, $0F
	smpsPan             panLeft, $00
	dc.b	nC3, $28
	smpsPan             panRight, $00
	smpsFMAlterVol      $05
	dc.b	$28
	smpsFMAlterVol      $FB
	smpsStop

Sfx4B_Voices:
	; Voice $00
	; $24
	; $05, $01, $55, $51,	$B9, $9C, $97, $98
	; $06, $06, $10, $13,	$0F, $0E, $04, $08
	; $AF, $8F, $2F, $1F,	$1E, $80, $16, $88
	smpsVcAlgorithm     $04
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $05, $00, $00
	smpsVcCoarseFreq    $01, $05, $01, $05
	smpsVcRateScale     $02, $02, $02, $02
	smpsVcAttackRate    $18, $17, $1C, $39
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $13, $10, $06, $06
	smpsVcDecayRate2    $08, $04, $0E, $0F
	smpsVcDecayLevel    $01, $02, $08, $0A
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $88, $16, $80, $1E
