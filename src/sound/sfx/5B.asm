Sfx5B_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx5B_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02
	smpsHeaderSFXChannel cFM6, Sfx5B_FM6, $CC, $0C
	smpsHeaderSFXChannel cPSG3, Sfx5B_PSG3, $00, $02

Sfx5B_FM6:
	smpsFMvoice         $00
	smpsModSet          $02, $01, $99, $E1
	dc.b	nCs0, $18
	smpsFMAlterVol      $0E
	smpsStop

Sfx5B_PSG3:
	smpsPSGform         $E7
	smpsModSet          $01, $01, $04, $01
	dc.b	nC0, $0F
	smpsPSGAlterVol     $05
	smpsLoop            $00, $03, Sfx5B_PSG3
	smpsStop

Sfx5B_Voices:
	; Voice $00
	; $F2
	; $2A, $30, $00, $25,	$0E, $11, $15, $1F
	; $05, $00, $11, $02,	$0B, $07, $10, $05
	; $1F, $0F, $4F, $2F,	$33, $10, $06, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $06
	smpsVcUnusedBits    $03
	smpsVcDetune        $02, $00, $03, $02
	smpsVcCoarseFreq    $05, $00, $00, $0A
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $15, $11, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $11, $00, $05
	smpsVcDecayRate2    $05, $10, $07, $0B
	smpsVcDecayLevel    $02, $04, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $06, $10, $33
