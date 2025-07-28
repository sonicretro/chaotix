Seascape_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Seascape_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $33
	smpsHeaderFM        Seascape_FM1, $00, $0B
	smpsHeaderFM        Seascape_FM2, $00, $0C
	smpsHeaderFM        Seascape_FM3, $00, $0C
	smpsHeaderFM        Seascape_FM4, $00, $0C
	smpsHeaderFM        Seascape_FM5, $00, $0C
	smpsHeaderFM        Seascape_FM6, $00, $12
	smpsHeaderPSG       Seascape_PSG1, $F4, $04, $00, cTone_0C
	smpsHeaderPSG       Seascape_PSG2, $F4, $03, $00, cTone_0C
	smpsHeaderPSG       Seascape_PSG3, $23, $02, $00, cTone_02
	smpsHeaderPWM       Seascape_PWM1, $BB
	smpsHeaderPWM       Seascape_PWM2, $BB
	smpsHeaderPWM       Seascape_PWM3, $BB
	smpsHeaderPWM       Seascape_PWM4, $53

Seascape_FM1:
	dc.b	nRst, $24
	smpsFMvoice         $00

Seascape_Loop1:
	smpsCall            Seascape_Call1
	dc.b	nBb1, $12, $06, nRst, nBb2, nRst, $0C, nBb1
	dc.b	$18, nC2, $0C, nD2
	smpsCall            Seascape_Call1
	dc.b	nBb1, $18, nC2, nD2, nA1
	smpsLoop            $00, $02, Seascape_Loop1
	smpsCall            Seascape_Call2
	dc.b	nD2, $24, nRst, $06, nD3, nD2, $18, nA1
	smpsCall            Seascape_Call2
	dc.b	nEb1, $24, nRst, $06, nEb2, nEb1, $18, nF1
	dc.b	nG1, $60, smpsNoAttack, $0C, nG1, $0C, nA1, nBb1
	dc.b	nC2, $12, nD2, nF1, $0C, nG1, $54, nRst
	dc.b	$06, nG1, nRst, nF1, nRst, nG1, nRst, nA1
	dc.b	nRst, nBb1, nRst, $24, nG1, $0C
	smpsJump            Seascape_Loop1

Seascape_Call1:
	dc.b	nEb2, $12, $06, nRst, nEb3, nRst, $0C, nD2
	dc.b	$30, nG1, $12, $06, nRst, nG2, nRst, $0C
	dc.b	nF1, $18, nBb1, nEb2, $12, $06, nRst, nEb3
	dc.b	nRst, $0C, nF1, $18, nF1
	smpsReturn

Seascape_Call2:
	dc.b	nG1, $24, nRst, $06, nG2, nG1, $18, nF1
	dc.b	nEb1, $24, nRst, $06, nEb2, nEb1, $18, nEb2
	dc.b	nD2, $24, nRst, $06, nD3, nD2, $18, nA1
	dc.b	nG1, $24, nRst, $06, nG2, nG1, $18, nCs2
	dc.b	nC2, $24, nRst, $06, nC3, nC2, $18, nG1
	dc.b	nF1, $24, nRst, $06, nF2, nF1, $18, nC2
	dc.b	nBb1, $24, nRst, $06, nBb2, nBb1, $18, nC2
	smpsReturn

Seascape_FM2:
	smpsFMvoice         $01
	dc.b	nRst, $24

Seascape_Jump1:
	smpsCall            Seascape_Call3
	dc.b	nBb3, $24, nF4, $3C, nRst, $0C, nF3, nG3
	dc.b	nA3, $06, nRst, nBb3, $0C, nA3, $06, nRst
	dc.b	nBb3, $0C, nC4, $06, nRst
	smpsCall            Seascape_Call3
	dc.b	nBb3, $24, nF4, $18, nEb4, $06, nRst, nD4
	dc.b	nC4, nRst, nCs4, $02, nD4, $04, smpsNoAttack, $30
	dc.b	nRst, $12, nD4, $06, nRst, nC4, nRst, nBb3
	dc.b	nF3, $12, nF4, $0C, nRst, $12, nRst, nD4
	dc.b	$06, nRst, nC4, nRst, nBb3, nF3, $12, nE4
	dc.b	$02, nF4, $0A, nRst, $42, nRst, $18, nEb4
	dc.b	$12, nRst, $06, nF4, $12, nRst, $06, nC4
	dc.b	$0C, nRst, $06, nEb4, nRst, nF4, nRst, nD4
	dc.b	$1E, nRst, $12, nD4, $06, nRst, nC4, nRst
	dc.b	nBb3, nG3, $12, nG4, $0C, nRst, $12, nRst
	dc.b	nD4, $06, nRst, nC4, nRst, nBb3, nC4, $12
	dc.b	nA4, $0C, nRst, $12, nRst, $0C, nA4, nBb4
	dc.b	nC5, $06, nRst, nD5, $12, nRst, $06, nC5
	dc.b	$12, nE5, $02, nF5, $0A, nRst, $06, nEb5
	dc.b	nRst, nD5, $0C, nC5, smpsNoAttack, $0C, nFs4, nA4
	dc.b	nD4, $18, nRst, $06, nD4, nRst, nC4, nRst
	dc.b	nBb3, nF3, $12, nF4, $0C, nRst, $12, nRst
	dc.b	nD4, $06, nRst, nC4, nRst, nBb3, nF3, $12
	dc.b	nE4, $02, nF4, $0A, nRst, $42, nRst, $06
	dc.b	nCs4, $02, nD4, $0A, nA3, $06, nG3, nAb3
	dc.b	nA3, nRst, nB3, nC4, nE4, nG4, nFs4, nF4
	dc.b	nD4, $04, nCs4, nC4, nB3, $06, nBb3, nA3
	dc.b	nG3, $0C, nC3, $06, nCs3, nD3, nF3, nFs3
	dc.b	nG3, nBb3, nA3, nG3, nBb3, $04, nB3, nC4
	dc.b	nG4, $0C, nF4, nCs4, $02, nD4, $0A, nF4
	dc.b	$06, nG4, nA4, nBb4, nRst, nF4, nRst, nF4
	dc.b	nRst, nF4, nEb4, nD4, nC4, nF4, $0C, nG4
	dc.b	$06, nRst, nF4, smpsNoAttack, $06, nRst, nA4, nRst
	dc.b	nA4, nRst, $12, nA3, $06, nBb3, nD4, nF4
	dc.b	$0C, nA4, $06, nB4, $02, nC5, $04, nBb4
	dc.b	$06, nA4, $0C, nG4, nF4, nG4, $06, nRst
	dc.b	nF4, nD4, nCs4, nC4, $0C, nBb3, $06, nF3
	dc.b	$04, nFs3, nG3, nBb3, $06, nG3, nBb3, nC4
	dc.b	nD4, nC4, nF4, nFs4, nG4, $18
	smpsFMvoice         $02
	smpsPan             panLeft, $00
	dc.b	nA5, $48
	smpsFMAlterVol      $0F
	dc.b	nRst, $18, nA5, $48
	smpsFMAlterVol      $F1
	dc.b	nRst, $18, nG5, $3C, nRst, $06, nA5, $06
	dc.b	nRst, $2A, nB5, $06, nRst, $30
	smpsFMvoice         $01
	smpsPan             panCenter, $00
	smpsJump            Seascape_Jump1

Seascape_Call3:
	dc.b	nC4, $03, nCs4, nD4, $12, nEb4, $06, nRst
	dc.b	nC4, $18, nBb3, $0C, nC4, nF4, $06, nEb4
	dc.b	smpsNoAttack, $0C, nD4, $06, nRst, nC4, nD4, nRst
	dc.b	nEb4, $12, nF4, $06, nRst, nBb3, $0C, nC4
	dc.b	$06, nRst, nBb3, $12, nG3, nBb3, $0C, nC4
	dc.b	$18, nRst, $0C, nBb3, $06, nB3, nC4, $12
	dc.b	nB3, $02, nC4, $10, nCs4, $02, nD4, $2E
	dc.b	nG4, $06, nRst, nE4, $02, nF4, $0A, nRst
	dc.b	$06, nE4, $02, nF4, $0A, nRst, $06, nE4
	dc.b	$02, nF4, $0A, nRst, $0C, nE4, $02, nF4
	dc.b	$16, nEb4, $0C, nD4, $12, nC4, nF4, $0C
	dc.b	nD4, $18, nC4
	smpsReturn

Seascape_FM3:
	smpsFMvoice         $01
	dc.b	nRst, $24

Seascape_Loop2:
	smpsCall            Seascape_Call4
	dc.b	nD3, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C, smpsNoAttack, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$12
	smpsCall            Seascape_Call4
	dc.b	nD3, $18, nC3, nF3, $0C, nEb3, nD3, nC3
	smpsLoop            $00, $02, Seascape_Loop2
	smpsCall            Seascape_Call5
	dc.b	nRst, $0C, nFs3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$18, $18
	smpsCall            Seascape_Call5
	dc.b	nRst, $0C, nG3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG3, $18, nF3, nF3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$12, $06, smpsNoAttack, $30, smpsNoAttack, $60, nEb3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$12, $06, smpsNoAttack, $24
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nF3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $2A
	smpsJump            Seascape_Loop2

Seascape_Call4:
	dc.b	nRst, $0C, nD3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $06, nC3, $18, nRst, nRst, $0C, nD3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $06, nC3, $18, nD3, nD3, $0C, $06
	smpsFMAlterVol      $0F
	dc.b	$06, nRst
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nC3, $18, $0C, nF3
	smpsReturn

Seascape_Call5:
	dc.b	nRst, $0C, nF3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $0C, nF3, nRst, $0C, nF3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$18, $18, nRst, $0C, nF3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $0C, nF3, nRst, $0C, nF3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nF3, $18, nE3, nEb3, $12, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $0C, nEb3, nRst, $0C, nEb3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$18, $18, nRst, $0C, nF3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $0C, nF3
	smpsReturn

Seascape_FM4:
	smpsFMvoice         $01
	smpsPan             panRight, $00
	dc.b	nRst, $24

Seascape_Loop3:
	smpsCall            Seascape_Call6
	dc.b	nA2, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C, smpsNoAttack, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$12
	smpsCall            Seascape_Call6
	dc.b	nBb2, $30, nD3, $18, nRst
	smpsLoop            $00, $02, Seascape_Loop3
	smpsCall            Seascape_Call7
	dc.b	nRst, $0C, nC3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$18, $18
	smpsCall            Seascape_Call7
	dc.b	nRst, $0C, nD3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $18, nC3, nC3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$12, $06, smpsNoAttack, $30, smpsNoAttack, $60, nBb2, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$12, $06, smpsNoAttack, $24
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nC3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $2A
	smpsJump            Seascape_Loop3

Seascape_Call6:
	dc.b	nRst, $0C, nBb2
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $06, nA2, $18, nRst, $0C, nA2, nRst
	dc.b	$0C, nBb2
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $06, nAb2, $18, nBb2, nBb2, $0C, $06
	smpsFMAlterVol      $0F
	dc.b	$06, nRst
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nA2, $18, nRst
	smpsReturn

Seascape_Call7:
	dc.b	nRst, $0C, nD3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $0C, nD3, nRst, $0C, nD3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$18, $18, nRst, $0C, nC3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $0C, nC3, nRst, $0C, nD3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $18, nB2, nBb2, $12, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $0C, nBb2, nRst, $0C, nC3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$18, $18, nRst, $0C, nC3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $0C, nC3
	smpsReturn

Seascape_FM5:
	smpsFMvoice         $01
	smpsPan             panLeft, $00
	dc.b	nRst, $24

Seascape_Loop4:
	smpsCall            Seascape_Call8
	dc.b	nF2, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C, smpsNoAttack, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$12
	smpsCall            Seascape_Call8
	dc.b	nF2, $30, nBb2
	smpsLoop            $00, $02, Seascape_Loop4
	smpsCall            Seascape_Call9
	dc.b	nA2, $0C, $0C, $06, $0C, $06, $18, $18
	smpsCall            Seascape_Call9
	dc.b	nBb2, $0C, $0C, $06, $0C, $06, $18, nA2
	dc.b	nA2, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$12, $06, smpsNoAttack, $30, smpsNoAttack, $60, nG2, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$12, $06, smpsNoAttack, $24
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nA2
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $2A
	smpsJump            Seascape_Loop4

Seascape_Call8:
	dc.b	nRst, $0C, nG2
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $06, nFs2, $18, $0C, nRst, nRst, $0C
	dc.b	nF2
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $06, nF2, $18, nF2, nG2, $0C, $06
	smpsFMAlterVol      $0F
	dc.b	$06, nRst
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $0C, nF2, nF2, nRst
	smpsReturn

Seascape_Call9:
	dc.b	nBb2, $0C, $0C, $06, $0C, $06, $06, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C, $0C, nBb2, $0C, $0C, $06, $0C, $06
	dc.b	$18, $18, nA2, $0C, $0C, $06, $0C, $06
	dc.b	$06, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C, $0C, nB2, $0C, $0C, $06, $0C, $06
	dc.b	$18, nA2, $18, nG2, $12, $06, $06, $0C
	dc.b	$06, $06, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C, $0C, nA2, $0C, $0C, $06, $0C, $06
	dc.b	$18, $18, nA2, $0C, $0C, $06, $0C, $06
	dc.b	$06, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C, $0C
	smpsReturn

Seascape_FM6:
	smpsFMvoice         $01
	dc.b	nRst, $24

Seascape_Jump2:
	smpsPitchSlideSpeed $FB
	smpsPan             panRight, $00
	smpsPan             panRight, $00
	smpsFMAlterVol      $05
	dc.b	nRst, $02
	smpsCall            Seascape_Call3
	dc.b	nBb3, $24, nF4, $3C, nRst, $0C, nF3, nG3
	dc.b	nA3, $06, nRst, nBb3, $0C, nA3, $06, nRst
	dc.b	nBb3, $0C, nC4, $06, nRst
	smpsCall            Seascape_Call3
	dc.b	nBb3, $24, nF4, $18, nEb4, $06, nRst, nD4
	dc.b	nC4, nRst, nCs4, $02, nD4, $04, smpsNoAttack, $30
	dc.b	nRst, $12, nD4, $06, nRst, nC4, nRst, nBb3
	dc.b	nF3, $12, nF4, $0C, nRst, $12, nRst, nD4
	dc.b	$06, nRst, nC4, nRst, nBb3, nF3, $12, nE4
	dc.b	$02, nF4, $0A, nRst, $42, nRst, $18, nEb4
	dc.b	$12, nRst, $06, nF4, $12, nRst, $06, nC4
	dc.b	$0C, nRst, $06, nEb4, nRst, nF4, nRst, nD4
	dc.b	$1E, nRst, $12, nD4, $06, nRst, nC4, nRst
	dc.b	nBb3, nG3, $12, nG4, $0C, nRst, $12, nRst
	dc.b	nD4, $06, nRst, nC4, nRst, nBb3, nC4, $12
	dc.b	nA4, $0C, nRst, $12, nRst, $0C, nA4, nBb4
	dc.b	nC5, $06, nRst, nD5, $12, nRst, $06, nC5
	dc.b	$12, nE5, $02, nF5, $0A, nRst, $06, nEb5
	dc.b	nRst, nD5, $0C, nC5, smpsNoAttack, $0C, nFs4, nA4
	dc.b	nD4, $18, nRst, $06, nD4, nRst, nC4, nRst
	dc.b	nBb3, nF3, $12, nF4, $0C, nRst, $12, nRst
	dc.b	nD4, $06, nRst, nC4, nRst, nBb3, nF3, $12
	dc.b	nE4, $02, nF4, $0A, nRst, $42, nRst, $06
	dc.b	nCs4, $02, nD4, $0A, nA3, $06, nG3, nAb3
	dc.b	nA3, nRst, nB3, nC4, nE4, nG4, nFs4, nF4
	dc.b	nD4, $04, nCs4, nC4, nB3, $06, nBb3, nA3
	dc.b	nG3, $0C, nC3, $06, nCs3, nD3, nF3, nFs3
	dc.b	nG3, nBb3, nA3, nG3, nBb3, $04, nB3, nC4
	dc.b	nG4, $0C, nF4, nCs4, $02, nD4, $0A, nF4
	dc.b	$06, nG4, nA4, nBb4, nRst, $04
	smpsFMAlterVol      $FB
	dc.b	nC4, $06, nRst, nC4, nRst, nC4
	smpsFMAlterVol      $05
	dc.b	nRst, $02, nEb4, $06, nD4, nC4, nF4, $0C
	dc.b	nG4, $06, nRst, nF4, smpsNoAttack, $06, nRst, $04
	smpsFMAlterVol      $FB
	dc.b	nC4, $06, nC4, nC4
	smpsFMAlterVol      $05
	dc.b	nRst, $14, nA3, $06, nBb3, nD4, nF4, $0C
	dc.b	nA4, $06, nB4, $02, nC5, $04, nBb4, $06
	dc.b	nA4, $0C, nG4, nF4, nG4, $06, nRst, nF4
	dc.b	nD4, nCs4, nC4, $0C, nBb3, $06, nF3, $04
	dc.b	nFs3, nG3, nBb3, $06, nG3, nBb3, nC4, nD4
	dc.b	nC4, nF4, nFs4, nG4, $16
	smpsFMvoice         $02
	smpsPitchSlideSpeed $FB
	smpsFMAlterVol      $FB
	dc.b	nC5, $48
	smpsFMAlterVol      $0F
	dc.b	nRst, $18, nC5, $48
	smpsFMAlterVol      $F1
	dc.b	nRst, $18, nBb4, $3C, nRst, $06, nC5, $06
	dc.b	nRst, $2A, nD5, $06, nRst, $30
	smpsFMvoice         $01
	smpsJump            Seascape_Jump2

Seascape_PSG1:
	smpsPSGvoice        cTone_02
	dc.b	nRst, $24

Seascape_Loop5:
	smpsAlterPitch      $07
	smpsCall            Seascape_Call10
	smpsAlterPitch      $FF
	smpsCall            Seascape_Call10
	smpsAlterPitch      $FF
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsAlterPitch      $02
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsAlterPitch      $02
	smpsCall            Seascape_Call10
	smpsAlterPitch      $01
	smpsCall            Seascape_Call10
	smpsAlterPitch      $F6
	smpsLoop            $01, $04, Seascape_Loop5
	smpsAlterPitch      $0A
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsAlterPitch      $FF
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsAlterPitch      $FE
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsAlterPitch      $02
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsAlterPitch      $F7
	smpsAlterPitch      $0A
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsAlterPitch      $FF
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsAlterPitch      $FE
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsAlterPitch      $02
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsAlterPitch      $FE
	smpsCall            Seascape_Call10
	smpsAlterPitch      $F9
	dc.b	nRst, $0C, nG4, $06, $06, nRst, $0C, nA4
	dc.b	$06, $06
	smpsAlterPitch      $05
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsAlterPitch      $FE
	smpsCall            Seascape_Call10
	smpsAlterPitch      $FD
	dc.b	nRst, $0C, nEb4, $06, $06, nRst, $0C, nEb4
	dc.b	$06, nF4, nRst, nF4, nRst, nF4, nRst, nF4
	dc.b	nRst, nG4, nRst, $30
	smpsJump            Seascape_Loop5

Seascape_Call10:
	dc.b	nRst, $0C, nC4, $06, $06
	smpsLoop            $00, $02, Seascape_Call10
	smpsReturn

Seascape_PSG2:
	smpsPSGvoice        cTone_02
	dc.b	nRst, $24

Seascape_Loop6:
	smpsAlterPitch      $02
	smpsCall            Seascape_Call10
	smpsAlterPitch      $FE
	smpsCall            Seascape_Call10
	smpsAlterPitch      $FE
	smpsCall            Seascape_Call10
	smpsAlterPitch      $02
	dc.b	nRst, $0C, nC4, $06, $06, nRst, $0C, nD4
	dc.b	$06, $06
	smpsAlterPitch      $02
	smpsCall            Seascape_Call10
	smpsAlterPitch      $FE
	smpsCall            Seascape_Call10
	smpsAlterPitch      $02
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsAlterPitch      $FE
	smpsLoop            $01, $04, Seascape_Loop6
	smpsAlterPitch      $02
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsAlterPitch      $FE
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsAlterPitch      $04
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsAlterPitch      $FA
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsAlterPitch      $02
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsAlterPitch      $02
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsAlterPitch      $FE
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsAlterPitch      $02
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsAlterPitch      $FE
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsAlterPitch      $04
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsAlterPitch      $FA
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsAlterPitch      $02
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsAlterPitch      $02
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsAlterPitch      $FC
	smpsCall            Seascape_Call10
	smpsAlterPitch      $02
	dc.b	nRst, $0C, nBb3, $06, $06, nRst, $0C, nC4
	dc.b	$06, $06
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsCall            Seascape_Call10
	smpsAlterPitch      $FE
	smpsCall            Seascape_Call10
	smpsAlterPitch      $02
	dc.b	nRst, $0C, nBb3, $06, $06, nRst, $0C, nBb3
	dc.b	$06, nC4, nRst, nC4, nRst, nC4, nRst, nC4
	dc.b	nRst, nA3, nRst, $30
	smpsJump            Seascape_Loop6

Seascape_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $24

Seascape_Loop7:
	smpsCall            Seascape_Call11
	smpsLoop            $01, $07, Seascape_Loop7
	dc.b	nC4, $0C, $06, $06, $0C, $06, $06, $0C
	dc.b	nRst, $24

Seascape_Loop8:
	smpsCall            Seascape_Call11
	smpsLoop            $01, $07, Seascape_Loop8
	dc.b	nC4, $0C, $06, $06, $0C, $06, $06, $0C
	dc.b	nRst, $24

Seascape_Loop9:
	smpsCall            Seascape_Call12
	dc.b	$0C, $0C, $06, $06, $0C
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsPSGvoice        cTone_02
	dc.b	$0C, $18
	smpsCall            Seascape_Call12
	dc.b	$0C
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsPSGvoice        cTone_02
	dc.b	$0C
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsPSGvoice        cTone_02
	dc.b	$18, nRst
	smpsLoop            $00, $02, Seascape_Loop9
	dc.b	nRst, $18
	smpsCall            Seascape_Call13
	smpsCall            Seascape_Call13
	smpsCall            Seascape_Call14
	smpsCall            Seascape_Call13
	smpsCall            Seascape_Call13
	smpsCall            Seascape_Call13
	smpsCall            Seascape_Call14
	smpsCall            Seascape_Call13
	smpsCall            Seascape_Call13
	smpsCall            Seascape_Call13
	smpsPSGvoice        cTone_02
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06, $06
	smpsPSGAlterVol     $FF
	dc.b	nRst, nRst, $60
	smpsJump            Seascape_Loop7

Seascape_Call11:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C, $06, $06
	smpsLoop            $00, $04, Seascape_Call11
	smpsReturn

Seascape_Call12:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $12, $06
	smpsPSGvoice        cTone_05
	dc.b	$18
	smpsPSGvoice        cTone_02
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C, $06, $06
	dc.b	$0C
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsPSGvoice        cTone_02
	dc.b	$0C, $18, $0C, $06, $06
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsPSGvoice        cTone_02
	dc.b	$06, $06, $06, $06, $0C, $0C, $06, $06
	smpsReturn

Seascape_Call13:
	smpsPSGvoice        cTone_02
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06, $06, $06
	smpsPSGAlterVol     $FF
	smpsReturn

Seascape_Call14:
	smpsPSGvoice        cTone_02
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FF
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsReturn

Seascape_PWM1:
	dc.b	$96, $18, pKick, $0C

Seascape_Loop10:
	dc.b	pKick, $12, $06, nRst, $12, pKick, $06, $18
	dc.b	nRst
	smpsLoop            $00, $07, Seascape_Loop10
	dc.b	pKick, $18, pKick, pKick, pKick
	smpsLoop            $01, $02, Seascape_Loop10

Seascape_Loop11:
	dc.b	pKick, $18, nRst, $12, pKick, $06, $18, nRst
	smpsLoop            $00, $10, Seascape_Loop11
	dc.b	nRst, $18, pKick, nRst, pKick, nRst, pKick, nRst
	dc.b	pKick, nRst, pKick, nRst, pKick, nRst, $2A, pKick
	dc.b	$06, nRst, $18, pKick, $18
	smpsJump            Seascape_Loop10

Seascape_PWM2:
	dc.b	pSnare, $0C, $06, $06, nRst, $0C

Seascape_Loop12:
	dc.b	nRst, $1E, pSnare, $12, nRst, $18, pSnare
	smpsLoop            $00, $07, Seascape_Loop12
	dc.b	nRst, $18, pSnare, nRst, $0C, pSnare, $06, pSnare
	dc.b	pSnare, pSnare
	smpsFMAlterVol      $90
	dc.b	pTomLo, $0C
	smpsFMAlterVol      $70
	smpsLoop            $01, $02, Seascape_Loop12
	smpsCall            Seascape_Call15
	dc.b	nRst, $18, pSnare, pSnare, $12, pTomMid, $06, $0C
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	smpsCall            Seascape_Call15
	dc.b	nRst, $18, pSnare, pSnare, $12, pTomMid, $06, pSnare
	dc.b	pSnare
	smpsFMAlterVol      $90
	dc.b	pTomLo, $0C
	smpsFMAlterVol      $70
	dc.b	nRst, $60, nRst, nRst, $5A
	smpsFMAlterVol      $F9
	dc.b	pTomHi, $06
	smpsFMAlterVol      $07
	dc.b	nRst, $06, pTomMid, nRst
	smpsFMAlterVol      $90
	dc.b	pTomLo, nRst, pTomLo
	smpsFMAlterVol      $70
	dc.b	nRst, pSnare, $18, pTomMid, $06, $0C, pSnare
	smpsJump            Seascape_Loop12

Seascape_Call15:
	dc.b	nRst, $18, pSnare, nRst, pSnare, nRst, $18, pSnare
	dc.b	nRst, pSnare, nRst, $18, pSnare, nRst, pSnare, nRst
	dc.b	$18, pSnare, nRst, pSnare, nRst, $18, pSnare, nRst
	dc.b	pSnare, nRst, $18, pSnare, nRst, pSnare, nRst, $18
	dc.b	pSnare, nRst, pSnare
	smpsReturn

Seascape_PWM3:
	dc.b	$96, $18
	smpsFMAlterVol      $FB
	dc.b	pSplash, $0C
	smpsFMAlterVol      $05

Seascape_Loop13:
	smpsFMAlterVol      $B0
	dc.b	pCrash, $60
	smpsFMAlterVol      $50
	dc.b	nRst, nRst, nRst
	smpsLoop            $00, $04, Seascape_Loop13

Seascape_Loop14:
	smpsFMAlterVol      $B0
	dc.b	pCrash, $60
	smpsFMAlterVol      $50
	dc.b	nRst, nRst
	smpsFMAlterVol      $B0
	dc.b	nRst, $30, pCrash, $18
	smpsFMAlterVol      $50
	smpsFMAlterVol      $FB
	dc.b	pSplash
	smpsFMAlterVol      $05
	smpsFMAlterVol      $B0
	dc.b	pCrash, $60
	smpsFMAlterVol      $50
	dc.b	nRst, nRst, nRst
	smpsLoop            $00, $02, Seascape_Loop14
	smpsFMAlterVol      $B0
	dc.b	pCrash, $60
	smpsFMAlterVol      $50
	dc.b	nRst, $60, nRst, $5A
	smpsFMAlterVol      $FB
	dc.b	pSplash, $06, nRst, $54, pSplash, $0C
	smpsFMAlterVol      $05
	smpsJump            Seascape_Loop13

Seascape_PWM4:
	dc.b	$96, $24

Seascape_Loop15:
	dc.b	nRst, $0C, pElecHiHat
	smpsLoop            $00, $80, Seascape_Loop15

Seascape_Loop16:
	dc.b	nRst, $0C, pElecHiHat
	smpsLoop            $00, $0C, Seascape_Loop16
	dc.b	nRst, $06, pElecHiHat, nRst, pElecHiHat, nRst, pElecHiHat, nRst
	dc.b	pElecHiHat, nRst, $30
	smpsJump            Seascape_Loop15

Seascape_Voices:
	; Voice $00
	; $3B
	; $53, $31, $02, $03,	$DF, $9F, $5F, $9F
	; $10, $08, $0E, $07,	$13, $0E, $0D, $02
	; $7F, $7F, $3F, $5F,	$10, $16, $1F, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $03, $05
	smpsVcCoarseFreq    $03, $02, $01, $03
	smpsVcRateScale     $02, $01, $02, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $0E, $08, $10
	smpsVcDecayRate2    $02, $0D, $0E, $13
	smpsVcDecayLevel    $05, $03, $07, $07
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1F, $16, $10

	; Voice $01
	; $3B
	; $08, $02, $02, $02,	$5F, $7F, $7F, $5F
	; $17, $07, $06, $0C,	$15, $10, $10, $15
	; $FF, $FF, $FF, $FF,	$23, $20, $1E, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $02, $08
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $3F, $3F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $06, $07, $17
	smpsVcDecayRate2    $15, $10, $10, $15
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1E, $20, $23

	; Voice $02
	; $2D
	; $77, $65, $05, $15,	$1F, $5F, $5F, $5F
	; $00, $09, $09, $09,	$00, $06, $06, $06
	; $0F, $AC, $AC, $AC,	$22, $89, $86, $86
	smpsVcAlgorithm     $05
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $06, $07
	smpsVcCoarseFreq    $05, $05, $05, $07
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $09, $09, $00
	smpsVcDecayRate2    $06, $06, $06, $00
	smpsVcDecayLevel    $0A, $0A, $0A, $00
	smpsVcReleaseRate   $0C, $0C, $0C, $0F
	smpsVcTotalLevel    $86, $86, $89, $22
