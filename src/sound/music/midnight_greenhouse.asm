MidnightGreenhouse_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     MidnightGreenhouse_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $48
	smpsHeaderFM        MidnightGreenhouse_FM1, $00, $0C
	smpsHeaderFM        MidnightGreenhouse_FM2, $00, $10
	smpsHeaderFM        MidnightGreenhouse_FM3, $00, $14
	smpsHeaderFM        MidnightGreenhouse_FM4, $00, $14
	smpsHeaderFM        MidnightGreenhouse_FM5, $F4, $15
	smpsHeaderFM        MidnightGreenhouse_FM6, $00, $10
	smpsHeaderPSG       MidnightGreenhouse_PSG1, $DC, $03, $00, cTone_00
	smpsHeaderPSG       MidnightGreenhouse_PSG2, $DC, $02, $00, cTone_00
	smpsHeaderPSG       MidnightGreenhouse_PSG3, $23, $02, $00, cTone_00
	smpsHeaderPWM       MidnightGreenhouse_PWM1, $CC
	smpsHeaderPWM       MidnightGreenhouse_PWM2, $BB
	smpsHeaderPWM       MidnightGreenhouse_PWM3, $BB
	smpsHeaderPWM       MidnightGreenhouse_PWM4, $66

MidnightGreenhouse_FM1:
	smpsFMvoice         $00
	dc.b	nRst, $60, nRst, $2C, nE1, $0C, $04, nE2
	dc.b	$08, nE1, $04, nG1, $08, nG2, $04, nAb1
	dc.b	$08, nAb2, $04

MidnightGreenhouse_Jump1:
	smpsCall            MidnightGreenhouse_Call1
	dc.b	nRst, $08, nE1, $04, nF1, $08, nG1, $0C
	dc.b	nAb1, $04
	smpsCall            MidnightGreenhouse_Call1
	dc.b	nRst, $08, nE1, $04, nAb1, $08, nAb2, $0C
	dc.b	nE1, $04
	smpsCall            MidnightGreenhouse_Call1
	dc.b	nRst, $08, nE1, $04, nF1, $08, nG1, $0C
	dc.b	nAb1, $04
	smpsCall            MidnightGreenhouse_Call1
	dc.b	nRst, $08, nE1, $04, nAb1, $08, nAb2, $0C
	dc.b	nE2, $04, nD2, $18, nRst, $0C, nD2, $18
	dc.b	nC2, $0C, nRst, $08, nF1, $10, nG1, $18
	dc.b	nRst, $0C, nG1, $18, nF1, $0C, nRst, $08
	dc.b	nA1, $10, nE1, $18, nRst, $0C, nE1, $18
	dc.b	nG1, $0C, nRst, $08, nB1, $0C, nE1, $04
	dc.b	nA1, $18, nRst, $0C, nA1, $24, nRst, $08
	dc.b	nEb2, $10, nD2, $18, nRst, $0C, nD2, $18
	dc.b	nC2, $0C, nRst, $08, nF1, $10, nE1, $18
	dc.b	nRst, $0C, nE1, $18, nD1, $0C, nRst, $08
	dc.b	nG1, $10, nF1, $18, nRst, $0C, nF1, $18
	dc.b	nE1, $0C, nRst, $08, nF1, $0C, nF2, $04
	dc.b	nG1, $14, $24, $04, nG2, $0C, nAb1, $08
	dc.b	nAb2, $0C, nAb1, $04

MidnightGreenhouse_Loop1:
	smpsCall            MidnightGreenhouse_Call1
	dc.b	nRst, $08, nE1, $04, nF1, $08, nG1, $0C
	dc.b	nAb1, $04
	smpsCall            MidnightGreenhouse_Call1
	dc.b	nRst, $08, nE1, $04, nAb1, $08, nAb2, $0C
	dc.b	nE1, $04
	smpsLoop            $00, $05, MidnightGreenhouse_Loop1
	smpsJump            MidnightGreenhouse_Jump1

MidnightGreenhouse_Call1:
	dc.b	nRst, $08, nA1, $04, nRst, $08, nG1, $04
	dc.b	nA1, $0C, nG1, nF1, nRst, nRst, nF1, $08
	dc.b	nFs1, $04, nRst, $08, nG1, $04, nRst, $08
	dc.b	nF1, $04, nG1, $0C, nF1, nE1
	smpsReturn

MidnightGreenhouse_FM2:
	smpsFMvoice         $02
	smpsPan             panLeft, $00
	smpsPitchSlideSpeed $02
	smpsFMAlterVol      $0A
	smpsCall            MidnightGreenhouse_Call2
	smpsPan             panCenter, $00
	smpsPitchSlideSpeed $FE
	smpsFMAlterVol      $F6

MidnightGreenhouse_Jump2:
	smpsFMvoice         $03
	dc.b	nA4, $18, nB4, nC5, nG5, $14, nE5, $04
	smpsFMAlterVol      $0A
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	dc.b	nD5, $58, nRst, $18, nG4, $18, nA4, nC5
	dc.b	$14, nE5, $04
	smpsFMAlterVol      $0A
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	dc.b	nF5
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, nD5, smpsNoAttack, $48, nA4, $18, nB4, nC5
	dc.b	nG5, $14, nE5, $04
	smpsFMAlterVol      $0A
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	dc.b	nD5, $58, nRst, $18, nG5, $18, nA5, nE5
	dc.b	$14, nD5, $04, smpsNoAttack, $08, nCs5, $04, nC5
	dc.b	$08, nG5, $04, smpsNoAttack, $30
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $08
	smpsFMvoice         $01
	dc.b	nG4, $0C
	smpsFMAlterVol      $FB
	dc.b	nD5, $14, nC5, $04, nD5, $08, nRst, $04
	dc.b	nG5, $24, nRst, $0C, nG4, nD5, $14, nC5
	dc.b	$02, nCs5, nD5, $08, nRst, $04, nG5, $24
	dc.b	nRst, $0C, nG4, nD5, $14, nC5, $04, nD5
	dc.b	$08, nRst, $04, nFs5, $02, nG5, $16, nA5
	dc.b	$0C, nE5, $08, nD5, $0C, nEb5, $02, nE5
	dc.b	$02, smpsNoAttack, $14, nD5, $10, nCs5, $24, nRst
	dc.b	$18, nRst, $0C, nC5, $18, nA4, $08, nRst
	dc.b	$04, nB4, $02, nC5, $12, nD5, $04, nRst
	dc.b	$0C, nEb5, $02, nE5, $0A, smpsNoAttack, $0C, nF5
	dc.b	$08, nRst, $04, nE5, $08, nD5, $04, nRst
	dc.b	$08, nB4, $02, nC5, $0E, nD5, $0C, nRst
	dc.b	nG4, smpsNoAttack, $0C, nA4, $18, nC5, nD5, nE5
	dc.b	$08, nRst, $04, nFs5, $02, nG5, $12, nF5
	dc.b	$10, nE5, $0C, nC5, nRst, nD5, nRst, $08
	smpsFMvoice         $03
	dc.b	nB5, $04
	smpsFMAlterVol      $05
	smpsCall            MidnightGreenhouse_Call3
	dc.b	nRst, $08, nB5, $04
	smpsCall            MidnightGreenhouse_Call3
	dc.b	nRst, $0C
	smpsFMvoice         $01
	smpsFMAlterVol      $FB
	smpsPan             panLeft, $00
	dc.b	nA4, $60, nG4, nA4, nG4, $30, nRst
	smpsPan             panCenter, $00
	smpsFMvoice         $03
	smpsFMAlterVol      $05
	smpsJump            MidnightGreenhouse_Jump2

MidnightGreenhouse_Call3:
	smpsFMAlterVol      $0A
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	dc.b	nB5, $04, nC6, $08, nG5, $34, nRst, $14
	dc.b	nB5, $04
	smpsFMAlterVol      $0A
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	dc.b	nB5, $04, nC6, $08, nG5, $4C, nRst, $18
	dc.b	nG5, $18, nF5, nE5, $14, nF5, $04, smpsNoAttack
	dc.b	$08, nE5, $04, nF5, $08, nRst, $04, nG5
	dc.b	$08, nRst, $04, nAb5, $08, nRst, $04, nA5
	dc.b	$08, nRst, $04, nAb5, $08, nRst, $04, nA5
	dc.b	$08, nB5, $04, nRst, $08, nC5, $04, smpsNoAttack
	dc.b	$0C, nG5, nF5, nE5, $08, nF5, $0C, nE5
	dc.b	$04, nC5, $18, nRst, $08, nD5, $04, smpsNoAttack
	dc.b	$0C, nG5, nF5, $08, nG5, $04, nRst, $08
	dc.b	nAb5, $0C, nA5, $04, nB5, $0C, nC6, nE5
	dc.b	nD5, $14, nE5, $4C, nRst, $54
	smpsReturn

MidnightGreenhouse_FM3:
	smpsFMvoice         $02
	smpsFMAlterVol      $03
	smpsCall            MidnightGreenhouse_Call2
	smpsFMAlterVol      $FB

MidnightGreenhouse_Jump3:
	smpsPan             panLeft, $00
	smpsCall            MidnightGreenhouse_Call4
	smpsCall            MidnightGreenhouse_Call4
	smpsFMvoice         $04
	smpsPan             panCenter, $00
	smpsFMAlterVol      $04
	dc.b	nRst, $38, nG4, $04, nA4, $08, nC5, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD5
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD5
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $34, nG5, $04, nF5, $08, nE5, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nB4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nB4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $14, nRst, $44, nCs5, $04, smpsNoAttack, $14
	dc.b	nB4, $10, nA4, $24
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nFs4, $10
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $08, nA4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA4, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG4, $14, nA4, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $14, nRst, $0C, nB4, $08
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $08, nB4, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA4, $10, nB4, $08
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $18, nRst, $0C, nC5, $08
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $08, nC5, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD5, $28, nC5, $08
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE5, $14, nD5, $1C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $08, nD5, $08
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $08, nD5, $10
	smpsFMAlterVol      $FC

MidnightGreenhouse_Loop2:
	smpsFMvoice         $02
	smpsPan             panLeft, $00
	smpsCall            MidnightGreenhouse_Call4
	dc.b	nA4, $18, nB4, nC5, $14, nD5, $04, nRst
	dc.b	$0C, nG5, smpsNoAttack, $08, nRst, $04, nG5, $08
	dc.b	nRst, $04, nF5, $08, nE5, $04, nRst, $08
	dc.b	nD5, $34
	smpsCall            MidnightGreenhouse_Call2
	smpsLoop            $00, $02, MidnightGreenhouse_Loop2
	smpsFMvoice         $01
	smpsFMAlterVol      $FD
	smpsPan             panCenter, $00
	dc.b	nRst, $08, nC5, $58, nRst, $08, nB4, $58
	dc.b	nRst, $08, nC5, $58, nRst, $08, nB4, $28
	dc.b	nRst, $30
	smpsFMvoice         $02
	smpsFMAlterVol      $03
	smpsJump            MidnightGreenhouse_Jump3

MidnightGreenhouse_Call2:
	dc.b	nRst, $08, nG4, $04, nAb4, $08, nA4, $04
	dc.b	nC5, $08, nA4, $04, nC5, $08, nD5, $04
	dc.b	nE5, $04, nEb5, nD5, nC5, $08, nG4, $04
	dc.b	nA4, $08, nC5, $04, nD5, $08, nE5, $04
	dc.b	nG5, $04, nFs5, nF5, nD5, $0C, nRst, $04
	dc.b	nRst, nD5, nRst, nRst, nE5, nRst, nRst, nG5
	dc.b	nRst, nRst, nAb5, nRst, nRst, nAb5, nA5, $08
	dc.b	nB5, $04
	smpsReturn

MidnightGreenhouse_Call4:
	dc.b	nRst, $24, nC5, $04, nRst, $08, nB4, $14
	dc.b	nC5, $04, nRst, $18, nRst, $24, nB4, $04
	dc.b	nRst, $08, nE5, $14, nD5, $04, nRst, $18
	dc.b	nRst, $0C, nC5, $04, nRst, $08, nB4, $08
	dc.b	nC5, $04, nRst, $0C, nRst, $0C, nC5, $04
	dc.b	nRst, $08, nB4, $08, nC5, $04, nRst, $0C
	dc.b	nRst, $0C, nB4, $04, nRst, $08, nE5, $08
	dc.b	nD5, $04, nRst, $08, nE5, $04, nRst, $08
	dc.b	nE5, $04, nRst, $08, nD5, $1C
	smpsReturn

MidnightGreenhouse_FM4:
	smpsFMvoice         $02
	smpsFMAlterVol      $03
	smpsCall            MidnightGreenhouse_Call5
	smpsFMAlterVol      $FB

MidnightGreenhouse_Jump4:
	smpsPan             panRight, $00
	smpsCall            MidnightGreenhouse_Call6
	smpsCall            MidnightGreenhouse_Call6
	smpsFMvoice         $04
	smpsPan             panCenter, $00
	smpsFMAlterVol      $04
	dc.b	nRst, $38, nC4, $04, nD4, $08, nF4, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG4
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG4
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $34, nD5, $04, nC5, $08, nB4, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG4
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG4
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $14, nRst, $44, nA4, $04, smpsNoAttack, $14
	dc.b	nA4, $10, nG4, $24
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nEb4, $10
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $08, nD4
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE4, $14, nD4, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $14, nRst, $0C, nE4, $08
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $08, nE4, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE4, $10, nE4, $08
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $18, nRst, $0C, nF4, $08
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $08, nF4, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE4, $28, nF4, $08
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA4, $14, nB4, $1C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $08, nB4, $08
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $08, nB4, $10
	smpsFMAlterVol      $FC
	smpsFMvoice         $02
	smpsPan             panRight, $00

MidnightGreenhouse_Loop3:
	smpsCall            MidnightGreenhouse_Call6
	dc.b	nE4, $18, nG4, nA4, $14, $04, nRst, $0C
	dc.b	nD5, smpsNoAttack, $08, nRst, $04, nD5, $08, nRst
	dc.b	$04, nC5, $08, nB4, $04, nRst, $08, nAb4
	dc.b	$34
	smpsCall            MidnightGreenhouse_Call5
	smpsLoop            $00, $02, MidnightGreenhouse_Loop3
	smpsFMvoice         $01
	smpsFMAlterVol      $FD
	smpsPan             panCenter, $00
	dc.b	nRst, $0C, nE5, $54, nRst, $0C, nD5, $54
	dc.b	nRst, $0C, nE5, $54, nRst, $0C, nD5, $24
	dc.b	nRst, $30
	smpsFMvoice         $02
	smpsFMAlterVol      $03
	smpsJump            MidnightGreenhouse_Jump4

MidnightGreenhouse_Call5:
	dc.b	nRst, $08, nD4, $04, nEb4, $08, nE4, $04
	dc.b	nG4, $08, nE4, $04, nG4, $08, nA4, $04
	dc.b	nC5, $04, nB4, nBb4, nA4, $08, nC4, $04
	dc.b	nD4, $08, nE4, $04, nG4, $08, nA4, $04
	dc.b	nC5, $04, nB4, nBb4, nG4, $0C, nRst, $04
	dc.b	nRst, nG4, nRst, nRst, nA4, nRst, nRst, nC5
	dc.b	nRst, nRst, nD5, nRst, nRst, nE5, nF5, $08
	dc.b	nAb5, $04
	smpsReturn

MidnightGreenhouse_Call6:
	dc.b	nRst, $24, nA4, $04, nRst, $08, nG4, $14
	dc.b	nA4, $04, nRst, $18, nRst, $24, nG4, $04
	dc.b	nRst, $08, nC5, $14, nB4, $04, nRst, $18
	dc.b	nRst, $0C, nA4, $04, nRst, $08, nG4, $08
	dc.b	nA4, $04, nRst, $0C, nRst, $0C, nA4, $04
	dc.b	nRst, $08, nG4, $08, nA4, $04, nRst, $0C
	dc.b	nRst, $0C, nG4, $04, nRst, $08, nC5, $08
	dc.b	nB4, $04, nRst, $08, nB4, $04, nRst, $08
	dc.b	nB4, $04, nRst, $08, nAb4, $1C
	smpsReturn

MidnightGreenhouse_FM5:
	smpsFMvoice         $05
	dc.b	nRst, $60, nRst
	smpsModSet          $03, $01, $01, $03

MidnightGreenhouse_Loop4:
	dc.b	nE5, $60, nD5
	smpsLoop            $00, $04, MidnightGreenhouse_Loop4
	smpsFMvoice         $01
	smpsFMAlterVol      $FC
	smpsModSet          $00, $00, $00, $00
	dc.b	nC5, $18
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nF5, $30
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nD5, $18
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nG5, $30
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nD5, $18
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nG5, $30
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nE5, $48
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nB4, $10, nC5, $18
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nF5, $30
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nD5, $18
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nG5, $30
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nC5, $18
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nE5, $30
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nC5, $0C
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nB4, $4C
	smpsFMAlterVol      $04

MidnightGreenhouse_Loop5:
	smpsFMvoice         $05
	smpsModSet          $03, $01, $01, $03
	dc.b	nE5, $60, nD5
	smpsLoop            $00, $08, MidnightGreenhouse_Loop5
	dc.b	nE5, $60, nD5, nE5, nD5, $38, nRst, $28
	smpsJump            MidnightGreenhouse_Loop4

MidnightGreenhouse_FM6:
	smpsFMvoice         $02
	smpsPan             panRight, $00
	smpsPitchSlideSpeed $02
	smpsFMAlterVol      $0A
	smpsCall            MidnightGreenhouse_Call5
	smpsPan             panCenter, $00
	smpsPitchSlideSpeed $FE
	smpsFMAlterVol      $F6

MidnightGreenhouse_Jump5:
	smpsFMvoice         $03
	smpsModSet          $05, $01, $03, $04
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nRst, $0C, nA4, $18, nB4, nC5, nG5, $14
	dc.b	nE5, $04
	smpsFMAlterVol      $0A
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	dc.b	nD5, $58
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $14, nG4, $18, nA4, nC5, $14, nE5
	dc.b	$04
	smpsFMAlterVol      $0A
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	dc.b	nF5
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, nD5, smpsNoAttack, $48, nA4, $18, nB4, nC5
	dc.b	nG5, $14, nE5, $04
	smpsFMAlterVol      $0A
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	dc.b	nD5, $58
	smpsFMAlterVol      $0A
	dc.b	$04, nRst, $14
	smpsFMAlterVol      $F6
	dc.b	nG5, $18, nA5, nE5, $14, nD5, $04, smpsNoAttack
	dc.b	$08, nCs5, $04, nC5, $08, nG5, $04, smpsNoAttack
	dc.b	$30
	smpsFMvoice         $01
	smpsModSet          $00, $00, $00, $00
	smpsPitchSlideSpeed $02
	dc.b	nRst, $02, nG4, $0C, nD5, $14, nC5, $04
	dc.b	nD5, $08, nRst, $04, nG5, $24, nRst, $0C
	dc.b	nG4, nD5, $14, nC5, $02, nCs5, nD5, $08
	dc.b	nRst, $04, nG5, $24, nRst, $0C, nG4, nD5
	dc.b	$14, nC5, $04, nD5, $08, nRst, $04, nFs5
	dc.b	$02, nG5, $16, nA5, $0C, nE5, $08, nD5
	dc.b	$0C, nEb5, $02, nE5, $02, smpsNoAttack, $14, nD5
	dc.b	$10, nCs5, $24, nRst, $18, nRst, $0C, nC5
	dc.b	$18, nA4, $08, nRst, $04, nB4, $02, nC5
	dc.b	$12, nD5, $04, nRst, $0C, nEb5, $02, nE5
	dc.b	$0A, smpsNoAttack, $0C, nF5, $08, nRst, $04, nE5
	dc.b	$08, nD5, $04, nRst, $08, nB4, $02, nC5
	dc.b	$0E, nD5, $0C, nRst, nG4, smpsNoAttack, $0C, nA4
	dc.b	$18, nC5, nD5, nE5, $08, nRst, $04, nFs5
	dc.b	$02, nG5, $12, nF5, $10, nE5, $0C, nC5
	dc.b	nRst, nD5, nRst, $06
	smpsPitchSlideSpeed $FE
	smpsFMvoice         $03
	smpsModSet          $05, $01, $03, $04
	dc.b	nRst, $0C, nB5, $04
	smpsCall            MidnightGreenhouse_Call3
	dc.b	nRst, $08, nB5, $04
	smpsCall            MidnightGreenhouse_Call3
	smpsFMAlterVol      $F6
	smpsPan             panRight, $00
	smpsModSet          $00, $00, $00, $00
	smpsFMvoice         $01
	dc.b	nRst, $14, nA5, $4C, nRst, $14, nG5, $4C
	dc.b	nRst, $14, nA5, $4C, nRst, $14, nG5, $1C
	dc.b	nRst, $30
	smpsFMAlterVol      $05
	smpsJump            MidnightGreenhouse_Jump5

MidnightGreenhouse_PSG1:
	smpsPSGvoice        cTone_04
	dc.b	nRst, $60, nRst
	smpsModSet          $03, $01, $01, $04

MidnightGreenhouse_Loop6:
	dc.b	nC5, $60, nB4
	smpsLoop            $00, $04, MidnightGreenhouse_Loop6
	smpsModSet          $00, $00, $00, $00
	smpsPSGvoice        cTone_06
	smpsPSGAlterVol     $FF
	dc.b	nA4, $18
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nC5, $30
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nB4, $18
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nD5, $30
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nB4, $18
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nD5, $30
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nCs5, $48
	smpsPSGAlterVol     $05
	dc.b	$04, nRst
	smpsPSGAlterVol     $FB
	dc.b	nFs4, $10, nA4, $18
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nC5, $30
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nB4, $18
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nD5, $30
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nA4, $18
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nC5, $30
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nA4, $0C
	smpsPSGAlterVol     $05
	dc.b	$04, nRst
	smpsPSGAlterVol     $FB
	dc.b	nG4, $4C
	smpsModSet          $03, $01, $01, $04
	smpsPSGAlterVol     $01

MidnightGreenhouse_Loop7:
	smpsPSGvoice        cTone_04
	dc.b	nC5, $60, nB4
	smpsLoop            $00, $08, MidnightGreenhouse_Loop7
	dc.b	nC5, $60, nB4, nC5, $60, nB4, $38, nRst
	dc.b	$28
	smpsJump            MidnightGreenhouse_Loop6

MidnightGreenhouse_PSG2:
	smpsPSGvoice        cTone_04
	dc.b	nRst, $60, nRst
	smpsModSet          $03, $01, $01, $04

MidnightGreenhouse_Loop8:
	dc.b	nG4, $30, nA4, nF4, nAb4
	smpsLoop            $00, $04, MidnightGreenhouse_Loop8
	smpsPSGvoice        cTone_06
	smpsModSet          $00, $00, $00, $00
	smpsPSGAlterVol     $FF
	dc.b	nF4, $18
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nA4, $30
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nF4, $18
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nB4, $30
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nG4, $18
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nB4, $30
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nG4, $48
	smpsPSGAlterVol     $05
	dc.b	$04, nRst
	smpsPSGAlterVol     $FB
	dc.b	nCs4, $10, nF4, $18
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nA4, $30
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nG4, $18
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nB4, $30
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nE4, $18
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nA4, $30
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nE4, $0C
	smpsPSGAlterVol     $05
	dc.b	$04, nRst
	smpsPSGAlterVol     $FB
	dc.b	nD4, $4C
	smpsModSet          $03, $01, $01, $04
	smpsPSGAlterVol     $01

MidnightGreenhouse_Loop9:
	smpsPSGvoice        cTone_04
	dc.b	nG4, $30, nA4, nF4, nAb4
	smpsLoop            $00, $08, MidnightGreenhouse_Loop9
	dc.b	nG4, $30, nA4, nF4, nAb4, nG4, $30, nA4
	dc.b	nF4, nAb4, $08, nRst, $28
	smpsJump            MidnightGreenhouse_Loop8

MidnightGreenhouse_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        cTone_02
	dc.b	nC4, $08, $04
	smpsPSGvoice        cTone_05
	dc.b	$08
	smpsPSGvoice        cTone_02
	dc.b	$04, nRst, $08, nC4, $04
	smpsPSGvoice        cTone_05
	dc.b	$08
	smpsPSGvoice        cTone_02
	dc.b	$04, nRst, $04, nC4, nC4
	smpsPSGvoice        cTone_05
	dc.b	$08
	smpsPSGvoice        cTone_02
	dc.b	$04, $08, $04, $08, $04, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C

MidnightGreenhouse_Loop10:
	smpsCall            MidnightGreenhouse_Call7
	smpsLoop            $00, $04, MidnightGreenhouse_Loop10
	smpsCall            MidnightGreenhouse_Call8
	smpsCall            MidnightGreenhouse_Call8
	smpsCall            MidnightGreenhouse_Call8
	dc.b	nRst, $0C
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C, nRst, $0C, nC4, $0C, nRst, $0C
	smpsPSGvoice        cTone_05
	dc.b	nC4, $0C
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C, $0C
	smpsCall            MidnightGreenhouse_Call8
	smpsCall            MidnightGreenhouse_Call8
	smpsCall            MidnightGreenhouse_Call8
	dc.b	nRst, $0C, nC4, nRst, nC4, nC4, nC4, nC4
	dc.b	nC4

MidnightGreenhouse_Loop11:
	smpsCall            MidnightGreenhouse_Call7
	smpsLoop            $00, $08, MidnightGreenhouse_Loop11
	smpsCall            MidnightGreenhouse_Call7
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C, $0C, $0C, $0C, $08, $04
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsPSGvoice        cTone_02
	dc.b	$08, $04, $0C
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C, $0C, $0C, $0C, $0C, nRst, $24
	smpsJump            MidnightGreenhouse_Loop10

MidnightGreenhouse_Call7:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C, $0C, $0C, $0C, $08, $04
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsPSGvoice        cTone_02
	dc.b	$08, $04, $0C
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C, $0C, $0C, $0C, $0C, $0C, $08
	dc.b	$04, $08, $04
	smpsReturn

MidnightGreenhouse_Call8:
	dc.b	nRst, $0C
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C, nRst, $0C, nC4, $0C, nRst, $0C
	smpsPSGvoice        cTone_05
	dc.b	nC4, $0C
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C, $04, $04, $04
	smpsReturn

MidnightGreenhouse_PWM1:
	dc.b	pElecKick, $18, nRst, $14, pElecKick, $04, nRst, $30
	dc.b	pElecKick, $18, nRst, $14, pElecKick, $04, nRst, $2C
	dc.b	pElecKick, $04

MidnightGreenhouse_Jump6:
	smpsCall            MidnightGreenhouse_Call9
	smpsCall            MidnightGreenhouse_Call9

MidnightGreenhouse_Loop12:
	dc.b	pElecKick, $14, $04, nRst, $0C, pElecKick, nRst, $08
	dc.b	pElecKick, $04, $08, nRst, $1C
	smpsLoop            $00, $07, MidnightGreenhouse_Loop12
	dc.b	pElecKick, $14, $04, nRst, $0C, pElecKick, nRst, $30

MidnightGreenhouse_Loop13:
	smpsCall            MidnightGreenhouse_Call9
	smpsLoop            $01, $04, MidnightGreenhouse_Loop13

MidnightGreenhouse_Loop14:
	dc.b	nRst, $08, pElecKick, $04, nRst, $08, pElecKick, $04
	dc.b	nRst, $0C, pElecKick, $0C, $30
	smpsLoop            $00, $04, MidnightGreenhouse_Loop14
	smpsJump            MidnightGreenhouse_Jump6

MidnightGreenhouse_Call9:
	dc.b	nRst, $08, pElecKick, $04, nRst, $08, pElecKick, $04
	dc.b	nRst, $0C, pElecKick, $0C, $30, nRst, $08, pElecKick
	dc.b	$04, nRst, $08, pElecKick, $04, nRst, $0C, pElecKick
	dc.b	$0C, $14, $04, nRst, $18
	smpsLoop            $00, $02, MidnightGreenhouse_Call9
	smpsReturn

MidnightGreenhouse_PWM2:
	dc.b	$96, $60, nRst, $08, pElecSnare, $04, $08, nRst
	dc.b	$04, pElecSnare, $08, $0C, $04, nRst, $08, pElecSnare
	dc.b	$04, $08, $04, nRst, $08, pElecSnare, $04
	smpsFMAlterVol      $F9
	dc.b	pTomHi
	smpsFMAlterVol      $07
	dc.b	pTomMid
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70

MidnightGreenhouse_Jump7:
	smpsCall            MidnightGreenhouse_Call10
	smpsCall            MidnightGreenhouse_Call10
	dc.b	nRst, $18, pElecSnare, nRst, pElecSnare, nRst, pElecSnare, nRst
	dc.b	pElecSnare, nRst, pElecSnare, nRst, pElecSnare, nRst, pElecSnare, nRst
	dc.b	$08
	smpsFMAlterVol      $F9
	dc.b	pTomHi, $04
	smpsFMAlterVol      $07
	dc.b	pTomMid, $08, nRst, $04, pElecSnare, $18, nRst, $18
	dc.b	pElecSnare, nRst, pElecSnare, nRst, pElecSnare, nRst, pElecSnare, nRst
	dc.b	pElecSnare, nRst, pElecSnare, nRst, pElecSnare, nRst, $08
	smpsFMAlterVol      $F9
	dc.b	pTomHi, $04, nRst, $08, pTomHi, $04
	smpsFMAlterVol      $07
	dc.b	pTomMid, $08
	smpsFMAlterVol      $90
	dc.b	pTomLo, $04
	smpsFMAlterVol      $70
	dc.b	pElecSnare, pElecSnare, pElecSnare

MidnightGreenhouse_Loop15:
	smpsCall            MidnightGreenhouse_Call10
	smpsLoop            $00, $05, MidnightGreenhouse_Loop15
	smpsJump            MidnightGreenhouse_Jump7

MidnightGreenhouse_Call10:
	dc.b	nRst, $18, pElecSnare, nRst, pElecSnare, nRst, pElecSnare, nRst
	dc.b	pElecSnare, $14, $04, nRst, $18, pElecSnare, nRst, pElecSnare
	dc.b	nRst, pElecSnare, nRst, pElecSnare, $08, $04
	smpsFMAlterVol      $90
	dc.b	pTomLo, $0C
	smpsFMAlterVol      $70
	smpsReturn

MidnightGreenhouse_PWM3:
	dc.b	$96, $60
	smpsFMAlterVol      $C0
	dc.b	pCrash, $18, nRst, $14
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pSplash, $04, nRst, $30
	smpsFMAlterVol      $04

MidnightGreenhouse_Jump8:
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst, nRst
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst, $50
	smpsFMAlterVol      $FC
	dc.b	pSplash, $10
	smpsFMAlterVol      $04
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst
	smpsFMAlterVol      $FC
	dc.b	pSplash, $60
	smpsFMAlterVol      $04
	smpsFMAlterVol      $C0
	dc.b	pCrash, $14
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pSplash, $04, nRst, $48
	smpsFMAlterVol      $04

MidnightGreenhouse_Loop16:
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsFMAlterVol      $C0
	dc.b	pCrash
	smpsFMAlterVol      $40
	dc.b	nRst
	smpsFMAlterVol      $C0
	dc.b	pCrash
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pSplash
	smpsFMAlterVol      $04
	smpsLoop            $00, $02, MidnightGreenhouse_Loop16
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsJump            MidnightGreenhouse_Jump8

MidnightGreenhouse_PWM4:
	dc.b	$96, $60, nRst, $0C, pElecHiHat, nRst, pElecHiHat, nRst
	dc.b	pElecHiHat, nRst, pElecHiHat, $04, $04, $04

MidnightGreenhouse_Loop17:
	smpsCall            MidnightGreenhouse_Call11
	smpsLoop            $01, $04, MidnightGreenhouse_Loop17

MidnightGreenhouse_Loop18:
	smpsCall            MidnightGreenhouse_Call11
	smpsLoop            $01, $04, MidnightGreenhouse_Loop18

MidnightGreenhouse_Loop19:
	smpsCall            MidnightGreenhouse_Call12
	smpsLoop            $00, $08, MidnightGreenhouse_Loop19
	smpsCall            MidnightGreenhouse_Call12
	dc.b	nRst, $0C, pElecHiHat, nRst, pElecHiHat
	smpsFMAlterVol      $FC
	dc.b	nRst, $0C, pClickHi, $08, $04, $08
	smpsFMAlterVol      $04
	smpsFMAlterVol      $C0
	dc.b	pClickLo, $04, nRst, $08
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pClickHi, $04
	smpsFMAlterVol      $04
	dc.b	nRst, $0C, pElecHiHat, nRst, pElecHiHat, pElecHiHat, $30
	smpsJump            MidnightGreenhouse_Loop17

MidnightGreenhouse_Call11:
	dc.b	nRst, $0C, pElecHiHat
	smpsLoop            $00, $07, MidnightGreenhouse_Call11
	dc.b	nRst, $0C, pElecHiHat, $04, $04, $04
	smpsReturn

MidnightGreenhouse_Call12:
	dc.b	nRst, $0C, pElecHiHat, nRst, pElecHiHat
	smpsFMAlterVol      $FC
	dc.b	nRst, $0C, pClickHi, $08, $04, $08
	smpsFMAlterVol      $04
	smpsFMAlterVol      $C0
	dc.b	pClickLo, $04, nRst, $08
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pClickHi, $04
	smpsFMAlterVol      $04
	dc.b	nRst, $0C, pElecHiHat, nRst, pElecHiHat, nRst, $08
	smpsFMAlterVol      $C0
	dc.b	pClickLo, $04, $0C
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pClickHi, $0C
	smpsFMAlterVol      $04
	smpsFMAlterVol      $C0
	dc.b	pClickLo, $08
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pClickHi, $04
	smpsFMAlterVol      $04
	smpsReturn

MidnightGreenhouse_Voices:
	; Voice $00
	; $3B
	; $58, $31, $04, $02,	$DF, $9F, $9F, $9F
	; $14, $08, $0E, $07,	$10, $0E, $0F, $07
	; $6F, $7F, $3F, $8F,	$05, $14, $18, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $03, $05
	smpsVcCoarseFreq    $02, $04, $01, $08
	smpsVcRateScale     $02, $02, $02, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $0E, $08, $14
	smpsVcDecayRate2    $07, $0F, $0E, $10
	smpsVcDecayLevel    $08, $03, $07, $06
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $18, $14, $05

	; Voice $01
	; $84
	; $3F, $01, $01, $01,	$1F, $1F, $5F, $5F
	; $0E, $0A, $09, $0A,	$0F, $0B, $0A, $0A
	; $2F, $1F, $4F, $1F,	$2C, $80, $12, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $02
	smpsVcDetune        $00, $00, $00, $03
	smpsVcCoarseFreq    $01, $01, $01, $0F
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $09, $0A, $0E
	smpsVcDecayRate2    $0A, $0A, $0B, $0F
	smpsVcDecayLevel    $01, $04, $01, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $12, $80, $2C

	; Voice $02
	; $1F
	; $66, $30, $53, $22,	$1C, $9C, $1F, $1F
	; $12, $0F, $0F, $0F,	$00, $00, $00, $00
	; $FF, $0F, $0F, $0F,	$84, $80, $80, $87
	smpsVcAlgorithm     $07
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $05, $03, $06
	smpsVcCoarseFreq    $02, $03, $00, $06
	smpsVcRateScale     $00, $00, $02, $00
	smpsVcAttackRate    $1F, $1F, $1C, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $0F, $0F, $12
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $87, $80, $80, $84

	; Voice $03
	; $2D
	; $77, $65, $05, $15,	$1F, $5F, $5F, $5F
	; $00, $0C, $08, $03,	$00, $11, $10, $0C
	; $0F, $4C, $4C, $1C,	$22, $83, $82, $82
	smpsVcAlgorithm     $05
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $06, $07
	smpsVcCoarseFreq    $05, $05, $05, $07
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $08, $0C, $00
	smpsVcDecayRate2    $0C, $10, $11, $00
	smpsVcDecayLevel    $01, $04, $04, $00
	smpsVcReleaseRate   $0C, $0C, $0C, $0F
	smpsVcTotalLevel    $82, $82, $83, $22

	; Voice $04
	; $3D
	; $01, $01, $01, $01,	$94, $19, $19, $19
	; $0F, $0D, $0D, $0D,	$07, $04, $04, $04
	; $25, $1A, $1A, $1A,	$14, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $19, $19, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0D, $0D, $0F
	smpsVcDecayRate2    $04, $04, $04, $07
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $80, $80, $80, $14

	; Voice $05
	; $06
	; $03, $02, $01, $03,	$1F, $0A, $0A, $0D
	; $08, $08, $08, $08,	$01, $01, $00, $00
	; $3F, $2F, $1F, $1F,	$20, $84, $80, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $03, $01, $02, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0D, $0A, $0A, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $08, $08, $08
	smpsVcDecayRate2    $00, $00, $01, $01
	smpsVcDecayLevel    $01, $01, $02, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $80, $84, $20
