SurgingPower_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     SurgingPower_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $75
	smpsHeaderFM        SurgingPower_FM1, $00, $0D
	smpsHeaderFM        SurgingPower_FM2, $00, $11
	smpsHeaderFM        SurgingPower_FM3, $00, $11
	smpsHeaderFM        SurgingPower_FM4, $00, $16
	smpsHeaderFM        SurgingPower_FM5, $00, $16
	smpsHeaderFM        SurgingPower_FM6, $00, $16
	smpsHeaderPSG       SurgingPower_PSG1, $00, $05, $00, cTone_0C
	smpsHeaderPSG       SurgingPower_PSG2, $F4, $04, $00, cTone_0C
	smpsHeaderPSG       SurgingPower_PSG3, $23, $02, $00, cTone_02
	smpsHeaderPWM       SurgingPower_PWM1, $AA
	smpsHeaderPWM       SurgingPower_PWM2, $BB
	smpsHeaderPWM       SurgingPower_PWM3, $BB
	smpsHeaderPWM       SurgingPower_PWM4, $88

SurgingPower_FM1:
	smpsFMvoice         $00
	dc.b	nRst, $18

SurgingPower_Jump1:
	smpsCall            SurgingPower_Call1
	smpsCall            SurgingPower_Call1
	smpsAlterPitch      $FF
	smpsCall            SurgingPower_Call1
	smpsAlterPitch      $05
	smpsCall            SurgingPower_Call1
	smpsAlterPitch      $FC
	smpsCall            SurgingPower_Call1
	smpsCall            SurgingPower_Call1
	smpsAlterPitch      $FF
	smpsCall            SurgingPower_Call1
	smpsAlterPitch      $01
	dc.b	nRst, $12, nD3, $03, nRst
	smpsCall            SurgingPower_Call1
	smpsCall            SurgingPower_Call1
	smpsAlterPitch      $FF
	smpsCall            SurgingPower_Call1
	smpsAlterPitch      $05
	smpsCall            SurgingPower_Call1
	smpsAlterPitch      $FC
	smpsCall            SurgingPower_Call1
	smpsAlterPitch      $05
	smpsCall            SurgingPower_Call1
	smpsAlterPitch      $FD
	smpsCall            SurgingPower_Call1
	smpsCall            SurgingPower_Call1
	smpsAlterPitch      $FE
	smpsJump            SurgingPower_Jump1

SurgingPower_Call1:
	dc.b	nBb1, $06, nBb2, $03, nRst, nBb1, $06, nBb2
	dc.b	$03, nRst
	smpsReturn

SurgingPower_FM2:
	smpsFMvoice         $02
	dc.b	nRst, $18

SurgingPower_Jump2:
	smpsCall            SurgingPower_Call2
	dc.b	smpsNoAttack, $03
	smpsFMAlterVol      $0A
	smpsPan             panCenter, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$03
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, nG3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nC4, $06, smpsNoAttack, $18
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $15
	smpsCall            SurgingPower_Call2
	dc.b	smpsNoAttack, $03
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nBb3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, nG3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD3, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nF3, $06, smpsNoAttack, $06, nG3, $27
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsJump            SurgingPower_Jump2

SurgingPower_Call2:
	dc.b	nRst, $06, nA3, $03
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, nA3
	smpsFMAlterVol      $0A
	smpsPan             panCenter, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC4, $06, nA3, $03, nC4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $06, nA3, $03
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE4, $09, nF4, $03
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nC4, $12
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nBb3, $06
	smpsReturn

SurgingPower_FM3:
	smpsFMvoice         $02
	dc.b	nRst, $18

SurgingPower_Jump3:
	smpsCall            SurgingPower_Call3
	dc.b	smpsNoAttack, $03
	smpsFMAlterVol      $0A
	smpsPan             panCenter, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$03
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, nD3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD3, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nG3, $06, smpsNoAttack, $06, nA3, $12
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $15
	smpsCall            SurgingPower_Call3
	dc.b	smpsNoAttack, $03
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, nD3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nBb2, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nBb2, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nC3, $06, smpsNoAttack, $2D
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsJump            SurgingPower_Jump3

SurgingPower_Call3:
	dc.b	nRst, $06, nF3, $03
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, nF3
	smpsFMAlterVol      $0A
	smpsPan             panCenter, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $06, nF3, $03, nF3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $06, nE3, $03
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $09, $03
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nA3, $12
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nF3, $06
	smpsReturn

SurgingPower_FM4:
	smpsFMvoice         $01
	dc.b	nRst, $18

SurgingPower_Loop1:
	smpsCall            SurgingPower_Call4
	smpsLoop            $00, $08, SurgingPower_Loop1
	smpsJump            SurgingPower_Loop1

SurgingPower_Call4:
	dc.b	nRst, $06, nF4
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nD4, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nC4, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nD4, $06
	smpsReturn

SurgingPower_FM5:
	smpsFMvoice         $01
	smpsPan             panRight, $00
	dc.b	nRst, $18

SurgingPower_Loop2:
	smpsCall            SurgingPower_Call5
	smpsLoop            $00, $06, SurgingPower_Loop2
	dc.b	nRst, $06, nD4
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nC4, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nBb3, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nA3, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nBb3, $06
	smpsCall            SurgingPower_Call5
	smpsJump            SurgingPower_Loop2

SurgingPower_Call5:
	dc.b	nRst, $06, nD4
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nC4, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nA3, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nA3, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nA3, $06
	smpsReturn

SurgingPower_FM6:
	smpsFMvoice         $01
	smpsPan             panLeft, $00
	dc.b	nRst, $18

SurgingPower_Loop3:
	smpsCall            SurgingPower_Call6
	smpsLoop            $00, $06, SurgingPower_Loop3
	dc.b	nRst, $06, nA3
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nG3, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nG3, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nF3, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nG3, $06
	smpsCall            SurgingPower_Call6
	smpsJump            SurgingPower_Loop3

SurgingPower_Call6:
	dc.b	nRst, $06, nA3
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nG3, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nF3, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nE3, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nF3, $06
	smpsReturn

SurgingPower_PSG1:
	smpsPSGvoice        cTone_02
	dc.b	nRst, $18

SurgingPower_Loop4:
	smpsCall            SurgingPower_Call7
	smpsLoop            $00, $12, SurgingPower_Loop4
	dc.b	nF3, $03, nF3, nRst, $18

SurgingPower_Loop5:
	smpsCall            SurgingPower_Call7
	smpsLoop            $00, $15, SurgingPower_Loop5
	dc.b	nF3, $03
	smpsJump            SurgingPower_Loop4

SurgingPower_Call7:
	dc.b	nF3, $03, nF3, nF2
	smpsReturn

SurgingPower_PSG2:
	smpsPSGvoice        cTone_02
	dc.b	nRst, $18

SurgingPower_Loop6:
	smpsCall            SurgingPower_Call7
	smpsLoop            $00, $12, SurgingPower_Loop6
	dc.b	nF3, $03, nF3, nRst, $18

SurgingPower_Loop7:
	smpsCall            SurgingPower_Call7
	smpsLoop            $00, $15, SurgingPower_Loop7
	dc.b	nF3, $03
	smpsJump            SurgingPower_Loop6

SurgingPower_PSG3:
	smpsPSGform         $E7
	smpsCall            SurgingPower_Call8

SurgingPower_Loop8:
	smpsCall            SurgingPower_Call8
	smpsLoop            $01, $07, SurgingPower_Loop8
	smpsPSGvoice        cTone_02
	dc.b	nC4, $03, nRst, $0F
	smpsPSGvoice        cTone_05
	dc.b	$06

SurgingPower_Loop9:
	smpsCall            SurgingPower_Call8
	smpsLoop            $01, $08, SurgingPower_Loop9
	smpsJump            SurgingPower_Loop8

SurgingPower_Call8:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $03, $03
	smpsPSGvoice        cTone_05
	dc.b	$06
	smpsLoop            $00, $02, SurgingPower_Call8
	smpsReturn

SurgingPower_PWM1:
	dc.b	pElecKick, $15, pTomLo, $03

SurgingPower_Jump4:
	dc.b	pElecKick, $0C, $0C, $06, $0C, $06, $0C, $0C
	dc.b	$06, $0C, $06, $0C, $0C, $06, $0C, $06
	dc.b	$0C, $0C, $0C, $06, $06, pElecKick, $0C, $0C
	dc.b	$06, $0C, $06, $0C, $0C, $06, $0C, $06
	dc.b	$0C, $0C, $06, $0C, $03, $03, $0C, $0C
	dc.b	$06, $0C, $06
	smpsJump            SurgingPower_Jump4

SurgingPower_PWM2:
	dc.b	$96, $03
	smpsFMAlterVol      $F9
	dc.b	pTomHi
	smpsFMAlterVol      $07
	dc.b	pTomMid, pTomMid
	smpsFMAlterVol      $F9
	dc.b	pTomHi
	smpsFMAlterVol      $07
	smpsFMAlterVol      $90
	dc.b	pTomLo, pTomLo
	smpsFMAlterVol      $70
	dc.b	pTomMid

SurgingPower_Jump5:
	dc.b	nRst, $0C, pSnare, nRst, pSnare, nRst, pSnare, nRst
	dc.b	pSnare, $09, $03, nRst, $0C, pSnare, nRst, pSnare
	dc.b	nRst, pSnare, nRst, $15, pSnare, $03, nRst, $0C
	dc.b	pSnare, nRst, pSnare, nRst, pSnare, nRst, pSnare, $09
	dc.b	$03, nRst, $0C, pSnare, nRst, pSnare, nRst, pSnare
	dc.b	nRst, pSnare, $09, $03
	smpsJump            SurgingPower_Jump5

SurgingPower_PWM3:
	smpsFMAlterVol      $FC
	dc.b	pSplash, $18
	smpsFMAlterVol      $04

SurgingPower_Jump6:
	smpsFMAlterVol      $C0
	dc.b	pCrash, $30
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsFMAlterVol      $C0
	dc.b	pCrash, $30
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst, $2A
	smpsFMAlterVol      $FC
	dc.b	pSplash, $06
	smpsFMAlterVol      $04
	smpsJump            SurgingPower_Jump6

SurgingPower_PWM4:
	smpsCall            SurgingPower_Call9

SurgingPower_Loop10:
	smpsCall            SurgingPower_Call9
	smpsLoop            $00, $07, SurgingPower_Loop10
	dc.b	$96, $0C, nRst, $06
	smpsFMAlterVol      $90
	dc.b	pElecHiHat, $03, $03
	smpsFMAlterVol      $70

SurgingPower_Loop11:
	smpsCall            SurgingPower_Call9
	smpsLoop            $00, $08, SurgingPower_Loop11
	smpsJump            SurgingPower_Loop10

SurgingPower_Call9:
	dc.b	nRst, $06
	smpsFMAlterVol      $F9
	dc.b	pElecHiHat, $03, $03
	smpsFMAlterVol      $07
	dc.b	nRst, $06
	smpsFMAlterVol      $90
	dc.b	pElecHiHat, $03, $03
	smpsFMAlterVol      $70
	smpsReturn

SurgingPower_Voices:
	; Voice $00
	; $3C
	; $01, $03, $00, $00,	$1F, $1F, $15, $1F
	; $11, $0D, $10, $05,	$07, $04, $09, $02
	; $55, $1A, $55, $1A,	$0E, $80, $08, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $03, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $15, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $10, $0D, $11
	smpsVcDecayRate2    $02, $09, $04, $07
	smpsVcDecayLevel    $01, $05, $01, $05
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $80, $08, $80, $0E

	; Voice $01
	; $33
	; $11, $08, $11, $02,	$5F, $9F, $5F, $1F
	; $0B, $0F, $02, $09,	$10, $13, $13, $10
	; $05, $15, $25, $3A,	$0A, $1D, $09, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $00, $01
	smpsVcCoarseFreq    $02, $01, $08, $01
	smpsVcRateScale     $00, $01, $02, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $02, $0F, $0B
	smpsVcDecayRate2    $10, $13, $13, $10
	smpsVcDecayLevel    $03, $02, $01, $00
	smpsVcReleaseRate   $0A, $05, $05, $05
	smpsVcTotalLevel    $80, $09, $1D, $0A

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
