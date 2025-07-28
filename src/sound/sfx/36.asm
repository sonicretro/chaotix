Sfx36_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx36_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02
	smpsHeaderSFXChannel cFM6, Sfx36_FM6, $00, $00
	smpsHeaderSFXChannel cFM5, Sfx36_FM5, $00, $03

Sfx36_FM6:
	smpsFMvoice         $00
	smpsModSet          $01, $01, $0A, $00
	dc.b	nBb5, $50
	smpsStop

Sfx36_FM5:
	smpsFMvoice         $00
	smpsModSet          $01, $01, $06, $00
	smpsPan             panLeft, $00
	dc.b	nE6, $50
	smpsStop

Sfx36_Voices:
	; Voice $00
	; $94
	; $22, $06, $02, $05,	$10, $10, $00, $10
	; $10, $00, $10, $00,	$00, $0A, $0B, $00
	; $09, $19, $19, $19,	$0F, $83, $06, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $02
	smpsVcUnusedBits    $02
	smpsVcDetune        $00, $00, $00, $02
	smpsVcCoarseFreq    $05, $02, $06, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $10, $00, $10, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $10, $00, $10
	smpsVcDecayRate2    $00, $0B, $0A, $00
	smpsVcDecayLevel    $01, $01, $01, $00
	smpsVcReleaseRate   $09, $09, $09, $09
	smpsVcTotalLevel    $80, $06, $83, $0F
