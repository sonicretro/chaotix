TakeOff_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     TakeOff_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $02
	smpsHeaderFM        TakeOff_FM1, $00, $0C
	smpsHeaderFM        TakeOff_FM2, $00, $16
	smpsHeaderFM        TakeOff_FM3, $00, $13
	smpsHeaderFM        TakeOff_FM4, $00, $0B
	smpsHeaderFM        TakeOff_FM5, $00, $0A
	smpsHeaderFM        TakeOff_FM6, $00, $18
	smpsHeaderPSG       TakeOff_PSG1, $00, $01, $00, cTone_0C
	smpsHeaderPSG       TakeOff_PSG2, $00, $04, $00, cTone_0C
	smpsHeaderPSG       TakeOff_PSG3, $23, $02, $00, cTone_02
	smpsHeaderPWM       TakeOff_PWM1, $AA
	smpsHeaderPWM       TakeOff_PWM2, $99
	smpsHeaderPWM       TakeOff_PWM3, $AA
	smpsHeaderPWM       TakeOff_PWM4, $77

TakeOff_FM1:
	smpsFMvoice         $00
	dc.b	nRst, $24

TakeOff_Jump1:
	dc.b	nD2, $0C, nRst, nD2, $18, nRst, nD2, nRst
	dc.b	nD2, nRst, nD2, $06, nRst, nE2, $0C, smpsNoAttack
	dc.b	$0C, nRst, nE2, $18, nRst, nE2, nRst, nE2
	dc.b	nRst, nE2, $06, nRst, nD2, $0C, smpsNoAttack, $0C
	dc.b	nRst, nD2, $18, nRst, nD2, nRst, nD2, nRst
	dc.b	nD2, $06, nRst, nE2, $0C, smpsNoAttack, $0C, nRst
	dc.b	nE2, $18, nRst, nE2, nRst, $0C, nE2, $06
	dc.b	nRst, nE2, nRst, nE2, nRst, nE2, nE3, nE2
	dc.b	nRst, nFs2, nFs3, nFs2, nRst
	smpsJump            TakeOff_Jump1

TakeOff_FM2:
	smpsFMvoice         $03
	dc.b	nRst, $24

TakeOff_Jump2:
	smpsCall            TakeOff_Call1
	dc.b	smpsNoAttack, $5A
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsCall            TakeOff_Call1
	dc.b	smpsNoAttack, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD4, $4E
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsCall            TakeOff_Call1
	dc.b	smpsNoAttack, $36
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD3, $0C, nE3, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nA3, $1E
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nB3, $3C, smpsNoAttack, $5A
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsJump            TakeOff_Jump2

TakeOff_Call1:
	dc.b	nRst, $18, nA3, $1E
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nB3, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3, $0C
	smpsReturn

TakeOff_FM3:
	smpsFMvoice         $02
	dc.b	nRst, $24

TakeOff_Loop1:
	smpsPan             panLeft, $00
	dc.b	nRst, $0C, nD4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD5, $0C, nD4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panRight, $00
	dc.b	nRst, $0C, nD4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD5, $0C, nD4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsLoop            $00, $08, TakeOff_Loop1
	smpsJump            TakeOff_Loop1

TakeOff_FM4:
	smpsFMvoice         $01
	smpsModSet          $0F, $01, $01, $06
	dc.b	nRst, $24

TakeOff_Jump3:
	dc.b	nG3, $60, smpsNoAttack, $4E
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nFs3, $0C, smpsNoAttack, $60, smpsNoAttack, $4E
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $0C, smpsNoAttack, $60, smpsNoAttack, $4E
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nFs3, $0C, smpsNoAttack, $60, smpsNoAttack, $60
	smpsJump            TakeOff_Jump3

TakeOff_FM5:
	smpsFMvoice         $01
	smpsModSet          $0F, $01, $02, $04
	dc.b	nRst, $24

TakeOff_Jump4:
	dc.b	nE3, $60, smpsNoAttack, $4E
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD3, $0C, smpsNoAttack, $60, smpsNoAttack, $4E
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, $0C, smpsNoAttack, $60, smpsNoAttack, $4E
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD3, $0C, smpsNoAttack, $60, smpsNoAttack, $60
	smpsJump            TakeOff_Jump4

TakeOff_FM6:
	smpsFMvoice         $03
	smpsPan             panLeft, $00
	smpsModSet          $05, $01, $04, $06
	dc.b	nRst, $24, nRst, $0C

TakeOff_Jump9:
	smpsJump            TakeOff_Jump2

	; Unused data
	smpsJump            TakeOff_Jump9

TakeOff_PSG1:
	smpsPSGvoice        cTone_08
	dc.b	nRst, $24

TakeOff_Jump5:
	dc.b	nRst, $60, nRst, $18, nA3, nRst, $0C, nB3
	dc.b	nRst, nG3, smpsNoAttack, $18, nRst, $48, nRst, $24
	dc.b	nA3, $0C, nB3, $06, nRst, nG3, nRst, nE3
	dc.b	$0C, nD3, nRst, $60, nRst, $0C, nA3, nB3
	dc.b	$06, nRst, nD4, $3C, nRst, $0C, nD4, nC4
	dc.b	$06, nRst, nB3, nRst, nA3, $0C, nG3, $06
	dc.b	nRst, nA3, $0C, nB3, $06, nRst, nG3, $0C
	dc.b	nA3, $06, nRst, nB3, $0C, nG3, $06, nRst
	dc.b	nB3, $12, nRst, $06, nA3, $12, nRst, $06
	smpsJump            TakeOff_Jump5

TakeOff_PSG2:
	smpsPSGvoice        cTone_08
	smpsModSet          $02, $01, $01, $03
	dc.b	nRst, $24, nRst, $0C

TakeOff_Jump10:
	smpsJump            TakeOff_Jump5

	; Unused data
	smpsJump            TakeOff_Jump10

TakeOff_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $24

TakeOff_Jump6:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C, $0C, $0C, $0C, $0C, $06, $06
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C, $0C
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsPSGvoice        cTone_02
	dc.b	$0C, $0C

TakeOff_Loop2:
	dc.b	nRst, nC4, $0C, $0C, $0C, $0C, $06, $06
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C, $0C
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsPSGvoice        cTone_02
	dc.b	$0C, $0C
	smpsLoop            $00, $03, TakeOff_Loop2
	smpsJump            TakeOff_Jump6

TakeOff_PWM1:
	dc.b	pElecKick, $06, pElecKick, $06, nRst, $18

TakeOff_Jump7:
	dc.b	pElecKick, $30, pElecKick, pElecKick, pElecKick, $24, $0C, nRst
	dc.b	$30, pElecKick, pElecKick, pElecKick, $24, $0C, nRst, $30
	dc.b	pElecKick, pElecKick, pElecKick, $24, $0C, nRst, $30, pElecKick
	dc.b	pElecKick, $30, pElecKick
	smpsJump            TakeOff_Jump7

TakeOff_PWM2:
	dc.b	$96, $0C, pSnare, $18

TakeOff_Loop3:
	dc.b	nRst, $18, pTomMid, nRst, pTomMid
	smpsLoop            $00, $07, TakeOff_Loop3
	dc.b	nRst, $0C, pSnare, pSnare, pTomMid, pSnare, $06, pSnare
	dc.b	pTomMid, nRst, pTomMid, pSnare, pSnare, pSnare
	smpsJump            TakeOff_Loop3

TakeOff_PWM3:
	dc.b	$96, $0C
	smpsFMAlterVol      $FC
	dc.b	pSplash, $18
	smpsFMAlterVol      $04

TakeOff_Jump8:
	smpsFMAlterVol      $C0
	dc.b	pCrash, $18
	smpsFMAlterVol      $40
	smpsFMAlterVol      $90
	dc.b	pTomLo, nRst, pTomLo, nRst, pTomLo, nRst, pTomLo, $0C
	smpsFMAlterVol      $70
	smpsFMAlterVol      $FC
	dc.b	pSplash
	smpsFMAlterVol      $04
	smpsFMAlterVol      $90
	dc.b	nRst, $18, pTomLo, nRst, pTomLo, nRst, pTomLo, nRst
	dc.b	pTomLo, $0C
	smpsFMAlterVol      $70
	smpsFMAlterVol      $C0
	dc.b	pCrash
	smpsFMAlterVol      $40
	smpsFMAlterVol      $90
	dc.b	nRst, $18, pTomLo, nRst, pTomLo, nRst, pTomLo, nRst
	dc.b	pTomLo, $0C
	smpsFMAlterVol      $70
	smpsFMAlterVol      $FC
	dc.b	pSplash
	smpsFMAlterVol      $04
	smpsFMAlterVol      $90
	dc.b	nRst, $18, pTomLo, nRst, pTomLo
	smpsFMAlterVol      $70
	smpsFMAlterVol      $C0
	dc.b	pCrash, $48
	smpsFMAlterVol      $40
	smpsFMAlterVol      $90
	dc.b	pTomLo, $18
	smpsFMAlterVol      $70
	smpsJump            TakeOff_Jump8

TakeOff_PWM4:
	dc.b	$96, $24

TakeOff_Loop4:
	dc.b	nRst, $0C
	smpsFMAlterVol      $F9
	dc.b	pElecHiHat, $06, $06, $06, $12
	smpsFMAlterVol      $07
	dc.b	nRst, $0C
	smpsFMAlterVol      $90
	dc.b	pClap, $06, $06, $06, $12
	smpsFMAlterVol      $70
	smpsLoop            $00, $08, TakeOff_Loop4
	smpsJump            TakeOff_Loop4

TakeOff_Voices:
	; Voice $00
	; $4B
	; $10, $11, $21, $62,	$3F, $9F, $9F, $9F
	; $02, $0D, $13, $02,	$12, $0A, $05, $07
	; $0F, $6F, $5F, $0F,	$24, $0D, $15, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $01
	smpsVcUnusedBits    $01
	smpsVcDetune        $06, $02, $01, $01
	smpsVcCoarseFreq    $02, $01, $01, $00
	smpsVcRateScale     $02, $02, $02, $00
	smpsVcAttackRate    $1F, $1F, $1F, $3F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $13, $0D, $02
	smpsVcDecayRate2    $07, $05, $0A, $12
	smpsVcDecayLevel    $00, $05, $06, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $15, $0D, $24

	; Voice $01
	; $29
	; $36, $74, $73, $31,	$5E, $5F, $5C, $5F
	; $12, $0F, $10, $10,	$04, $07, $02, $01
	; $3F, $4F, $0F, $0F,	$12, $11, $2D, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $03
	smpsVcCoarseFreq    $01, $03, $04, $06
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1C, $1F, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $10, $0F, $12
	smpsVcDecayRate2    $01, $02, $07, $04
	smpsVcDecayLevel    $00, $00, $04, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $2D, $11, $12

	; Voice $02
	; $3C
	; $74, $72, $11, $11,	$19, $1E, $19, $1E
	; $01, $01, $01, $01,	$00, $00, $00, $00
	; $F7, $FC, $F7, $FC,	$18, $80, $0A, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $01, $07, $07
	smpsVcCoarseFreq    $01, $01, $02, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1E, $19, $1E, $19
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $01, $01, $01
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0C, $07, $0C, $07
	smpsVcTotalLevel    $80, $0A, $80, $18

	; Voice $03
	; $2C
	; $22, $04, $02, $14,	$51, $52, $50, $52
	; $0D, $00, $06, $04,	$04, $05, $02, $00
	; $1C, $1F, $2B, $1F,	$0E, $80, $13, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $00, $02
	smpsVcCoarseFreq    $04, $02, $04, $02
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $12, $10, $12, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $06, $00, $0D
	smpsVcDecayRate2    $00, $02, $05, $04
	smpsVcDecayLevel    $01, $02, $01, $01
	smpsVcReleaseRate   $0F, $0B, $0F, $0C
	smpsVcTotalLevel    $80, $13, $80, $0E
