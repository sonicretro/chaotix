Moonrise_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Moonrise_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $25
	smpsHeaderFM        Moonrise_FM1, $00, $0D
	smpsHeaderFM        Moonrise_FM2, $00, $0C
	smpsHeaderFM        Moonrise_FM3, $00, $0C
	smpsHeaderFM        Moonrise_FM4, $00, $0C
	smpsHeaderFM        Moonrise_FM5, $00, $0C
	smpsHeaderFM        Moonrise_FM6, $0C, $15
	smpsHeaderPSG       Moonrise_PSG1, $00, $01, $00, cTone_0C
	smpsHeaderPSG       Moonrise_PSG2, $00, $03, $00, cTone_0C
	smpsHeaderPSG       Moonrise_PSG3, $23, $02, $00, cTone_02
	smpsHeaderPWM       Moonrise_PWM1, $AA
	smpsHeaderPWM       Moonrise_PWM2, $BB
	smpsHeaderPWM       Moonrise_PWM3, $99
	smpsHeaderPWM       Moonrise_PWM4, $75

Moonrise_FM1:
	smpsFMvoice         $00

Moonrise_Loop1:
	smpsCall            Moonrise_Call1
	smpsLoop            $01, $02, Moonrise_Loop1

Moonrise_Loop2:
	smpsCall            Moonrise_Call1
	smpsLoop            $01, $04, Moonrise_Loop2
	smpsJump            Moonrise_Loop2

Moonrise_Call1:
	dc.b	nD2, $12, nD2, nC2, $0C
	smpsLoop            $00, $03, Moonrise_Call1
	dc.b	nG2, $12, nF2, nC2, $0C
	smpsReturn

Moonrise_FM2:
	smpsFMvoice         $01
	smpsPan             panLeft, $00
	dc.b	nRst, $60, nRst, $54, nD3, $0C, smpsNoAttack, $60
	smpsPan             panCenter, $00
	smpsFMvoice         $02
	smpsFMAlterVol      $09
	smpsAlterPitch      $0C
	dc.b	nG4, $12
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nFs4, $12
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF4, $06, nC4, nD4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nD4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF4, $0C, nD4, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nD4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00

Moonrise_Jump1:
	dc.b	nF4, $12, nD4, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $06
	smpsFMvoice         $01
	smpsFMAlterVol      $F7
	smpsAlterPitch      $F4

Moonrise_Loop3:
	smpsCall            Moonrise_Call2
	smpsLoop            $00, $06, Moonrise_Loop3
	smpsFMvoice         $02
	smpsFMAlterVol      $09
	smpsAlterPitch      $0C
	dc.b	nRst, $06, nC4, nD4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nD4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF4, $0C, nD4, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nD4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF4, $12, nD4, $0C, nRst, $12
	smpsPan             panCenter, $00
	smpsFMvoice         $01
	smpsFMAlterVol      $F7
	smpsAlterPitch      $F4
	smpsCall            Moonrise_Call2
	smpsCall            Moonrise_Call2
	smpsCall            Moonrise_Call2
	smpsFMvoice         $02
	smpsFMAlterVol      $09
	smpsAlterPitch      $0C

Moonrise_Loop4:
	dc.b	nF4, $12
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsLoop            $00, $06, Moonrise_Loop4
	dc.b	nF4, $06, nC4, nD4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nD4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF4, $0C, nD4, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nD4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsJump            Moonrise_Jump1

Moonrise_Call2:
	dc.b	nF3, $12, $06
	smpsFMAlterVol      $0A
	dc.b	nRst, $0C, nF3, $06, nRst
	smpsFMAlterVol      $F6
	smpsReturn

Moonrise_FM3:
	smpsFMvoice         $01
	dc.b	nRst, $60, nRst, $58, nF3, $08, smpsNoAttack, $60
	dc.b	smpsNoAttack, $60
	smpsPan             panRight, $00

Moonrise_Loop5:
	smpsCall            Moonrise_Call3
	smpsCall            Moonrise_Call3
	smpsCall            Moonrise_Call3
	smpsAlterPitch      $02
	smpsCall            Moonrise_Call3
	smpsAlterPitch      $FE
	smpsLoop            $00, $04, Moonrise_Loop5
	smpsJump            Moonrise_Loop5

Moonrise_Call3:
	dc.b	nA3, $12, $06
	smpsFMAlterVol      $0A
	dc.b	nRst, $0C, nA3, $06, nRst
	smpsFMAlterVol      $F6
	smpsReturn

Moonrise_FM4:
	smpsFMvoice         $01
	dc.b	nRst, $60, nRst, $5C, nA3, $04, smpsNoAttack, $60
	dc.b	smpsNoAttack, $60
	smpsPan             panLeft, $00

Moonrise_Loop6:
	smpsCall            Moonrise_Call4
	smpsAlterPitch      $FF
	smpsCall            Moonrise_Call4
	smpsAlterPitch      $01
	smpsCall            Moonrise_Call4
	smpsAlterPitch      $02
	smpsCall            Moonrise_Call4
	smpsAlterPitch      $FE
	smpsLoop            $00, $04, Moonrise_Loop6
	smpsJump            Moonrise_Loop6

Moonrise_Call4:
	dc.b	nC3, $12, $06
	smpsFMAlterVol      $0A
	dc.b	nRst, $0C, nC3, $06, nRst
	smpsFMAlterVol      $F6
	smpsReturn

Moonrise_FM5:
	smpsFMvoice         $01
	smpsPan             panRight, $00
	dc.b	nRst, $60, nRst, nC4, smpsNoAttack, $30
	smpsFMAlterVol      $0A
	smpsCall            Moonrise_Call5

Moonrise_Loop7:
	smpsCall            Moonrise_Call6
	smpsCall            Moonrise_Call7
	smpsCall            Moonrise_Call6
	smpsCall            Moonrise_Call8
	smpsCall            Moonrise_Call6
	smpsCall            Moonrise_Call7
	smpsCall            Moonrise_Call6
	smpsCall            Moonrise_Call5
	smpsLoop            $00, $02, Moonrise_Loop7
	smpsJump            Moonrise_Loop7

Moonrise_Call5:
	smpsFMvoice         $03
	smpsPan             panLeft, $00
	dc.b	nG5, $06, nF5, nD5, nG4
	smpsPan             panRight, $00
	dc.b	nG5, nF5, nD5, nG4
	smpsPan             panCenter, $00
	smpsFMvoice         $04
	smpsReturn

Moonrise_Call6:
	dc.b	nG4, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nG4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF4, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nF4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nD4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nA3
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsReturn

Moonrise_Call7:
	dc.b	nG4, $06, nF4
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nF4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nD4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nA3
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3
	smpsReturn

Moonrise_Call8:
	dc.b	nG4, $06, nF4
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nF4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nD4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nG3
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3
	smpsReturn

Moonrise_FM6:
	smpsFMvoice         $02
	dc.b	nRst, $60, nRst, nRst, nD4, $12
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $12
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC4, $06, nG3, nA3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nA3
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC4, $0C, nA3, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nA3
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00

Moonrise_Jump2:
	dc.b	nC4, $12, nA3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $36, nRst, $60, nRst, nRst, $30, nRst
	dc.b	$06, nG3, nA3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nA3
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC4, $0C, nA3, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nA3
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC4, $12, nA3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $06, nRst, $30, nRst, $60

Moonrise_Loop8:
	dc.b	nF3, $12
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsLoop            $00, $06, Moonrise_Loop8
	dc.b	nC4, $06, nG3, nA3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nD4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC4, $0C, nA3, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nD4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsJump            Moonrise_Jump2

Moonrise_PSG1:
	smpsPSGvoice        cTone_08
	dc.b	nRst, $60, nRst, nRst, nRst, $30, nG4, $06
	dc.b	nFs4, nF4, nD4, nC4, nA3, nG3, nD3

Moonrise_Jump3:
	smpsCall            Moonrise_Call9
	smpsJump            Moonrise_Jump3

Moonrise_Call9:
	dc.b	nF3, $0C, nRst, nG3, nRst, nB3, $12, nG3
	dc.b	$06, nRst, $0C, nC4, smpsNoAttack, $06, nRst, nB3
	dc.b	nRst, nC4, nD4, nRst, nC4, $0C, nRst, $06
	dc.b	nB3, $12, nRst, $06, nG3, $0C, nF3, $0C
	dc.b	nRst, nG3, nRst, nB3, $12, nG3, $06, nRst
	dc.b	$0C, nF4, smpsNoAttack, $06, nRst, nG4, nRst, nF4
	dc.b	nE4, nRst, nD4, $36, nRst, $0C, nC4, $18
	dc.b	nA3, $06, nRst, nD4, $12, nA3, $06, nRst
	dc.b	$18, nRst, $0C, nC4, $18, nA3, $06, nRst
	dc.b	nC4, $12, nD4, $06, nRst, $0C, nF4, $06
	dc.b	nFs4, nG4, $60, smpsNoAttack, $24, nRst, $0C, nG4
	dc.b	$06, nFs4, nF4, nD4, nC4, nA3, nG3, nD3
	smpsReturn

Moonrise_PSG2:
	smpsModSet          $05, $02, $01, $04
	smpsPSGvoice        cTone_08
	dc.b	nRst, $06, nRst, $60, nRst, nRst, nRst, $30
	dc.b	nG4, $06, nFs4, nF4, nD4, nC4, nA3, nG3
	dc.b	nD3

Moonrise_Jump4:
	smpsCall            Moonrise_Call9
	smpsJump            Moonrise_Jump4

Moonrise_PSG3:
	smpsPSGform         $E7

Moonrise_Loop9:
	smpsCall            Moonrise_Call10
	smpsLoop            $01, $04, Moonrise_Loop9

Moonrise_Loop10:
	smpsCall            Moonrise_Call10
	smpsLoop            $01, $08, Moonrise_Loop10
	smpsJump            Moonrise_Loop10

Moonrise_Call10:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $06
	smpsLoop            $00, $0A, Moonrise_Call10
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsPSGvoice        cTone_02
	dc.b	$06, $06
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsReturn

Moonrise_PWM1:
	dc.b	pKick, $30, $30, $30, $06, $0C, $06, nRst
	dc.b	$18
	smpsLoop            $00, $02, Moonrise_PWM1

Moonrise_Loop11:
	dc.b	pKick, $12, $06, nRst, $18
	smpsLoop            $00, $03, Moonrise_Loop11
	dc.b	pKick, $06, $0C, $06, nRst, $18
	smpsLoop            $01, $04, Moonrise_Loop11
	smpsJump            Moonrise_Loop11

Moonrise_PWM2:
	dc.b	$96, $60, nRst, $3C, pSnare, $0C
	smpsFMAlterVol      $F9
	dc.b	pTomHi, $06
	smpsFMAlterVol      $07
	dc.b	pTomMid, $0C
	smpsFMAlterVol      $90
	dc.b	pTomLo, $06
	smpsFMAlterVol      $70
	dc.b	nRst, $60, smpsNoAttack, $3C, pSnare, $04, $04, $04
	dc.b	$06, $06, $06, $06

Moonrise_Jump5:
	dc.b	nRst, $18, pSnare, nRst, pSnare, nRst, pSnare, nRst
	dc.b	pSnare, nRst, pSnare, nRst, pSnare, nRst, pSnare, nRst
	dc.b	pSnare, $12, $06, nRst, $18, pSnare, nRst, pSnare
	dc.b	nRst, pSnare, nRst, pSnare, nRst, pSnare, nRst, pSnare
	dc.b	nRst, pSnare, nRst, $0C, pSnare, $04, $04, $04
	dc.b	$06, $06, $06, $06
	smpsJump            Moonrise_Jump5

Moonrise_PWM3:
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60, nRst, pCrash
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pSplash
	smpsFMAlterVol      $04

Moonrise_Jump6:
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60, nRst, nRst, nRst, pCrash
	smpsFMAlterVol      $40
	dc.b	nRst
	smpsFMAlterVol      $FC
	dc.b	pSplash
	smpsFMAlterVol      $04
	dc.b	nRst
	smpsJump            Moonrise_Jump6

Moonrise_PWM4:
	smpsCall            Moonrise_Call11
	smpsLoop            $01, $04, Moonrise_PWM4

Moonrise_Loop12:
	smpsCall            Moonrise_Call11
	smpsLoop            $01, $08, Moonrise_Loop12
	smpsJump            Moonrise_Loop12

Moonrise_Call11:
	dc.b	pElecHiHat, $06
	smpsFMAlterVol      $AB
	dc.b	$06
	smpsFMAlterVol      $22
	dc.b	$06
	smpsFMAlterVol      $DE
	dc.b	$06
	smpsFMAlterVol      $55
	smpsLoop            $00, $04, Moonrise_Call11
	smpsReturn

Moonrise_Voices:
	; Voice $00
	; $3C
	; $01, $00, $00, $00,	$1F, $1F, $15, $1F
	; $11, $0D, $12, $05,	$07, $04, $09, $02
	; $55, $3A, $25, $1A,	$1A, $80, $07, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $15, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $12, $0D, $11
	smpsVcDecayRate2    $02, $09, $04, $07
	smpsVcDecayLevel    $01, $02, $03, $05
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $80, $07, $80, $1A

	; Voice $01
	; $84
	; $3F, $01, $01, $01,	$1F, $1F, $5F, $5F
	; $0E, $12, $0F, $12,	$0F, $06, $05, $06
	; $2F, $1F, $1F, $1F,	$3F, $80, $12, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $02
	smpsVcDetune        $00, $00, $00, $03
	smpsVcCoarseFreq    $01, $01, $01, $0F
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $12, $0F, $12, $0E
	smpsVcDecayRate2    $06, $05, $06, $0F
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $12, $80, $3F

	; Voice $02
	; $3D
	; $02, $02, $01, $02,	$94, $19, $19, $19
	; $0F, $0D, $0D, $0D,	$07, $04, $04, $04
	; $25, $1A, $1A, $1A,	$14, $80, $80, $80
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
	smpsVcTotalLevel    $80, $80, $80, $14

	; Voice $03
	; $2D
	; $77, $65, $05, $15,	$1F, $5F, $5F, $5F
	; $00, $03, $03, $05,	$00, $01, $02, $01
	; $0F, $1C, $1C, $1C,	$22, $83, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $06, $07
	smpsVcCoarseFreq    $05, $05, $05, $07
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $03, $03, $00
	smpsVcDecayRate2    $01, $02, $01, $00
	smpsVcDecayLevel    $01, $01, $01, $00
	smpsVcReleaseRate   $0C, $0C, $0C, $0F
	smpsVcTotalLevel    $80, $80, $83, $22

	; Voice $04
	; $76
	; $7A, $32, $51, $11,	$1F, $7F, $9F, $9D
	; $0A, $0E, $0B, $0A,	$01, $02, $05, $02
	; $AF, $8F, $9F, $8F,	$14, $80, $80, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $06
	smpsVcUnusedBits    $01
	smpsVcDetune        $01, $05, $03, $07
	smpsVcCoarseFreq    $01, $01, $02, $0A
	smpsVcRateScale     $02, $02, $01, $00
	smpsVcAttackRate    $1D, $1F, $3F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0B, $0E, $0A
	smpsVcDecayRate2    $02, $05, $02, $01
	smpsVcDecayLevel    $08, $09, $08, $0A
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $80, $80, $14
