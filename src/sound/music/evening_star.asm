EveningStar_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     EveningStar_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $46
	smpsHeaderFM        EveningStar_FM1, $00, $0A
	smpsHeaderFM        EveningStar_FM2, $00, $10
	smpsHeaderFM        EveningStar_FM3, $00, $10
	smpsHeaderFM        EveningStar_FM4, $00, $10
	smpsHeaderFM        EveningStar_FM5, $00, $13
	smpsHeaderFM        EveningStar_FM6, $00, $10
	smpsHeaderPSG       EveningStar_PSG1, $F4, $01, $00, cTone_0C
	smpsHeaderPSG       EveningStar_PSG2, $F4, $02, $00, cTone_0C
	smpsHeaderPSG       EveningStar_PSG3, $23, $02, $00, cTone_02
	smpsHeaderPWM       EveningStar_PWM1, $AA
	smpsHeaderPWM       EveningStar_PWM2, $99
	smpsHeaderPWM       EveningStar_PWM3, $AA
	smpsHeaderPWM       EveningStar_PWM4, $75

EveningStar_FM1:
	smpsFMvoice         $00
	dc.b	nEb2, $60, nD2, $60, nG1, $60, smpsNoAttack, $30
	dc.b	nG1, $08, nG2, $0C, nG1, $04, nBb1, $08
	dc.b	nA1, $04, nG1, $08, nF1, $04

EveningStar_Loop1:
	smpsCall            EveningStar_Call1
	dc.b	nRst, $0C, nG2, nRst, $08, nC2, $04, nD2
	dc.b	$08, nF2, $04, nG1, $04, nF1, nG1, nG2
	dc.b	$08, nG1, $04, nRst, $08, nG2, $04, nRst
	dc.b	$0C, nRst, $18, nRst, $08, nG1, $04, nG2
	dc.b	$08, nF2, $04
	smpsCall            EveningStar_Call1
	dc.b	nRst, $0C, nG2, $08, nRst, $04, nRst, $08
	dc.b	nG2, $0C, $04, nG1, $08, nG2, $0C, $04
	dc.b	nA1, $08, nA2, $0C, $04, nBb1, $08, nBb2
	dc.b	$0C, $04, nC2, $08, nC3, $0C, $04
	smpsLoop            $00, $02, EveningStar_Loop1
	smpsJump            EveningStar_Loop1

EveningStar_Call1:
	dc.b	nEb2, $04, nD2, nEb2, nEb3, $08, nEb2, $04
	dc.b	nRst, $08, nEb2, $04, nRst, $0C, nRst, $0C
	dc.b	nEb2, nRst, $08, nD2, $04, nEb2, $08, nF2
	dc.b	$04, nD2, $04, nC2, nD2, nD3, $08, nD2
	dc.b	$04, nRst, $18, nRst, $0C, nD2, nRst, $08
	dc.b	nC2, $04, nD2, $08, nF2, $04, nG1, $04
	dc.b	nF1, nG1, nG2, $08, nG1, $04, nRst, $08
	dc.b	nG2, $04, nRst, $0C
	smpsReturn

EveningStar_FM2:
	smpsFMvoice         $01
	smpsAlterPitch      $F9
	smpsCall            EveningStar_Call2
	smpsAlterPitch      $04
	smpsCall            EveningStar_Call3
	smpsAlterPitch      $FF
	smpsCall            EveningStar_Call2
	smpsCall            EveningStar_Call4
	smpsAlterPitch      $04
	smpsFMvoice         $02

EveningStar_Loop2:
	smpsCall            EveningStar_Call5
	dc.b	nRst, $60
	smpsLoop            $00, $02, EveningStar_Loop2
	smpsJump            EveningStar_Loop2

EveningStar_Call5:
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

EveningStar_FM3:
	smpsFMvoice         $01
	smpsCall            EveningStar_Call2
	smpsCall            EveningStar_Call3
	smpsCall            EveningStar_Call2
	smpsCall            EveningStar_Call4
	smpsFMAlterVol      $FB

EveningStar_Loop3:
	smpsCall            EveningStar_Call2
	smpsCall            EveningStar_Call3
	smpsCall            EveningStar_Call2
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
	smpsCall            EveningStar_Call6
	smpsCall            EveningStar_Call2
	smpsCall            EveningStar_Call3
	smpsCall            EveningStar_Call2
	smpsCall            EveningStar_Call4
	smpsLoop            $01, $02, EveningStar_Loop3
	smpsJump            EveningStar_Loop3

EveningStar_Call2:
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

EveningStar_Call3:
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

EveningStar_Call6:
	smpsFMAlterVol      $FE
	dc.b	nRst, $08, nF3, $04, nG3, $08, nBb3, $0C
	dc.b	nG3, $04, nBb3, $08, nC4, $04
	smpsFMAlterVol      $02
	smpsReturn

EveningStar_Call4:
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nD4, $08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsLoop            $00, $08, EveningStar_Call4
	smpsReturn

EveningStar_FM4:
	smpsFMvoice         $01
	smpsAlterPitch      $FC
	smpsCall            EveningStar_Call7
	smpsAlterPitch      $FE
	smpsCall            EveningStar_Call8
	smpsAlterPitch      $FD
	smpsCall            EveningStar_Call7
	smpsCall            EveningStar_Call9
	smpsAlterPitch      $09
	smpsFMAlterVol      $FB

EveningStar_Loop4:
	smpsAlterPitch      $FC
	smpsCall            EveningStar_Call7
	smpsAlterPitch      $FE
	smpsCall            EveningStar_Call8
	smpsAlterPitch      $FD
	smpsCall            EveningStar_Call7
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
	smpsCall            EveningStar_Call10
	smpsAlterPitch      $FC
	smpsCall            EveningStar_Call7
	smpsAlterPitch      $FE
	smpsCall            EveningStar_Call8
	smpsAlterPitch      $FD
	smpsCall            EveningStar_Call7
	smpsCall            EveningStar_Call9
	smpsAlterPitch      $09
	smpsLoop            $01, $02, EveningStar_Loop4
	smpsJump            EveningStar_Loop4

EveningStar_Call10:
	smpsPan             panRight, $00
	smpsFMAlterVol      $08
	dc.b	nRst, $0B, nF3, $04, nG3, $08, nBb3, $0C
	dc.b	nG3, $04, nBb3, $08, nC4, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F8
	smpsReturn

EveningStar_Call7:
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

EveningStar_Call8:
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

EveningStar_Call9:
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nD4, $08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsLoop            $00, $08, EveningStar_Call9
	smpsReturn

EveningStar_FM5:
	smpsFMvoice         $02
	dc.b	nRst, $60, nRst, nRst, nRst
	smpsPan             panRight, $00
	smpsModSet          $05, $01, $03, $02

EveningStar_Jump1:
	dc.b	nRst, $04
	smpsCall            EveningStar_Call5
	dc.b	nRst, $60
	smpsCall            EveningStar_Call5
	dc.b	nRst, $5C
	smpsJump            EveningStar_Jump1

EveningStar_FM6:
	smpsFMvoice         $01
	smpsFMAlterVol      $05
	smpsPitchSlideSpeed $03
	smpsCall            EveningStar_Call2
	smpsCall            EveningStar_Call3
	smpsCall            EveningStar_Call2
	smpsCall            EveningStar_Call4
	smpsFMAlterVol      $FB
	smpsPitchSlideSpeed $FD
	smpsFMAlterVol      $FB

EveningStar_Loop6:
	smpsCall            EveningStar_Call11
	smpsCall            EveningStar_Call12
	smpsAlterPitch      $03
	smpsCall            EveningStar_Call11
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
	smpsCall            EveningStar_Call11
	smpsCall            EveningStar_Call12
	smpsAlterPitch      $03
	smpsCall            EveningStar_Call11
	smpsAlterPitch      $FD
	smpsCall            EveningStar_Call13
	smpsLoop            $01, $02, EveningStar_Loop6
	smpsJump            EveningStar_Loop6

EveningStar_Call11:
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

EveningStar_Call12:
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

EveningStar_Call13:
	dc.b	nRst, $08, nBb3, $04

EveningStar_Loop5:
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsLoop            $00, $07, EveningStar_Loop5
	smpsReturn

EveningStar_PSG1:
	smpsPSGvoice        cTone_04
	dc.b	nRst, $60, nRst, nRst, nRst, $30, nG3, $0C
	dc.b	nA3, nBb3, $08, nC4, $04, nD4, $08, nEb4
	dc.b	$04

EveningStar_Jump2:
	dc.b	nF4, $60, smpsNoAttack, $18, nEb4, nD4, nEb4, nD4
	dc.b	$60, smpsNoAttack, $18, nC4, nBb3, nC4, nG3, $60
	dc.b	nFs3, $30, nD3, nG3, $60, nG3, $18, nA3
	dc.b	nBb3, nC4, nF4, $60, smpsNoAttack, $18, nEb4, nD4
	dc.b	nEb4, nD4, $60, smpsNoAttack, $30, nRst, $20, nBb3
	dc.b	$04, nC4, $08, nD4, $04, nG3, $60, nFs3
	dc.b	$30, nD3, nG3, $60, nG3, $18, nA3, nBb3
	dc.b	$0C, nC4, nD4, nEb4
	smpsJump            EveningStar_Jump2

EveningStar_PSG2:
	smpsPSGvoice        cTone_04
	smpsModSet          $04, $01, $01, $03
	dc.b	nRst, $04, nRst, $60, nRst, nRst, nRst, $30
	dc.b	nG3, $0C, nA3, nBb3, $08, nC4, $04, nD4
	dc.b	$08, nEb4, $04

EveningStar_Jump3:
	dc.b	nF4, $60, smpsNoAttack, $18, nEb4, nD4, nEb4, nD4
	dc.b	$60, smpsNoAttack, $18, nC4, nBb3, nC4, nG3, $60
	dc.b	nFs3, $30, nD3, nG3, $60, nG3, $18, nA3
	dc.b	nBb3, nC4, nF4, $60, smpsNoAttack, $18, nEb4, nD4
	dc.b	nEb4, nD4, $60, smpsNoAttack, $30, nRst, $20, nBb3
	dc.b	$04, nC4, $08, nD4, $04, nG3, $60, nFs3
	dc.b	$30, nD3, nG3, $60, nG3, $18, nA3, nBb3
	dc.b	$0C, nC4, nD4, nEb4
	smpsJump            EveningStar_Jump3

EveningStar_Loop18:
	; Unused data
	dc.b	nG2, $08, $04, nD3, $08, nG2, $04
	smpsLoop            $00, $04, EveningStar_Loop18
	smpsReturn

EveningStar_Loop19:
	dc.b	nFs2, $08, $04, nC3, $08, nFs2, $04
	smpsLoop            $00, $04, EveningStar_Loop19
	smpsReturn

EveningStar_PSG3:
	smpsPSGform         $E7

EveningStar_Loop7:
	smpsCall            EveningStar_Call14
	smpsCall            EveningStar_Call15
	smpsLoop            $01, $02, EveningStar_Loop7

EveningStar_Loop8:
	smpsCall            EveningStar_Call14
	smpsCall            EveningStar_Call15
	smpsLoop            $01, $04, EveningStar_Loop8
	smpsCall            EveningStar_Call14
	smpsCall            EveningStar_Call15
	smpsCall            EveningStar_Call14
	smpsPSGvoice        cTone_02
	dc.b	nC4, $08, $04, $08, $04, $08, $04
	smpsPSGvoice        cTone_05
	dc.b	$08
	smpsPSGvoice        cTone_02
	dc.b	$04, nRst, $18, nRst, $08, nC4, $04
	smpsPSGvoice        cTone_05
	dc.b	$08
	smpsPSGvoice        cTone_02
	dc.b	$04
	smpsCall            EveningStar_Call14
	smpsCall            EveningStar_Call15
	smpsCall            EveningStar_Call14
	smpsCall            EveningStar_Call15
	smpsJump            EveningStar_Loop8

EveningStar_Call14:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $08, $04, $08, $04, $04, $04, $04
	dc.b	$08, $04
	smpsLoop            $00, $02, EveningStar_Call14
	smpsReturn

EveningStar_Call15:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $08, $04, $08, $04, $04, $04, $04
	dc.b	$08, $04, $08, $04, $08, $04, $04, $04
	dc.b	$04
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsReturn

EveningStar_PWM1:
	dc.b	$96, $18, pKick, nRst, pKick, nRst, pKick, nRst
	dc.b	pKick, nRst, pKick, nRst, pKick, nRst, pKick, pKick
	dc.b	$0C, $0C, nRst, $08, pKick, $04, nRst, $08
	dc.b	pKick, $04

EveningStar_Loop9:
	dc.b	pKick, $0C, $0C, nRst, $24, pKick, $0C, nRst
	dc.b	$08, pKick, $04, nRst, $08, pKick, $04
	smpsLoop            $00, $0B, EveningStar_Loop9
	dc.b	pKick, $0C, pKick, nRst, $38, pKick, $04, nRst
	dc.b	$08, pKick, $04

EveningStar_Loop10:
	dc.b	pKick, $0C, $0C, nRst, $24, pKick, $0C, nRst
	dc.b	$08, pKick, $04, nRst, $08, pKick, $04
	smpsLoop            $00, $04, EveningStar_Loop10
	smpsJump            EveningStar_Loop9

EveningStar_PWM2:
	smpsFMAlterVol      $03
	dc.b	$96, $18, pClap, nRst, pClap, nRst, pClap, nRst
	dc.b	pClap, nRst, pClap, nRst, pClap, nRst, pClap, nRst
	dc.b	$0C
	smpsFMAlterVol      $FD
	dc.b	pElecSnare, $08, $04
	smpsFMAlterVol      $90
	dc.b	pTomLo, $08, $04, $08, $04
	smpsFMAlterVol      $70

EveningStar_Loop11:
	smpsCall            EveningStar_Call16
	smpsLoop            $00, $0B, EveningStar_Loop11
	dc.b	nRst, $18, pElecSnare, nRst, $20
	smpsFMAlterVol      $F9
	dc.b	pTomHi, $04
	smpsFMAlterVol      $07
	dc.b	pTomMid, $08
	smpsFMAlterVol      $90
	dc.b	pTomLo, $04
	smpsFMAlterVol      $70

EveningStar_Loop12:
	smpsCall            EveningStar_Call16
	smpsLoop            $00, $04, EveningStar_Loop12
	smpsJump            EveningStar_Loop11

EveningStar_Call16:
	dc.b	nRst, $18, pElecSnare, nRst, pElecSnare, $08
	smpsFMAlterVol      $F9
	dc.b	pTomHi, $04
	smpsFMAlterVol      $07
	dc.b	pTomMid, $08
	smpsFMAlterVol      $90
	dc.b	pTomLo, $04
	smpsFMAlterVol      $70
	smpsReturn

EveningStar_PWM3:
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60, nRst, pCrash, $60, nRst, $30
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pSplash, $30
	smpsFMAlterVol      $04

EveningStar_Jump4:
	smpsCall            EveningStar_Call17

EveningStar_Loop13:
	dc.b	nRst, pClap, nRst, pClap
	smpsLoop            $00, $07, EveningStar_Loop13
	smpsCall            EveningStar_Call17
	dc.b	nRst, pClap, nRst, pClap, nRst, pClap, nRst, pClap
	dc.b	nRst, pClap, $14, $04, nRst, $30

EveningStar_Loop14:
	dc.b	nRst, $18, pClap, nRst, pClap
	smpsLoop            $00, $04, EveningStar_Loop14
	smpsJump            EveningStar_Jump4

EveningStar_Call17:
	smpsFMAlterVol      $C0
	dc.b	pCrash, $18
	smpsFMAlterVol      $40
	dc.b	pClap, nRst, pClap
	smpsReturn

EveningStar_PWM4:
	dc.b	$96, $60
	smpsLoop            $00, $04, EveningStar_PWM4

EveningStar_Loop15:
	smpsCall            EveningStar_Call18
	smpsLoop            $01, $0B, EveningStar_Loop15

EveningStar_Loop16:
	dc.b	pElecHiHat, $08
	smpsFMAlterVol      $CD
	dc.b	$04
	smpsFMAlterVol      $22
	dc.b	$08
	smpsFMAlterVol      $DE
	dc.b	$04
	smpsFMAlterVol      $33
	smpsLoop            $00, $02, EveningStar_Loop16
	dc.b	nRst, $30

EveningStar_Loop17:
	smpsCall            EveningStar_Call18
	smpsLoop            $01, $04, EveningStar_Loop17
	smpsJump            EveningStar_Loop15

EveningStar_Call18:
	dc.b	pElecHiHat, $08
	smpsFMAlterVol      $CD
	dc.b	$04
	smpsFMAlterVol      $22
	dc.b	$08
	smpsFMAlterVol      $DE
	dc.b	$04
	smpsFMAlterVol      $33
	smpsLoop            $00, $04, EveningStar_Call18
	smpsReturn

EveningStar_Voices:
	; Voice $00
	; $09
	; $52, $51, $01, $01,	$DF, $DF, $9F, $9F
	; $10, $0C, $03, $05,	$12, $0F, $04, $07
	; $7F, $2F, $4F, $9F,	$20, $1C, $19, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $05, $05
	smpsVcCoarseFreq    $01, $01, $01, $02
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $03, $0C, $10
	smpsVcDecayRate2    $07, $04, $0F, $12
	smpsVcDecayLevel    $09, $04, $02, $07
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $19, $1C, $20

	; Voice $01
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

	; Voice $02
	; $0D
	; $77, $65, $05, $15,	$1F, $5F, $5F, $5F
	; $00, $10, $08, $10,	$00, $03, $05, $04
	; $0F, $FC, $8C, $CC,	$1F, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $06, $07
	smpsVcCoarseFreq    $05, $05, $05, $07
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $08, $10, $00
	smpsVcDecayRate2    $04, $05, $03, $00
	smpsVcDecayLevel    $0C, $08, $0F, $00
	smpsVcReleaseRate   $0C, $0C, $0C, $0F
	smpsVcTotalLevel    $80, $80, $80, $1F

	; Voice $03
	; $3C
	; $01, $01, $01, $01,	$1F, $1F, $1F, $1F
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $FF, $FF, $FF, $FF,	$21, $80, $21, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $21, $80, $21
