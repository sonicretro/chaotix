TubePanic_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     TubePanic_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $0A
	smpsHeaderFM        TubePanic_FM1, $00, $0D
	smpsHeaderFM        TubePanic_FM2, $00, $17
	smpsHeaderFM        TubePanic_FM3, $00, $17
	smpsHeaderFM        TubePanic_FM4, $0C, $11
	smpsHeaderFM        TubePanic_FM5, $0C, $11
	smpsHeaderFM        TubePanic_FM6, $0C, $11
	smpsHeaderPSG       TubePanic_PSG1, $F4, $02, $00, cTone_0C
	smpsHeaderPSG       TubePanic_PSG2, $F4, $04, $00, cTone_0C
	smpsHeaderPSG       TubePanic_PSG3, $23, $01, $00, cTone_02
	smpsHeaderPWM       TubePanic_PWM1, $AA
	smpsHeaderPWM       TubePanic_PWM2, $CC
	smpsHeaderPWM       TubePanic_PWM3, $AA
	smpsHeaderPWM       TubePanic_PWM4, $88

TubePanic_FM1:
	smpsFMvoice         $00
	dc.b	nRst, $0C, nC1, $06, nCs1

TubePanic_Loop1:
	smpsCall            TubePanic_Call1
	smpsLoop            $00, $07, TubePanic_Loop1
	dc.b	nD1, $0C, nD2, nD2, nD1
	smpsAlterPitch      $02

TubePanic_Loop2:
	smpsCall            TubePanic_Call1
	smpsLoop            $00, $07, TubePanic_Loop2
	smpsAlterPitch      $FE
	dc.b	nE1, $0C, nD2, $06, nEb2, nE2, $0C, nE1
	smpsLoop            $01, $02, TubePanic_Loop1
	smpsCall            TubePanic_Call2
	dc.b	nA1, $0C, nA2, nA2, nA1, nB1, nAb2, $06
	dc.b	nA2, nB2, $18
	smpsCall            TubePanic_Call2
	dc.b	nBb1, $0C, nEb2, nBb2, nBb1, nC2, nF2, $06
	dc.b	nG2, nC3, $18
	smpsJump            TubePanic_Loop1

TubePanic_Call1:
	dc.b	nD1, $12, nA1, nD2, $0C
	smpsReturn

TubePanic_Call2:
	dc.b	nAb1, $12, nE2, nAb2, $0C, nA1, $12, nE2
	dc.b	nA2, $0C, nA1, $12, nE2, nA2, $0C, nB1
	dc.b	$12, nB2, nBb1, $0C, nAb1, $12, nE2, nAb2
	dc.b	$0C, nA1, $12, nE2, nA2, $0C
	smpsReturn

TubePanic_FM2:
	smpsFMvoice         $02
	dc.b	nRst, $18

TubePanic_Jump1:
	smpsCall            TubePanic_Call3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	dc.b	nB4, $06, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nB4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	smpsCall            TubePanic_Call3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	dc.b	nB4, $06, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nB4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nB3, $18, nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $05
	smpsPan             panRight, $00
	dc.b	nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	smpsCall            TubePanic_Call4
	dc.b	nA4, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nAb4, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06, nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nFs4, $18
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06, nB4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nRst, $06, nB4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $05
	smpsPan             panRight, $00
	dc.b	nRst, $06, nB4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nRst, $06, nB4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	smpsCall            TubePanic_Call4
	smpsFMAlterVol      $05
	dc.b	nEb4, $18
	smpsFMAlterVol      $FE
	dc.b	nD4
	smpsFMAlterVol      $FD
	dc.b	nF4
	smpsFMAlterVol      $FD
	dc.b	nE4
	smpsFMAlterVol      $03
	smpsJump            TubePanic_Jump1

TubePanic_Call3:
	dc.b	nRst, $12, nA4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	dc.b	nRst, nA4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nA4, $06, nA4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $1E
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	dc.b	nA4, $06, nA4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $2A
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nRst, $06, nA4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $1E
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	dc.b	nRst, $06, nA4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $1E
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nB3, $12, nA4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	dc.b	nB3, $12, nA4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nA4, nA4, nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	dc.b	nA4, $06, nA4, nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nB3, $12, nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	dc.b	nB3, $12, nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nB4, $06, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $1E
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	dc.b	nB4, $06, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $1E
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nB4, $06, $06
	smpsReturn

TubePanic_Call4:
	dc.b	nRst, $3C, nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nA4, $12, nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $05
	smpsPan             panRight, $00
	dc.b	nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	smpsReturn

TubePanic_FM3:
	smpsFMvoice         $02
	dc.b	nRst, $18

TubePanic_Jump2:
	smpsCall            TubePanic_Call5
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $08
	smpsPan             panRight, $00
	dc.b	nE4, nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	smpsCall            TubePanic_Call5
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $08
	smpsPan             panRight, $00
	dc.b	nE4, nE4, nRst, $06, nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nE3, $18, nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $05
	smpsPan             panRight, $00
	dc.b	nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	smpsCall            TubePanic_Call6
	dc.b	nE4, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nCs4, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06, nB3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nB3, $18
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06, nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nRst, $06, nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $05
	smpsPan             panRight, $00
	dc.b	nRst, $06, nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nRst, $06, nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	smpsCall            TubePanic_Call6
	smpsFMAlterVol      $05
	dc.b	nBb3, $18
	smpsFMAlterVol      $FE
	dc.b	nAb3
	smpsFMAlterVol      $FD
	dc.b	nC4
	smpsFMAlterVol      $FD
	dc.b	nC4
	smpsFMAlterVol      $03
	smpsJump            TubePanic_Jump2

TubePanic_Call5:
	dc.b	nRst, $12, nD4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12
	smpsFMAlterVol      $08
	smpsPan             panRight, $00
	dc.b	nRst, nD4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nD4, $06, nD4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $1E
	smpsFMAlterVol      $08
	smpsPan             panRight, $00
	dc.b	nD4, $06, nD4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $2A
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nRst, $06, nD4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $1E
	smpsFMAlterVol      $08
	smpsPan             panRight, $00
	dc.b	nRst, $06, nD4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $1E
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nE3, $12, nD4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12
	smpsFMAlterVol      $08
	smpsPan             panRight, $00
	dc.b	nE3, $12, nD4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nD4, nD4, nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $08
	smpsPan             panRight, $00
	dc.b	nD4, nD4, nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nE3, $12, nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12
	smpsFMAlterVol      $08
	smpsPan             panRight, $00
	dc.b	nE3, $12, nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nE4, $06, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $1E
	smpsFMAlterVol      $08
	smpsPan             panRight, $00
	dc.b	nE4, $06, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $1E
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nE4, $06, $06
	smpsReturn

TubePanic_Call6:
	dc.b	nRst, $3C, nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nE4, $12, nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $05
	smpsPan             panRight, $00
	dc.b	nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	smpsReturn

TubePanic_FM4:
	smpsFMvoice         $01
	dc.b	nRst, $18

TubePanic_Loop3:
	smpsCall            TubePanic_Call7
	smpsCall            TubePanic_Call7
	smpsAlterPitch      $02
	smpsCall            TubePanic_Call7
	smpsCall            TubePanic_Call7
	smpsAlterPitch      $FE
	smpsLoop            $00, $02, TubePanic_Loop3
	smpsFMAlterVol      $FE
	smpsCall            TubePanic_Call8
	smpsCall            TubePanic_Call9
	smpsCall            TubePanic_Call8
	dc.b	nA3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nAb3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nFs3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	smpsCall            TubePanic_Call8
	smpsCall            TubePanic_Call9
	smpsCall            TubePanic_Call8
	smpsFMAlterVol      $02
	dc.b	nF3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	smpsJump            TubePanic_Loop3

TubePanic_Call7:
	dc.b	nRst, $0C, nA3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C, nRst, $0C, nG3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nA3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsReturn

TubePanic_Call8:
	dc.b	nRst, $0C, nAb3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nA3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nAb3, $0C
	smpsReturn

TubePanic_Call9:
	dc.b	nA3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nCs4, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB3, $06
	smpsFMAlterVol      $0F
	dc.b	$06, nRst
	smpsFMAlterVol      $F1
	dc.b	nB3, $18
	smpsReturn

TubePanic_FM5:
	smpsFMvoice         $01
	smpsPan             panRight, $00
	dc.b	nRst, $18

TubePanic_Loop4:
	smpsCall            TubePanic_Call10
	smpsCall            TubePanic_Call10
	smpsAlterPitch      $02
	smpsCall            TubePanic_Call10
	smpsCall            TubePanic_Call10
	smpsAlterPitch      $FE
	smpsLoop            $00, $02, TubePanic_Loop4
	smpsCall            TubePanic_Call11
	smpsCall            TubePanic_Call12
	smpsCall            TubePanic_Call11
	dc.b	nE3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB2, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nEb3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	smpsCall            TubePanic_Call11
	smpsCall            TubePanic_Call12
	smpsCall            TubePanic_Call11
	dc.b	nEb3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nF3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	smpsJump            TubePanic_Loop4

TubePanic_Call10:
	dc.b	nRst, $0C, nG3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nFs3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C, nRst, $0C, nE3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nFs3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsReturn

TubePanic_Call11:
	dc.b	nRst, $0C, nE3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsReturn

TubePanic_Call12:
	dc.b	nE3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nA3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nFs3, $06
	smpsFMAlterVol      $0F
	dc.b	$06, nRst
	smpsFMAlterVol      $F1
	dc.b	nFs3, $18
	smpsReturn

TubePanic_FM6:
	smpsFMvoice         $01
	smpsPan             panLeft, $00
	dc.b	nRst, $18

TubePanic_Loop5:
	smpsCall            TubePanic_Call13
	smpsCall            TubePanic_Call13
	smpsAlterPitch      $02
	smpsCall            TubePanic_Call13
	smpsCall            TubePanic_Call13
	smpsAlterPitch      $FE
	smpsLoop            $01, $02, TubePanic_Loop5
	smpsCall            TubePanic_Call14
	smpsCall            TubePanic_Call15
	smpsCall            TubePanic_Call14
	dc.b	nCs3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nCs3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nFs3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB2, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	smpsCall            TubePanic_Call14
	smpsCall            TubePanic_Call15
	smpsCall            TubePanic_Call14
	dc.b	nBb2, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nC3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	smpsJump            TubePanic_Loop5

TubePanic_Call13:
	dc.b	nRst, $0C, nC3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsLoop            $00, $02, TubePanic_Call13
	smpsReturn

TubePanic_Call14:
	dc.b	nRst, $0C, nB2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nAb2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsReturn

TubePanic_Call15:
	dc.b	nCs3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nEb3, $06
	smpsFMAlterVol      $0F
	dc.b	$06, nRst
	smpsFMAlterVol      $F1
	dc.b	nEb3, $18
	smpsReturn

TubePanic_PSG1:
	smpsPSGvoice        cTone_03
	dc.b	nRst, $18

TubePanic_Loop6:
	smpsCall            TubePanic_Call16
	smpsAlterPitch      $02
	smpsCall            TubePanic_Call16
	smpsAlterPitch      $FE
	smpsLoop            $00, $02, TubePanic_Loop6

TubePanic_Loop7:
	smpsCall            TubePanic_Call18
	smpsLoop            $00, $03, TubePanic_Loop7
	dc.b	nA4, $06, nAb4, nE4, nB3, nRst, $0C, nA4
	dc.b	$06, nAb4, nE4, nB3, nRst, $0C, nA4, $06
	dc.b	nAb4, nE4, nB3, nRst, $0C, nEb4, $06, nD4
	dc.b	nBb3, nF3, nRst, $0C, nF4, $06, nE4, nC4
	dc.b	nG3, nF3, nE3, nC3, nG2
	smpsJump            TubePanic_Loop6

TubePanic_Call16:
	smpsCall            TubePanic_Call17
	dc.b	nRst, $0C
	smpsCall            TubePanic_Call17
	dc.b	nRst, $0C
	smpsCall            TubePanic_Call17
	dc.b	nRst, $0C
	smpsCall            TubePanic_Call17
	dc.b	nRst, $0C
	smpsCall            TubePanic_Call17
	smpsCall            TubePanic_Call17
	smpsCall            TubePanic_Call17
	dc.b	nRst, $0C
	smpsCall            TubePanic_Call17
	dc.b	nRst, $0C
	smpsCall            TubePanic_Call17
	dc.b	nRst, $0C
	smpsCall            TubePanic_Call17
	dc.b	nRst, $0C
	smpsCall            TubePanic_Call17
	smpsAlterPitch      $F4
	smpsCall            TubePanic_Call17
	smpsAlterPitch      $0C
	smpsReturn

TubePanic_Call17:
	dc.b	nG4, $06, nFs4, nD4, nA3
	smpsReturn

TubePanic_Call18:
	dc.b	nA4, $06, nAb4, nE4, nB3, nRst, $0C, nA4
	dc.b	$06, nAb4, nE4, nB3, nRst, $0C, nA4, $06
	dc.b	nAb4, nE4, nB3, nRst, $0C, nA4, $06, nAb4
	dc.b	nE4, nCs4, nRst, $0C, nE4, $06, nEb4, nB3
	dc.b	nFs3, nE3, nEb3, nB2, nFs2
	smpsReturn

TubePanic_PSG2:
	smpsPSGvoice        cTone_03
	dc.b	nRst, $18
	smpsPitchSlideSpeed $FE
	dc.b	nRst, $06

TubePanic_Loop8:
	smpsCall            TubePanic_Call16
	smpsAlterPitch      $02
	smpsCall            TubePanic_Call16
	smpsAlterPitch      $FE
	smpsLoop            $00, $02, TubePanic_Loop8

TubePanic_Loop9:
	smpsCall            TubePanic_Call18
	smpsLoop            $00, $03, TubePanic_Loop9
	dc.b	nA4, $06, nAb4, nE4, nB3, nRst, $0C, nA4
	dc.b	$06, nAb4, nE4, nB3, nRst, $0C, nA4, $06
	dc.b	nAb4, nE4, nB3, nRst, $0C, nEb4, $06, nD4
	dc.b	nBb3, nF3, nRst, $0C, nF4, $06, nE4, nC4
	dc.b	nG3, nF3, nE3, nC3, nG2
	smpsJump            TubePanic_Loop8

TubePanic_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $18

TubePanic_Loop10:
	smpsCall            TubePanic_Call19
	smpsLoop            $01, $18, TubePanic_Loop10
	smpsJump            TubePanic_Loop10

TubePanic_Call19:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $06
	smpsPSGAlterVol     $03
	dc.b	$06
	smpsPSGAlterVol     $FD
	dc.b	$06, $06
	smpsLoop            $00, $04, TubePanic_Call19
	smpsReturn

TubePanic_PWM1:
	smpsFMAlterVol      $33
	dc.b	pElecSnare, $06, pElecSnare
	smpsFMAlterVol      $CD
	dc.b	pElecKick, $0C

TubePanic_Loop11:
	smpsCall            TubePanic_Call20
	smpsCall            TubePanic_Call21
	smpsLoop            $00, $02, TubePanic_Loop11
	smpsCall            TubePanic_Call20
	dc.b	pElecKick, $06
	smpsFMAlterVol      $F8
	dc.b	pClickLo, nRst
	smpsFMAlterVol      $08
	smpsFMAlterVol      $33
	dc.b	pElecSnare
	smpsFMAlterVol      $CD
	dc.b	pElecKick, nRst
	smpsFMAlterVol      $80
	dc.b	pClickHi, nRst
	smpsFMAlterVol      $80
	dc.b	pElecKick
	smpsFMAlterVol      $F8
	dc.b	pClickLo, pClickLo, pClickLo
	smpsFMAlterVol      $08
	dc.b	pElecKick, nRst
	smpsFMAlterVol      $F8
	dc.b	pClickLo
	smpsFMAlterVol      $08
	smpsFMAlterVol      $33
	dc.b	pElecSnare
	smpsFMAlterVol      $CD
	smpsCall            TubePanic_Call20
	dc.b	pElecKick, $06
	smpsFMAlterVol      $F8
	dc.b	pClickLo, nRst
	smpsFMAlterVol      $08
	smpsFMAlterVol      $33
	dc.b	pElecSnare
	smpsFMAlterVol      $CD
	dc.b	pElecKick, nRst
	smpsFMAlterVol      $33
	dc.b	pElecSnare, nRst
	smpsFMAlterVol      $CD
	dc.b	pElecKick
	smpsFMAlterVol      $33
	dc.b	pElecSnare
	smpsFMAlterVol      $CD
	smpsFMAlterVol      $F8
	dc.b	pClickLo
	smpsFMAlterVol      $08
	dc.b	pElecKick
	smpsFMAlterVol      $33
	dc.b	pElecSnare, nRst, pElecSnare, pElecSnare
	smpsFMAlterVol      $CD
	smpsLoop            $01, $03, TubePanic_Loop11
	smpsJump            TubePanic_Loop11

TubePanic_Call20:
	dc.b	pElecKick, $06
	smpsFMAlterVol      $F8
	dc.b	pClickLo, nRst
	smpsFMAlterVol      $08
	smpsFMAlterVol      $33
	dc.b	pElecSnare
	smpsFMAlterVol      $CD
	dc.b	pElecKick, nRst
	smpsFMAlterVol      $80
	dc.b	pClickHi, nRst
	smpsFMAlterVol      $80
	dc.b	pElecKick
	smpsFMAlterVol      $80
	dc.b	pClickHi, nRst, pClickHi
	smpsFMAlterVol      $80
	dc.b	pElecKick
	smpsFMAlterVol      $F8
	dc.b	pClickLo, nRst
	smpsFMAlterVol      $08
	smpsFMAlterVol      $80
	dc.b	pClickHi
	smpsFMAlterVol      $80
	smpsReturn

TubePanic_Call21:
	dc.b	pElecKick, $06
	smpsFMAlterVol      $F8
	dc.b	pClickLo, nRst
	smpsFMAlterVol      $08
	smpsFMAlterVol      $33
	dc.b	pElecSnare
	smpsFMAlterVol      $CD
	dc.b	pElecKick, nRst
	smpsFMAlterVol      $80
	dc.b	pClickHi, nRst
	smpsFMAlterVol      $80
	dc.b	pElecKick
	smpsFMAlterVol      $F8
	dc.b	pClickLo, pClickLo, pClickLo
	smpsFMAlterVol      $08
	dc.b	pElecKick, nRst
	smpsFMAlterVol      $F8
	dc.b	pClickLo
	smpsFMAlterVol      $08
	smpsFMAlterVol      $80
	dc.b	pClickHi
	smpsFMAlterVol      $80
	smpsReturn

TubePanic_PWM2:
	smpsStop

	; Unused data
	dc.b	nCs0, $06, $06, nRst, $0C

TubePanic_Loop12:
	dc.b	nRst, $12, nCs0, $06, nRst, $30, nCs0, $18
	dc.b	nRst, $12, nCs0, $06, nRst, $2A, nCs0, $06
	dc.b	$18, nRst, $12, nCs0, $06, nRst, $30, nCs0
	dc.b	$18, nRst, $12, nCs0, $06, nRst, $2A, nCs0
	dc.b	$06, $18, nRst, $12, nCs0, $06, nRst, $30
	dc.b	nCs0, $18, nRst, $12, nCs0, $06, nRst, $2A
	dc.b	nCs0, $06, $12, $06, nRst, $12, nCs0, $06
	dc.b	nRst, $30, nCs0, $18, nRst, $12, nCs0, $06
	dc.b	nRst, $0C, nCs0, $0C, $06, $0C, $06, $0C
	dc.b	$06, $06
	smpsLoop            $00, $03, TubePanic_Loop12
	smpsJump            TubePanic_Loop12

TubePanic_PWM3:
	smpsStop

	; Unused data
	dc.b	nA1, $18

TubePanic_Loop13:
	smpsFMAlterVol      $C0
	dc.b	nAb0, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsFMAlterVol      $FC
	dc.b	nD0, $60
	smpsFMAlterVol      $04
	dc.b	nRst, nRst, nRst
	smpsLoop            $00, $02, TubePanic_Loop13
	smpsFMAlterVol      $C0
	dc.b	nAb0, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsFMAlterVol      $FC
	dc.b	nD0, $60
	smpsFMAlterVol      $04
	dc.b	nRst, nRst
	smpsFMAlterVol      $C0
	dc.b	nAb0, $30
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	nD0, $30
	smpsFMAlterVol      $04
	smpsJump            TubePanic_Loop13

TubePanic_PWM4:
	smpsStop

	; Unused data
	dc.b	nRst, $18

TubePanic_Loop14:
	smpsFMAlterVol      $FA
	dc.b	nE1, $12, $12
	smpsFMAlterVol      $06
	smpsFMAlterVol      $A0
	dc.b	nEb1, $0C
	smpsFMAlterVol      $60
	smpsFMAlterVol      $FA
	dc.b	nE1, $06
	smpsFMAlterVol      $06
	smpsFMAlterVol      $A0
	dc.b	nEb1, $12
	smpsFMAlterVol      $60
	smpsFMAlterVol      $FA
	dc.b	nE1, $06, $06
	smpsFMAlterVol      $06
	smpsFMAlterVol      $A0
	dc.b	nEb1, $0C
	smpsFMAlterVol      $60
	smpsFMAlterVol      $FA
	dc.b	nE1, $12, $12
	smpsFMAlterVol      $06
	smpsFMAlterVol      $A0
	dc.b	nEb1, $0C
	smpsFMAlterVol      $60
	smpsFMAlterVol      $FA
	dc.b	nE1, $06, $06, $06, $06
	smpsFMAlterVol      $06
	smpsFMAlterVol      $A0
	dc.b	nEb1, $0C
	smpsFMAlterVol      $60
	smpsFMAlterVol      $FA
	dc.b	nE1, $06
	smpsFMAlterVol      $06
	smpsFMAlterVol      $A0
	dc.b	nEb1
	smpsFMAlterVol      $60
	smpsLoop            $00, $0C, TubePanic_Loop14
	smpsJump            TubePanic_Loop14

TubePanic_Voices:
	; Voice $00
	; $4B
	; $12, $12, $23, $62,	$3F, $9F, $9F, $9F
	; $02, $0C, $13, $07,	$12, $11, $05, $0A
	; $0F, $3F, $5F, $6F,	$14, $0D, $15, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $01
	smpsVcUnusedBits    $01
	smpsVcDetune        $06, $02, $01, $01
	smpsVcCoarseFreq    $02, $03, $02, $02
	smpsVcRateScale     $02, $02, $02, $00
	smpsVcAttackRate    $1F, $1F, $1F, $3F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $13, $0C, $02
	smpsVcDecayRate2    $0A, $05, $11, $12
	smpsVcDecayLevel    $06, $05, $03, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $15, $0D, $14

	; Voice $01
	; $3C
	; $02, $14, $03, $00,	$AF, $FF, $AF, $FF
	; $00, $05, $00, $05,	$08, $04, $08, $01
	; $4F, $5F, $4F, $1F,	$20, $80, $25, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $01, $00
	smpsVcCoarseFreq    $00, $03, $04, $02
	smpsVcRateScale     $03, $02, $03, $02
	smpsVcAttackRate    $3F, $2F, $3F, $2F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $00, $05, $00
	smpsVcDecayRate2    $01, $08, $04, $08
	smpsVcDecayLevel    $01, $04, $05, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $25, $80, $20

	; Voice $02
	; $2C
	; $22, $04, $02, $14,	$51, $52, $50, $52
	; $0D, $00, $06, $04,	$03, $05, $02, $00
	; $1C, $1F, $2B, $1F,	$0F, $80, $13, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $00, $02
	smpsVcCoarseFreq    $04, $02, $04, $02
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $12, $10, $12, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $06, $00, $0D
	smpsVcDecayRate2    $00, $02, $05, $03
	smpsVcDecayLevel    $01, $02, $01, $01
	smpsVcReleaseRate   $0F, $0B, $0F, $0C
	smpsVcTotalLevel    $80, $13, $80, $0F
