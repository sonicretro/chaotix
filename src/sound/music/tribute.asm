Tribute_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Tribute_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $2C
	smpsHeaderFM        Tribute_FM1, $00, $0D
	smpsHeaderFM        Tribute_FM2, $00, $16
	smpsHeaderFM        Tribute_FM3, $00, $16
	smpsHeaderFM        Tribute_FM4, $00, $16
	smpsHeaderFM        Tribute_FM5, $0C, $15
	smpsHeaderFM        Tribute_FM6, $0C, $17
	smpsHeaderPSG       Tribute_PSG1, $F4, $03, $00, cTone_0C
	smpsHeaderPSG       Tribute_PSG2, $F4, $03, $00, cTone_0C
	smpsHeaderPSG       Tribute_PSG3, $23, $02, $00, cTone_02
	smpsHeaderPWM       Tribute_PWM1, $AA
	smpsHeaderPWM       Tribute_PWM2, $BB
	smpsHeaderPWM       Tribute_PWM3, $BB
	smpsHeaderPWM       Tribute_PWM4, $32

Tribute_FM1:
	smpsFMvoice         $00
	smpsCall            Tribute_Call1
	dc.b	smpsNoAttack, $12, nD2, $06, nRst, $24, nD2, $06
	dc.b	nRst, nRst, nD2, nRst, nD2, smpsNoAttack, $06, nD2
	dc.b	$06, nD3, nD2, nD3, nD2, nRst, nD2, $0C
	dc.b	$06, nD3, nD2, nC2, nCs2, nD2, nF2
	smpsCall            Tribute_Call1
	dc.b	smpsNoAttack, $12, nD2, $06, nRst, $24, nD2, $06
	dc.b	nRst, nRst, nD2, nRst, nG1
	smpsSetTempoMod     $1B
	dc.b	smpsNoAttack, $60, smpsNoAttack, $48, nRst, $18

Tribute_Loop1:
	dc.b	nC2, $18, $0C, $0C, $12, $06, nRst, nC3
	dc.b	nRst, nB1, smpsNoAttack, $18, $0C, $0C, $12, $0C
	dc.b	nG2, $06, nG1, $0C, nA1, $18, $0C, $0C
	dc.b	$12, $06, nRst, nA2, nRst, nG1, smpsNoAttack, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C, nC2, nD2
	dc.b	$18, $0C, $0C, $12, $06, nRst, nD3, nRst
	dc.b	nBb1, smpsNoAttack, $0C, $0C, $0C, $0C, $12, $12
	dc.b	nBb2, $06, nRst, nA1, $18, $0C, $0C, $12
	dc.b	$06, nRst, nA2, nRst, nF1, smpsNoAttack, $0C, $0C
	dc.b	$0C, $0C, nE1, $0C, $0C, $0C, nD2
	smpsLoop            $00, $02, Tribute_Loop1
	dc.b	nA1, $24, nAb1, $30, nG1, $0C, smpsNoAttack, $24
	dc.b	nFs1, $30, nF1, $0C, smpsNoAttack, $4E, nRst, $06
	dc.b	nG1, $0C, smpsNoAttack, $60
	smpsCall            Tribute_Call2
	smpsStop

Tribute_Call1:
	dc.b	nD2, $12, $06, nRst, $24, nD2, $06, nRst
	dc.b	nRst, nD2, nRst, nD2, smpsNoAttack, $12, nD2, $06
	dc.b	nRst, $1E, nD3, $06, nD2, nRst, nRst, nD2
	dc.b	nRst, nD2
	smpsReturn

Tribute_Call2:
	dc.b	nRst, $06, nC2, nD2, nG2, nF2, nE2, nG1
	dc.b	nC2, smpsNoAttack, $06, nG2, nF2, nC3, nG2, nC3
	dc.b	nD3, nG3, smpsNoAttack, $06, nF2, nE2, nC2, nF1
	dc.b	nG1, nA1, nC2, smpsNoAttack, $06
	smpsReturn

Tribute_FM2:
	smpsFMvoice         $01
	dc.b	nE4, $12, nD4, $06
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nG4
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nF4, nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD4
	smpsFMvoice         $02
	smpsAlterPitch      $18
	smpsCall            Tribute_Call3
	smpsFMvoice         $01
	smpsAlterPitch      $E8
	smpsCall            Tribute_Call3
	dc.b	nEb4, $06, smpsNoAttack, $12, $18, nF4, $18, $18
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nE4, $12, nD4, $06
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nG4
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nF4, nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD4
	smpsFMvoice         $02
	smpsAlterPitch      $18
	smpsCall            Tribute_Call3
	smpsFMvoice         $01
	smpsAlterPitch      $E8
	smpsCall            Tribute_Call3
	dc.b	nC4, $06, smpsNoAttack, $60, smpsNoAttack, $48, nRst, $18

Tribute_Loop2:
	dc.b	nRst, $18, nE4, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nE4, $0C
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
	dc.b	nD4, smpsNoAttack, $60
	smpsLoop            $00, $03, Tribute_Loop2
	dc.b	nRst, $18, nE4, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nE4, $0C
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
	dc.b	nE4, smpsNoAttack, $30, nD4, $18, nG4
	smpsLoop            $01, $02, Tribute_Loop2
	dc.b	nE4, $1E
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF4, $2A
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nE4, $2A
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nE4, $2A
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nE4, $0C, smpsNoAttack, $4E
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD4, $0C, smpsNoAttack, $60
	smpsCall            Tribute_Call4
	smpsStop

Tribute_Call3:
	dc.b	nE4, $06, smpsNoAttack, $12, nD4, $06
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nG4
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nF4, nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD4
	smpsReturn

Tribute_Call4:
	smpsAlterPitch      $18
	dc.b	nRst, $06, nC2, nD2, nG2, nF2, nE2, nG1
	dc.b	nC2
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG2, nF2, nC3, nG2, nC3, nD3, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF2, nE2, nC2, nF1, nG1, nA1, nC2
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsAlterPitch      $E8
	smpsReturn

Tribute_FM3:
	smpsFMvoice         $01
	dc.b	nC4, $12, nB3, $06
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nD4
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nC4, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nA3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nB3
	smpsFMvoice         $02
	smpsAlterPitch      $18
	smpsPan             panLeft, $00
	smpsCall            Tribute_Call5
	smpsFMvoice         $01
	smpsAlterPitch      $E8
	smpsPan             panCenter, $00
	smpsCall            Tribute_Call5
	dc.b	nBb3, $06, smpsNoAttack, $12, $18, nC4, $18, $18
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4, $12, nB3, $06
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nD4
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nC4, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nA3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nB3
	smpsFMvoice         $02
	smpsAlterPitch      $18
	smpsPan             panLeft, $00
	smpsCall            Tribute_Call5
	smpsFMvoice         $01
	smpsAlterPitch      $E8
	smpsPan             panCenter, $00
	smpsCall            Tribute_Call5
	dc.b	nA3, $06, smpsNoAttack, $60, smpsNoAttack, $48, nRst, $18

Tribute_Loop3:
	dc.b	nRst, $18, nC4, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$0C
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
	dc.b	nB3, smpsNoAttack, $60
	smpsLoop            $00, $02, Tribute_Loop3
	dc.b	nRst, $18, nC4, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$0C
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
	dc.b	nBb3, smpsNoAttack, $60, nRst, $18, nC4, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$0C
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
	dc.b	nC4, smpsNoAttack, $30, nB3, $18, nD4
	smpsLoop            $01, $02, Tribute_Loop3
	dc.b	nC4, $1E
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4, $2A
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4, $2A
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4, $2A
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4, $0C, smpsNoAttack, $4E
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nB3, $0C, smpsNoAttack, $60
	smpsAlterPitch      $F4
	smpsCall            Tribute_Call4
	smpsAlterPitch      $0C
	smpsStop

Tribute_Call5:
	dc.b	nC4, $06, smpsNoAttack, $12, nB3, $06
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nD4
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nC4, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nA3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nB3
	smpsReturn

Tribute_FM4:
	smpsFMvoice         $01
	dc.b	nG3, $12, $06
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nBb3
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nG3, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3
	smpsFMvoice         $02
	smpsAlterPitch      $18
	smpsPan             panRight, $00
	smpsCall            Tribute_Call6
	smpsFMvoice         $01
	smpsAlterPitch      $E8
	smpsPan             panCenter, $00
	smpsCall            Tribute_Call6
	dc.b	nG3, $06, smpsNoAttack, $12, $18, nA3, $18, $18
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3, $12, $06
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nBb3
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nG3, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3
	smpsFMvoice         $02
	smpsAlterPitch      $18
	smpsPan             panRight, $00
	smpsCall            Tribute_Call6
	smpsFMvoice         $01
	smpsAlterPitch      $E8
	smpsPan             panCenter, $00
	smpsCall            Tribute_Call6
	dc.b	nF3, $06, smpsNoAttack, $60, smpsNoAttack, $48, nRst, $18

Tribute_Loop4:
	dc.b	nRst, $18, nG3, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$0C
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
	dc.b	nG3, smpsNoAttack, $60
	smpsLoop            $00, $02, Tribute_Loop4
	dc.b	nRst, $18, nG3, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$0C
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
	dc.b	nF3, smpsNoAttack, $60, nRst, $18, nG3, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$0C
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
	dc.b	nA3, smpsNoAttack, $30, nAb3, $18, nB3
	smpsLoop            $01, $02, Tribute_Loop4
	dc.b	nG3, $1E
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nAb3, $2A
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3, $2A
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nA3, $2A
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nA3, $0C, smpsNoAttack, $4E
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3, $0C, smpsNoAttack, $60, nRst, $60
	smpsStop

Tribute_Call6:
	dc.b	nG3, $06, smpsNoAttack, $12, nG3, $06
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nBb3
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nG3, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3
	smpsReturn

Tribute_FM5:
	smpsFMvoice         $02

Tribute_Jump1:
	dc.b	nRst, $60, nRst, nRst, nRst, $0C, nEb4, $06
	dc.b	nF4, nG4, nD5, $12, nRst, $0C, nF4, $06
	dc.b	nG4, nA4, nG5, $12, nRst, $60, nRst, $60
	dc.b	nRst, $5A, nD7, $06, nF6, nE6, nC6, nG5
	dc.b	nF6, nE6, nC6, nG5, nF5, nE5, nC5, nG4
	dc.b	nF4, nE4, nC4, nG3, nF3, $48, nRst, $18

Tribute_Loop5:
	dc.b	nRst, $60, nRst, $0C, nC4, $06, nD4, nG4
	dc.b	nC5, nD5, nG5, nC5, nD5, nG5, nD5, nG5
	dc.b	nC6, nG5, nD5, nRst, $60, nRst, $0C, nC5
	dc.b	$06, nG5, nC5, nD5, nG5, nA5, nC5, nG4
	dc.b	nC5, nD5, nG5, nC5, nD5, nG5, nRst, $60
	dc.b	nRst, $0C, nG4, $06, nA4, nC5, nA4, nC5
	dc.b	nD5, nG5, nF5, nC5, nD5, nG4, nD4, nC5
	dc.b	nD5, nRst, $60, nG5, $06, nF5, nC5, nA4
	dc.b	nG5, nF5, nC5, nA4, nG5, nF5, nD5, nB4
	dc.b	nAb4, nA4, nB4, nD5
	smpsLoop            $00, $02, Tribute_Loop5
	dc.b	nRst, $0C, nG4, $06, nC5, nD5, nE5, nF5
	dc.b	$0C, nRst, $30, nRst, $0C, nG4, $06, nC5
	dc.b	nD5, nE5, nA5, $0C, nRst, $30, nRst, $0C
	dc.b	nA5, nG5, nF5, nE5, $18, nC5, $0C, nD5
	dc.b	smpsNoAttack, $0C, nB4, nC5, nD5, nD4, $06, nG4
	dc.b	nA4, nD5, nG4, nA4, nD5, nG5
	smpsAlterPitch      $18
	smpsCall            Tribute_Call2
	smpsAlterPitch      $E8
	smpsStop

Tribute_FM6:
	smpsFMvoice         $02
	smpsPan             panRight, $00
	smpsModSet          $01, $01, $03, $05
	smpsPitchSlideSpeed $04
	dc.b	nRst, $06
	smpsJump            Tribute_Jump1

	; Unused data
	smpsStop

Tribute_PSG1:
	smpsPSGvoice        cTone_04
	smpsModSet          $04, $01, $03, $03
	dc.b	nD3, $60, smpsNoAttack, $60, smpsNoAttack, $60, smpsNoAttack, $60
	dc.b	nD3, $60, smpsNoAttack, $60, smpsNoAttack, $5A, nG3, $06
	dc.b	smpsNoAttack, $60, smpsNoAttack, $48, nRst, $18
	smpsModSet          $00, $00, $00, $00
	smpsPSGAlterVol     $FD

Tribute_Jump2:
	smpsPSGvoice        cTone_08
	smpsCall            Tribute_Call7
	dc.b	smpsNoAttack, $06, nF3, nG3, nA3, nB3, $02, nC4
	dc.b	nB3, nG3, $06, nA3, nB3, nC4, nA3, nB3
	dc.b	nC4, nD4, nE4, nF4, nA4
	smpsCall            Tribute_Call7
	dc.b	smpsNoAttack, $0C, nA3, nB3, nC4, $06, nRst, nD4
	dc.b	$0C, nE4, $06, nRst, nF4, $0C, nD4, $06
	dc.b	nRst, nG4, $1E, nRst, $06, nAb4, $18, nG4
	dc.b	$06, nRst, nF4, nRst, nE4, $0C, smpsNoAttack, $0C
	dc.b	nD4, nC4, $06, nRst, nD4, $18, nA3, $0C
	dc.b	nB3, $06, nRst, nC4, $0C, smpsNoAttack, $3C, nB3
	dc.b	$0C, nC4, $06, nRst, nD4, $0C, smpsNoAttack, $3C
	dc.b	nG4, $0C, nD5, nG5
	smpsAlterPitch      $18
	smpsCall            Tribute_Call2
	smpsAlterPitch      $E8
	smpsStop

Tribute_Call7:
	dc.b	nFs4, $03, nG4, $33, nRst, $06, nB4, nRst
	dc.b	nC5, nD5, nRst, nFs4, $03, nG4, $03, smpsNoAttack
	dc.b	$36, nRst, $06, nE4, nRst, nD4, nC4, nRst
	dc.b	nFs4, $02, nG4, $04, smpsNoAttack, $36, nRst, $06
	dc.b	nB4, nRst, nC5, nD5, nRst, nG4, smpsNoAttack, $12
	dc.b	nRst, $06, nE4, $12, nRst, $06, nD4, $12
	dc.b	nRst, $06, nE4, $0C, nRst, $06, nC4, smpsNoAttack
	dc.b	$36, nRst, $06, nC5, nRst, nB4, nC5, nRst
	dc.b	nC4, smpsNoAttack, $36, nRst, $06, nC5, nRst, nB4
	dc.b	nC5, nRst, nC4, smpsNoAttack, $3C, nE4, $0C, nD4
	dc.b	nC4
	smpsReturn

Tribute_PSG2:
	smpsPSGvoice        cTone_04
	smpsModSet          $06, $01, $02, $03
	dc.b	nD2, $60, smpsNoAttack, $60, smpsNoAttack, $60, smpsNoAttack, $60
	dc.b	nD2, $60, smpsNoAttack, $60, smpsNoAttack, $5A, nG2, $06
	dc.b	smpsNoAttack, $60, smpsNoAttack, $48, nRst, $18
	smpsPSGAlterVol     $FF
	smpsModSet          $01, $01, $02, $03
	dc.b	nRst, $06
	smpsJump            Tribute_Jump2

	; Unused data
	smpsStop

Tribute_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        cTone_02
	dc.b	nC4, $18, $18, $18, $06, $06, $06
	smpsPSGvoice        cTone_05
	dc.b	$06, nRst, $18
	smpsPSGvoice        cTone_02
	dc.b	nC4, $18, $18, $06
	smpsPSGvoice        cTone_05
	dc.b	$06
	smpsPSGvoice        cTone_02
	dc.b	$06
	smpsPSGvoice        cTone_05
	dc.b	$06
	smpsPSGvoice        cTone_02
	dc.b	nRst, $18, nC4, $18, $18, $06, $06, $06
	smpsPSGvoice        cTone_05
	dc.b	$06, nRst, $12, nC4, $06
	smpsPSGvoice        cTone_02
	dc.b	$06
	smpsPSGvoice        cTone_05
	dc.b	$06
	smpsPSGvoice        cTone_02
	dc.b	$06
	smpsPSGvoice        cTone_05
	dc.b	$06
	smpsPSGvoice        cTone_02
	dc.b	nRst, $0C, nC4, $06
	smpsPSGvoice        cTone_05
	dc.b	$06
	smpsPSGvoice        cTone_02
	dc.b	$06
	smpsPSGvoice        cTone_05
	dc.b	$06
	smpsPSGvoice        cTone_02
	dc.b	$0C
	smpsPSGvoice        cTone_02
	dc.b	nC4, $18, $18, $18, $06, $06, $06
	smpsPSGvoice        cTone_05
	dc.b	$06
	smpsPSGvoice        cTone_02
	dc.b	nRst, $18, nC4, $18, $18, $06
	smpsPSGvoice        cTone_05
	dc.b	$06
	smpsPSGvoice        cTone_02
	dc.b	$06
	smpsPSGvoice        cTone_05
	dc.b	$06
	smpsPSGvoice        cTone_02
	dc.b	nRst, $18, nC4, $18, $18, $06, $06, $06
	smpsPSGvoice        cTone_05
	dc.b	$06, nRst, $60, nRst

Tribute_Loop6:
	smpsCall            Tribute_Call8
	dc.b	nRst, $0C
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C, $0C, $0C, $0C, $0C, nRst, $18
	smpsCall            Tribute_Call8
	dc.b	nRst, $0C
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C, $0C, $0C, nRst, $30
	smpsLoop            $00, $02, Tribute_Loop6
	dc.b	smpsNoAttack, $18
	smpsPSGvoice        cTone_02
	dc.b	nC4, nRst, nC4, nRst, nC4, nRst, nC4, nRst
	dc.b	nC4, nRst, nC4, nRst, nC4
	smpsStop

Tribute_Call8:
	smpsPSGvoice        cTone_02
	dc.b	$0C, $0C, $0C, $0C, $0C, $06, $06, $06
	smpsPSGvoice        cTone_05
	dc.b	$06
	smpsPSGvoice        cTone_02
	dc.b	$06
	smpsPSGvoice        cTone_05
	dc.b	$06, nRst, $0C
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C, $0C, $0C, $0C, $0C, $0C, $06
	dc.b	$06
	smpsPSGvoice        cTone_02
	dc.b	$0C, $0C, $0C, $0C, $0C, $06, $06, $06
	smpsPSGvoice        cTone_05
	dc.b	$06
	smpsPSGvoice        cTone_02
	dc.b	$06
	smpsPSGvoice        cTone_05
	dc.b	$06
	smpsReturn

Tribute_PWM1:
	dc.b	pKick, $5A, $06, nRst, $5A, pKick, $06, nRst
	dc.b	$5A, pKick, $06, nRst, $2A, pKick, $36, pKick
	dc.b	$5A, $06, nRst, $5A, pKick, $06, nRst, $5A
	dc.b	pKick, $06, nRst, $60, nRst, $3C, pKick, $06
	dc.b	$06, nRst, $18

Tribute_Loop7:
	dc.b	pKick, $18, $18, $12, $06, nRst, pKick, nRst
	dc.b	pKick, nRst, $18, pKick, $18, $12, $12, $0C
	dc.b	pKick, $18, $18, $12, $06, nRst, pKick, nRst
	dc.b	pKick, nRst, $18, pKick, pKick, pKick
	smpsLoop            $00, $04, Tribute_Loop7
	dc.b	pKick, $24, $30, $0C, nRst, $24, pKick, $30
	dc.b	$0C, nRst, $54, pKick, $0C, nRst, $60, nRst
	dc.b	$2A, pKick, $06, nRst, $2A, pKick, $06, nRst
	dc.b	$2A, pKick, $06
	smpsStop

Tribute_PWM2:
	dc.b	$96, $48, pElecSnare, $18, nRst, $48, pElecSnare, $06
	dc.b	pTomMid, $06
	smpsFMAlterVol      $90
	dc.b	pTomLo, $0C
	smpsFMAlterVol      $70
	dc.b	nRst, $48, pElecSnare, $18, nRst, $30, pElecSnare, $06
	smpsFMAlterVol      $F9
	dc.b	pTomHi
	smpsFMAlterVol      $07
	dc.b	pTomMid, pElecSnare
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	dc.b	pElecSnare, pElecSnare, pElecSnare, $96, $48, pElecSnare, $18, nRst
	dc.b	$48, pElecSnare, $06, pTomMid, $06
	smpsFMAlterVol      $90
	dc.b	pTomLo, $0C
	smpsFMAlterVol      $70
	dc.b	nRst, $48, pElecSnare, $18, nRst, $60, nRst, $48
	dc.b	pElecSnare, $18

Tribute_Loop8:
	dc.b	nRst, $18, pElecSnare, nRst, pElecSnare, nRst, pElecSnare, nRst
	dc.b	pElecSnare, nRst, pElecSnare, nRst, pElecSnare, nRst, pElecSnare, nRst
	dc.b	pElecSnare, $06
	smpsFMAlterVol      $F9
	dc.b	pTomHi
	smpsFMAlterVol      $07
	dc.b	pTomMid, pElecSnare, nRst, $18, pElecSnare, nRst, pElecSnare, nRst
	dc.b	pElecSnare, nRst, pElecSnare, nRst, pElecSnare, nRst, pElecSnare, nRst
	dc.b	pElecSnare, nRst, $06
	smpsFMAlterVol      $07
	dc.b	pTomHi
	smpsFMAlterVol      $F9
	dc.b	pTomMid, pElecSnare, nRst, pElecSnare, pElecSnare, pElecSnare
	smpsLoop            $00, $02, Tribute_Loop8
	dc.b	nRst, $3C, pElecSnare, $0C
	smpsFMAlterVol      $F9
	dc.b	pTomHi, $04
	smpsFMAlterVol      $07
	dc.b	pTomMid
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	dc.b	nRst, $0C, nRst, $3C, pElecSnare, $06, pElecSnare, pElecSnare
	dc.b	pElecSnare, nRst, $0C, nRst, $60, nRst, $36
	smpsFMAlterVol      $F9
	dc.b	pTomHi, $06
	smpsFMAlterVol      $07
	dc.b	pTomMid
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	dc.b	pElecSnare, pElecSnare, pElecSnare, pElecSnare, nRst, pElecSnare, pElecSnare, pElecSnare
	dc.b	pElecSnare, pElecSnare, pElecSnare, nRst, nRst, pElecSnare
	smpsFMAlterVol      $F9
	dc.b	pTomHi
	smpsFMAlterVol      $07
	dc.b	pTomMid, pElecSnare
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	dc.b	pElecSnare, nRst, nRst, pElecSnare, pElecSnare, pTomMid, pElecSnare
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	dc.b	pElecSnare, nRst
	smpsStop

Tribute_PWM3:
	smpsFMAlterVol      $80
	dc.b	pCrash, $60, nRst, $60, nRst, $5A, pCrash, $06
	dc.b	nRst, $2A
	smpsFMAlterVol      $80
	smpsFMAlterVol      $F8
	dc.b	pSplash, $36
	smpsFMAlterVol      $08
	smpsFMAlterVol      $80
	dc.b	pCrash, $60, nRst, $60, nRst, $5A, pCrash, $06
	dc.b	nRst, $60
	smpsFMAlterVol      $80
	dc.b	nRst, $48
	smpsFMAlterVol      $F8
	dc.b	pSplash, $18
	smpsFMAlterVol      $08

Tribute_Loop9:
	smpsFMAlterVol      $80
	dc.b	pCrash, $60, nRst, nRst, nRst, pCrash, nRst, nRst
	smpsFMAlterVol      $80
	dc.b	nRst, $30
	smpsFMAlterVol      $F8
	dc.b	pSplash
	smpsFMAlterVol      $08
	smpsLoop            $00, $02, Tribute_Loop9
	smpsFMAlterVol      $80
	dc.b	pCrash, $24
	smpsFMAlterVol      $80
	smpsFMAlterVol      $F8
	dc.b	pSplash, $30
	smpsFMAlterVol      $08
	smpsFMAlterVol      $80
	dc.b	pCrash, $0C, nRst, $24
	smpsFMAlterVol      $80
	smpsFMAlterVol      $F8
	dc.b	pSplash, $30
	smpsFMAlterVol      $08
	smpsFMAlterVol      $80
	dc.b	pCrash, $0C, nRst, $54
	smpsFMAlterVol      $80
	smpsFMAlterVol      $F8
	dc.b	pSplash, $0C, nRst, $60
	smpsFMAlterVol      $08
	dc.b	nRst, $2A
	smpsFMAlterVol      $80
	dc.b	pCrash, $06, nRst, $2A
	smpsFMAlterVol      $80
	smpsFMAlterVol      $F8
	dc.b	pSplash, $06, nRst, $2A
	smpsFMAlterVol      $80
	dc.b	pCrash, $06, nRst, $60
	smpsFMAlterVol      $80
	smpsStop

Tribute_PWM4:
	smpsCall            Tribute_Call9
	smpsLoop            $01, $04, Tribute_PWM4

Tribute_Loop10:
	smpsCall            Tribute_Call9
	smpsLoop            $01, $03, Tribute_Loop10
	smpsCall            Tribute_Call10

Tribute_Loop11:
	smpsCall            Tribute_Call9
	smpsLoop            $01, $10, Tribute_Loop11
	smpsCall            Tribute_Call9
	smpsCall            Tribute_Call9
	smpsCall            Tribute_Call10
	smpsStop

Tribute_Call9:
	dc.b	pElecHiHat, $06, $06
	smpsFMAlterVol      $44
	dc.b	$06
	smpsFMAlterVol      $BC
	dc.b	$06
	smpsLoop            $00, $04, Tribute_Call9
	smpsReturn

Tribute_Call10:
	dc.b	pElecHiHat, $04
	smpsLoop            $00, $0C, Tribute_Call10
	smpsFMAlterVol      $EF
	smpsLoop            $01, $02, Tribute_Call10
	dc.b	pElecHiHat, $60
	smpsFMAlterVol      $22
	smpsReturn

Tribute_Voices:
	; Voice $00
	; $3B
	; $53, $31, $02, $03,	$DF, $9F, $5F, $9F
	; $17, $08, $0E, $07,	$0F, $0E, $0D, $02
	; $5F, $7F, $3F, $5F,	$0C, $16, $1F, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $03, $05
	smpsVcCoarseFreq    $03, $02, $01, $03
	smpsVcRateScale     $02, $01, $02, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $0E, $08, $17
	smpsVcDecayRate2    $02, $0D, $0E, $0F
	smpsVcDecayLevel    $05, $03, $07, $05
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1F, $16, $0C

	; Voice $01
	; $3D
	; $52, $02, $04, $01,	$94, $19, $19, $19
	; $11, $0D, $0D, $0D,	$07, $04, $04, $04
	; $35, $1A, $1A, $1A,	$0D, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $05
	smpsVcCoarseFreq    $01, $04, $02, $02
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $19, $19, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0D, $0D, $11
	smpsVcDecayRate2    $04, $04, $04, $07
	smpsVcDecayLevel    $01, $01, $01, $03
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $80, $80, $80, $0D

	; Voice $02
	; $1F
	; $26, $32, $07, $11,	$9F, $9F, $9F, $9F
	; $06, $07, $09, $07,	$0D, $0F, $0D, $11
	; $9C, $9C, $9C, $9C,	$80, $80, $80, $80
	smpsVcAlgorithm     $07
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $03, $02
	smpsVcCoarseFreq    $01, $07, $02, $06
	smpsVcRateScale     $02, $02, $02, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $09, $07, $06
	smpsVcDecayRate2    $11, $0D, $0F, $0D
	smpsVcDecayLevel    $09, $09, $09, $09
	smpsVcReleaseRate   $0C, $0C, $0C, $0C
	smpsVcTotalLevel    $80, $80, $80, $80
