MechanicalDance_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     MechanicalDance_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $3A
	smpsHeaderFM        MechanicalDance_FM1, $00, $0D
	smpsHeaderFM        MechanicalDance_FM2, $00, $0D
	smpsHeaderFM        MechanicalDance_FM3, $00, $0D
	smpsHeaderFM        MechanicalDance_FM4, $00, $0E
	smpsHeaderFM        MechanicalDance_FM5, $00, $0E
	smpsHeaderFM        MechanicalDance_FM6, $0C, $16
	smpsHeaderPSG       MechanicalDance_PSG1, $E8, $02, $00, cTone_0C
	smpsHeaderPSG       MechanicalDance_PSG2, $E8, $02, $00, cTone_0C
	smpsHeaderPSG       MechanicalDance_PSG3, $23, $01, $00, cTone_02
	smpsHeaderPWM       MechanicalDance_PWM1, $BB
	smpsHeaderPWM       MechanicalDance_PWM2, $CC
	smpsHeaderPWM       MechanicalDance_PWM3, $BB
	smpsHeaderPWM       MechanicalDance_PWM4, $A6

MechanicalDance_FM1:
	smpsFMvoice         $00
	dc.b	nRst, $60, nRst, $54, nCs1, $0C

MechanicalDance_Loop1:
	dc.b	nEb1, $0C, nCs1, nEb1, nRst, $06, nEb1, nRst
	dc.b	nEb1, $06, $0C, nFs1, nCs1
	smpsLoop            $00, $04, MechanicalDance_Loop1
	smpsJump            MechanicalDance_Loop1

MechanicalDance_FM2:
	smpsFMvoice         $01
	smpsPan             panRight, $00
	smpsPitchSlideSpeed $03
	smpsModSet          $01, $01, $02, $03
	smpsFMAlterVol      $0F
	smpsCall            MechanicalDance_Call1
	smpsFMvoice         $03
	smpsPan             panCenter, $00
	smpsPitchSlideSpeed $FD
	smpsModSet          $00, $00, $00, $00
	smpsFMAlterVol      $F1
	smpsAlterPitch      $0C

MechanicalDance_Jump1:
	dc.b	nCs3, $0C, nEb3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsFMvoice         $02
	smpsPan             panRight, $00
	dc.b	nEb4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst
	smpsFMvoice         $03
	smpsPan             panCenter, $00
	dc.b	nFs3, $0C, nEb3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsFMvoice         $02
	smpsPan             panRight, $00
	dc.b	nEb4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst
	smpsFMvoice         $03
	smpsPan             panCenter, $00
	dc.b	nCs3, $0C, nEb3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nFs3, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nAb3, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nBb3, $0C, nCs3, $0C, nEb3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsFMvoice         $02
	smpsPan             panRight, $00
	dc.b	nEb4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst
	smpsFMvoice         $03
	smpsPan             panCenter, $00
	dc.b	nFs3, $0C, nEb3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsFMvoice         $02
	smpsPan             panRight, $00
	dc.b	nEb4, $06
	smpsFMvoice         $03
	smpsPan             panCenter, $00
	dc.b	nA3, $0C, smpsNoAttack, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$0C, nAb3, nFs3, $0C, smpsNoAttack, $0C, nBb2, nA2
	dc.b	nAb2
	smpsJump            MechanicalDance_Jump1

MechanicalDance_FM3:
	smpsFMvoice         $01
	smpsPan             panLeft, $00
	smpsPitchSlideSpeed $03
	smpsModSet          $01, $01, $02, $03
	smpsFMAlterVol      $0F
	smpsCall            MechanicalDance_Call2
	smpsCall            MechanicalDance_Call2
	smpsFMvoice         $03
	smpsPan             panCenter, $00
	smpsPitchSlideSpeed $FD
	smpsModSet          $00, $00, $00, $00
	smpsFMAlterVol      $F1
	smpsAlterPitch      $0C

MechanicalDance_Jump2:
	dc.b	nCs2, $0C, nEb2
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsFMvoice         $02
	smpsPan             panLeft, $00
	dc.b	nFs3, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst
	smpsFMvoice         $03
	smpsPan             panCenter, $00
	dc.b	nFs2, $0C, nEb2
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsFMvoice         $02
	smpsPan             panLeft, $00
	dc.b	nFs3, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst
	smpsFMvoice         $03
	smpsPan             panCenter, $00
	dc.b	nCs2, $0C, nEb2
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nFs2, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nAb2, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nBb2, $0C, nCs2, $0C, nEb2
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsFMvoice         $02
	smpsPan             panLeft, $00
	dc.b	nFs3, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst
	smpsFMvoice         $03
	smpsPan             panCenter, $00
	dc.b	nFs2, $0C, nEb2
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsFMvoice         $02
	smpsPan             panLeft, $00
	dc.b	nFs3, $06
	smpsFMvoice         $03
	smpsPan             panCenter, $00
	dc.b	nA2, $0C, smpsNoAttack, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$0C, nAb2, nFs2, $0C, smpsNoAttack, $0C, nBb1, nA1
	dc.b	nAb1
	smpsJump            MechanicalDance_Jump2

MechanicalDance_FM4:
	smpsFMvoice         $01
	smpsPan             panRight, $00
	smpsCall            MechanicalDance_Call1

MechanicalDance_Jump3:
	smpsCall            MechanicalDance_Call1
	smpsCall            MechanicalDance_Call1
	smpsJump            MechanicalDance_Jump3

MechanicalDance_Call1:
	dc.b	nBb4, $06, nEb4, nFs4, nBb4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nRst, nCs5
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nCs5, nCs5
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $18, nBb4, $06, nEb4, nFs4, nBb4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nRst, nCs5
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb4, nFs4, nEb4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12
	smpsReturn

MechanicalDance_FM5:
	smpsFMvoice         $01
	smpsPan             panLeft, $00
	dc.b	nRst, $1E, nCs4, $06, nD4, nEb4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nFs4, nEb4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nCs4, nD4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nEb4
	smpsCall            MechanicalDance_Call2

MechanicalDance_Loop2:
	smpsCall            MechanicalDance_Call2
	smpsLoop            $00, $04, MechanicalDance_Loop2
	smpsJump            MechanicalDance_Loop2

MechanicalDance_Call2:
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $18, nCs4, $06, nD4, nEb4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nFs4, nEb4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nCs4, nD4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nEb4
	smpsReturn

MechanicalDance_FM6:
	smpsFMvoice         $03
	dc.b	nRst, $60, nRst, nRst, $04
	smpsPitchSlideSpeed $FE
	smpsModSet          $01, $01, $02, $04
	smpsPan             panLeft, $00

MechanicalDance_Jump4:
	dc.b	nCs3, $0C, nEb3, nRst, $18, nFs3, $0C, nEb3
	dc.b	nRst, $18, nCs3, $0C, nEb3, nRst, nFs3, nRst
	dc.b	nAb3, nRst, nBb3, nCs3, $0C, nEb3, nRst, $18
	dc.b	nFs3, $0C, nEb3, nRst, nA3, smpsNoAttack, $06, nRst
	dc.b	nA3, $0C, nAb3, nFs3, $18, nBb2, $0C, nA2
	dc.b	nAb2
	smpsJump            MechanicalDance_Jump4

MechanicalDance_PSG1:
	smpsPSGvoice        cTone_09
	dc.b	nRst, $60, nRst
	smpsModSet          $05, $01, $02, $05

MechanicalDance_Loop3:
	dc.b	nBb3, $60, nCs4
	smpsLoop            $00, $02, MechanicalDance_Loop3
	smpsJump            MechanicalDance_Loop3

MechanicalDance_PSG2:
	smpsPSGvoice        cTone_09
	dc.b	nRst, $60, nRst
	smpsModSet          $05, $01, $02, $05

MechanicalDance_Loop4:
	dc.b	nCs3, $60, nFs3
	smpsLoop            $00, $02, MechanicalDance_Loop4
	smpsJump            MechanicalDance_Loop4

MechanicalDance_PSG3:
	smpsPSGform         $E7
	smpsCall            MechanicalDance_Call3

MechanicalDance_Jump5:
	smpsCall            MechanicalDance_Call3
	smpsCall            MechanicalDance_Call3
	smpsJump            MechanicalDance_Jump5

MechanicalDance_Call3:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsPSGvoice        cTone_02
	dc.b	$0C, $0C
	smpsLoop            $00, $04, MechanicalDance_Call3
	smpsReturn

MechanicalDance_PWM1:
	dc.b	pElecKick, $18, nRst, $12, pElecKick, $06, nRst, pElecKick
	dc.b	pElecKick, $0C, nRst, $18, pElecKick, $18, nRst, $12
	dc.b	pElecKick, $06, nRst, pElecKick, pElecKick, $0C, nRst, $18

MechanicalDance_Loop5:
	dc.b	pElecKick, $18, nRst, $12, pElecKick, $06, nRst, pElecKick
	dc.b	pElecKick, $0C, nRst, $18
	smpsLoop            $00, $08, MechanicalDance_Loop5
	smpsJump            MechanicalDance_Loop5

MechanicalDance_PWM2:
	dc.b	$96, $18, pElecSnare, nRst, pElecSnare, $12
	smpsFMAlterVol      $BC
	dc.b	$03
	smpsFMAlterVol      $22
	dc.b	$03
	smpsFMAlterVol      $22
	dc.b	nRst, $18, pElecSnare, nRst, pElecSnare

MechanicalDance_Loop6:
	dc.b	nRst, $18, pElecSnare, nRst, pElecSnare, $12
	smpsFMAlterVol      $BC
	dc.b	$03
	smpsFMAlterVol      $22
	dc.b	$03
	smpsFMAlterVol      $22
	dc.b	nRst, $18, pElecSnare, nRst, pElecSnare
	smpsLoop            $00, $04, MechanicalDance_Loop6
	smpsJump            MechanicalDance_Loop6

MechanicalDance_PWM3:
	smpsFMAlterVol      $FC
	dc.b	pSplash, $60
	smpsFMAlterVol      $04
	dc.b	nRst

MechanicalDance_Loop7:
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsLoop            $00, $02, MechanicalDance_Loop7
	smpsJump            MechanicalDance_Loop7

MechanicalDance_PWM4:
	dc.b	pElecHiHat, $06
	smpsFMAlterVol      $CD
	dc.b	$06, $06, $06
	smpsFMAlterVol      $33
	smpsLoop            $00, $08, MechanicalDance_PWM4

MechanicalDance_Loop8:
	dc.b	pElecHiHat, $06
	smpsFMAlterVol      $CD
	dc.b	$06, $06, $06
	smpsFMAlterVol      $33
	smpsLoop            $00, $20, MechanicalDance_Loop8
	smpsJump            MechanicalDance_Loop8

MechanicalDance_Voices:
	; Voice $00
	; $3B
	; $53, $32, $03, $04,	$5F, $9F, $5F, $FF
	; $14, $08, $0E, $07,	$1D, $1E, $1F, $0D
	; $8F, $7F, $3F, $8F,	$08, $13, $18, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $03, $05
	smpsVcCoarseFreq    $04, $03, $02, $03
	smpsVcRateScale     $03, $01, $02, $01
	smpsVcAttackRate    $3F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $0E, $08, $14
	smpsVcDecayRate2    $0D, $1F, $1E, $1D
	smpsVcDecayLevel    $08, $03, $07, $08
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $18, $13, $08

	; Voice $01
	; $3E
	; $2F, $75, $50, $32,	$FF, $1F, $1F, $1F
	; $12, $04, $5F, $0F,	$19, $00, $00, $00
	; $4F, $0F, $0F, $0F,	$13, $80, $80, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00, $00, $02, $00, $00
	smpsVcDetune        $03, $05, $07, $02
	smpsVcCoarseFreq    $02, $00, $05, $0F
	smpsVcRateScale     $00, $00, $00, $03
	smpsVcAttackRate    $1F, $1F, $1F, $3F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $1F, $04, $12
	smpsVcDecayRate2    $00, $00, $00, $19
	smpsVcDecayLevel    $00, $00, $00, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $80, $80, $13

	; Voice $02
	; $3D
	; $02, $02, $01, $02,	$94, $19, $19, $19
	; $0F, $0D, $0D, $0D,	$07, $04, $04, $04
	; $25, $1A, $1A, $1A,	$14, $83, $83, $83
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $02, $02
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $19, $19, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0D, $0D, $0F
	smpsVcDecayRate2    $04, $04, $04, $07
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $83, $83, $83, $14

	; Voice $03
	; $58
	; $53, $10, $11, $00,	$1F, $12, $1F, $1F
	; $06, $05, $06, $0C,	$02, $02, $02, $02
	; $2F, $2F, $2F, $1F,	$22, $0F, $1A, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $03
	smpsVcUnusedBits    $01
	smpsVcDetune        $00, $01, $01, $05
	smpsVcCoarseFreq    $00, $01, $00, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $06, $05, $06
	smpsVcDecayRate2    $02, $02, $02, $02
	smpsVcDecayLevel    $01, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1A, $0F, $22
