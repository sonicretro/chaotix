Sfx41_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx41_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $04
	smpsHeaderSFXChannel cFM6, Sfx41_FM6, $10, $01
	smpsHeaderSFXChannel cFM5, Sfx41_FM5, $00, $01
	smpsHeaderSFXChannel cFM4, Sfx41_FM4, $10, $01
	smpsHeaderSFXChannel cPSG3, Sfx41_PSG3, $00, $00

Sfx41_FM6:
	smpsPan             panRight, $00
	dc.b	nRst, $02
	smpsJump            Sfx41_FM5

Sfx41_FM4:
	smpsPan             panLeft, $00
	dc.b	nRst, $01

Sfx41_FM5:
	smpsFMvoice         $00
	smpsModSet          $03, $01, $20, $04

Sfx41_Loop1:
	dc.b	nC0, $18
	smpsFMAlterVol      $0A
	smpsLoop            $00, $06, Sfx41_Loop1
	smpsStop

Sfx41_PSG3:
	smpsModSet          $01, $01, $0F, $05
	smpsPSGform         $E7

Sfx41_Loop2:
	dc.b	nB3, $18, smpsNoAttack
	smpsPSGAlterVol     $03
	smpsLoop            $00, $05, Sfx41_Loop2
	smpsStop

Sfx41_Voices:
	; Voice $00
	; $F9
	; $21, $30, $10, $32,	$1F, $1F, $1F, $1F
	; $05, $18, $09, $02,	$0B, $1F, $10, $05
	; $1F, $2F, $4F, $2F,	$0E, $07, $04, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $03
	smpsVcDetune        $03, $01, $03, $02
	smpsVcCoarseFreq    $02, $00, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $09, $18, $05
	smpsVcDecayRate2    $05, $10, $1F, $0B
	smpsVcDecayLevel    $02, $04, $02, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $04, $07, $0E
