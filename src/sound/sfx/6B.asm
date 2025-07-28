Sfx6B_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx6B_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $04
	smpsHeaderSFXChannel cFM6, Sfx6B_FM6, $00, $10
	smpsHeaderSFXChannel cFM5, Sfx6B_FM5, $00, $10
	smpsHeaderSFXChannel cFM4, Sfx6B_FM4, $00, $10
	smpsHeaderSFXChannel cPSG3, Sfx6B_PSG3, $E8, $04

Sfx6B_FM6:
	smpsFMvoice         $00
	smpsModSet          $06, $01, $02, $05
	dc.b	nG4, $06, smpsNoAttack
	smpsFMAlterVol      $14

Sfx6B_Loop1:
	dc.b	$04, smpsNoAttack
	smpsFMAlterVol      $FE
	smpsLoop            $00, $10, Sfx6B_Loop1
	smpsFMAlterVol      $09
	dc.b	$10, smpsNoAttack, $0C, smpsNoAttack
	smpsPan             panLeft, $00
	dc.b	$0C, smpsNoAttack
	smpsPan             panCenter, $00
	dc.b	$0C, smpsNoAttack
	smpsPan             panRight, $00
	dc.b	$0C, smpsNoAttack
	smpsPan             panCenter, $00
	dc.b	$0C, smpsNoAttack
	smpsPan             panLeft, $00
	dc.b	$0C, smpsNoAttack
	smpsPan             panCenter, $00
	dc.b	$0C, smpsNoAttack
	smpsPan             panRight, $00
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $08
	smpsPan             panCenter, $00
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $08
	smpsPan             panCenter, $00
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $08
	smpsPan             panRight, $00
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $08
	smpsPan             panCenter, $00
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $08
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsStop

Sfx6B_FM5:
	smpsFMvoice         $00
	smpsModSet          $06, $01, $02, $04
	smpsPan             panLeft, $00
	dc.b	nRst, $06, nC4, $06, smpsNoAttack
	smpsFMAlterVol      $14
	smpsJump            Sfx6B_Loop1

Sfx6B_FM4:
	smpsFMvoice         $00
	smpsModSet          $06, $02, $03, $02
	smpsPan             panRight, $00
	dc.b	nRst, $0C, nE4, $06, smpsNoAttack
	smpsFMAlterVol      $14
	smpsJump            Sfx6B_Loop1

Sfx6B_PSG3:
	smpsPSGvoice        cTone_05
	smpsModSet          $05, $02, $01, $10
	dc.b	nRst, $12, nD3, $04, smpsNoAttack, $2C
	smpsPSGform         $E7
	smpsAlterPitch      $18
	smpsAlterPitch      $23
	smpsPSGvoice        cTone_07
	smpsModSet          $00, $00, $00, $00
	dc.b	nC4, $20, smpsNoAttack, $10

Sfx6B_Loop2:
	dc.b	smpsNoAttack
	smpsPSGAlterVol     $FF
	dc.b	$10
	smpsLoop            $00, $03, Sfx6B_Loop2
	dc.b	smpsNoAttack, $20
	smpsStop

Sfx6B_Voices:
	; Voice $00
	; $5C
	; $51, $44, $52, $12,	$FF, $C5, $AA, $F7
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$13, $80, $0E, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $03
	smpsVcUnusedBits    $01
	smpsVcDetune        $01, $05, $04, $05
	smpsVcCoarseFreq    $02, $02, $04, $01
	smpsVcRateScale     $03, $02, $03, $03
	smpsVcAttackRate    $37, $2A, $05, $3F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $0E, $80, $13

	; Voice $01
	; $2D
	; $77, $65, $05, $15,	$1F, $DF, $DF, $DF
	; $00, $00, $03, $02,	$00, $04, $02, $01
	; $BF, $4C, $6C, $5C,	$22, $8E, $8E, $8E
	smpsVcAlgorithm     $05
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $06, $07
	smpsVcCoarseFreq    $05, $05, $05, $07
	smpsVcRateScale     $03, $03, $03, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $03, $00, $00
	smpsVcDecayRate2    $01, $02, $04, $00
	smpsVcDecayLevel    $05, $06, $04, $0B
	smpsVcReleaseRate   $0C, $0C, $0C, $0F
	smpsVcTotalLevel    $8E, $8E, $8E, $22
