Sfx31_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx31_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $04
	smpsHeaderSFXChannel cFM4, Sfx31_FM4, $10, $02
	smpsHeaderSFXChannel cFM5, Sfx31_FM5, $00, $02
	smpsHeaderSFXChannel cFM6, Sfx31_FM6, $10, $02
	smpsHeaderSFXChannel cPSG3, Sfx31_PSG3, $0A, $01

Sfx31_FM4:
	smpsPan             panRight, $00
	dc.b	nRst, $02
	smpsJump            Sfx31_FM5

Sfx31_FM6:
	smpsPan             panLeft, $00
	dc.b	nRst, $01

Sfx31_FM5:
	smpsFMvoice         $00
	smpsModSet          $03, $02, $05, $03

Sfx31_Loop1:
	dc.b	nC0, $0A
	smpsFMAlterVol      $07
	smpsLoop            $00, $07, Sfx31_Loop1
	smpsStop

Sfx31_PSG3:
	smpsModSet          $01, $01, $01, $02
	smpsPSGform         $E7

Sfx31_Loop2:
	dc.b	nB3, $0E, smpsNoAttack
	smpsPSGAlterVol     $0D
	smpsLoop            $00, $06, Sfx31_Loop2
	smpsStop

Sfx31_Voices:
	; Voice $00
	; $01
	; $1F, $30, $10, $33,	$1F, $1F, $1F, $1F
	; $05, $18, $09, $02,	$0B, $1F, $10, $15
	; $1F, $2F, $4F, $2F,	$0E, $07, $04, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $01, $03, $01
	smpsVcCoarseFreq    $03, $00, $00, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $09, $18, $05
	smpsVcDecayRate2    $15, $10, $1F, $0B
	smpsVcDecayLevel    $02, $04, $02, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $04, $07, $0E
