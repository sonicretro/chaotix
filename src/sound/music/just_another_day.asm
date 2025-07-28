JustAnotherDay_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     JustAnotherDay_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $25
	smpsHeaderFM        JustAnotherDay_FM1, $00, $09
	smpsHeaderFM        JustAnotherDay_FM2, $00, $10
	smpsHeaderFM        JustAnotherDay_FM3, $00, $10
	smpsHeaderFM        JustAnotherDay_FM4, $00, $10
	smpsHeaderFM        JustAnotherDay_FM5, $00, $10
	smpsHeaderFM        JustAnotherDay_FM6, $00, $10
	smpsHeaderPSG       JustAnotherDay_PSG1, $F4, $00, $00, cTone_0C
	smpsHeaderPSG       JustAnotherDay_PSG2, $F4, $00, $00, cTone_0C
	smpsHeaderPSG       JustAnotherDay_PSG3, $23, $02, $00, cTone_02
	smpsHeaderPWM       JustAnotherDay_PWM1, $99
	smpsHeaderPWM       JustAnotherDay_PWM2, $AA
	smpsHeaderPWM       JustAnotherDay_PWM3, $99
	smpsHeaderPWM       JustAnotherDay_PWM4, $99

JustAnotherDay_FM1:
	smpsFMvoice         $00
	dc.b	nRst, $48
	smpsModSet          $05, $01, $FC, $00
	dc.b	nC2, $18
	smpsModSet          $00, $00, $00, $00

JustAnotherDay_Loop1:
	dc.b	nF1, $12, nF2, $06, nRst, $12, nG1, $06
	dc.b	nRst, nG1, $06, $0C, $0C, nG2, $06, nRst
	dc.b	nC2, $12, nC3, $06, nRst, $12, nC2, $06
	dc.b	nRst, nC2, $06, $0C, $18
	smpsLoop            $00, $03, JustAnotherDay_Loop1
	dc.b	nF1, $12, nF2, $06, nRst, $12, nG1, $06
	dc.b	nRst, nG1, $06, $0C, $0C, nG2, $06, nRst
	dc.b	nD2, $24, nE2, $18, nE3, $06, nRst, nA1
	dc.b	$0C, nA2, $06, nRst

JustAnotherDay_Loop2:
	smpsCall            JustAnotherDay_Call1
	smpsLoop            $00, $03, JustAnotherDay_Loop2
	dc.b	nF1, $12, nF2, $06, nRst, $12, nF1, $06
	dc.b	nRst, nF1, $06, $0C, $0C, nG2, nA1, $12
	dc.b	nA2, $06, nRst, $12, nA1, $06, nRst, nA1
	dc.b	$06, $0C, $0C, nA2, $06, nRst, nAb1, $12
	dc.b	nAb2, $06, nRst, $12, nAb1, $06, nRst, nAb1
	dc.b	$06, $0C, $18, nG1, $12, nG2, $06, nRst
	dc.b	$12, nG1, $06, nRst, nG1, $06, $0C, $0C
	dc.b	nE1, nFs1, $12, nFs2, $06, nRst, $12, nD2
	dc.b	$06, nRst, nD2, $06, $0C, $0C, nD3, $06
	dc.b	nRst, nA1, $06, nRst, nA1, nRst, nRst, nE1
	dc.b	nRst, nG1, $12, nE1, $06, nRst, nRst, nA1
	dc.b	nRst, $0C, nRst, $36, nA1, $06, nA2, nA1
	dc.b	nC2, nC3, nD2, nD3, nRst, nA1, nRst, nRst
	dc.b	nA1, nRst, nRst, nG1, $12, nE1, $06, nRst
	dc.b	nRst, nA1, nRst, nRst
	smpsSetTempoMod     $20
	dc.b	nRst, $18
	smpsSetTempoMod     $2A
	dc.b	nRst, $18
	smpsSetTempoMod     $3B
	dc.b	nA1, $08, nA2, $04, nC2, $08, nC3, $04
	smpsSetTempoMod     $45
	dc.b	nD2, $08, nD3, $04, nE2, $08, nE3, $04
	smpsSetTempoMod     $48
	dc.b	nRst, $60, nRst, $2C, nE1, $0C, $04, nE2
	dc.b	$08, nE1, $04, nG1, $08, nG2, $04, nAb1
	dc.b	$08, nAb2, $04
	smpsCall            JustAnotherDay_Call2
	dc.b	nRst, $08, nE1, $04, nF1, $08, nG1, $0C
	dc.b	nAb1, $04
	smpsCall            JustAnotherDay_Call2
	dc.b	nRst, $08, nE1, $04, nAb1, $08, nAb2, $0C
	dc.b	nE1, $04
	smpsSetTempoMod     $43
	smpsFMvoice         $02
	smpsFMAlterVol      $02
	dc.b	nRst, $18, nG1

JustAnotherDay_Loop3:
	dc.b	nC2, $08, nB1, $04, nC2, $08, nD2, $04
	dc.b	nRst, $08, nE2, $04, nRst, $08, nC2, $04
	dc.b	nRst, $08, nC2, $0C, nB1, $04, nC2, $0C
	dc.b	nD2, nRst, $08, nB1, $04, nC2, $08, nD2
	dc.b	$04, nRst, $08, nE2, $04, nRst, $08, nC2
	dc.b	$04, nRst, $08, nC2, $0C, nB1, $04, nC2
	dc.b	$0C, nD2
	smpsLoop            $00, $02, JustAnotherDay_Loop3
	smpsSetTempoMod     $43
	smpsCall            JustAnotherDay_Call3
	dc.b	nRst, $0C, nG2, nRst, $08, nC2, $04, nD2
	dc.b	$08, nF2, $04, nG1, $04, nF1, nG1, nG2
	dc.b	$08, nG1, $04, nRst, $08, nG2, $04, nRst
	dc.b	$0C, nRst, $18, nRst, $08, nG1, $04, nG2
	dc.b	$08, nF2, $04
	smpsCall            JustAnotherDay_Call3
	dc.b	nRst, $0C, nG2, $08, nRst, $04, nRst, $08
	dc.b	nG2, $0C, $04, nG1, $08, nG2, $04, nRst
	dc.b	$3C
	smpsSetTempoMod     $33
	smpsFMAlterVol      $FE
	smpsFMvoice         $00
	smpsFMAlterVol      $FD
	smpsModSet          $08, $01, $FC, $00
	dc.b	nG1, $18
	smpsModSet          $00, $00, $00, $00
	dc.b	nEb1, $30, nD1, nG1, $60, nEb1, $30, nD1
	dc.b	nG1, $18, nA1, nBb1, nE1
	smpsCall            JustAnotherDay_Call4
	dc.b	nBb1, $12, $06, nRst, nBb2, nRst, $0C, nBb1
	dc.b	$18, nC2, $0C, nD2
	smpsCall            JustAnotherDay_Call4
	dc.b	nBb1, $18, nC2
	smpsSetTempoMod     $25
	dc.b	nF1, $18, nG1

JustAnotherDay_Loop4:
	dc.b	nD2, $12, nD2, nC2, $0C
	smpsLoop            $00, $03, JustAnotherDay_Loop4
	dc.b	nG2, $12, nF2, nC2, $0C
	smpsLoop            $01, $02, JustAnotherDay_Loop4
	dc.b	nD2, $12, $06, nRst, $18
	smpsSetTempoMod     $1C
	smpsFMAlterVol      $0C
	smpsFMvoice         $06
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0A
	dc.b	nRst, $01, nG4, $06, nFs4, nF4, nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3, nBb3, nB3, nC4
	smpsFMAlterVol      $0A
	dc.b	$05
	smpsFMAlterVol      $F6
	smpsFMAlterVol      $F4
	smpsFMvoice         $00
	smpsFMAlterVol      $FB
	smpsPan             panCenter, $00
	smpsFMAlterVol      $FD
	dc.b	nC2, $06, nG1, nBb1, nC2, nRst, $18, nC2
	dc.b	$06, nRst, nC2, nRst, $1E, nC2, $06, nG1
	dc.b	nBb1, nC2, nRst, $12, nC2, $06, nRst, $0C
	dc.b	nC3, $06, nD3, nRst, nF2, nG2, nEb2, nF2
	dc.b	$06, nC2, nEb2, nF2, nRst, $12, nF2, $06
	dc.b	nRst, $0C, nF3, $06, nG3, nRst, nBb2, nC3
	dc.b	nEb2, nG1, $06, nRst, nG1, nRst, nRst, nG2
	dc.b	nRst, nG1, nG2, nF2, nC2, nD2, nRst, nG1
	dc.b	nRst, $06, nG1, nC2, $06, nG1, nBb1, nC2
	dc.b	nRst, $18, nC2, $06, nRst, nC2, nRst, $1E
	dc.b	nC2, $06, nG1, nBb1, nC2, nRst, $12, nC2
	dc.b	$06, nRst, $0C, nC3, $06, nD3, nRst, nF2
	dc.b	nG2, nEb2, nF2, $06, nC2, nEb2, nF2, nRst
	dc.b	$12, nF2, $06, nRst, $0C, nF3, $06, nG3
	dc.b	nRst, nBb2, nC3, nEb2, nG1, $06, nRst, nG1
	dc.b	nRst, nRst, nG2, nRst, nG1
	smpsSetTempoMod     $26
	dc.b	nRst, $06, nE3, nC3, nG2, nF2, nE2, nC2
	dc.b	nG1
	smpsFMAlterVol      $FE
	smpsCall            JustAnotherDay_Call5
	dc.b	nRst, $30
	smpsCall            JustAnotherDay_Call5
	dc.b	nRst, $0C, nEb1, nRst, $06, nF1, $12
	smpsCall            JustAnotherDay_Call5
	dc.b	nRst, $30
	smpsCall            JustAnotherDay_Call5
	smpsFMAlterVol      $02
	smpsSetTempoMod     $18
	dc.b	nRst, $06, nE3, nC3
	smpsSetTempoMod     $06
	dc.b	nG2, nF2, nE2, nC2, nG1
	smpsSetTempoMod     $75
	smpsModSet          $07, $01, $FC, $00
	dc.b	nG1, $0C
	smpsModSet          $00, $00, $00, $00
	dc.b	nRst, $24, nRst, $30
	smpsModSet          $07, $01, $FC, $00
	dc.b	nG1, $0C
	smpsModSet          $00, $00, $00, $00
	dc.b	nRst, $24
	smpsFMvoice         $01
	smpsFMAlterVol      $06
	dc.b	nG1, $06, nG2, $03, nRst, nG1, $06, nG2
	dc.b	$03, nRst, nG1, $06, nG2, $03, nRst, nFs1
	dc.b	$06, $03, nRst
	smpsCall            JustAnotherDay_Call6
	smpsCall            JustAnotherDay_Call6
	smpsAlterPitch      $FF
	smpsCall            JustAnotherDay_Call6
	smpsAlterPitch      $05
	smpsCall            JustAnotherDay_Call6
	smpsAlterPitch      $FC
	smpsCall            JustAnotherDay_Call6
	smpsCall            JustAnotherDay_Call6
	smpsAlterPitch      $FF
	smpsCall            JustAnotherDay_Call6
	smpsAlterPitch      $01
	dc.b	nRst, $12, nD3, $03, nRst
	smpsCall            JustAnotherDay_Call6
	smpsCall            JustAnotherDay_Call6
	smpsAlterPitch      $FF
	smpsCall            JustAnotherDay_Call6
	smpsAlterPitch      $05
	smpsCall            JustAnotherDay_Call6
	smpsAlterPitch      $FC
	smpsCall            JustAnotherDay_Call6
	smpsAlterPitch      $05
	smpsCall            JustAnotherDay_Call6
	smpsAlterPitch      $FD
	smpsCall            JustAnotherDay_Call6
	smpsCall            JustAnotherDay_Call6
	smpsAlterPitch      $FE
	smpsFMAlterVol      $FA
	smpsSetTempoMod     $01
	smpsFMvoice         $00
	dc.b	nG1, $06, nG2, nG1, $0C, nA1, $06, nA2
	dc.b	nA1, $0C, nBb1, $06, nBb2, nBb1, $0C, nC2
	dc.b	$06, nC3, nC2, $0C
	smpsCall            JustAnotherDay_Call7
	dc.b	nG1, $12, nG2, $06, nRst, $0C, nG1, nC2
	dc.b	$18, nC3, $0C, nC2, nF1, $12, nF2, $06
	dc.b	nRst, $0C, nF1, $0C, $12, $06, nF2, $0C
	dc.b	nF1
	smpsCall            JustAnotherDay_Call7
	dc.b	nG1, $12, nG2, $06, nRst, $0C, nG1, nEb2
	dc.b	$18, nEb3, $0C, nEb2, nD2, $12, nD3, $06
	dc.b	nRst, $0C, nD2, nRst, $06, nD3, nRst, nD3
	dc.b	nD2, nC2, $12
	smpsCall            JustAnotherDay_Call7
	dc.b	nG1, $12, nG2, $06, nRst, $0C, nG1, nC2
	dc.b	$18, nC3, $0C, nC2, nF1, $12, nF2, $06
	dc.b	nRst, $0C, nF1, $0C, $12, $06, nF2, $0C
	dc.b	nF1
	smpsCall            JustAnotherDay_Call7
	dc.b	nG1, $12, nG2, $06, nRst, $0C, nG1, nEb2
	dc.b	$18, nEb3, $0C, nEb2, nD2, $12, nD3, $06
	dc.b	nRst, $0C, nD2, nRst, $06, nD3, nRst, nD3
	dc.b	nD2, nC2, $0C, nBb1, $06, smpsNoAttack, $60
	smpsStop

JustAnotherDay_Call1:
	dc.b	nF1, $12, nF2, $06, nRst, $12, nF1, $06
	dc.b	nRst, nF1, $06, $0C, $0C, nF2, $06, nRst
	smpsReturn

	; Unused data
	dc.b	nG1, $0C, nRst, nG1, nRst, $08, nG1, $0C
	dc.b	nF1, $04, nG1, $0C, nBb1, nF1, nG1, $0C
	dc.b	nG2, $06, nRst, nG1, $0C, nRst, $08, nG1
	dc.b	$0C, nF1, $04, nG1, $0C, nBb1, nF1
	smpsReturn

JustAnotherDay_Loop76:
	dc.b	nD2, $0C, nD3, $06, nRst
	smpsLoop            $00, $04, JustAnotherDay_Loop76
	smpsReturn

JustAnotherDay_Call2:
	dc.b	nRst, $08, nA1, $04, nRst, $08, nG1, $04
	dc.b	nA1, $0C, nG1, nF1, nRst, nRst, nF1, $08
	dc.b	nFs1, $04, nRst, $08, nG1, $04, nRst, $08
	dc.b	nF1, $04, nG1, $0C, nF1, nE1
	smpsReturn

JustAnotherDay_Call3:
	dc.b	nEb2, $04, nD2, nEb2, nEb3, $08, nEb2, $04
	dc.b	nRst, $08, nEb2, $04, nRst, $0C, nRst, $0C
	dc.b	nEb2, nRst, $08, nD2, $04, nEb2, $08, nF2
	dc.b	$04, nD2, $04, nC2, nD2, nD3, $08, nD2
	dc.b	$04, nRst, $18, nRst, $0C, nD2, nRst, $08
	dc.b	nC2, $04, nD2, $08, nF2, $04, nG1, $04
	dc.b	nF1, nG1, nG2, $08, nG1, $04, nRst, $08
	dc.b	nG2, $04, nRst, $0C
	smpsReturn

JustAnotherDay_Call4:
	dc.b	nEb2, $12, $06, nRst, nEb3, nRst, $0C, nD2
	dc.b	$30, nG1, $12, $06, nRst, nG2, nRst, $0C
	dc.b	nF1, $18, nBb1, nEb2, $12, $06, nRst, nEb3
	dc.b	nRst, $0C, nF1, $18, nF1
	smpsReturn

JustAnotherDay_Call5:
	dc.b	nG1, $0C, nRst, $06, nF1, $0C, nRst, $06
	dc.b	nG1, $0C
	smpsReturn

JustAnotherDay_Call6:
	dc.b	nBb1, $06, nBb2, $03, nRst, nBb1, $06, nBb2
	dc.b	$03, nRst
	smpsReturn

JustAnotherDay_Call7:
	dc.b	nBb1, $12, nBb2, $06, nRst, $0C, nBb1, $0C
	dc.b	$18, nBb2, $0C, nBb1, nA1, $12, nA2, $06
	dc.b	nRst, $0C, nA1, nD2, $12, $06, nD3, $0C
	dc.b	nD2
	smpsReturn

JustAnotherDay_FM2:
	dc.b	nRst, $60
	smpsFMvoice         $03
	smpsCall            JustAnotherDay_Call8
	dc.b	nG4, nAb4, nA4, $04, nBb4, nB4, nC5, $06
	dc.b	nA4, nG4, nF4
	smpsFMvoice         $05
	smpsPan             panRight, $00
	smpsAlterPitch      $0C
	smpsFMAlterVol      $02
	dc.b	nC4, $24
	smpsFMAlterVol      $FE
	dc.b	nD4
	smpsFMAlterVol      $FE
	dc.b	nE4, $18
	smpsFMAlterVol      $02
	smpsFMvoice         $08
	smpsPan             panCenter, $00
	dc.b	nRst, $18, nG5
	smpsFMvoice         $05
	smpsPan             panRight, $00
	dc.b	nRst, $06, nG3, nA3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4, $0C, nA3, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsFMvoice         $08
	smpsPan             panCenter, $00
	dc.b	nRst, $18, nG5
	smpsFMvoice         $05
	smpsPan             panRight, $00
	dc.b	nRst, $06, nG3, nA3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4, nD4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nE4
	smpsFMvoice         $08
	smpsPan             panCenter, $00
	dc.b	nA4, $18, nB4, nC5, nD5, nG4, nG5, nF5
	dc.b	nE5
	smpsFMvoice         $05
	smpsPan             panRight, $00
	dc.b	nE4, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD4, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4, $12, nB3, nBb3, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nAb3, $0C, nG3, nAb3, nA3, nBb3, nB3, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nE4, $0C, nD4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C, nG3, nA3, nC4, $06, nG4, $36
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12, nE4, $3C, nD4, $0C, nC4, $60
	smpsAlterPitch      $F4
	smpsPan             panCenter, $00
	dc.b	nRst, $60, nRst, nRst
	smpsFMvoice         $0B
	dc.b	nRst, $60, nRst, $5C, nB5, $04
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
	dc.b	$08, nB5, $04, nRst, $0C, nRst, $30
	smpsFMvoice         $0C
	dc.b	nB3, $18
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $18, $0C, nC4, nB3, nA3, $18, nD3
	dc.b	nE3, nG3, nA3, $18
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $18, nG4, $0C, nFs4, nD4, nE4, nB3
	dc.b	nD4, nA3, $3C
	smpsFMvoice         $0B
	smpsFMAlterVol      $03
	smpsCall            JustAnotherDay_Call9
	dc.b	nRst, $30
	smpsFMAlterVol      $FD
	dc.b	nRst, $30
	smpsFMvoice         $04
	smpsFMAlterVol      $FC
	dc.b	nRst, $60, nRst, nRst, nRst, $0C, nF3, nG3
	dc.b	nA3, nBb3, nA3, nBb3, nC4
	smpsCall            JustAnotherDay_Call10
	dc.b	nBb3, $24, nF4, $18, nEb4, $06, nRst, nD4
	dc.b	nC4, nRst, nCs4, $02, nD4, $04, smpsNoAttack, $30
	smpsFMAlterVol      $04
	smpsFMvoice         $06
	smpsAlterPitch      $0C
	smpsFMAlterVol      $FC
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
	dc.b	nF4, $12, nD4, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $06
	smpsFMvoice         $04
	smpsAlterPitch      $F4

JustAnotherDay_Loop5:
	smpsCall            JustAnotherDay_Call11
	smpsLoop            $00, $06, JustAnotherDay_Loop5
	smpsFMvoice         $06
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
	dc.b	nF4, $12, nD4, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $0C
	smpsFMAlterVol      $F7
	smpsAlterPitch      $F4
	smpsFMAlterVol      $04
	smpsFMvoice         $06
	smpsFMAlterVol      $07
	dc.b	nG4, $06, nFs4, nF4, nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3, nBb3, nB3, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsFMvoice         $0B
	smpsPan             panCenter, $00
	smpsAlterPitch      $0C
	smpsFMAlterVol      $05
	smpsModSet          $05, $01, $02, $04
	smpsCall            JustAnotherDay_Call12
	dc.b	nRst, $0C
	smpsFMvoice         $06
	smpsAlterPitch      $F4
	smpsFMAlterVol      $FB
	smpsModSet          $00, $00, $00, $00
	dc.b	nG4, $06, nFs4, nF4, nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3, nBb3, nB3, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsFMAlterVol      $02
	smpsFMvoice         $04
	smpsAlterPitch      $F4
	dc.b	nD4, $12, nC4, nD4, $0C, nF4, $12, nE4
	dc.b	nC4, $0C, nD4, $12, nC4, nD4, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nD4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nBb3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nBb3, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC4, $12, nD4, $12, nC4, nD4, $0C, nF4
	dc.b	$12, nE4, nC4, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nC4, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC4, $12, nD4, $18
	smpsAlterPitch      $0C
	smpsFMvoice         $0B
	dc.b	nF6, $06, nE6, nC6, nG5, nF5, nE5, nF5
	dc.b	nG5
	smpsFMvoice         $04
	dc.b	nRst, $30, nRst, nRst, nF3, $0C, nF3, nF3
	dc.b	nE3
	smpsFMvoice         $10
	smpsFMAlterVol      $01
	smpsCall            JustAnotherDay_Call13
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
	smpsCall            JustAnotherDay_Call13
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
	smpsFMAlterVol      $FF
	dc.b	nRst, $60
	smpsAlterPitch      $0C
	smpsFMvoice         $0B
	smpsCall            JustAnotherDay_Call14
	dc.b	smpsNoAttack, $0C, nD4, $18, nC4, $0C, smpsNoAttack, $0C
	smpsFMvoice         $12
	smpsPan             panRight, $00
	smpsFMAlterVol      $FD
	dc.b	nF3, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nE3, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nA2, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC3, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst
	smpsFMvoice         $0B
	smpsPan             panCenter, $00
	smpsFMAlterVol      $03
	smpsCall            JustAnotherDay_Call14
	dc.b	smpsNoAttack, $0C, nD3, $18, nF3, $0C, smpsNoAttack, $0C
	dc.b	nG3, $30
	smpsFMvoice         $12
	smpsPan             panRight, $00
	smpsFMAlterVol      $FD
	dc.b	nC3, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nC3, $12
	smpsFMvoice         $0B
	smpsPan             panCenter, $00
	smpsFMAlterVol      $03
	smpsCall            JustAnotherDay_Call14
	dc.b	smpsNoAttack, $0C, nD4, $18, nC4, $0C, smpsNoAttack, $0C
	smpsFMvoice         $12
	smpsPan             panRight, $00
	smpsFMAlterVol      $FD
	dc.b	nF3, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nE3, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nA2, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC3, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst
	smpsFMvoice         $0B
	smpsPan             panCenter, $00
	smpsFMAlterVol      $03
	smpsCall            JustAnotherDay_Call14
	dc.b	smpsNoAttack, $0C, nD3, $18, nF3, $0C, smpsNoAttack, $0C
	dc.b	nG3, $24, nF3, $18, nE3, $12, nD3, $06
	dc.b	smpsNoAttack, $60
	smpsStop

JustAnotherDay_Call8:
	dc.b	nRst, $3C, nG4, $06, nAb4, nA4, nRst, nC5
	dc.b	nRst, nCs5, $02, nD5, $10, nCs5, $02, nD5
	dc.b	$10, nEb5, $02, nE5, $22, nRst, $18, nRst
	dc.b	$3C, nG4, $06, nAb4, nA4, nRst, nC5, nRst
	dc.b	nF5, $12, nE5, nD5, nRst, $06, nC5, nRst
	dc.b	nCs5, nD5, nRst, nE5, nRst, nE5, nRst, $30
	dc.b	nG5, $0C, nF5, $06, nRst, nE5, nRst, nD5
	dc.b	$0C, nEb5, $06, nE5, $0C, nF5, $06, nFs5
	dc.b	$0C, nG5, $06, nAb5, nA5, nB5, nA5, nD6
	dc.b	nC6, nB5, nA5, nG5, nF5, nE5, nD5, $04
	dc.b	nCs5, nC5, nD5, $06, nB4
	smpsReturn

	; Unused data
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

JustAnotherDay_Call9:
	dc.b	nF4, $0C, nRst, nG4, nRst, nA4, $03, smpsNoAttack
	dc.b	nBb4, $11, nG4, $04, nRst, $0C, nC5, smpsNoAttack
	dc.b	$08, nRst, $04, nC5, $08, nRst, $04, nC5
	dc.b	$08, nRst, $04, nD5, $08, nRst, $04, nBb4
	dc.b	$03, smpsNoAttack, nC5, $05, nBb4, $04, nRst, $08
	dc.b	nG4, $1C, nF4, $0C, nRst, nG4, nRst, nBb4
	dc.b	$14, nG4, $04, nRst, $0C, nF5, smpsNoAttack, $08
	dc.b	nRst, $04, nG5, $08, nRst, $04, nF5, $08
	dc.b	nE5, $04, nRst, $08, nD5, $34, nRst, $0C
	dc.b	nBb4, $14, nRst, $04, nG4, $08, nRst, $04
	dc.b	nBb4, $14, nC5, $04, nRst, $0C, nF5, smpsNoAttack
	dc.b	$0C, nEb5, nD5, $08, nEb5, $04, nRst, $08
	dc.b	nC5, $03, smpsNoAttack, nD5, $09, nRst, $04, nC5
	dc.b	$0C, nBb4, $08, nC5, $0C, nG4, $04, smpsNoAttack
	dc.b	$14, nD5, $4C
	smpsReturn

JustAnotherDay_Call10:
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

JustAnotherDay_Call11:
	dc.b	nF3, $12, $06
	smpsFMAlterVol      $0A
	dc.b	nRst, $0C, nF3, $06, nRst
	smpsFMAlterVol      $F6
	smpsReturn

JustAnotherDay_Call12:
	dc.b	nRst, $0C, nC4, nF4, nG4, nBb4, $12, nG4
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06, nC4, $0C, nF4, $12, nG4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06, nEb4, $0C, nF4, $12, nG4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06, nEb4, $0C, nRst, $0C, nC4, nF4
	dc.b	nG4, nBb4, $12, nG4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06, nEb4, $0C, nF4, $12, nA4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06, nBb4, $0C, smpsNoAttack, $0C, nA4, nBb4
	dc.b	$06, nC5, $12, nRst, $0C, nC5, $18, nD5
	dc.b	$0C, nD5, $03, nEb5, $0F, nC5, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06, nBb4, $0C, nA4, $12, nF4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06, nG4, $0C, smpsNoAttack, $0C, nAb4, nA4
	dc.b	nBb4, nC5, $12, nEb5, $03, nF5, $3F
	smpsReturn

JustAnotherDay_Call13:
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

JustAnotherDay_Call14:
	dc.b	nRst, $18, nA3, nG3, nC4, $06, nRst, nC4
	dc.b	$0C, smpsNoAttack, $0C, nD4, nA3, $24, nG3, $0C
	dc.b	nA3, nBb3, smpsNoAttack, $0C, nA3, nG3, nF3
	smpsReturn

JustAnotherDay_FM3:
	dc.b	nRst, $60
	smpsFMvoice         $03
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nRst, $06
	smpsPitchSlideSpeed $FB
	smpsModSet          $01, $01, $03, $03
	smpsCall            JustAnotherDay_Call8
	dc.b	nG4, nAb4, nA4, $04, nBb4, nB4, nC5, $06
	dc.b	nA4, nG4
	smpsFMAlterVol      $F9
	smpsPitchSlideSpeed $05
	smpsModSet          $00, $00, $00, $00
	smpsFMvoice         $05
	smpsAlterPitch      $0C
	smpsFMAlterVol      $02
	dc.b	nG3, $24
	smpsFMAlterVol      $FE
	dc.b	nA3
	smpsFMAlterVol      $FE
	dc.b	nBb3, $18
	smpsFMAlterVol      $02
	smpsFMvoice         $08
	smpsFMAlterVol      $05
	smpsModSet          $01, $01, $04, $05
	dc.b	nRst, $1E, nG5, $12
	smpsFMvoice         $05
	smpsFMAlterVol      $FB
	smpsModSet          $00, $00, $00, $00
	dc.b	nRst, $06, nC3, nD3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3, $0C, nC3, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsFMvoice         $08
	smpsFMAlterVol      $05
	smpsModSet          $01, $01, $04, $05
	dc.b	nRst, $1E, nG5, $12
	smpsFMvoice         $05
	smpsFMAlterVol      $FB
	smpsModSet          $00, $00, $00, $00
	dc.b	nRst, $06, nD3, nE3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3, nA3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nB3
	smpsFMvoice         $08
	smpsFMAlterVol      $05
	smpsModSet          $01, $01, $04, $05
	dc.b	nRst, $06, nA4, $18, nB4, nC5, nD5, nG4
	dc.b	nG5, nF5, nE5, $12
	smpsFMvoice         $05
	smpsFMAlterVol      $FB
	smpsModSet          $00, $00, $00, $00
	dc.b	nA3, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3, $12, nE3, nEb3, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD3, $0C, nC3, nD3, nEb3, nE3, nF3, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4, $0C, nAb3, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C, nC3, nD3, nG3, $06, nC4, $36
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12, nC4, $3C, $0C, nA3, $60
	smpsPan             panCenter, $00
	smpsAlterPitch      $F4
	dc.b	nRst, $60, nRst, nRst
	smpsFMvoice         $07
	smpsFMAlterVol      $03
	smpsCall            JustAnotherDay_Call15
	smpsFMAlterVol      $FB
	smpsPan             panLeft, $00
	dc.b	nRst, $24, nC5, $04, nRst, $08, nB4, $14
	dc.b	nC5, $04, nRst, $18, nRst, $24, nB4, $04
	dc.b	nRst, $08, nE5, $14, nD5, $04, nRst, $18
	dc.b	nRst, $0C, nC5, $04, nRst, $08, nB4, $08
	dc.b	nC5, $04, nRst, $0C, nRst, $0C, nC5, $04
	dc.b	nRst, $08, nB4, $08, nC5, $04, nRst, $0C
	dc.b	nRst, $0C, nB4, $04, nRst, $08, nE5, $08
	dc.b	nD5, $04, nRst, $08, nE5, $04, nRst, $08
	dc.b	nE5, $04, nRst, $08, nD5, $1C
	smpsFMAlterVol      $02
	smpsPan             panCenter, $00
	dc.b	nRst, $30
	smpsFMvoice         $05
	smpsAlterPitch      $0C
	smpsFMAlterVol      $03
	dc.b	nRst, $60, nRst, $60, nRst, nRst, $0C, nG4
	dc.b	nFs4, $08
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $14
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $0C, nB3, $08
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $08
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsAlterPitch      $F4
	smpsFMAlterVol      $FD
	smpsFMvoice         $0D
	smpsFMAlterVol      $FD
	smpsCall            JustAnotherDay_Call16
	smpsCall            JustAnotherDay_Call17
	smpsCall            JustAnotherDay_Call16
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nD4, $0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$08, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsCall            JustAnotherDay_Call18
	smpsCall            JustAnotherDay_Call16
	smpsCall            JustAnotherDay_Call17
	smpsCall            JustAnotherDay_Call16
	dc.b	nRst, $08, nD5, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $20
	smpsFMAlterVol      $03
	dc.b	nRst, $30
	smpsFMvoice         $04
	smpsFMAlterVol      $FC
	dc.b	nRst, $02, nD3, $2E, nC3, $30, nD3, $54
	dc.b	$0C, nD3, $30, nC3
	smpsFMAlterVol      $03
	dc.b	nD3, $18
	smpsFMAlterVol      $FF
	dc.b	nC3
	smpsFMAlterVol      $FE
	dc.b	nD3
	smpsFMAlterVol      $FE
	dc.b	nC3
	smpsFMAlterVol      $02
	smpsCall            JustAnotherDay_Call19
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
	smpsCall            JustAnotherDay_Call19
	dc.b	nD3, $18, nC3
	smpsFMAlterVol      $04
	dc.b	nRst, $30
	smpsFMAlterVol      $FC
	smpsFMvoice         $04
	smpsPan             panRight, $00

JustAnotherDay_Loop6:
	smpsCall            JustAnotherDay_Call20
	smpsCall            JustAnotherDay_Call20
	smpsCall            JustAnotherDay_Call20
	smpsAlterPitch      $02
	smpsCall            JustAnotherDay_Call20
	smpsAlterPitch      $FE
	smpsLoop            $00, $02, JustAnotherDay_Loop6
	dc.b	nA3, $12, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12
	smpsFMAlterVol      $04
	smpsPan             panCenter, $00
	smpsFMvoice         $06
	smpsFMAlterVol      $FE
	dc.b	nC4, $06, nB3, nBb3, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD3, nF3, nFs3, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsFMvoice         $0B
	smpsFMAlterVol      $0B
	smpsAlterPitch      $0C
	smpsModSet          $05, $01, $02, $04
	smpsPan             panRight, $00
	dc.b	nRst, $0C
	smpsCall            JustAnotherDay_Call12
	smpsPan             panCenter, $00
	smpsFMvoice         $06
	smpsFMAlterVol      $F5
	smpsAlterPitch      $F4
	smpsModSet          $00, $00, $00, $00
	dc.b	nC4, $06, nB3, nBb3, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD3, nF3, nFs3, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsFMAlterVol      $02
	smpsFMvoice         $04
	smpsAlterPitch      $F4
	dc.b	nG3, $12, nG3, nA3, $0C, nC4, $12, nC4
	dc.b	nG3, $0C, nA3, $12, nG3, nA3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nA3
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nG3, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $12, nG3, $12, nG3, nA3, $0C, nC4
	dc.b	$12, nC4, nG3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nG3, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $12, nA3, $18
	smpsAlterPitch      $0C
	smpsFMvoice         $0B
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nRst, $05, nF6, $06, nE6, nC6, nG5
	smpsPan             panRight, $00
	dc.b	nF5, nE5, nF5, nG5, $01
	smpsFMAlterVol      $FB
	smpsPan             panCenter, $00
	smpsFMvoice         $0F
	smpsAlterPitch      $0C
	smpsFMAlterVol      $03
	smpsCall            JustAnotherDay_Call21
	smpsCall            JustAnotherDay_Call21
	smpsAlterPitch      $F4
	smpsFMAlterVol      $FD
	smpsFMvoice         $10
	smpsFMAlterVol      $01
	smpsCall            JustAnotherDay_Call22
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
	smpsCall            JustAnotherDay_Call22
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
	smpsFMAlterVol      $FF
	dc.b	nRst, $60
	smpsFMvoice         $0B
	smpsFMAlterVol      $05
	smpsModSet          $02, $01, $02, $05
	smpsPan             panLeft, $00
	smpsAlterPitch      $0C
	dc.b	nRst, $0C
	smpsCall            JustAnotherDay_Call14
	dc.b	smpsNoAttack, $0C, nD4, $18, nC4, $0C
	smpsFMvoice         $12
	smpsFMAlterVol      $F8
	smpsModSet          $00, $00, $00, $00
	dc.b	nA2, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG2, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC2, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF2, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst
	smpsFMvoice         $0B
	smpsFMAlterVol      $08
	smpsModSet          $02, $01, $02, $05
	dc.b	nRst, $0C
	smpsCall            JustAnotherDay_Call14
	dc.b	smpsNoAttack, $0C, nD3, $18, nF3, $0C, smpsNoAttack, $0C
	dc.b	nG3, $24
	smpsFMvoice         $12
	smpsFMAlterVol      $F8
	smpsModSet          $00, $00, $00, $00
	dc.b	nG2, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nG2, $12
	smpsFMvoice         $0B
	smpsFMAlterVol      $08
	smpsModSet          $02, $01, $02, $05
	dc.b	nRst, $0C
	smpsCall            JustAnotherDay_Call14
	dc.b	smpsNoAttack, $0C, nD4, $18, nC4, $0C
	smpsFMvoice         $12
	smpsFMAlterVol      $F8
	smpsModSet          $00, $00, $00, $00
	dc.b	nA2, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG2, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC2, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF2, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst
	smpsFMvoice         $0B
	smpsFMAlterVol      $08
	smpsModSet          $02, $01, $02, $05
	dc.b	nRst, $0C
	smpsCall            JustAnotherDay_Call14
	dc.b	smpsNoAttack, $0C, nD3, $18, nF3, $0C, smpsNoAttack, $0C
	dc.b	nG3, $24, nF3, $18, nE3, $12, nD3, $06
	dc.b	smpsNoAttack, $60
	smpsStop

JustAnotherDay_Call15:
	dc.b	nRst, $08, nG4, $04, nAb4, $08, nA4, $04
	dc.b	nC5, $08, nA4, $04, nC5, $08, nD5, $04
	dc.b	nE5, $04, nEb5, nD5, nC5, $08, nG4, $04
	dc.b	nA4, $08, nC5, $04, nD5, $08, nE5, $04
	dc.b	nG5, $04, nFs5, nF5, nD5, $0C, nRst, $04
	dc.b	nRst, nD5, nRst, nRst, nE5, nRst, nRst, nG5
	dc.b	nRst, nRst, nAb5, nRst, nRst, nAb5, nA5, $08
	dc.b	nB5, $04
	smpsReturn

JustAnotherDay_Call16:
	dc.b	nD4, $08
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$08, $04, $08, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $0C, nD4, $08, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsReturn

JustAnotherDay_Call17:
	dc.b	nRst, $0C, nC4, $08, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04, $08, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$08, $04
	smpsReturn

JustAnotherDay_Call18:
	smpsFMAlterVol      $FE
	dc.b	nRst, $08, nF3, $04, nG3, $08, nBb3, $0C
	dc.b	nG3, $04, nBb3, $08, nC4, $04
	smpsFMAlterVol      $02
	smpsReturn

JustAnotherDay_Call19:
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

JustAnotherDay_Call20:
	dc.b	nA3, $12, $06
	smpsFMAlterVol      $0A
	dc.b	nRst, $0C, nA3, $06, nRst
	smpsFMAlterVol      $F6
	smpsReturn

JustAnotherDay_Call21:
	dc.b	nF4, $03, nE4, nC4, nG3, nF3, nE3, nF3
	dc.b	nG3, nF4, $03, nE4, nC4, nG3, nF3, nE3
	dc.b	nC3, nG2, nF4, $03, nE4, nC4, nG3, nF3
	dc.b	nE3, nF3, nG3, nD3, $03, nE3, nF3, nG3
	dc.b	nA3, nB3, nC4, nD4
	smpsReturn

JustAnotherDay_Call22:
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

JustAnotherDay_FM4:
	dc.b	nRst, $60
	smpsFMvoice         $03

JustAnotherDay_Loop7:
	dc.b	nRst, $0C, nE3, $06
	smpsFMAlterVol      $0F
	dc.b	$06, nRst
	smpsFMAlterVol      $F1
	dc.b	nE3, $06
	smpsFMAlterVol      $0F
	dc.b	$06, nRst
	smpsFMAlterVol      $F1
	dc.b	nD3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	smpsCall            JustAnotherDay_Call23
	smpsLoop            $00, $03, JustAnotherDay_Loop7
	dc.b	nRst, $0C, nE3, $06
	smpsFMAlterVol      $0F
	dc.b	$06, nRst
	smpsFMAlterVol      $F1
	dc.b	nE3, $06
	smpsFMAlterVol      $0F
	dc.b	$06, nRst
	smpsFMAlterVol      $F1
	dc.b	nD3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nC3, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	smpsCall            JustAnotherDay_Call23
	smpsAlterPitch      $FE
	smpsCall            JustAnotherDay_Call23
	smpsAlterPitch      $02
	smpsCall            JustAnotherDay_Call23
	smpsAlterPitch      $FE
	smpsCall            JustAnotherDay_Call23
	smpsAlterPitch      $02
	smpsCall            JustAnotherDay_Call23
	smpsAlterPitch      $FE
	smpsCall            JustAnotherDay_Call23
	smpsAlterPitch      $02
	smpsCall            JustAnotherDay_Call23
	smpsCall            JustAnotherDay_Call23
	smpsFMvoice         $00
	smpsFMAlterVol      $07
	dc.b	nRst, $03
	smpsPitchSlideSpeed $05
	dc.b	nA1, $06, nRst, nA1, nRst, nRst, nE1, nRst
	dc.b	nG1, $12, nE1, $06, nRst, nRst, nA1, nRst
	dc.b	$0C
	smpsPan             panLeft, $00
	dc.b	nRst, $36, nA1, $06, nA2, nA1
	smpsPan             panCenter, $00
	dc.b	nC2, nC3
	smpsPan             panRight, $00
	dc.b	nD2, nD3
	smpsPan             panCenter, $00
	dc.b	nRst, nA1, nRst, nRst, nA1, nRst, nRst, nG1
	dc.b	$12, nE1, $06, nRst, nRst, nA1, nRst, nRst
	dc.b	nRst, $18, nRst, $18
	smpsPan             panLeft, $00
	dc.b	nA1, $08, nA2, $04, nC2, $08
	smpsPan             panCenter, $00
	dc.b	nC3, $04, nD2, $08
	smpsPan             panRight, $00
	dc.b	nD3, $04, nE2, $08, nE3, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F9
	smpsPitchSlideSpeed $FB
	smpsFMvoice         $07
	smpsFMAlterVol      $03
	smpsCall            JustAnotherDay_Call24
	smpsFMAlterVol      $FB
	smpsPan             panRight, $00
	dc.b	nRst, $24, nA4, $04, nRst, $08, nG4, $14
	dc.b	nA4, $04, nRst, $18, nRst, $24, nG4, $04
	dc.b	nRst, $08, nC5, $14, nB4, $04, nRst, $18
	dc.b	nRst, $0C, nA4, $04, nRst, $08, nG4, $08
	dc.b	nA4, $04, nRst, $0C, nRst, $0C, nA4, $04
	dc.b	nRst, $08, nG4, $08, nA4, $04, nRst, $0C
	dc.b	nRst, $0C, nG4, $04, nRst, $08, nC5, $08
	dc.b	nB4, $04, nRst, $08, nB4, $04, nRst, $08
	dc.b	nB4, $04, nRst, $08, nAb4, $1C
	smpsPan             panCenter, $00
	smpsFMAlterVol      $02
	dc.b	nRst, $30
	smpsFMvoice         $05
	smpsAlterPitch      $0C
	smpsFMAlterVol      $03
	dc.b	nRst, $60, nRst, $60, nRst, nRst, $0C, nB3
	dc.b	nA3, $08
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $14
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD3, $0C, nE3, $08
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $08
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsAlterPitch      $F4
	smpsFMAlterVol      $FD
	smpsFMvoice         $0D
	smpsFMAlterVol      $FD
	smpsAlterPitch      $FC
	smpsCall            JustAnotherDay_Call25
	smpsAlterPitch      $FE
	smpsCall            JustAnotherDay_Call26
	smpsAlterPitch      $FD
	smpsCall            JustAnotherDay_Call25
	smpsAlterPitch      $09
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nF3, $0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$08, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsCall            JustAnotherDay_Call27
	smpsAlterPitch      $FC
	smpsCall            JustAnotherDay_Call25
	smpsAlterPitch      $FE
	smpsCall            JustAnotherDay_Call26
	smpsAlterPitch      $FD
	smpsCall            JustAnotherDay_Call25
	smpsAlterPitch      $09
	dc.b	nRst, $08, nBb3, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $20
	smpsFMAlterVol      $03
	dc.b	nRst, $30
	smpsFMvoice         $04
	smpsPan             panRight, $00
	smpsFMAlterVol      $FC
	dc.b	nBb2, $30, nA2, nBb2, $48, $18, nBb2, $30
	dc.b	nA2
	smpsFMAlterVol      $03
	dc.b	nBb2, $18
	smpsFMAlterVol      $FF
	dc.b	nA2
	smpsFMAlterVol      $FE
	dc.b	nA2
	smpsFMAlterVol      $FE
	dc.b	nG2
	smpsFMAlterVol      $02
	smpsCall            JustAnotherDay_Call28
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
	smpsCall            JustAnotherDay_Call28
	dc.b	nBb2, $30
	smpsFMAlterVol      $04
	dc.b	nRst, $30
	smpsFMAlterVol      $FC
	smpsFMvoice         $04
	smpsPan             panLeft, $00

JustAnotherDay_Loop8:
	smpsCall            JustAnotherDay_Call29
	smpsAlterPitch      $FF
	smpsCall            JustAnotherDay_Call29
	smpsAlterPitch      $01
	smpsCall            JustAnotherDay_Call29
	smpsAlterPitch      $02
	smpsCall            JustAnotherDay_Call29
	smpsAlterPitch      $FE
	smpsLoop            $00, $02, JustAnotherDay_Loop8
	dc.b	nC3, $12, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12
	smpsPan             panCenter, $00
	smpsFMAlterVol      $04
	smpsFMAlterVol      $04
	smpsFMvoice         $06
	dc.b	nRst, $01
	smpsFMAlterVol      $08
	smpsPan             panRight, $00
	dc.b	nC4, $06, nB3, nBb3, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD3, nF3, nFs3, nG3
	smpsFMAlterVol      $0A
	dc.b	$05
	smpsFMAlterVol      $F6
	smpsFMAlterVol      $FA
	smpsFMvoice         $07
	smpsPan             panLeft, $00
	dc.b	nF4, $0C, nC4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF4, $0C, nG4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb4, $12, nG4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nF4, $0C, smpsNoAttack, $0C, nC4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF4, $06, nG4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC5
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG4, smpsNoAttack, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF4, $0C, nC4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF4, $0C, nG4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb4, $12, nG4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nC5, $0C, smpsNoAttack, $0C, nD5, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC5, nG4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panRight, $00
	dc.b	nF4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb3, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panLeft, $00
	dc.b	nF4, $0C, nC4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF4, $0C, nG4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb4, $12, nG4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nF4, $0C, smpsNoAttack, $0C, nC4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF4, $06, nG4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC5
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG4, smpsNoAttack, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF4, $0C, nC4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF4, $0C, nG4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb4, $12, nG4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nC5, $0C, smpsNoAttack, $0C, nD5, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC5, nG4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb4
	smpsPan             panCenter, $00
	smpsFMAlterVol      $FA
	smpsFMvoice         $0B
	dc.b	nF6, $06, nE6, nC6, nG5, nF5, nE5, nC5
	dc.b	nG4
	smpsFMvoice         $04
	smpsAlterPitch      $F4
	dc.b	nF3, $12, nF3, nF3, $0C, nG3, $12, nG3
	dc.b	nF3, $0C, nG3, $12, nF3, nG3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nG3, $0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nEb3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nEb3, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $12, nF3, $12, nF3, nF3, $0C, nG3
	dc.b	$12, nG3, nF3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nF3, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $12, nG3, $48
	smpsAlterPitch      $0C
	smpsFMvoice         $04
	dc.b	nRst, $30, nRst, nRst
	smpsPan             panLeft, $00
	dc.b	nC4, $0C, nC4, nC4, nG3
	smpsPan             panCenter, $00
	smpsFMvoice         $11
	smpsFMAlterVol      $04

JustAnotherDay_Loop9:
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
	smpsLoop            $00, $08, JustAnotherDay_Loop9
	smpsFMAlterVol      $FC
	dc.b	nRst, $60
	smpsFMvoice         $04
	smpsFMAlterVol      $FC
	smpsCall            JustAnotherDay_Call30
	dc.b	nRst, $0C, nA3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $0C, nRst, $0C, nG3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $0C
	smpsCall            JustAnotherDay_Call30
	dc.b	nRst, $0C, nA3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $0C, nRst, $0C, nG3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $0C
	smpsCall            JustAnotherDay_Call30
	dc.b	nRst, $0C, nA3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $0C, nRst, $0C, nG3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $0C
	smpsCall            JustAnotherDay_Call30
	dc.b	nRst, $0C, nA3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $0C, nRst, $0C, nG3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nG3, $12, nA3, $06, smpsNoAttack, $60
	smpsStop

JustAnotherDay_Call23:
	dc.b	nRst, $0C, nE3, $06
	smpsFMAlterVol      $0F
	dc.b	$06, nRst
	smpsFMAlterVol      $F1
	dc.b	nE3, $06
	smpsFMAlterVol      $0F
	dc.b	$06, nRst
	smpsFMAlterVol      $F1
	dc.b	nE3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	smpsReturn

JustAnotherDay_Call24:
	dc.b	nRst, $08, nD4, $04, nEb4, $08, nE4, $04
	dc.b	nG4, $08, nE4, $04, nG4, $08, nA4, $04
	dc.b	nC5, $04, nB4, nBb4, nA4, $08, nC4, $04
	dc.b	nD4, $08, nE4, $04, nG4, $08, nA4, $04
	dc.b	nC5, $04, nB4, nBb4, nG4, $0C, nRst, $04
	dc.b	nRst, nG4, nRst, nRst, nA4, nRst, nRst, nC5
	dc.b	nRst, nRst, nD5, nRst, nRst, nE5, nF5, $08
	dc.b	nAb5, $04
	smpsReturn

JustAnotherDay_Call27:
	smpsPan             panRight, $00
	smpsFMAlterVol      $08
	dc.b	nRst, $0B, nF3, $04, nG3, $08, nBb3, $0C
	dc.b	nG3, $04, nBb3, $08, nC4, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F8
	smpsReturn

JustAnotherDay_Call25:
	dc.b	nD4, $08
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$08, $04, $08, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $0C, nD4, $08, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsReturn

JustAnotherDay_Call26:
	dc.b	nRst, $0C, nC4, $08, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04, $08, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$08, $04
	smpsReturn

JustAnotherDay_Loop77:
	; Unused data
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nD4, $08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsLoop            $00, $08, JustAnotherDay_Loop77
	smpsReturn

JustAnotherDay_Call28:
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

JustAnotherDay_Call29:
	dc.b	nC3, $12, $06
	smpsFMAlterVol      $0A
	dc.b	nRst, $0C, nC3, $06, nRst
	smpsFMAlterVol      $F6
	smpsReturn

JustAnotherDay_Call30:
	dc.b	nRst, $0C, nA3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $0C, nRst, $0C, nG3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $0C
	smpsReturn

JustAnotherDay_FM5:
	dc.b	nRst, $60
	smpsFMvoice         $03

JustAnotherDay_Loop10:
	dc.b	nRst, $0C, nC3, $06
	smpsFMAlterVol      $0F
	dc.b	$06, nRst
	smpsFMAlterVol      $F1
	dc.b	nC3, $06
	smpsFMAlterVol      $0F
	dc.b	$06, nRst
	smpsFMAlterVol      $F1
	dc.b	nB2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	smpsAlterPitch      $FB
	smpsCall            JustAnotherDay_Call23
	smpsAlterPitch      $05
	smpsLoop            $00, $03, JustAnotherDay_Loop10
	dc.b	nRst, $0C, nC3, $06
	smpsFMAlterVol      $0F
	dc.b	$06, nRst
	smpsFMAlterVol      $F1
	dc.b	nC3, $06
	smpsFMAlterVol      $0F
	dc.b	$06, nRst
	smpsFMAlterVol      $F1
	dc.b	nB2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nA2, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB2, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nBb2, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	smpsAlterPitch      $FC
	smpsCall            JustAnotherDay_Call23
	smpsAlterPitch      $FF
	smpsCall            JustAnotherDay_Call23
	smpsAlterPitch      $01
	smpsCall            JustAnotherDay_Call23
	smpsAlterPitch      $FF
	smpsCall            JustAnotherDay_Call23
	smpsAlterPitch      $01
	smpsCall            JustAnotherDay_Call23
	smpsCall            JustAnotherDay_Call23
	smpsCall            JustAnotherDay_Call23
	smpsCall            JustAnotherDay_Call23
	smpsAlterPitch      $04

JustAnotherDay_Loop11:
	dc.b	nRst, $60
	smpsLoop            $00, $04, JustAnotherDay_Loop11
	smpsFMvoice         $07
	smpsPan             panLeft, $00
	smpsPitchSlideSpeed $02
	smpsFMAlterVol      $0A
	smpsCall            JustAnotherDay_Call15
	smpsPan             panCenter, $00
	smpsPitchSlideSpeed $FE
	smpsFMAlterVol      $F6
	smpsModSet          $03, $01, $01, $03
	smpsFMvoice         $09
	smpsFMAlterVol      $05
	dc.b	nE4, $60, nD4, nE4, $60, nD4
	smpsModSet          $00, $00, $00, $00
	smpsFMAlterVol      $FB
	dc.b	nRst, $30
	smpsFMvoice         $0C
	dc.b	nG3, $18
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nB3, $18, nRst, $0C
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	dc.b	nD4, $0C, nC4, nB3, nA3, $18, nD3, nE3
	dc.b	nG3, $0C
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nFs3, $18
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $18, nRst, $0C
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	dc.b	nG4, $0C, nFs4, nD4, nE4, nB3, nD4, nA3
	dc.b	$30
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	smpsFMvoice         $0B
	smpsPan             panRight, $00
	smpsModSet          $05, $01, $03, $02
	smpsFMAlterVol      $07
	dc.b	nRst, $04
	smpsCall            JustAnotherDay_Call9
	dc.b	nRst, $2C
	smpsFMAlterVol      $F9
	dc.b	nRst, $2E
	smpsFMvoice         $04
	smpsPan             panLeft, $00
	smpsFMAlterVol      $FC
	dc.b	nG2, $02, smpsNoAttack, $30, nFs2, nF2, $3C, $24
	dc.b	nG2, $30, nFs2
	smpsFMAlterVol      $03
	dc.b	nF2, $18
	smpsFMAlterVol      $FF
	dc.b	nF2
	smpsFMAlterVol      $FE
	dc.b	nF2
	smpsFMAlterVol      $FE
	dc.b	nE2
	smpsFMAlterVol      $02
	smpsCall            JustAnotherDay_Call31
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
	smpsCall            JustAnotherDay_Call31
	dc.b	nF2, $30
	smpsFMAlterVol      $04
	smpsFMAlterVol      $02
	smpsFMvoice         $0B
	smpsPan             panLeft, $00
	dc.b	nG5, $06, nF5, nD5, nG4
	smpsPan             panRight, $00
	dc.b	nG5, nF5, nD5, nG4
	smpsPan             panCenter, $00
	smpsFMvoice         $0E
	smpsCall            JustAnotherDay_Call32
	smpsCall            JustAnotherDay_Call33
	smpsCall            JustAnotherDay_Call32
	smpsCall            JustAnotherDay_Call34
	smpsCall            JustAnotherDay_Call32
	smpsCall            JustAnotherDay_Call33
	smpsCall            JustAnotherDay_Call32
	smpsFMvoice         $0B
	smpsCall            JustAnotherDay_Call35
	dc.b	nRst, $30
	smpsFMAlterVol      $FE
	dc.b	nRst, $60
	smpsFMvoice         $0A
	smpsFMAlterVol      $03

JustAnotherDay_Loop12:
	dc.b	nC2, $06, nF2, nC2, nG2
	smpsLoop            $00, $1E, JustAnotherDay_Loop12
	smpsFMAlterVol      $FD
	smpsFMvoice         $0B
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nRst, $05, nF6, $06, nE6, nC6, nG5
	smpsPan             panRight, $00
	dc.b	nF5, nE5, nC5, nG4, $01
	smpsFMAlterVol      $FB
	smpsPan             panCenter, $00
	smpsFMvoice         $0A
	smpsAlterPitch      $F4

JustAnotherDay_Loop13:
	dc.b	nC3, $06, nF3, nD3, nG3
	smpsLoop            $00, $10, JustAnotherDay_Loop13
	smpsAlterPitch      $0C
	smpsFMvoice         $04
	dc.b	nRst, $30, nRst, nRst
	smpsPan             panRight, $00
	dc.b	nD3, $0C, nD3, nD3, nCs3
	smpsPan             panCenter, $00
	smpsFMvoice         $11
	smpsPan             panRight, $00
	smpsFMAlterVol      $04

JustAnotherDay_Loop14:
	smpsCall            JustAnotherDay_Call36
	smpsLoop            $00, $06, JustAnotherDay_Loop14
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
	smpsCall            JustAnotherDay_Call36
	smpsFMAlterVol      $FC
	dc.b	nRst, $60
	smpsFMvoice         $04
	smpsFMAlterVol      $FC
	smpsCall            JustAnotherDay_Call37
	dc.b	nRst, $0C, nF3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, $0C, nRst, $0C, nE3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $0C
	smpsCall            JustAnotherDay_Call37
	dc.b	nRst, $0C, nF3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $0C, nRst, $0C, nE3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, $0C
	smpsCall            JustAnotherDay_Call37
	dc.b	nRst, $0C, nF3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, $0C, nRst, $0C, nE3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $0C
	smpsCall            JustAnotherDay_Call37
	dc.b	nRst, $0C, nF3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $0C, nRst, $0C, nE3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nE3, $12, nF3, $06, smpsNoAttack, $60
	smpsStop

JustAnotherDay_Call31:
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

JustAnotherDay_Call35:
	smpsPan             panLeft, $00
	dc.b	nG5, $06, nF5, nD5, nG4
	smpsPan             panRight, $00
	dc.b	nG5, nF5, nD5, nG4
	smpsPan             panCenter, $00
	smpsReturn

JustAnotherDay_Call32:
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

JustAnotherDay_Call33:
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

JustAnotherDay_Call34:
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

JustAnotherDay_Call36:
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

JustAnotherDay_Call37:
	dc.b	nRst, $0C, nF3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, $0C, nRst, $0C, nE3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $0C
	smpsReturn

JustAnotherDay_FM6:
	dc.b	nRst, $60
	smpsFMvoice         $03

JustAnotherDay_Loop15:
	dc.b	nRst, $0C, nA2, $06
	smpsFMAlterVol      $0F
	dc.b	$06, nRst
	smpsFMAlterVol      $F1
	dc.b	nA2, $06
	smpsFMAlterVol      $0F
	dc.b	$06, nRst
	smpsFMAlterVol      $F1
	dc.b	nF2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nF2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nF2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	smpsAlterPitch      $F7
	smpsCall            JustAnotherDay_Call23
	smpsAlterPitch      $09
	smpsLoop            $00, $03, JustAnotherDay_Loop15
	dc.b	nRst, $0C, nA2, $06
	smpsFMAlterVol      $0F
	dc.b	$06, nRst
	smpsFMAlterVol      $F1
	dc.b	nA2, $06
	smpsFMAlterVol      $0F
	dc.b	$06, nRst
	smpsFMAlterVol      $F1
	dc.b	nF2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nF2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nF2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nF2, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	smpsAlterPitch      $F9
	smpsCall            JustAnotherDay_Call23
	smpsAlterPitch      $FE
	smpsCall            JustAnotherDay_Call23
	smpsAlterPitch      $02
	smpsCall            JustAnotherDay_Call23
	smpsAlterPitch      $FE
	smpsCall            JustAnotherDay_Call23
	smpsCall            JustAnotherDay_Call23
	smpsAlterPitch      $FE
	smpsCall            JustAnotherDay_Call23
	smpsAlterPitch      $02
	smpsCall            JustAnotherDay_Call23
	smpsAlterPitch      $02
	smpsCall            JustAnotherDay_Call23
	smpsAlterPitch      $07

JustAnotherDay_Loop16:
	dc.b	nRst, $60
	smpsLoop            $00, $04, JustAnotherDay_Loop16
	smpsFMvoice         $07
	smpsPan             panRight, $00
	smpsPitchSlideSpeed $02
	smpsFMAlterVol      $0A
	smpsCall            JustAnotherDay_Call24
	smpsPan             panCenter, $00
	smpsPitchSlideSpeed $FE
	smpsFMAlterVol      $F6
	smpsFMvoice         $0B
	smpsModSet          $05, $01, $03, $04
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nRst, $08, nB5, $04
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
	dc.b	$08, nB5, $04
	smpsFMAlterVol      $FB
	smpsPan             panCenter, $00
	dc.b	nRst, $30
	smpsFMvoice         $0C
	dc.b	nE3, $18
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $3C, smpsNoAttack, $60, nD3, $18
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nFs3, $3C, smpsNoAttack, $60
	smpsFMvoice         $0D
	smpsFMAlterVol      $FB
	smpsCall            JustAnotherDay_Call38
	smpsCall            JustAnotherDay_Call39
	smpsAlterPitch      $03
	smpsCall            JustAnotherDay_Call38
	smpsAlterPitch      $FD
	dc.b	nRst, $0C, nBb3, $08, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04, nRst, $30
	smpsCall            JustAnotherDay_Call38
	smpsCall            JustAnotherDay_Call39
	smpsAlterPitch      $03
	smpsCall            JustAnotherDay_Call38
	smpsAlterPitch      $FD
	dc.b	nRst, $08, nBb3, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $20
	smpsFMAlterVol      $05
	dc.b	nRst, $30
	smpsFMvoice         $04
	smpsPitchSlideSpeed $FB
	smpsPan             panRight, $00
	smpsFMAlterVol      $05
	dc.b	nRst, $02, nRst, $60, nRst, nRst, nRst, $0C
	dc.b	nF3, nG3, nA3, nBb3, nA3, nBb3, nC4
	smpsCall            JustAnotherDay_Call10
	dc.b	nBb3, $24, nF4, $18, nEb4, $06, nRst, nD4
	dc.b	nC4, nRst, nCs4, $02, nD4, $04, smpsNoAttack, $2E
	smpsPitchSlideSpeed $05
	smpsPan             panCenter, $00
	smpsFMAlterVol      $FB
	smpsFMvoice         $06
	smpsAlterPitch      $0C
	smpsFMAlterVol      $FC
	dc.b	nRst, $06, nG3, nA3
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
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $0C
	smpsAlterPitch      $F4
	smpsFMAlterVol      $04
	dc.b	nRst, $60
	smpsFMvoice         $07
	smpsFMAlterVol      $09
	smpsModSet          $01, $01, $03, $06
	smpsAlterPitch      $0C
	smpsCall            JustAnotherDay_Call12
	dc.b	smpsNoAttack, $0C, nRst, $60
	smpsFMAlterVol      $F7
	smpsAlterPitch      $F4
	smpsFMvoice         $0D
	smpsFMAlterVol      $FD
	smpsCall            JustAnotherDay_Call40
	smpsFMAlterVol      $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	smpsAlterPitch      $0C
	dc.b	nRst, $02
	smpsFMvoice         $0F
	smpsCall            JustAnotherDay_Call21
	smpsPan             panRight, $00
	dc.b	nF4, $03, nE4, nC4, nG3, nF3, nE3, nF3
	dc.b	nG3, nF4, $03, nE4, nC4, nG3, nF3, nE3
	dc.b	nC3, nG2, nF4, $03, nE4, nC4, nG3, nF3
	dc.b	nE3, nF3, nG3, nD3, $03, nE3, nF3, nG3
	dc.b	nA3, nB3, nC4, nD4, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	smpsAlterPitch      $F4
	smpsFMvoice         $11
	smpsPan             panLeft, $00
	smpsFMAlterVol      $04

JustAnotherDay_Loop17:
	smpsCall            JustAnotherDay_Call41
	smpsLoop            $00, $06, JustAnotherDay_Loop17
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
	smpsCall            JustAnotherDay_Call41
	smpsFMAlterVol      $FC
	dc.b	nRst, $60
	smpsFMvoice         $04
	smpsFMAlterVol      $FC

JustAnotherDay_Loop18:
	dc.b	nRst, $0C, nD3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC3, $0C, nRst, $0C, nC3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC3, $0C
	smpsLoop            $00, $03, JustAnotherDay_Loop18
	dc.b	nRst, $0C, nD3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD3, $0C, nRst, $0C, nC3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC3, $0C

JustAnotherDay_Loop19:
	dc.b	nRst, $0C, nD3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC3, $0C, nRst, $0C, nC3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC3, $0C
	smpsLoop            $00, $03, JustAnotherDay_Loop19
	dc.b	nRst, $0C, nD3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD3, $0C, nRst, $0C, nC3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $06, nC3, $12, nD3, $06, smpsNoAttack, $60
	smpsStop

JustAnotherDay_Call38:
	dc.b	nG3, $08
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$08, $04, $08, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $0C, nG3, $08, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsReturn

JustAnotherDay_Call39:
	dc.b	nRst, $0C, nA3, $08, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04, $08, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$08, $04
	smpsReturn

JustAnotherDay_Call40:
	dc.b	nF3, $0C, nRst, nG3, nRst, nBb3, $03, smpsNoAttack
	dc.b	nB3, $0F, nG3, $06, nRst, $0C, nC4, $0C
	dc.b	smpsNoAttack, $0C, nB3, $06, nRst, nC4, nD4, nRst
	dc.b	nG3, $30, nRst, $06, nF3, $0C, nRst, nG3
	dc.b	nRst, nBb3, $03, smpsNoAttack, nB3, $0F, nG3, $06
	dc.b	nRst, $0C, nF4, $0C, smpsNoAttack, $06, nRst, nG4
	dc.b	nRst, nF4, nE4, nRst, nD4, $30, nRst, $06
	smpsReturn

JustAnotherDay_Call41:
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

JustAnotherDay_PSG1:
	dc.b	nRst, $60
	smpsPSGvoice        cTone_08

JustAnotherDay_Loop20:
	dc.b	nRst, $60
	smpsLoop            $00, $07, JustAnotherDay_Loop20
	dc.b	nRst, $0C, nG3, nAb3, nA3, nC4, nA3, nG4
	dc.b	nF4
	smpsCall            JustAnotherDay_Call42
	dc.b	nRst, $18, nE4, $3C, nD4, $0C, nC4, $60
	dc.b	nRst, nRst, nRst, nRst, $60, nRst
	smpsPSGvoice        cTone_04
	smpsModSet          $03, $01, $01, $04
	smpsPSGAlterVol     $03
	dc.b	nC3, $60, nB2, nC3, $60, nB2
	smpsModSet          $00, $00, $00, $00
	smpsPSGAlterVol     $FD
	dc.b	nRst, $30
	smpsModSet          $0A, $01, $01, $04
	smpsPSGvoice        cTone_04
	smpsPSGAlterVol     $04
	dc.b	nB3, $60, smpsNoAttack, $60, nA3, $60, smpsNoAttack, $60
	smpsModSet          $00, $00, $00, $00
	smpsPSGAlterVol     $FC
	smpsPSGAlterVol     $01
	smpsPSGvoice        cTone_04
	dc.b	nF4, $60, smpsNoAttack, $18, nEb4, nD4, nEb4, nD4
	dc.b	$60, smpsNoAttack, $18, nC4, nBb3, nC4, nG3, $60
	dc.b	nFs3, $30, nD3, nG3, $60, nRst, $30
	smpsPSGAlterVol     $FF
	dc.b	nRst, $30
	smpsPSGvoice        cTone_02
	smpsAlterPitch      $0C
	smpsPSGAlterVol     $04
	smpsAlterPitch      $FB
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $FF
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $FF
	smpsCall            JustAnotherDay_Call43
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $02
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $FF
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $FF
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $07
	smpsAlterPitch      $F4
	dc.b	nRst, $06, nRst, nF4, nF4, nRst, nRst, nG4
	dc.b	nG4
	smpsAlterPitch      $07
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $FF
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $FF
	smpsCall            JustAnotherDay_Call43
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $02
	smpsCall            JustAnotherDay_Call43
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $02
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $01
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $F6
	smpsAlterPitch      $07
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $FF
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $FF
	smpsCall            JustAnotherDay_Call43
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $02
	smpsCall            JustAnotherDay_Call43
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $02
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $01
	smpsAlterPitch      $F6
	smpsPSGAlterVol     $FC
	smpsPSGvoice        cTone_08
	smpsAlterPitch      $0C
	dc.b	nG4, $06, nFs4, nF4, nD4, nC4, nA3, nG3
	dc.b	nD3, nF3, $0C, nRst, nG3, nRst, nB3, $12
	dc.b	nG3, $06, nRst, $0C, nC4, smpsNoAttack, $06, nRst
	dc.b	nB3, nRst, nC4, nD4, nRst, nC4, $0C, nRst
	dc.b	$06, nB3, $12, nRst, $06, nG3, $0C, nF3
	dc.b	$0C, nRst, nG3, nRst, nB3, $12, nG3, $06
	dc.b	nRst, $0C, nF4, smpsNoAttack, $06, nRst, nG4, nRst
	dc.b	nF4, nE4, nRst, nD4, $36
	smpsAlterPitch      $F4
	dc.b	nRst, $30, nRst, $60
	smpsPSGvoice        cTone_06
	smpsPSGAlterVol     $02

JustAnotherDay_Loop21:
	dc.b	nF3, $12, $06, nRst, $24, nF3, $06, nRst
	dc.b	$0C, nF3, nRst, $06
	smpsLoop            $00, $08, JustAnotherDay_Loop21
	smpsPSGAlterVol     $FE
	smpsPSGvoice        cTone_08
	smpsAlterPitch      $0C
	smpsCall            JustAnotherDay_Call40
	smpsAlterPitch      $F4
	smpsPSGvoice        cTone_04
	smpsPSGAlterVol     $03
	smpsCall            JustAnotherDay_Call21
	smpsCall            JustAnotherDay_Call21
	smpsPSGAlterVol     $FD
	smpsAlterPitch      $0C
	smpsPSGvoice        cTone_02
	smpsPSGAlterVol     $04

JustAnotherDay_Loop22:
	smpsCall            JustAnotherDay_Call44
	smpsLoop            $00, $12, JustAnotherDay_Loop22
	dc.b	nF3, $03, nF3, nRst, $18

JustAnotherDay_Loop23:
	smpsCall            JustAnotherDay_Call44
	smpsLoop            $00, $15, JustAnotherDay_Loop23
	dc.b	nF3, $03
	smpsAlterPitch      $F4
	smpsPSGAlterVol     $FC
	smpsPSGvoice        cTone_02
	smpsPSGAlterVol     $03
	dc.b	nRst, $48, nG3, $06, nC3, nC4, nG3

JustAnotherDay_Loop24:
	dc.b	nC3, $06, nC3, nC4, nG3, nC3, nC4, nG3
	dc.b	nC3, nC4, nG3, nC3, nC4, nG3, nC3, nC4
	dc.b	nG3
	smpsLoop            $00, $10, JustAnotherDay_Loop24
	smpsStop

JustAnotherDay_Call42:
	dc.b	nEb4, $05, smpsNoAttack, nE4, $1F, nD4, $18, nA3
	dc.b	$06, nRst, nG4, $0C, nF4, $06, nRst, nEb4
	dc.b	$02, smpsNoAttack, nE4, $22, nD4, $3C, nRst, $0C
	dc.b	nC4, $18, nG4, $06, nRst, nF4, $12, nE4
	dc.b	$06, nRst, $0C, nD4, smpsNoAttack, $06, nRst, nE4
	dc.b	nRst, nD4, nE4, nRst, nA3, $12, nG3, $0C
	dc.b	nRst, nG3, smpsNoAttack, $0C, nA3, $06, nRst, nA3
	dc.b	$24, nB3, $06, nRst, nRst, nC4, nRst, nD4
	dc.b	smpsNoAttack, $0C, nC4, nD4, nG4, $18, nC4, $06
	dc.b	nRst, nD4, $0C, nE4, smpsNoAttack, $60
	smpsReturn

JustAnotherDay_Call43:
	dc.b	nRst, $0C, nC4, $06, $06
	smpsLoop            $00, $02, JustAnotherDay_Call43
	smpsReturn

JustAnotherDay_Call44:
	dc.b	nF3, $03, nF3, nF2
	smpsReturn

JustAnotherDay_PSG2:
	dc.b	nRst, $60

JustAnotherDay_Loop25:
	dc.b	nRst, $60
	smpsLoop            $00, $07, JustAnotherDay_Loop25
	smpsPSGvoice        cTone_08
	smpsModSet          $05, $01, $02, $04
	dc.b	nRst, $0C
	smpsPSGAlterVol     $03
	dc.b	nRst, $0C, nG3, nAb3, nA3, nC4, nA3, nG4
	dc.b	nF4
	smpsCall            JustAnotherDay_Call42
	dc.b	nRst, $18, nE4, $3C, nD4, $0C, nC4, $60
	smpsPSGAlterVol     $FD
	smpsModSet          $00, $00, $00, $00
	dc.b	nRst, $54, nRst, $60, nRst, nRst, $60, nRst
	smpsPSGvoice        cTone_04
	smpsModSet          $03, $01, $01, $04
	smpsPSGAlterVol     $02
	dc.b	nG2, $30, nA2, nF2, nAb2, nG2, $30, nA2
	dc.b	nF2, nAb2
	smpsModSet          $00, $00, $00, $00
	smpsPSGAlterVol     $FE
	dc.b	nRst, $30
	smpsModSet          $0A, $01, $02, $02
	smpsPSGvoice        cTone_04
	smpsPSGAlterVol     $03
	dc.b	nE3, $60, smpsNoAttack, $60, nD3, $60, smpsNoAttack, $60
	smpsModSet          $00, $00, $00, $00
	smpsPSGAlterVol     $FD
	smpsPSGAlterVol     $02
	smpsPSGvoice        cTone_04
	smpsModSet          $04, $01, $01, $03
	dc.b	nRst, $04, nF4, $60, smpsNoAttack, $18, nEb4, nD4
	dc.b	nEb4, nD4, $60, smpsNoAttack, $18, nC4, nBb3, nC4
	dc.b	nG3, $60, nFs3, $30, nD3, nG3, $60, nRst
	dc.b	$2C
	smpsPSGAlterVol     $FE
	dc.b	nRst, $30
	smpsPSGvoice        cTone_02
	smpsPSGAlterVol     $03
	smpsAlterPitch      $02
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $FE
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $FE
	smpsCall            JustAnotherDay_Call43
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $04
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $FE
	smpsCall            JustAnotherDay_Call43
	smpsCall            JustAnotherDay_Call43
	dc.b	nRst, $06, nRst, nBb3, nBb3, nRst, nRst, nD4
	dc.b	nD4
	smpsAlterPitch      $02
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $FE
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $FE
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $02
	dc.b	nRst, $0C, nC4, $06, $06, nRst, $0C, nD4
	dc.b	$06, $06
	smpsAlterPitch      $02
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $FE
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $02
	smpsCall            JustAnotherDay_Call43
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $FE
	smpsAlterPitch      $02
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $FE
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $FE
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $02
	dc.b	nRst, $0C, nC4, $06, $06, nRst, $0C, nD4
	dc.b	$06, $06
	smpsAlterPitch      $02
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $FE
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $02
	smpsCall            JustAnotherDay_Call43
	smpsAlterPitch      $FE
	smpsPSGAlterVol     $FD
	smpsModSet          $05, $02, $01, $04
	smpsPSGvoice        cTone_08
	smpsAlterPitch      $0C
	smpsPSGAlterVol     $03
	dc.b	nRst, $06, nG4, $06, nFs4, nF4, nD4, nC4
	dc.b	nA3, nG3, nD3, nF3, $0C, nRst, nG3, nRst
	dc.b	nB3, $12, nG3, $06, nRst, $0C, nC4, smpsNoAttack
	dc.b	$06, nRst, nB3, nRst, nC4, nD4, nRst, nC4
	dc.b	$0C, nRst, $06, nB3, $12, nRst, $06, nG3
	dc.b	$0C, nF3, $0C, nRst, nG3, nRst, nB3, $12
	dc.b	nG3, $06, nRst, $0C, nF4, smpsNoAttack, $06, nRst
	dc.b	nG4, nRst, nF4, nE4, nRst, nD4, $30, nRst
	dc.b	$30
	smpsModSet          $00, $00, $00, $00
	smpsPSGAlterVol     $FD
	smpsAlterPitch      $F4
	dc.b	nRst, $60
	smpsPSGvoice        cTone_06
	smpsPSGAlterVol     $02

JustAnotherDay_Loop26:
	dc.b	nBb2, $12, $06, nRst, $24, nBb2, $06, nRst
	dc.b	$0C, nBb2, nRst, $06
	smpsLoop            $00, $08, JustAnotherDay_Loop26
	smpsPSGAlterVol     $FE
	smpsPSGvoice        cTone_08
	smpsAlterPitch      $0C
	smpsPSGAlterVol     $02
	smpsModSet          $01, $01, $01, $03
	dc.b	nRst, $06, nF3, $0C, nRst, nG3, nRst, nBb3
	dc.b	$03, smpsNoAttack, nB3, $0F, nG3, $06, nRst, $0C
	dc.b	nC4, $0C, smpsNoAttack, $0C, nB3, $06, nRst, nC4
	dc.b	nD4, nRst, nG3, $30, nRst, $06, nF3, $0C
	dc.b	nRst, nG3, nRst, nBb3, $03, smpsNoAttack, nB3, $0F
	dc.b	nG3, $06, nRst, $0C, nF4, $0C, smpsNoAttack, $06
	dc.b	nRst, nG4, nRst, nF4, nE4, nRst, nD4, $30
	smpsModSet          $00, $00, $00, $00
	smpsPSGAlterVol     $FE
	smpsAlterPitch      $F4
	smpsPSGvoice        cTone_04
	dc.b	nRst, $01
	smpsModSet          $01, $01, $02, $03
	smpsPSGAlterVol     $05
	smpsCall            JustAnotherDay_Call21
	dc.b	nF4, $03, nE4, nC4, nG3, nF3, nE3, nF3
	dc.b	nG3, nF4, $03, nE4, nC4, nG3, nF3, nE3
	dc.b	nC3, nG2, nF4, $03, nE4, nC4, nG3, nF3
	dc.b	nE3, nF3, nG3, nD3, $03, nE3, nF3, nG3
	dc.b	nA3, nB3, nC4, nD4, $01
	smpsPSGAlterVol     $FB
	smpsPSGAlterVol     $04
	smpsPSGvoice        cTone_02

JustAnotherDay_Loop27:
	smpsCall            JustAnotherDay_Call44
	smpsLoop            $00, $12, JustAnotherDay_Loop27
	dc.b	nF3, $03, nF3, nRst, $18

JustAnotherDay_Loop28:
	smpsCall            JustAnotherDay_Call44
	smpsLoop            $00, $15, JustAnotherDay_Loop28
	dc.b	nF3, $03
	smpsPSGAlterVol     $FC
	smpsPSGvoice        cTone_02
	smpsPSGAlterVol     $05
	dc.b	nRst, $01
	smpsPitchSlideSpeed $02
	dc.b	nRst, $48, nG3, $06, nC3, nC4, nG3, $05
	smpsPSGvoice        cTone_08
	smpsPSGAlterVol     $FB
	smpsPitchSlideSpeed $FE
	smpsModSet          $08, $01, $01, $02
	smpsPSGAlterVol     $03
	smpsCall            JustAnotherDay_Call14
	dc.b	smpsNoAttack, $0C, nD4, $18, nC4, $0C, smpsNoAttack, $60
	smpsCall            JustAnotherDay_Call14
	dc.b	smpsNoAttack, $0C, nD3, $18, nF3, $0C, smpsNoAttack, $0C
	dc.b	nG3, $54
	smpsCall            JustAnotherDay_Call14
	dc.b	smpsNoAttack, $0C, nD4, $18, nC4, $0C, smpsNoAttack, $60
	smpsCall            JustAnotherDay_Call14
	dc.b	smpsNoAttack, $0C, nD3, $18, nF3, $0C, smpsNoAttack, $0C
	dc.b	nG3, $24, nF3, $18, nE3, $12, nD3, $06
	dc.b	smpsNoAttack, $60
	smpsStop

JustAnotherDay_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $60
	smpsPSGAlterVol     $01
	smpsPSGvoice        cTone_02

JustAnotherDay_Loop29:
	dc.b	nB3, $0C, $0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C
	smpsLoop            $00, $10, JustAnotherDay_Loop29
	smpsPSGAlterVol     $FF

JustAnotherDay_Loop30:
	dc.b	nB3, $0C
	smpsLoop            $00, $20, JustAnotherDay_Loop30
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

JustAnotherDay_Loop31:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C, $0C, $0C, $0C, $08, $04
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsPSGvoice        cTone_02
	dc.b	$08, $04, $0C
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C, $0C, $0C, $0C, $0C, $0C, $08
	dc.b	$04, $08, $04
	smpsLoop            $00, $02, JustAnotherDay_Loop31
	dc.b	nRst, $30

JustAnotherDay_Loop32:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $08, $04, $0C, $08, $04, $08, $04
	dc.b	$08, $04
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsPSGvoice        cTone_02
	dc.b	$08, $04, $08, $04
	smpsLoop            $00, $03, JustAnotherDay_Loop32
	smpsPSGvoice        cTone_02
	dc.b	nC4, $08, $04, $0C, $08, $04, $08, $04
	dc.b	$08, $04, $08, $04, $0C, $0C

JustAnotherDay_Loop33:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $08, $04, $08, $04, $04, $04, $04
	dc.b	$08, $04
	smpsLoop            $00, $02, JustAnotherDay_Loop33
	smpsPSGvoice        cTone_02
	dc.b	nC4, $08, $04, $08, $04, $04, $04, $04
	dc.b	$08, $04, $08, $04, $08, $04, $04, $04
	dc.b	$04
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsLoop            $01, $03, JustAnotherDay_Loop33
	smpsPSGvoice        cTone_02
	dc.b	nC4, $08, $04, $08, $04, $04, $04, $04
	dc.b	$08, $04
	smpsPSGvoice        cTone_02
	dc.b	nC4, $08, $04, $08, $04, $04, $04, $04
	dc.b	$08, $04
	smpsPSGvoice        cTone_05
	dc.b	$08
	smpsPSGvoice        cTone_02
	dc.b	$04, nRst, $24, nRst, $30
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C, $0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$06, $06
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsPSGvoice        cTone_02
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C, $0C
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsPSGvoice        cTone_02
	dc.b	$0C, $0C, $0C, $0C, $0C, $06, $06
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsPSGvoice        cTone_02
	dc.b	$0C, $0C, $0C, $0C, nRst, $30

JustAnotherDay_Loop34:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C, $06, $06
	smpsLoop            $00, $1C, JustAnotherDay_Loop34
	dc.b	nC4, $0C, $06, $06, $0C, $06, $06, $0C
	dc.b	nRst, $24

JustAnotherDay_Loop35:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $06
	smpsLoop            $00, $0A, JustAnotherDay_Loop35
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsPSGvoice        cTone_02
	dc.b	$06, $06
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsLoop            $01, $04, JustAnotherDay_Loop35
	smpsPSGvoice        cTone_02
	dc.b	$06, nRst, $2A, nRst, $60

JustAnotherDay_Loop36:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $06, $06
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsLoop            $00, $20, JustAnotherDay_Loop36

JustAnotherDay_Loop37:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $06, $06
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsLoop            $00, $0C, JustAnotherDay_Loop37
	smpsPSGvoice        cTone_02
	dc.b	nC4, $04, $04, $04, $06, $06, $06, $06
	dc.b	$06, $06, $06, $06
	smpsPSGvoice        cTone_05
	dc.b	$0C, $0C, $0C

JustAnotherDay_Loop38:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $03, $03
	smpsPSGvoice        cTone_05
	dc.b	$06
	smpsLoop            $00, $10, JustAnotherDay_Loop38

JustAnotherDay_Loop39:
	smpsCall            JustAnotherDay_Call45
	smpsLoop            $01, $07, JustAnotherDay_Loop39
	smpsPSGvoice        cTone_02
	dc.b	nC4, $03, nRst, $0F
	smpsPSGvoice        cTone_05
	dc.b	$06

JustAnotherDay_Loop40:
	smpsCall            JustAnotherDay_Call45
	smpsLoop            $01, $08, JustAnotherDay_Loop40
	dc.b	nRst, $48
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C, $0C

JustAnotherDay_Loop41:
	smpsCall            JustAnotherDay_Call46
	smpsLoop            $00, $04, JustAnotherDay_Loop41
	smpsCall            JustAnotherDay_Call46
	smpsPSGvoice        cTone_05
	dc.b	nC4, $0C
	smpsPSGvoice        cTone_02
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsPSGvoice        cTone_02
	dc.b	$06
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsPSGvoice        cTone_02
	dc.b	$06
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsPSGvoice        cTone_02
	dc.b	$06
	smpsPSGvoice        cTone_05
	dc.b	$12
	smpsPSGvoice        cTone_02
	dc.b	$0C
	smpsCall            JustAnotherDay_Call46
	smpsCall            JustAnotherDay_Call46
	smpsStop

JustAnotherDay_Loop78:
	; Unused data
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C, $06, $06
	smpsLoop            $00, $04, JustAnotherDay_Loop78
	smpsReturn

JustAnotherDay_Call45:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $03, $03
	smpsPSGvoice        cTone_05
	dc.b	$06
	smpsLoop            $00, $02, JustAnotherDay_Call45
	smpsReturn

JustAnotherDay_Call46:
	smpsPSGvoice        cTone_05
	dc.b	nC4, $0C
	smpsPSGvoice        cTone_02
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C, $0C
	smpsReturn

JustAnotherDay_PWM1:
	dc.b	$96, $3C, pElecKick, $24
	smpsCall            JustAnotherDay_Call47
	dc.b	pElecKick, $18, nRst, $12, pElecKick, $06, nRst, pElecKick
	dc.b	pElecKick, nRst, nRst, $18
	smpsCall            JustAnotherDay_Call47
	dc.b	pElecKick, $18, nRst, $0C, pElecKick, nRst, pElecKick, pElecKick
	dc.b	$18

JustAnotherDay_Loop42:
	smpsCall            JustAnotherDay_Call47
	dc.b	pElecKick, $18, nRst, $12, pElecKick, $06, nRst, pElecKick
	dc.b	pElecKick, nRst, nRst, $18
	smpsLoop            $00, $02, JustAnotherDay_Loop42
	dc.b	pElecKick, $0C, pElecKick, nRst, $06, pElecKick, nRst, pElecKick
	dc.b	nRst, $0C, pElecKick, nRst, $06, pElecKick, $12, nRst
	dc.b	$06, pElecKick, $12, nRst, $06, pElecKick, nRst, pElecKick
	dc.b	$12, pElecKick, pElecKick, nRst, $06, pElecKick, $12, pElecKick
	dc.b	pElecKick, pElecKick, pElecKick, pElecKick, $0C, pElecKick, pElecKick, pElecKick
	dc.b	pElecKick, pElecKick, pElecKick, pElecKick, pElecKick, $18, nRst, $14
	dc.b	pElecKick, $04, nRst, $30, pElecKick, $18, nRst, $14
	dc.b	pElecKick, $04, nRst, $2C, pElecKick, $04

JustAnotherDay_Loop43:
	dc.b	nRst, $08, pElecKick, $04, nRst, $08, pElecKick, $04
	dc.b	nRst, $0C, pElecKick, $0C, $30, nRst, $08, pElecKick
	dc.b	$04, nRst, $08, pElecKick, $04, nRst, $0C, pElecKick
	dc.b	$0C, $14, $04, nRst, $18
	smpsLoop            $00, $02, JustAnotherDay_Loop43
	dc.b	nRst, $30

JustAnotherDay_Loop44:
	dc.b	pElecKick, $18, nRst, $0C, pElecKick, nRst, pElecKick, nRst
	dc.b	$18
	smpsLoop            $00, $04, JustAnotherDay_Loop44

JustAnotherDay_Loop45:
	dc.b	pKick, $0C, $0C, nRst, $24, pKick, $0C, nRst
	dc.b	$08, pKick, $04, nRst, $08, pKick, $04
	smpsLoop            $00, $07, JustAnotherDay_Loop45
	dc.b	pKick, $08, $04, nRst, $24, pKick, $30

JustAnotherDay_Loop46:
	dc.b	pKick, $12, $06, nRst, pKick, $12, nRst, $06
	dc.b	pKick, $12, nRst, $18
	smpsLoop            $00, $03, JustAnotherDay_Loop46
	dc.b	pKick, $12, $06, nRst, pKick, $12, nRst, $06
	dc.b	pKick, $12, $18

JustAnotherDay_Loop47:
	dc.b	pKick, $12, $06, nRst, $12, pKick, $06, $18
	dc.b	nRst
	smpsLoop            $00, $07, JustAnotherDay_Loop47
	dc.b	pKick, $18, pKick, pKick, pKick

JustAnotherDay_Loop48:
	dc.b	pKick, $12, $06, nRst, $18
	smpsLoop            $00, $03, JustAnotherDay_Loop48
	dc.b	pKick, $06, $0C, $06, nRst, $18
	smpsLoop            $01, $02, JustAnotherDay_Loop48
	dc.b	pKick, $12, $06, nRst, $18, nRst, $60

JustAnotherDay_Loop49:
	dc.b	pKick, $06, $06, $06, $06, nRst, $18, pKick
	dc.b	$0C, $0C, nRst, $18, pKick, $06, $06, $06
	dc.b	$06, nRst, $12, pKick, $06, nRst, $0C, pKick
	dc.b	nRst, $18, pKick, $06, $06, $06, $06, nRst
	dc.b	$12, pKick, $06, nRst, $0C, pKick, nRst, $18
	dc.b	pKick, $06, $06, $06, $06, nRst, pKick, nRst
	dc.b	pKick, nRst, $0C, pKick, nRst, $18
	smpsLoop            $00, $02, JustAnotherDay_Loop49

JustAnotherDay_Loop50:
	dc.b	pElecKick, $12, $12, $0C, nRst, pElecKick, nRst, $06
	dc.b	pElecKick, $12, pElecKick, $12, $12, $0C, nRst, $0C
	dc.b	pElecKick, $06, $06, nRst, pElecKick, $12
	smpsLoop            $00, $02, JustAnotherDay_Loop50

JustAnotherDay_Loop51:
	dc.b	pKick, $0C
	smpsLoop            $00, $0B, JustAnotherDay_Loop51
	dc.b	pKick, $06, pKick, pKick, $0C, $0C, $0C, $0C
	dc.b	pElecKick, $0C, $0C, $06, $0C, $06, $0C, $0C
	dc.b	$06, $0C, $06, $0C, $0C, $06, $0C, $06
	dc.b	$0C, $0C, $0C, $06, $06, pElecKick, $0C, $0C
	dc.b	$06, $0C, $06, $0C, $0C, $06, $0C, $06
	dc.b	$0C, $0C, $06, $0C, $03, $03, $0C, $0C
	dc.b	$06, $0C, $06, nRst, $3C, pElecKick, $24

JustAnotherDay_Loop52:
	dc.b	pElecKick, $24, $0C, $24, $0C, $24, $0C, $12
	dc.b	$12, $0C
	smpsLoop            $00, $07, JustAnotherDay_Loop52
	dc.b	pElecKick, $24, $0C, $24, $0C, $24, $0C, $18
	dc.b	$12, $06, nRst, $60, pElecKick, $18
	smpsStop

JustAnotherDay_Call47:
	dc.b	pElecKick, $18, nRst, $12, pElecKick, $06, nRst, pElecKick
	dc.b	pElecKick, nRst, nRst, $0C, pElecKick, pElecKick, $18, nRst
	dc.b	$12, pElecKick, $06, nRst, pElecKick, pElecKick, nRst, nRst
	dc.b	$18, pElecKick, $18, nRst, $12, pElecKick, $06, nRst
	dc.b	pElecKick, pElecKick, nRst, nRst, $0C, pElecKick
	smpsReturn

JustAnotherDay_PWM2:
	smpsFMAlterVol      $F0
	dc.b	pRideBell, $18, pRideBell, pRideBell
	smpsFMAlterVol      $10
	dc.b	pElecSnare, $18
	smpsCall            JustAnotherDay_Call48
	dc.b	nRst, $18, pElecSnare, nRst, pElecSnare, nRst, $18, pElecSnare
	dc.b	nRst, pElecSnare, nRst, $18, pElecSnare, nRst, pElecSnare, nRst
	dc.b	$48, pElecSnare, $06, pElecSnare, pElecSnare, pElecSnare

JustAnotherDay_Loop53:
	smpsCall            JustAnotherDay_Call48
	smpsLoop            $01, $02, JustAnotherDay_Loop53
	dc.b	nRst, $42, pElecSnare, $12, $0C, nRst, $06, pElecSnare
	dc.b	pElecSnare, $0C, $06, $0C
	smpsFMAlterVol      $F9
	dc.b	pTomHi, $06, nRst
	smpsFMAlterVol      $07
	dc.b	pTomMid, nRst, pTomMid, nRst
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	dc.b	pElecSnare, pElecSnare, nRst, $06, pElecSnare, $06, nRst, $0C
	dc.b	pElecSnare
	smpsFMAlterVol      $90
	dc.b	pTomLo, $04
	smpsFMAlterVol      $70
	dc.b	pTomHi, pTomHi, pTomMid, pTomMid
	smpsFMAlterVol      $90
	dc.b	pTomLo, pTomLo, $0C
	smpsFMAlterVol      $70
	smpsFMAlterVol      $F9
	dc.b	pTomHi, $03, pTomHi
	smpsFMAlterVol      $07
	dc.b	pTomMid, pTomMid
	smpsFMAlterVol      $90
	dc.b	pTomLo, pTomLo
	smpsFMAlterVol      $70
	dc.b	pElecSnare, pElecSnare, nRst, $0C
	smpsFMAlterVol      $F9
	dc.b	pTomHi, $04, pTomHi
	smpsFMAlterVol      $07
	dc.b	pTomMid, pTomMid
	smpsFMAlterVol      $90
	dc.b	pTomLo, pTomLo
	smpsFMAlterVol      $70
	smpsFMAlterVol      $F9
	dc.b	pTomHi
	smpsFMAlterVol      $07
	dc.b	pTomMid
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	dc.b	pElecSnare, $0C
	smpsFMAlterVol      $AB

JustAnotherDay_Loop54:
	dc.b	pElecSnare, $04
	smpsFMAlterVol      $11
	smpsLoop            $00, $09, JustAnotherDay_Loop54
	smpsFMAlterVol      $BC
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
	dc.b	nRst, $18, pElecSnare, nRst, pElecSnare, nRst, pElecSnare, nRst
	dc.b	pElecSnare, $14, $04, nRst, $18, pElecSnare, nRst, pElecSnare
	dc.b	nRst, pElecSnare, nRst, pElecSnare, $08, $04
	smpsFMAlterVol      $90
	dc.b	pTomLo, $0C
	smpsFMAlterVol      $70
	smpsFMAlterVol      $22
	dc.b	pElecSnare, $0C, $0C, $08, $04
	smpsFMAlterVol      $90
	dc.b	pTomLo, $0C
	smpsFMAlterVol      $70
	dc.b	nRst, $14, pElecSnare, $04, nRst, $30, pElecSnare, $18
	dc.b	nRst, $14, pElecSnare, $04, nRst, $30, pElecSnare, $14
	dc.b	$04, nRst, $14, pElecSnare, $04, nRst, $30, pElecSnare
	dc.b	$18, nRst, $14, pElecSnare, $04, nRst, $30, pElecSnare
	dc.b	$08, $04
	smpsFMAlterVol      $90
	dc.b	pTomLo, $0C
	smpsFMAlterVol      $70
	smpsFMAlterVol      $DE
	smpsFMAlterVol      $22

JustAnotherDay_Loop55:
	dc.b	nRst, $18, pElecSnare, nRst, pElecSnare, $08
	smpsFMAlterVol      $F9
	dc.b	pTomHi, $04
	smpsFMAlterVol      $07
	dc.b	pTomMid, $08
	smpsFMAlterVol      $90
	dc.b	pTomLo, $04
	smpsFMAlterVol      $70
	smpsLoop            $00, $07, JustAnotherDay_Loop55
	dc.b	pElecSnare, $08, $04, nRst, $24, nRst, $30
	smpsFMAlterVol      $22
	dc.b	nRst, $0C
	smpsFMAlterVol      $F9
	dc.b	pTomHi, nRst, $06
	smpsFMAlterVol      $07
	dc.b	pTomMid, nRst
	smpsFMAlterVol      $90
	dc.b	pTomLo, nRst, $18
	smpsFMAlterVol      $70
	dc.b	pSnare, nRst, $0C
	smpsFMAlterVol      $F9
	dc.b	pTomHi, nRst, $06
	smpsFMAlterVol      $07
	dc.b	pTomMid, nRst
	smpsFMAlterVol      $90
	dc.b	pTomLo, nRst, $18
	smpsFMAlterVol      $70
	dc.b	pSnare, $0C, $06, $06, nRst, $0C
	smpsFMAlterVol      $F9
	dc.b	pTomHi, nRst, $06
	smpsFMAlterVol      $07
	dc.b	pTomMid, nRst
	smpsFMAlterVol      $90
	dc.b	pTomLo, nRst, $18
	smpsFMAlterVol      $70
	dc.b	pSnare, nRst, $0C
	smpsFMAlterVol      $F9
	dc.b	pTomHi, nRst, $06
	smpsFMAlterVol      $07
	dc.b	pTomMid, nRst
	smpsFMAlterVol      $90
	dc.b	pTomLo, nRst, $0C
	smpsFMAlterVol      $70
	dc.b	pSnare, $06, pSnare, pSnare, pSnare
	smpsFMAlterVol      $90
	dc.b	pTomLo, $0C
	smpsFMAlterVol      $70

JustAnotherDay_Loop56:
	dc.b	nRst, $1E, pSnare, $12, nRst, $18, pSnare
	smpsLoop            $00, $07, JustAnotherDay_Loop56
	dc.b	nRst, $18, pSnare, nRst, $0C, pSnare, $06, pSnare
	dc.b	pSnare, pSnare
	smpsFMAlterVol      $90
	dc.b	pTomLo, $0C
	smpsFMAlterVol      $70
	dc.b	nRst, $18, pSnare, nRst, pSnare, nRst, pSnare, nRst
	dc.b	pSnare, nRst, pSnare, nRst, pSnare, nRst, pSnare, nRst
	dc.b	pSnare, $12, $06, nRst, $30, nRst, $60

JustAnotherDay_Loop57:
	dc.b	nRst, $18, pSnare, nRst, pSnare, nRst, pSnare, nRst
	dc.b	pSnare, $0C, $06, $06, nRst, $18, pSnare, nRst
	dc.b	pSnare, nRst, pSnare, nRst, pSnare, $06
	smpsFMAlterVol      $F9
	dc.b	pTomHi
	smpsFMAlterVol      $07
	dc.b	pTomMid
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	smpsLoop            $00, $02, JustAnotherDay_Loop57
	smpsFMAlterVol      $DE

JustAnotherDay_Loop58:
	dc.b	nRst, $18, pElecSnare, nRst, pElecSnare, nRst, pElecSnare, nRst
	dc.b	pElecSnare, $12, $06
	smpsLoop            $00, $02, JustAnotherDay_Loop58
	dc.b	nRst, $30, nRst, nRst, $24
	smpsFMAlterVol      $F9
	dc.b	pTomHi, $03
	smpsFMAlterVol      $07
	dc.b	pTomMid
	smpsFMAlterVol      $90
	dc.b	pTomLo, $06
	smpsFMAlterVol      $70
	dc.b	pSnare, $03, pSnare, pSnare, nRst, pSnare, nRst, nRst
	dc.b	pSnare, pSnare, pSnare, pSnare, nRst, pSnare, pSnare, pSnare
	dc.b	pSnare, nRst, $0C, pSnare, nRst, pSnare, nRst, pSnare
	dc.b	nRst, pSnare, $09, $03, nRst, $0C, pSnare, nRst
	dc.b	pSnare, nRst, pSnare, nRst, $15, pSnare, $03, nRst
	dc.b	$0C, pSnare, nRst, pSnare, nRst, pSnare, nRst, pSnare
	dc.b	$09, $03, nRst, $0C, pSnare, nRst, pSnare, nRst
	dc.b	pSnare, nRst, pSnare, $09, $03, nRst, $3C
	smpsFMAlterVol      $90
	dc.b	pTomLo, $0C
	smpsFMAlterVol      $70
	dc.b	pElecSnare, $06, pElecSnare
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	dc.b	pElecSnare
	smpsCall            JustAnotherDay_Call49
	smpsCall            JustAnotherDay_Call49
	dc.b	nRst, $18, pElecSnare, nRst, pElecSnare, nRst, pElecSnare, nRst
	dc.b	pElecSnare, nRst, pElecSnare, nRst, pElecSnare, nRst, $0C
	smpsFMAlterVol      $F9
	dc.b	pTomHi, $06, pTomHi, nRst, pTomHi
	smpsFMAlterVol      $07
	dc.b	pTomMid, nRst, pTomMid, pTomMid, nRst, pTomMid
	smpsFMAlterVol      $90
	dc.b	pTomLo, $0C
	smpsFMAlterVol      $70
	dc.b	pElecSnare
	smpsCall            JustAnotherDay_Call49
	dc.b	nRst, $57
	smpsFMAlterVol      $F9
	dc.b	pTomHi, $03
	smpsFMAlterVol      $07
	dc.b	pTomMid
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	smpsStop

JustAnotherDay_Call48:
	dc.b	nRst, $18, pElecSnare
	smpsLoop            $00, $07, JustAnotherDay_Call48
	dc.b	nRst, $0C, pElecSnare, pElecSnare, $06, pElecSnare, pTomMid, $0C
	smpsReturn

JustAnotherDay_Call49:
	dc.b	nRst, $18, pElecSnare
	smpsLoop            $00, $06, JustAnotherDay_Call49
	dc.b	nRst, $0C, pElecSnare, pElecSnare, pElecSnare, $06, pElecSnare, nRst
	dc.b	pElecSnare, nRst, nRst, pElecSnare, pElecSnare
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	dc.b	nRst
	smpsReturn

JustAnotherDay_PWM3:
	dc.b	$96, $48
	smpsFMAlterVol      $FC
	dc.b	pSplash, $18
	smpsFMAlterVol      $04
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst
	smpsFMAlterVol      $FC
	dc.b	pSplash
	smpsFMAlterVol      $04
	smpsFMAlterVol      $C0
	dc.b	pCrash, $12
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pSplash, $06, nRst, $0C
	smpsFMAlterVol      $04
	smpsFMAlterVol      $C0
	dc.b	pCrash, nRst, $06
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pSplash, $12, nRst, $18
	smpsFMAlterVol      $04
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst
	smpsFMAlterVol      $FC
	dc.b	pSplash
	smpsFMAlterVol      $04
	dc.b	nRst, nRst, $0C
	smpsFMAlterVol      $C0
	dc.b	pCrash, nRst, $06
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pSplash, $12, nRst, $30
	smpsFMAlterVol      $04
	dc.b	nRst, $60
	smpsFMAlterVol      $C0
	dc.b	pCrash, $0C
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pSplash, $12
	smpsFMAlterVol      $04
	smpsFMAlterVol      $C0
	dc.b	pCrash, nRst, $30
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pSplash, $30
	smpsFMAlterVol      $04
	smpsFMAlterVol      $C0
	dc.b	pCrash, $0C
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pSplash, $24
	smpsFMAlterVol      $04
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60, pCrash, $18, nRst, $14
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pSplash, $04, nRst, $30
	smpsFMAlterVol      $04
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsFMAlterVol      $FC
	dc.b	pSplash, $30
	smpsFMAlterVol      $04
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsFMAlterVol      $C0
	dc.b	pCrash, $18
	smpsFMAlterVol      $40
	dc.b	pClap, nRst, pClap, nRst, pClap, nRst, pClap, nRst
	dc.b	pClap, nRst, pClap, nRst, pClap, $14, $04, nRst
	dc.b	$30, nRst, $18, pClap, nRst, pClap, nRst, $18
	dc.b	pClap, nRst, pClap, nRst, $18, pClap, nRst, pClap
	dc.b	nRst, $08
	smpsFMAlterVol      $C0
	dc.b	pCrash, $04, nRst, $24
	smpsFMAlterVol      $40
	dc.b	nRst, $18
	smpsFMAlterVol      $FC
	dc.b	pSplash, $18
	smpsFMAlterVol      $04
	smpsFMAlterVol      $80
	dc.b	pCrash, $60
	smpsFMAlterVol      $80
	dc.b	nRst
	smpsFMAlterVol      $80
	dc.b	pCrash
	smpsFMAlterVol      $80
	smpsFMAlterVol      $F8
	dc.b	pSplash, $30
	smpsFMAlterVol      $08
	smpsFMAlterVol      $80
	dc.b	pCrash, $18
	smpsFMAlterVol      $80
	smpsFMAlterVol      $F8
	dc.b	pSplash
	smpsFMAlterVol      $08

JustAnotherDay_Loop59:
	smpsFMAlterVol      $B0
	dc.b	pCrash, $60
	smpsFMAlterVol      $50
	dc.b	nRst, nRst, nRst
	smpsLoop            $00, $02, JustAnotherDay_Loop59
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60, nRst, nRst, nRst, pCrash, $12
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pSplash, $1E
	smpsFMAlterVol      $04
	dc.b	nRst, $60
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsFMAlterVol      $FC
	dc.b	pSplash, $60
	smpsFMAlterVol      $04
	dc.b	nRst, nRst, nRst
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsFMAlterVol      $C0
	dc.b	pCrash, $30, nRst, pCrash
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pSplash
	smpsFMAlterVol      $04
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
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40

JustAnotherDay_Loop60:
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst
	smpsFMAlterVol      $FC
	dc.b	pSplash, $60
	smpsFMAlterVol      $04
	smpsLoop            $00, $02, JustAnotherDay_Loop60
	smpsFMAlterVol      $C0
	dc.b	pCrash
	smpsFMAlterVol      $40
	dc.b	nRst, nRst
	smpsFMAlterVol      $C0
	dc.b	pCrash, $54
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pSplash, $0C
	smpsFMAlterVol      $04
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst
	smpsFMAlterVol      $FC
	dc.b	pSplash, $5A
	smpsFMAlterVol      $04
	smpsFMAlterVol      $C0
	dc.b	pCrash, $06, nRst, $60
	smpsFMAlterVol      $40
	smpsStop

JustAnotherDay_PWM4:
	smpsFMAlterVol      $D0
	dc.b	pRideBell, $18, pRideBell, pRideBell, $30, nRst, $06, pRideBell
	dc.b	nRst, pRideBell, nRst, pRideBell, pRideBell, nRst, pRideBell, nRst
	dc.b	pRideBell, nRst, pRideBell, nRst, pRideBell, nRst, pRideBell, nRst
	dc.b	pRideBell, pRideBell, nRst, pRideBell, pRideBell, nRst, pRideBell, nRst
	dc.b	pRideBell, nRst, pRideBell, nRst, pRideBell, pRideBell, nRst, pRideBell
	dc.b	nRst, pRideBell, pRideBell, nRst, pRideBell, pRideBell, nRst, pRideBell
	dc.b	pRideBell, nRst, pRideBell, pRideBell, nRst, pRideBell, nRst, pRideBell
	dc.b	nRst, pRideBell, pRideBell, nRst, pRideBell, pRideBell, nRst, pRideBell
	dc.b	pRideBell, nRst, pRideBell, pRideBell, pRideBell, pRideBell, nRst, $06
	dc.b	pRideBell, nRst, pRideBell, nRst, pRideBell, pRideBell, nRst, pRideBell
	dc.b	nRst, pRideBell, nRst, pRideBell, nRst, pRideBell, nRst, pRideBell
	dc.b	nRst, pRideBell, pRideBell, nRst, pRideBell, pRideBell, nRst, pRideBell
	dc.b	nRst, pRideBell, nRst, pRideBell, nRst, pRideBell, pRideBell, nRst
	dc.b	pRideBell, nRst, pRideBell, pRideBell, nRst, pRideBell, pRideBell, nRst
	dc.b	pRideBell, pRideBell, nRst, pRideBell, pRideBell, nRst, pRideBell, nRst
	dc.b	$60

JustAnotherDay_Loop61:
	dc.b	nRst, $06, pRideBell, nRst, pRideBell, nRst, pRideBell, pRideBell
	dc.b	nRst, pRideBell, nRst, pRideBell, nRst, pRideBell, nRst, pRideBell
	dc.b	nRst, pRideBell, nRst, pRideBell, pRideBell, nRst, pRideBell, pRideBell
	dc.b	nRst, pRideBell, nRst, pRideBell, nRst, pRideBell, nRst, pRideBell
	dc.b	pRideBell, nRst, pRideBell, nRst, pRideBell, pRideBell, nRst, pRideBell
	dc.b	pRideBell, nRst, pRideBell, pRideBell, nRst, pRideBell, pRideBell, nRst
	dc.b	pRideBell, nRst, pRideBell, nRst, pRideBell, pRideBell, nRst, pRideBell
	dc.b	pRideBell, nRst, pRideBell, pRideBell, nRst, pRideBell, pRideBell, pRideBell
	dc.b	pRideBell
	smpsLoop            $00, $02, JustAnotherDay_Loop61
	dc.b	pRideBell, $06, nRst, nRst, pRideBell, nRst, nRst, pRideBell
	dc.b	nRst, nRst, pRideBell, nRst, nRst, pRideBell, nRst, pRideBell
	dc.b	pRideBell, nRst, pRideBell, pRideBell, nRst, pRideBell, pRideBell, pRideBell
	dc.b	pRideBell, nRst, pRideBell, nRst, pRideBell, pRideBell, nRst, pRideBell
	dc.b	pRideBell, nRst, $60, nRst
	smpsFMAlterVol      $30
	smpsFMAlterVol      $CD
	dc.b	nRst, $60, nRst, $0C, pElecHiHat, nRst, pElecHiHat, nRst
	dc.b	pElecHiHat, nRst, pElecHiHat, $04, $04, $04

JustAnotherDay_Loop62:
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
	smpsLoop            $00, $02, JustAnotherDay_Loop62
	smpsFMAlterVol      $33
	dc.b	nRst, $30
	smpsFMAlterVol      $AD

JustAnotherDay_Loop63:
	dc.b	nRst, $0C, pElecHiHat
	smpsLoop            $00, $07, JustAnotherDay_Loop63
	dc.b	smpsNoAttack, $0C, pElecHiHat, $08, $04

JustAnotherDay_Loop64:
	dc.b	nRst, $0C, pElecHiHat
	smpsLoop            $00, $07, JustAnotherDay_Loop64
	dc.b	nRst, $0C, pElecHiHat, $04, $04, $04

JustAnotherDay_Loop65:
	dc.b	pElecHiHat, $08
	smpsFMAlterVol      $CD
	dc.b	$04
	smpsFMAlterVol      $22
	dc.b	$08
	smpsFMAlterVol      $DE
	dc.b	$04
	smpsFMAlterVol      $33
	smpsLoop            $00, $1C, JustAnotherDay_Loop65
	dc.b	pElecHiHat, $08
	smpsFMAlterVol      $CD
	dc.b	$04
	smpsFMAlterVol      $33
	dc.b	nRst, $24, nRst, $30

JustAnotherDay_Loop66:
	dc.b	nRst, $0C, pElecHiHat
	smpsLoop            $00, $10, JustAnotherDay_Loop66

JustAnotherDay_Loop67:
	dc.b	nRst, $0C, pElecHiHat
	smpsLoop            $00, $1E, JustAnotherDay_Loop67
	dc.b	nRst, $30
	smpsFMAlterVol      $53

JustAnotherDay_Loop68:
	dc.b	pElecHiHat, $06
	smpsFMAlterVol      $AB
	dc.b	$06
	smpsFMAlterVol      $22
	dc.b	$06
	smpsFMAlterVol      $DE
	dc.b	$06
	smpsFMAlterVol      $55
	smpsLoop            $00, $10, JustAnotherDay_Loop68
	dc.b	pElecHiHat, $06
	smpsFMAlterVol      $AB
	dc.b	$06
	smpsFMAlterVol      $22
	dc.b	$06
	smpsFMAlterVol      $DE
	dc.b	$06
	smpsFMAlterVol      $55
	dc.b	nRst, $18, nRst, $60
	smpsFMAlterVol      $CD

JustAnotherDay_Loop69:
	smpsFMAlterVol      $FD
	dc.b	nRst, $0C, pElecHiHat, $06, $06
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	nRst, $0C, pElecHiHat, $06, $06
	smpsFMAlterVol      $30
	smpsLoop            $00, $10, JustAnotherDay_Loop69

JustAnotherDay_Loop70:
	dc.b	pElecHiHat, $06
	smpsFMAlterVol      $CD
	dc.b	$06
	smpsFMAlterVol      $22
	dc.b	$06
	smpsFMAlterVol      $DE
	dc.b	$06
	smpsFMAlterVol      $33
	smpsLoop            $00, $10, JustAnotherDay_Loop70

JustAnotherDay_Loop71:
	smpsFMAlterVol      $FD
	dc.b	nRst, $06, pElecHiHat, $03, $03
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	nRst, $06, pElecHiHat, $03, $03
	smpsFMAlterVol      $30
	smpsLoop            $00, $08, JustAnotherDay_Loop71

JustAnotherDay_Loop72:
	smpsCall            JustAnotherDay_Call50
	smpsLoop            $00, $07, JustAnotherDay_Loop72
	dc.b	$96, $0C, nRst, $06
	smpsFMAlterVol      $D0
	dc.b	pElecHiHat, $03, $03
	smpsFMAlterVol      $30

JustAnotherDay_Loop73:
	smpsCall            JustAnotherDay_Call50
	smpsLoop            $00, $08, JustAnotherDay_Loop73
	dc.b	nRst, $60

JustAnotherDay_Loop74:
	smpsCall            JustAnotherDay_Call51
	smpsLoop            $00, $05, JustAnotherDay_Loop74
	smpsCall            JustAnotherDay_Call52

JustAnotherDay_Loop75:
	smpsFMAlterVol      $FB
	dc.b	pClickLo, $06
	smpsFMAlterVol      $05
	smpsFMAlterVol      $B0
	dc.b	pClickHi, $0C
	smpsFMAlterVol      $50
	smpsLoop            $00, $04, JustAnotherDay_Loop75
	smpsFMAlterVol      $FB
	dc.b	pClickLo, $0C
	smpsFMAlterVol      $05
	smpsFMAlterVol      $B0
	dc.b	pClickHi
	smpsFMAlterVol      $50
	smpsCall            JustAnotherDay_Call51
	smpsCall            JustAnotherDay_Call51
	smpsStop

JustAnotherDay_Call50:
	dc.b	nRst, $06
	smpsFMAlterVol      $FD
	dc.b	pElecHiHat, $03, $03
	smpsFMAlterVol      $03
	dc.b	nRst, $06
	smpsFMAlterVol      $D0
	dc.b	pElecHiHat, $03, $03
	smpsFMAlterVol      $30
	smpsReturn

JustAnotherDay_Call51:
	smpsCall            JustAnotherDay_Call52
	smpsFMAlterVol      $FB
	dc.b	pClickLo, $06
	smpsFMAlterVol      $05
	smpsFMAlterVol      $B0
	dc.b	pClickHi, $0C
	smpsFMAlterVol      $50
	smpsFMAlterVol      $FB
	dc.b	pClickLo, $06
	smpsFMAlterVol      $05
	smpsFMAlterVol      $B0
	dc.b	pClickHi, $06, $06
	smpsFMAlterVol      $50
	smpsFMAlterVol      $FB
	dc.b	pClickLo
	smpsFMAlterVol      $05
	smpsFMAlterVol      $B0
	dc.b	pClickHi, pClickHi
	smpsFMAlterVol      $50
	smpsFMAlterVol      $FB
	dc.b	pClickLo
	smpsFMAlterVol      $05
	smpsFMAlterVol      $B0
	dc.b	pClickHi, pClickHi
	smpsFMAlterVol      $50
	smpsFMAlterVol      $FB
	dc.b	pClickLo, $0C
	smpsFMAlterVol      $05
	smpsFMAlterVol      $B0
	dc.b	pClickHi
	smpsFMAlterVol      $50
	smpsReturn

JustAnotherDay_Call52:
	smpsFMAlterVol      $FB
	dc.b	pClickLo, $0C, $0C
	smpsFMAlterVol      $05
	smpsFMAlterVol      $B0
	dc.b	pClickHi
	smpsFMAlterVol      $50
	smpsFMAlterVol      $FB
	dc.b	pClickLo, $06
	smpsFMAlterVol      $05
	smpsFMAlterVol      $B0
	dc.b	pClickHi
	smpsFMAlterVol      $50
	smpsFMAlterVol      $FB
	dc.b	pClickLo
	smpsFMAlterVol      $05
	smpsFMAlterVol      $B0
	dc.b	pClickHi
	smpsFMAlterVol      $50
	smpsFMAlterVol      $FB
	dc.b	pClickLo, $0C
	smpsFMAlterVol      $05
	smpsFMAlterVol      $B0
	dc.b	pClickHi, $0C, $0C
	smpsFMAlterVol      $50
	smpsReturn

JustAnotherDay_Voices:
	; Voice $00
	; $3A
	; $01, $05, $32, $71,	$CF, $95, $1F, $1F
	; $0E, $0F, $05, $0C,	$17, $06, $06, $07
	; $8F, $4F, $4F, $4F,	$21, $13, $24, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $00, $00
	smpsVcCoarseFreq    $01, $02, $05, $01
	smpsVcRateScale     $00, $00, $02, $03
	smpsVcAttackRate    $1F, $1F, $15, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $05, $0F, $0E
	smpsVcDecayRate2    $07, $06, $06, $17
	smpsVcDecayLevel    $04, $04, $04, $08
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $24, $13, $21

	; Voice $01
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

	; Voice $02
	; $3C
	; $01, $06, $00, $00,	$5F, $5F, $15, $1F
	; $11, $0D, $12, $05,	$07, $14, $09, $02
	; $5D, $5D, $2A, $1F,	$0E, $80, $07, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $06, $01
	smpsVcRateScale     $00, $00, $01, $01
	smpsVcAttackRate    $1F, $15, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $12, $0D, $11
	smpsVcDecayRate2    $02, $09, $14, $07
	smpsVcDecayLevel    $01, $02, $05, $05
	smpsVcReleaseRate   $0F, $0A, $0D, $0D
	smpsVcTotalLevel    $80, $07, $80, $0E

	; Voice $03
	; $1C
	; $32, $02, $04, $34,	$5A, $5F, $5F, $FF
	; $05, $05, $05, $07,	$15, $14, $21, $17
	; $9F, $8F, $5F, $AF,	$30, $80, $02, $84
	smpsVcAlgorithm     $04
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $00, $03
	smpsVcCoarseFreq    $04, $04, $02, $02
	smpsVcRateScale     $03, $01, $01, $01
	smpsVcAttackRate    $3F, $1F, $1F, $1A
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $05, $05, $05
	smpsVcDecayRate2    $17, $21, $14, $15
	smpsVcDecayLevel    $0A, $05, $08, $09
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $84, $02, $80, $30

	; Voice $04
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

	; Voice $05
	; $3D
	; $01, $01, $01, $01,	$94, $19, $19, $19
	; $0F, $0D, $0D, $0D,	$07, $04, $04, $04
	; $25, $1A, $1A, $1A,	$15, $80, $80, $80
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
	smpsVcTotalLevel    $80, $80, $80, $15

	; Voice $06
	; $3A
	; $02, $09, $01, $02,	$8E, $8E, $8D, $55
	; $0E, $0E, $0E, $04,	$00, $00, $00, $09
	; $1F, $FF, $3F, $4F,	$16, $29, $1E, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $09, $02
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $15, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $0E, $0E, $0E
	smpsVcDecayRate2    $09, $00, $00, $00
	smpsVcDecayLevel    $04, $03, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1E, $29, $16

	; Voice $07
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

	; Voice $08
	; $2D
	; $06, $05, $04, $10,	$1F, $5F, $5F, $5F
	; $05, $07, $0C, $0C,	$17, $17, $12, $18
	; $9F, $9C, $9C, $9C,	$2D, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $00, $00
	smpsVcCoarseFreq    $00, $04, $05, $06
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0C, $07, $05
	smpsVcDecayRate2    $18, $12, $17, $17
	smpsVcDecayLevel    $09, $09, $09, $09
	smpsVcReleaseRate   $0C, $0C, $0C, $0F
	smpsVcTotalLevel    $80, $80, $80, $2D

	; Voice $09
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

	; Voice $0A
	; $01
	; $76, $75, $72, $33,	$D5, $57, $9F, $FF
	; $02, $0B, $05, $0B,	$0A, $0A, $0F, $09
	; $FF, $2F, $3F, $FF,	$1E, $28, $16, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $07
	smpsVcCoarseFreq    $03, $02, $05, $06
	smpsVcRateScale     $03, $02, $01, $03
	smpsVcAttackRate    $3F, $1F, $17, $15
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $05, $0B, $02
	smpsVcDecayRate2    $09, $0F, $0A, $0A
	smpsVcDecayLevel    $0F, $03, $02, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $16, $28, $1E

	; Voice $0B
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

	; Voice $0C
	; $3C
	; $43, $08, $73, $54,	$5E, $5E, $5E, $9E
	; $0C, $0C, $08, $08,	$0C, $0C, $15, $15
	; $8F, $9F, $8F, $CF,	$41, $80, $28, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $07, $00, $04
	smpsVcCoarseFreq    $04, $03, $08, $03
	smpsVcRateScale     $02, $01, $01, $01
	smpsVcAttackRate    $1E, $1E, $1E, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $08, $0C, $0C
	smpsVcDecayRate2    $15, $15, $0C, $0C
	smpsVcDecayLevel    $0C, $08, $09, $08
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $28, $80, $41

	; Voice $0D
	; $01
	; $75, $75, $71, $31,	$D5, $55, $96, $94
	; $02, $0B, $05, $0D,	$0A, $0A, $0F, $06
	; $FF, $2F, $3F, $6F,	$25, $2B, $0F, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $07
	smpsVcCoarseFreq    $01, $01, $05, $05
	smpsVcRateScale     $02, $02, $01, $03
	smpsVcAttackRate    $14, $16, $15, $15
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $05, $0B, $02
	smpsVcDecayRate2    $06, $0F, $0A, $0A
	smpsVcDecayLevel    $06, $03, $02, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $0F, $2B, $25

	; Voice $0E
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

	; Voice $0F
	; $07
	; $38, $02, $01, $08,	$FF, $CF, $FF, $BF
	; $07, $0B, $0B, $00,	$05, $00, $00, $00
	; $6F, $1F, $2F, $0F,	$80, $80, $80, $84
	smpsVcAlgorithm     $07
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $03
	smpsVcCoarseFreq    $08, $01, $02, $08
	smpsVcRateScale     $02, $03, $03, $03
	smpsVcAttackRate    $3F, $3F, $0F, $3F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0B, $0B, $07
	smpsVcDecayRate2    $00, $00, $00, $05
	smpsVcDecayLevel    $00, $02, $01, $06
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $84, $80, $80, $80

	; Voice $10
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

	; Voice $11
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

	; Voice $12
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
