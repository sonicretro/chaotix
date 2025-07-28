Electoria_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Electoria_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $19
	smpsHeaderFM        Electoria_FM1, $00, $0B
	smpsHeaderFM        Electoria_FM2, $00, $14
	smpsHeaderFM        Electoria_FM3, $00, $14
	smpsHeaderFM        Electoria_FM4, $00, $14
	smpsHeaderFM        Electoria_FM5, $00, $14
	smpsHeaderFM        Electoria_FM6, $00, $14
	smpsHeaderPSG       Electoria_PSG1, $00, $03, $00, cTone_0C
	smpsHeaderPSG       Electoria_PSG2, $F4, $03, $00, cTone_0C
	smpsHeaderPSG       Electoria_PSG3, $23, $02, $00, cTone_02
	smpsHeaderPWM       Electoria_PWM1, $AA
	smpsHeaderPWM       Electoria_PWM2, $BB
	smpsHeaderPWM       Electoria_PWM3, $99
	smpsHeaderPWM       Electoria_PWM4, $65

Electoria_FM1:
	smpsFMvoice         $00
	dc.b	nD1, $06, nD2, nD2, nE1, nE2, nE2, nE1
	dc.b	nE2, nE2, nG1, nG2, nG2, nA1, nA2, nD1
	dc.b	$0C

Electoria_Loop1:
	smpsCall            Electoria_Call1
	smpsLoop            $00, $08, Electoria_Loop1

Electoria_Loop2:
	smpsCall            Electoria_Call1
	smpsLoop            $00, $08, Electoria_Loop2
	smpsAlterPitch      $FC

Electoria_Loop3:
	smpsCall            Electoria_Call1
	smpsLoop            $00, $07, Electoria_Loop3
	smpsAlterPitch      $04
	dc.b	nEb1, $0C, nEb2, $06, nRst, nEb1, nRst, nEb2
	dc.b	nEb1, nRst, nRst, nEb2, nRst
	smpsModSet          $01, $08, $EC, $00
	dc.b	nEb1, $18
	smpsModSet          $00, $00, $00, $00

Electoria_Loop4:
	smpsCall            Electoria_Call1
	smpsLoop            $00, $07, Electoria_Loop4
	dc.b	nD1, $0C, nD2, nE1, nE2, nF1, $06, nF2
	dc.b	nF1, nRst, nD1, nD2, nD1, nRst

Electoria_Loop5:
	smpsCall            Electoria_Call1
	smpsLoop            $00, $08, Electoria_Loop5

Electoria_Loop6:
	smpsCall            Electoria_Call1
	smpsLoop            $00, $08, Electoria_Loop6
	smpsJump            Electoria_Loop2

Electoria_Call1:
	dc.b	nG1, $0C, nG2, $06, nRst, nG1, $0C, nRst
	dc.b	$06, nG1, nRst, nG1, nG1, $0C, nF1, nFs1
	smpsReturn

Electoria_FM2:
	smpsFMvoice         $03
	dc.b	nRst, $60

Electoria_Loop7:
	smpsCall            Electoria_Call2
	smpsAlterPitch      $01
	smpsCall            Electoria_Call2
	smpsAlterPitch      $FF
	smpsLoop            $00, $03, Electoria_Loop7
	smpsCall            Electoria_Call2
	smpsAlterPitch      $01
	dc.b	nRst, $0C, nB3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsAlterPitch      $FF
	smpsFMAlterVol      $FA
	smpsFMvoice         $05
	smpsFMAlterVol      $FB
	dc.b	nBb4, $0C

Electoria_Jump1:
	dc.b	smpsNoAttack, $0C, nF4, nRst, nG4, $18, nBb4, $0C
	dc.b	nC5, nD5, smpsNoAttack, $0C, nF5, $18, nC5, nCs5
	dc.b	$0C, nC5, nBb4, nF4, $12, nG4, $4E
	smpsPan             panLeft, $00
	smpsFMvoice         $02
	smpsFMAlterVol      $0A
	smpsCall            Electoria_Call3
	smpsPan             panCenter, $00
	smpsFMvoice         $05
	smpsFMAlterVol      $F6
	dc.b	nBb4, $0C, smpsNoAttack, $0C, nF4, nRst, nG4, $18
	dc.b	nBb4, $0C, nC5, nF5, smpsNoAttack, $0C, nG5, nG5
	dc.b	nE5, $18, nEb5, $0C, nD5, nCs5, nBb4, $12
	dc.b	nG4, $4E
	smpsPan             panLeft, $00
	smpsFMvoice         $02
	smpsFMAlterVol      $0A
	smpsCall            Electoria_Call4
	smpsPan             panCenter, $00
	smpsFMvoice         $01
	smpsFMAlterVol      $F6
	dc.b	nRst, $18, nBb3, $30, nC4, $18, nD4, $18
	dc.b	nF4, $30, nG4, $18, nBb4, $24, nG4, nA4
	dc.b	$18, smpsNoAttack, $30, nG4, $18, nD4, nRst, $18
	dc.b	nBb3, $30, nG3, $18, nA3, nBb3, nC4, nD4
	dc.b	nF4, $60
	smpsFMvoice         $02
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nC5, $06, nBb4, nG4, nFs4, nF4, nEb4, nD4
	dc.b	nBb3, nRst, $30
	smpsPan             panCenter, $00
	dc.b	nRst, $0C, nG4, nG5, $18, nF5, nD5, $12
	dc.b	nG4, $06, smpsNoAttack, $0C, nG5, $0C, nF5, nD5
	dc.b	nB4, $12, nC5, nD5, $0C, nRst, $0C, nG4
	dc.b	nG5, $18, nF5, nD5, $12, nB4, $06, smpsNoAttack
	dc.b	$0C, nC5, nB4, nC5, nF5, $06, nE5, $0C
	dc.b	nD5, $06, nRst, $0C, nD5, smpsNoAttack, $0C, nD5
	dc.b	nD5, nB4, nD5, $12, nE5, $06, nRst, $0C
	dc.b	nD5, $0C, smpsNoAttack, $0C, nB4, nD5, nB4, nD5
	dc.b	$12, nE5, $06, nRst, $0C, nF5, smpsNoAttack, $60
	smpsPan             panLeft, $00
	smpsCall            Electoria_Call4
	smpsPan             panCenter, $00
	dc.b	nRst, $0C, nG4, nG5, $18, nF5, nD5, $12
	dc.b	nG4, $06, smpsNoAttack, $0C, nG5, $0C, nF5, nD5
	dc.b	nB4, $12, nC5, nD5, $0C, nRst, $0C, nG4
	dc.b	nG5, $18, nF5, nD5, $12, nB4, $06, smpsNoAttack
	dc.b	$0C, nC5, nB4, nC5, nF5, $06, nE5, $0C
	dc.b	nD5, $06, nRst, $0C, nD5, smpsNoAttack, $0C, nD5
	dc.b	nD5, nB4, nD5, $12, nE5, $06, nRst, $0C
	dc.b	nD5, $0C, smpsNoAttack, $0C, nB4, nD5, nB4, nD5
	dc.b	$12, nE5, $06, nRst, $0C, nF5, smpsNoAttack, $60
	smpsPan             panLeft, $00
	smpsCall            Electoria_Call5
	dc.b	nG4, $0C
	smpsFMAlterVol      $0A
	dc.b	$0C
	smpsFMAlterVol      $F6
	dc.b	nRst, $48
	smpsPan             panCenter, $00
	smpsFMAlterVol      $01
	smpsFMvoice         $03
	dc.b	nG2, $60, $60, $30, nRst

Electoria_Loop8:
	dc.b	nG2, $60
	smpsLoop            $00, $03, Electoria_Loop8
	dc.b	nG2, $54
	smpsFMvoice         $05
	smpsFMAlterVol      $F5
	dc.b	nBb4, $0C
	smpsJump            Electoria_Jump1

Electoria_Call2:
	dc.b	nRst, $0C, nB3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsReturn

Electoria_Call3:
	dc.b	nC5, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nB4, $12, nC5, $06, nA4, nG4
	smpsFMAlterVol      $0A
	dc.b	nG4
	smpsFMAlterVol      $F6
	dc.b	nG4, $12
	smpsReturn

Electoria_Call4:
	dc.b	nG4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nFs4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nE4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nFs4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsReturn

Electoria_Call5:
	dc.b	nG3, $0C, nG4, nFs4, nFs3, $06, nF3, $0C
	dc.b	$06, nF4, $0C, nE4, nF4
	smpsReturn

	; Unused data
	smpsCall            Electoria_Call20

	; Unused data
	dc.b	nD4, $0C, smpsNoAttack, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nD4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $18, nB3, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nB3
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $12, nE4, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF4, $0C, smpsNoAttack, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nF4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE4
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nE4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF4, nE4
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nE4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC4
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nC4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC4, $0C, nD4, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nD4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsReturn
	smpsCall            Electoria_Call20
	dc.b	nF4, $0C, smpsNoAttack, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nF4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF4, $18, nD4, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nD4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF4, $12, nG4, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nB4, $0C, smpsNoAttack, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nB4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC5
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nC5
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nB4, nA4
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nA4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD5, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF4
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nF4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF4, $0C, nG4, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nG4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsReturn

Electoria_Call20:
	dc.b	nRst, $0C, nF4, nG4, $06, nRst, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nG4, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nB4, $12, nG4, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC5, $0C, smpsNoAttack, $0C, nB4, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nB4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC5, nD5
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nD5
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC5, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nB4, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA4, $12
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF4, nG4, $06, nRst, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nG4, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nB4, $12, nG4, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF4, smpsNoAttack, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nF4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG4
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nG4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF4, nE4
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nE4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $1E
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsReturn

Electoria_FM3:
	smpsFMvoice         $03
	dc.b	nRst, $60
	smpsAlterPitch      $FA

Electoria_Loop9:
	smpsCall            Electoria_Call2
	smpsLoop            $00, $07, Electoria_Loop9
	dc.b	nRst, $0C, nB3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsAlterPitch      $06
	smpsFMAlterVol      $FC
	smpsFMvoice         $05
	smpsPan             panLeft, $00
	smpsModSet          $01, $01, $02, $03
	dc.b	nRst, $06, nBb4, $0C

Electoria_Jump2:
	dc.b	smpsNoAttack, $0C, nF4, nRst, nG4, $18, nBb4, $0C
	dc.b	nC5, nD5, smpsNoAttack, $0C, nF5, $18, nC5, nCs5
	dc.b	$0C, nC5, nBb4, nF4, $12, nG4, $48
	smpsFMvoice         $02
	smpsFMAlterVol      $03
	smpsModSet          $00, $00, $00, $00
	smpsPan             panRight, $00
	smpsAlterPitch      $F4
	smpsCall            Electoria_Call3
	smpsModSet          $01, $01, $01, $05
	smpsPan             panLeft, $00
	smpsAlterPitch      $0C
	smpsFMvoice         $05
	smpsFMAlterVol      $FD
	dc.b	nRst, $06, nBb4, $0C, smpsNoAttack, $0C, nF4, nRst
	dc.b	nG4, $18, nBb4, $0C, nC5, nF5, smpsNoAttack, $0C
	dc.b	nG5, nG5, nE5, $18, nEb5, $0C, nD5, nCs5
	dc.b	nBb4, $12, nG4, $48
	smpsModSet          $00, $00, $00, $00
	smpsPan             panRight, $00
	smpsAlterPitch      $F4
	smpsFMvoice         $02
	smpsFMAlterVol      $03
	smpsCall            Electoria_Call4
	smpsPan             panLeft, $00
	smpsFMvoice         $01
	smpsFMAlterVol      $FD
	smpsModSet          $01, $01, $02, $03
	smpsAlterPitch      $0C
	dc.b	nRst, $06, nRst, $18, nBb3, $30, nC4, $18
	dc.b	nD4, $18, nF4, $30, nG4, $18, nBb4, $24
	dc.b	nG4, nA4, $18, smpsNoAttack, $30, nG4, $18, nD4
	dc.b	nRst, $18, nBb3, $30, nG3, $18, nA3, nBb3
	dc.b	nC4, nD4, nF4, $5A
	smpsModSet          $00, $00, $00, $00
	smpsAlterPitch      $F4
	smpsFMvoice         $02
	smpsFMAlterVol      $03
	smpsPan             panRight, $00
	dc.b	nC5, $06, nBb4, nG4, nFs4, nF4, nEb4, nD4
	dc.b	nBb3, nRst, $30
	smpsAlterPitch      $0C
	smpsFMvoice         $02
	smpsFMAlterVol      $07
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $04, $05
	smpsPan             panLeft, $00
	dc.b	nRst, $06, nRst, $0C, nG4, nG5, $18, nF5
	dc.b	nD5, $12, nG4, $06, smpsNoAttack, $0C, nG5, $0C
	dc.b	nF5, nD5, nB4, $12, nC5, nD5, $0C, nRst
	dc.b	$0C, nG4, nG5, $18, nF5, nD5, $12, nB4
	dc.b	$06, smpsNoAttack, $0C, nC5, nB4, nC5, nF5, $06
	dc.b	nE5, $0C, nD5, $06, nRst, $0C, nD5, smpsNoAttack
	dc.b	$0C, nD5, nD5, nB4, nD5, $12, nE5, $06
	dc.b	nRst, $0C, nD5, $0C, smpsNoAttack, $0C, nB4, nD5
	dc.b	nB4, nD5, $12, nE5, $06, nRst, $0C, nF5
	dc.b	smpsNoAttack, $5A
	smpsPan             panRight, $00
	smpsAlterPitch      $F4
	smpsModSet          $00, $00, $00, $00
	smpsFMAlterVol      $F9
	smpsCall            Electoria_Call4
	smpsPan             panCenter, $00
	smpsAlterPitch      $0C
	smpsFMAlterVol      $07
	smpsModSet          $01, $01, $04, $05
	smpsPan             panLeft, $00
	dc.b	nRst, $06, nRst, $0C, nG4, nG5, $18, nF5
	dc.b	nD5, $12, nG4, $06, smpsNoAttack, $0C, nG5, $0C
	dc.b	nF5, nD5, nB4, $12, nC5, nD5, $0C, nRst
	dc.b	$0C, nG4, nG5, $18, nF5, nD5, $12, nB4
	dc.b	$06, smpsNoAttack, $0C, nC5, nB4, nC5, nF5, $06
	dc.b	nE5, $0C, nD5, $06, nRst, $0C, nD5, smpsNoAttack
	dc.b	$0C, nD5, nD5, nB4, nD5, $12, nE5, $06
	dc.b	nRst, $0C, nD5, $0C, smpsNoAttack, $0C, nB4, nD5
	dc.b	nB4, nD5, $12, nE5, $06, nRst, $0C, nF5
	dc.b	smpsNoAttack, $5A
	smpsPan             panRight, $00
	smpsAlterPitch      $F4
	smpsModSet          $00, $00, $00, $00
	smpsFMAlterVol      $F9
	smpsCall            Electoria_Call5
	dc.b	nG4, $0C
	smpsFMAlterVol      $0A
	dc.b	$0C
	smpsFMAlterVol      $F6
	dc.b	nRst, $48
	smpsPan             panCenter, $00
	smpsFMAlterVol      $01
	smpsFMvoice         $03
	smpsAlterPitch      $03

Electoria_Loop10:
	smpsCall            Electoria_Call2
	smpsLoop            $00, $02, Electoria_Loop10
	smpsAlterPitch      $FF
	smpsCall            Electoria_Call6
	smpsAlterPitch      $01

Electoria_Loop11:
	smpsCall            Electoria_Call2
	smpsLoop            $00, $03, Electoria_Loop11
	smpsFMAlterVol      $FF
	dc.b	nRst, $0C, nB3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsAlterPitch      $09
	smpsFMAlterVol      $FD
	smpsFMvoice         $05
	smpsPan             panLeft, $00
	smpsModSet          $01, $01, $02, $03
	dc.b	nRst, $06, nBb4, $0C
	smpsJump            Electoria_Jump2

Electoria_FM4:
	smpsFMvoice         $03
	dc.b	nRst, $60
	smpsAlterPitch      $F7

Electoria_Loop12:
	smpsCall            Electoria_Call2
	smpsLoop            $00, $08, Electoria_Loop12
	smpsAlterPitch      $09

Electoria_Loop13:
	smpsCall            Electoria_Call2
	smpsAlterPitch      $01
	smpsCall            Electoria_Call2
	smpsAlterPitch      $FF
	smpsLoop            $00, $04, Electoria_Loop13

Electoria_Loop14:
	smpsAlterPitch      $FF
	smpsCall            Electoria_Call2
	smpsAlterPitch      $02
	smpsCall            Electoria_Call2
	smpsAlterPitch      $FF
	smpsLoop            $00, $03, Electoria_Loop14
	smpsAlterPitch      $FF
	smpsCall            Electoria_Call2
	smpsAlterPitch      $01
	smpsCall            Electoria_Call6

Electoria_Loop15:
	smpsCall            Electoria_Call2
	smpsAlterPitch      $01
	smpsCall            Electoria_Call2
	smpsAlterPitch      $FF
	smpsLoop            $00, $03, Electoria_Loop15
	smpsCall            Electoria_Call2
	dc.b	nRst, $60

Electoria_Loop16:
	smpsCall            Electoria_Call2
	smpsAlterPitch      $01
	smpsCall            Electoria_Call2
	smpsAlterPitch      $FF
	smpsLoop            $00, $05, Electoria_Loop16
	smpsCall            Electoria_Call2
	smpsCall            Electoria_Call6

Electoria_Loop17:
	smpsCall            Electoria_Call2
	smpsAlterPitch      $01
	smpsCall            Electoria_Call2
	smpsAlterPitch      $FF
	smpsLoop            $00, $02, Electoria_Loop17
	smpsJump            Electoria_Loop13

Electoria_Call6:
	dc.b	nRst, $0C, nC4, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C, $06, nRst, $30
	smpsReturn

Electoria_FM5:
	smpsFMvoice         $03
	dc.b	nRst, $60

Electoria_Loop18:
	dc.b	nG2, $60
	smpsLoop            $00, $08, Electoria_Loop18
	smpsAlterPitch      $FA

Electoria_Loop19:
	smpsCall            Electoria_Call2
	smpsLoop            $00, $08, Electoria_Loop19
	smpsAlterPitch      $06

Electoria_Loop20:
	smpsAlterPitch      $FC
	smpsCall            Electoria_Call2
	smpsAlterPitch      $02
	smpsCall            Electoria_Call2
	smpsAlterPitch      $02
	smpsLoop            $00, $03, Electoria_Loop20
	smpsAlterPitch      $FC
	smpsCall            Electoria_Call2
	smpsAlterPitch      $01
	smpsCall            Electoria_Call6
	smpsAlterPitch      $03
	smpsAlterPitch      $FA

Electoria_Loop21:
	smpsCall            Electoria_Call2
	smpsLoop            $00, $07, Electoria_Loop21
	dc.b	nRst, $60

Electoria_Loop22:
	smpsCall            Electoria_Call2
	smpsLoop            $00, $0B, Electoria_Loop22
	smpsAlterPitch      $FF
	smpsCall            Electoria_Call6
	smpsAlterPitch      $01

Electoria_Loop23:
	smpsCall            Electoria_Call2
	smpsLoop            $00, $04, Electoria_Loop23
	smpsJump            Electoria_Loop19

Electoria_FM6:
	smpsFMvoice         $03

Electoria_Loop24:
	dc.b	nRst, $60
	smpsLoop            $00, $09, Electoria_Loop24

Electoria_Loop25:
	smpsCall            Electoria_Call7
	smpsLoop            $00, $08, Electoria_Loop25
	smpsAlterPitch      $03

Electoria_Loop26:
	smpsCall            Electoria_Call7
	smpsLoop            $00, $07, Electoria_Loop26
	smpsAlterPitch      $FD
	smpsCall            Electoria_Call8

Electoria_Loop27:
	smpsCall            Electoria_Call7
	smpsLoop            $00, $07, Electoria_Loop27
	dc.b	nRst, $60

Electoria_Loop28:
	smpsCall            Electoria_Call7
	smpsLoop            $00, $08, Electoria_Loop28

Electoria_Loop29:
	smpsCall            Electoria_Call7
	smpsLoop            $00, $03, Electoria_Loop29
	smpsAlterPitch      $FD
	smpsCall            Electoria_Call8
	smpsAlterPitch      $03

Electoria_Loop30:
	smpsCall            Electoria_Call7
	smpsLoop            $00, $04, Electoria_Loop30
	smpsJump            Electoria_Loop25

Electoria_Call7:
	dc.b	nRst, $0C, nD3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsReturn

Electoria_Call8:
	dc.b	nRst, $0C, nF3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C, $06, nRst, $30
	smpsReturn

Electoria_PSG1:
	smpsPSGvoice        cTone_0C
	dc.b	nRst, $60

Electoria_Loop31:
	smpsCall            Electoria_Call9
	smpsLoop            $00, $08, Electoria_Loop31

Electoria_Loop32:
	smpsCall            Electoria_Call9
	smpsLoop            $00, $08, Electoria_Loop32

Electoria_Loop33:
	smpsAlterPitch      $FC
	smpsCall            Electoria_Call9
	smpsAlterPitch      $04
	dc.b	nEb2, $06, nEb2, nEb3, nA2, nEb2, nEb3, nA2
	dc.b	nEb2, nEb3, nA2, nEb2, nEb3, nA2, nEb2, nEb3
	dc.b	nA2
	smpsLoop            $00, $03, Electoria_Loop33
	smpsAlterPitch      $FC
	smpsCall            Electoria_Call9
	smpsAlterPitch      $04
	dc.b	nEb2, $06, nEb2, nEb3, nA2, nEb2, nEb3, nA2
	dc.b	nEb2, nRst, $30

Electoria_Loop34:
	smpsCall            Electoria_Call9
	smpsLoop            $00, $07, Electoria_Loop34
	dc.b	nRst, $60

Electoria_Loop35:
	smpsCall            Electoria_Call9
	smpsLoop            $00, $08, Electoria_Loop35

Electoria_Loop36:
	smpsCall            Electoria_Call9
	smpsLoop            $00, $03, Electoria_Loop36
	dc.b	nG2, $06, nG2, nG3, nD3, nG2, nG3, nD3
	dc.b	nG2, nRst, $30

Electoria_Loop37:
	smpsCall            Electoria_Call9
	smpsLoop            $00, $04, Electoria_Loop37
	smpsJump            Electoria_Loop32

Electoria_Call9:
	dc.b	nG2, $06, nG2, nG3, nD3, nG2, nG3, nD3
	dc.b	nG2, nG3, nD3, nG2, nG3, nD3, nG2, nG3
	dc.b	nD3
	smpsReturn

Electoria_PSG2:
	smpsPSGvoice        cTone_0C
	dc.b	nRst, $60
	smpsAlterPitch      $0C

Electoria_Loop38:
	smpsCall            Electoria_Call10
	smpsCall            Electoria_Call11
	smpsLoop            $00, $04, Electoria_Loop38

Electoria_Loop39:
	smpsCall            Electoria_Call10
	smpsCall            Electoria_Call11
	smpsLoop            $00, $04, Electoria_Loop39

Electoria_Loop40:
	smpsCall            Electoria_Call12
	smpsCall            Electoria_Call11
	smpsLoop            $00, $03, Electoria_Loop40
	smpsCall            Electoria_Call12
	dc.b	nF3, $06, nG3, nRst, nC4, nRst, nRst, nF3
	dc.b	nG3, nRst, $30

Electoria_Loop41:
	smpsCall            Electoria_Call10
	smpsCall            Electoria_Call11
	smpsLoop            $00, $03, Electoria_Loop41
	smpsCall            Electoria_Call10
	dc.b	nRst, $60

Electoria_Loop42:
	smpsCall            Electoria_Call10
	smpsCall            Electoria_Call11
	smpsLoop            $00, $04, Electoria_Loop42
	smpsCall            Electoria_Call10
	smpsCall            Electoria_Call11
	smpsCall            Electoria_Call10
	dc.b	nF3, $06, nG3, nRst, nC4, nRst, nRst, nF3
	dc.b	nG3, nRst, $30

Electoria_Loop43:
	smpsCall            Electoria_Call10
	smpsCall            Electoria_Call11
	smpsLoop            $00, $02, Electoria_Loop43
	smpsJump            Electoria_Loop39

Electoria_Call10:
	dc.b	nF3, $06, nG3, nRst, nB3, nRst, nRst, nF3
	dc.b	nG3, nRst, nB3, nRst, nF3, nG3, nRst, nB3
	dc.b	nRst
	smpsReturn

Electoria_Call11:
	dc.b	nF3, $06, nG3, nRst, nC4, nRst, nRst, nF3
	dc.b	nG3, nRst, nC4, nRst, nF3, nG3, nRst, nC4
	dc.b	nRst
	smpsReturn

Electoria_Call12:
	dc.b	nF3, $06, nG3, nRst, nBb3, nRst, nRst, nF3
	dc.b	nG3, nRst, nBb3, nRst, nF3, nG3, nRst, nBb3
	dc.b	nRst
	smpsReturn

Electoria_PSG3:
	smpsPSGform         $E7

Electoria_Loop44:
	smpsCall            Electoria_Call13
	smpsLoop            $01, $09, Electoria_Loop44

Electoria_Loop45:
	smpsCall            Electoria_Call13
	smpsLoop            $01, $0F, Electoria_Loop45
	smpsCall            Electoria_Call14

Electoria_Loop46:
	smpsCall            Electoria_Call13
	smpsLoop            $01, $13, Electoria_Loop46
	smpsCall            Electoria_Call14

Electoria_Loop47:
	smpsCall            Electoria_Call13
	smpsLoop            $01, $04, Electoria_Loop47
	smpsJump            Electoria_Loop45

Electoria_Call13:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C
	smpsPSGvoice        cTone_05
	dc.b	nC4
	smpsLoop            $00, $04, Electoria_Call13
	smpsReturn

Electoria_Call14:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsPSGvoice        cTone_02
	dc.b	$0C
	smpsPSGvoice        cTone_05
	dc.b	$06
	smpsPSGvoice        cTone_02
	dc.b	$06, nRst, $30
	smpsReturn

Electoria_PWM1:
	smpsCall            Electoria_Call15
	smpsLoop            $00, $08, Electoria_PWM1
	smpsCall            Electoria_Call16

Electoria_Loop48:
	smpsCall            Electoria_Call15
	smpsLoop            $00, $07, Electoria_Loop48
	dc.b	nRst, $60

Electoria_Loop49:
	smpsCall            Electoria_Call15
	smpsLoop            $00, $07, Electoria_Loop49
	dc.b	pKick, $2A, $06, $96, $30

Electoria_Loop50:
	smpsCall            Electoria_Call15
	smpsLoop            $00, $07, Electoria_Loop50
	smpsCall            Electoria_Call16

Electoria_Loop51:
	smpsCall            Electoria_Call15
	smpsLoop            $00, $07, Electoria_Loop51
	dc.b	nRst, $60

Electoria_Loop52:
	smpsCall            Electoria_Call15
	smpsLoop            $00, $03, Electoria_Loop52
	dc.b	pKick, $2A, $06, $96, $30
	smpsCall            Electoria_Call15
	smpsCall            Electoria_Call15
	smpsCall            Electoria_Call15
	smpsCall            Electoria_Call16
	smpsJump            Electoria_Loop48

Electoria_Call15:
	dc.b	pKick, $0C, pKick, nRst, $12, pKick, $06, nRst
	dc.b	$0C, pKick, nRst, $18
	smpsReturn

Electoria_Call16:
	smpsFMAlterVol      $8D
	dc.b	pTomLo, $0C, $0C, $0C, $06, $06, nRst, pTomLo
	dc.b	pTomLo, $0C, $0C, $0C
	smpsFMAlterVol      $73
	smpsReturn

Electoria_PWM2:
	dc.b	pElecSnare, $06, nRst, pElecSnare, pElecSnare, nRst, pElecSnare, pElecSnare
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	dc.b	pElecSnare
	smpsFMAlterVol      $F9
	dc.b	pTomHi
	smpsFMAlterVol      $07
	dc.b	pTomMid, pElecSnare, pElecSnare, pTomMid
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	dc.b	pElecSnare

Electoria_Loop53:
	smpsCall            Electoria_Call17
	smpsLoop            $00, $04, Electoria_Loop53

Electoria_Loop54:
	smpsCall            Electoria_Call17
	smpsLoop            $00, $04, Electoria_Loop54

Electoria_Loop55:
	smpsCall            Electoria_Call17
	smpsLoop            $00, $03, Electoria_Loop55
	dc.b	nRst, $18, pElecSnare, $12, $06, nRst, $06, pElecSnare
	dc.b	$12, $18, pElecSnare, $04, $04, $04, $06, $06
	dc.b	$06, $06, $06, $06, nRst, $30

Electoria_Loop56:
	smpsCall            Electoria_Call17
	smpsLoop            $00, $08, Electoria_Loop56
	smpsCall            Electoria_Call17
	dc.b	nRst, $18, pElecSnare, $12, $06, nRst, $06, pElecSnare
	dc.b	$12, $18, nRst, $06, pElecSnare, $12, $18, nRst
	dc.b	$30
	smpsCall            Electoria_Call17
	smpsCall            Electoria_Call17
	smpsJump            Electoria_Loop54

Electoria_Call17:
	dc.b	nRst, $18, pElecSnare, $12, $06, nRst, $06, pElecSnare
	dc.b	$12, $18, nRst, $06, pElecSnare, $12, $18, nRst
	dc.b	$06, pElecSnare, $12, $18
	smpsReturn

Electoria_PWM3:
	smpsFMAlterVol      $C0
	dc.b	pCrash, $2A
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pSplash, $36
	smpsFMAlterVol      $04
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsFMAlterVol      $FC
	dc.b	pSplash, $60
	smpsFMAlterVol      $04
	dc.b	nRst, nRst
	smpsCall            Electoria_Call18

Electoria_Jump3:
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst, nRst
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsFMAlterVol      $FC
	dc.b	pSplash, $60
	smpsFMAlterVol      $04
	dc.b	nRst
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pSplash, $60
	smpsFMAlterVol      $04
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst
	smpsCall            Electoria_Call18
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst, nRst

Electoria_Loop57:
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsLoop            $00, $02, Electoria_Loop57
	smpsJump            Electoria_Jump3

Electoria_Call18:
	smpsFMAlterVol      $DB
	dc.b	pTomMid, $0C, $0C, $0C, $06, $06, nRst, pTomMid
	dc.b	pTomMid, $0C, $0C, $0C
	smpsFMAlterVol      $25
	smpsReturn

Electoria_PWM4:
	smpsCall            Electoria_Call19
	smpsLoop            $00, $24, Electoria_PWM4

Electoria_Loop58:
	smpsCall            Electoria_Call19
	smpsLoop            $00, $3E, Electoria_Loop58
	dc.b	$96, $30

Electoria_Loop59:
	smpsCall            Electoria_Call19
	smpsLoop            $00, $4E, Electoria_Loop59
	dc.b	$96, $30

Electoria_Loop60:
	smpsCall            Electoria_Call19
	smpsLoop            $00, $10, Electoria_Loop60
	smpsJump            Electoria_Loop58

Electoria_Call19:
	dc.b	pElecHiHat, $06
	smpsFMAlterVol      $AB
	dc.b	$06
	smpsFMAlterVol      $44
	dc.b	$06
	smpsFMAlterVol      $BC
	dc.b	$06
	smpsFMAlterVol      $55
	smpsReturn

Electoria_Voices:
	; Voice $00
	; $3B
	; $12, $11, $13, $01,	$1F, $1F, $1F, $1E
	; $02, $0C, $13, $07,	$12, $0A, $05, $07
	; $0F, $3F, $5F, $3F,	$16, $10, $15, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $01, $01
	smpsVcCoarseFreq    $01, $03, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1E, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $13, $0C, $02
	smpsVcDecayRate2    $07, $05, $0A, $12
	smpsVcDecayLevel    $03, $05, $03, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $15, $10, $16

	; Voice $01
	; $3C
	; $01, $02, $0F, $04,	$8D, $52, $9F, $1F
	; $09, $00, $00, $0D,	$00, $00, $00, $00
	; $2F, $0F, $0F, $FF,	$17, $86, $1F, $86
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $04, $0F, $02, $01
	smpsVcRateScale     $00, $02, $01, $02
	smpsVcAttackRate    $1F, $1F, $12, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $00, $00, $09
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $00, $00, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $86, $1F, $86, $17

	; Voice $02
	; $2C
	; $22, $04, $02, $14,	$51, $52, $50, $52
	; $0D, $00, $06, $04,	$03, $05, $02, $00
	; $16, $18, $26, $18,	$0F, $80, $12, $80
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
	smpsVcReleaseRate   $08, $06, $08, $06
	smpsVcTotalLevel    $80, $12, $80, $0F

	; Voice $03
	; $41
	; $18, $12, $02, $12,	$5F, $5F, $5F, $5F
	; $0C, $0B, $0B, $0B,	$09, $08, $10, $0A
	; $AF, $FF, $FF, $FF,	$1D, $23, $1B, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $00
	smpsVcUnusedBits    $01
	smpsVcDetune        $01, $00, $01, $01
	smpsVcCoarseFreq    $02, $02, $02, $08
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $0B, $0B, $0C
	smpsVcDecayRate2    $0A, $10, $08, $09
	smpsVcDecayLevel    $0F, $0F, $0F, $0A
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1B, $23, $1D

	; Voice $04
	; $3C
	; $07, $01, $08, $04,	$5F, $9F, $9F, $5F
	; $16, $1F, $16, $1F,	$09, $0F, $16, $11
	; $6F, $0F, $AF, $0F,	$16, $80, $11, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $04, $08, $01, $07
	smpsVcRateScale     $01, $02, $02, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $16, $1F, $16
	smpsVcDecayRate2    $11, $16, $0F, $09
	smpsVcDecayLevel    $00, $0A, $00, $06
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $11, $80, $16

	; Voice $05
	; $3C
	; $12, $12, $21, $61,	$3F, $1F, $1F, $1E
	; $0B, $0A, $0A, $02,	$09, $01, $01, $01
	; $2F, $3F, $5F, $3F,	$12, $82, $13, $85
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $02, $01, $01
	smpsVcCoarseFreq    $01, $01, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1E, $1F, $1F, $3F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $0A, $0A, $0B
	smpsVcDecayRate2    $01, $01, $01, $09
	smpsVcDecayLevel    $03, $05, $03, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $85, $13, $82, $12
