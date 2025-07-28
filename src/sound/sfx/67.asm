Sfx67_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx67_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01
	smpsHeaderSFXChannel cFM6, Sfx67_FM6, $F0, $0D

Sfx67_FM6:
	smpsFMvoice         $00
	smpsModSet          $01, $01, $0D, $00
	dc.b	nEb3, $3F
	smpsStop

Sfx67_Voices:
	; Voice $00
	; $04
	; $2F, $07, $07, $00,	$17, $17, $07, $17
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$25, $80, $18, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $02
	smpsVcCoarseFreq    $00, $07, $07, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $17, $07, $17, $17
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $18, $80, $25
