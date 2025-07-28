HyperHyper_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     HyperHyper_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $26
	smpsHeaderFM        HyperHyper_FM1, $00, $0C
	smpsHeaderFM        HyperHyper_FM2, $00, $12
	smpsHeaderFM        HyperHyper_FM3, $00, $12
	smpsHeaderFM        HyperHyper_FM4, $00, $12
	smpsHeaderFM        HyperHyper_FM5, $00, $0E
	smpsHeaderFM        HyperHyper_FM6, $00, $0E
	smpsHeaderPSG       HyperHyper_PSG1, $00, $00, $00, cTone_0C
	smpsHeaderPSG       HyperHyper_PSG2, $00, $02, $00, cTone_0C
	smpsHeaderPSG       HyperHyper_PSG3, $23, $02, $00, cTone_02
	smpsHeaderPWM       HyperHyper_PWM1, $BB
	smpsHeaderPWM       HyperHyper_PWM2, $BB
	smpsHeaderPWM       HyperHyper_PWM3, $AA
	smpsHeaderPWM       HyperHyper_PWM4, $75

HyperHyper_FM1:
	smpsFMvoice         $00
	dc.b	nRst, $60, nRst, nRst, nRst, $06, nG2, nRst
	dc.b	nG2, nRst, $18, nRst, $06, nG2, nF2, nD2
	dc.b	nRst, nG1, nRst, nG1
	smpsCall            HyperHyper_Call1

HyperHyper_Loop1:
	smpsCall            HyperHyper_Call2
	dc.b	nRst, $30
	smpsCall            HyperHyper_Call2
	dc.b	nRst, $0C, nEb1, nRst, $06, nF1, $12
	smpsCall            HyperHyper_Call1
	smpsAlterPitch      $FE
	smpsCall            HyperHyper_Call2
	dc.b	nRst, $30
	smpsCall            HyperHyper_Call2
	smpsAlterPitch      $02
	dc.b	nRst, $0C, nAb1, nRst, $06, nBb1, $12
	smpsCall            HyperHyper_Call1
	smpsLoop            $00, $02, HyperHyper_Loop1
	smpsJump            HyperHyper_Loop1

HyperHyper_Call2:
	dc.b	nG1, $0C, nRst, $06, nF1, $0C, nRst, $06
	dc.b	nG1, $0C
	smpsReturn

HyperHyper_Call1:
	smpsCall            HyperHyper_Call2
	dc.b	nRst, $30
	smpsCall            HyperHyper_Call2
	dc.b	nRst, $06, nE3, nC3, nG2, nF2, nE2, nC2
	dc.b	nG1
	smpsReturn

HyperHyper_FM2:
	smpsFMvoice         $01
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst, $30
	smpsCall            HyperHyper_Call3

HyperHyper_Jump1:
	smpsCall            HyperHyper_Call4
	dc.b	nD4, $12, nC4, nD4, $0C
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
	dc.b	nC4, $12
	smpsCall            HyperHyper_Call5
	smpsAlterPitch      $FE
	smpsCall            HyperHyper_Call4
	smpsAlterPitch      $02
	dc.b	nC4, $12, nBb3, nC4, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nEb4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nEb4, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF4, $12
	smpsCall            HyperHyper_Call5
	smpsCall            HyperHyper_Call4
	dc.b	nD4, $12, nC4, nD4, $0C
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
	dc.b	nC4, $12
	smpsCall            HyperHyper_Call5
	smpsAlterPitch      $FE
	smpsCall            HyperHyper_Call4
	smpsAlterPitch      $02
	dc.b	nC4, $12, nBb3, nC4, $06, nRst, $12, nEb4
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nEb4, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF4, $12
	smpsCall            HyperHyper_Call5
	smpsJump            HyperHyper_Jump1

HyperHyper_Call3:
	smpsFMvoice         $03
	dc.b	nF6, $06, nE6, nC6, nG5, nF5, nE5, nC5
	dc.b	nG4
	smpsFMvoice         $01
	smpsReturn

HyperHyper_Call4:
	dc.b	nD4, $12, nC4, nD4, $0C, nF4, $12, nE4
	dc.b	nC4, $0C
	smpsReturn

HyperHyper_Call5:
	smpsCall            HyperHyper_Call4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nC4, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC4, $12, nD4, $18
	smpsCall            HyperHyper_Call3
	smpsReturn

HyperHyper_FM3:
	smpsFMvoice         $01
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst, $30
	smpsCall            HyperHyper_Call6

HyperHyper_Jump2:
	smpsCall            HyperHyper_Call7
	dc.b	nA3, $12, nG3, nA3, $0C
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
	dc.b	nA3, $12
	smpsCall            HyperHyper_Call7
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nG3, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $12, nA3, $18
	smpsCall            HyperHyper_Call6
	smpsAlterPitch      $FE
	smpsCall            HyperHyper_Call7
	smpsAlterPitch      $02
	dc.b	nG3, $12, nF3, nG3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nG3, $0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC4
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nC4, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $12
	smpsCall            HyperHyper_Call7
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nG3, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $12, nA3, $18
	smpsCall            HyperHyper_Call6
	smpsCall            HyperHyper_Call7
	dc.b	nA3, $12, nG3, nA3, $0C
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
	dc.b	nA3, $12
	smpsCall            HyperHyper_Call7
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nG3, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $12, nA3, $18
	smpsCall            HyperHyper_Call6
	smpsAlterPitch      $FE
	smpsCall            HyperHyper_Call7
	smpsAlterPitch      $02
	dc.b	nG3, $12, nF3, nG3, $06, nRst, $12, nC4
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nC4, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $12
	smpsCall            HyperHyper_Call7
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nG3, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $12, nA3, $18
	smpsCall            HyperHyper_Call6
	smpsJump            HyperHyper_Jump2

HyperHyper_Call6:
	smpsFMvoice         $03
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nRst, $05, nF6, $06, nE6, nC6, nG5
	smpsPan             panRight, $00
	dc.b	nF5, nE5, nC5, nG4, $01
	smpsFMvoice         $01
	smpsFMAlterVol      $FB
	smpsPan             panCenter, $00
	smpsReturn

HyperHyper_Call7:
	dc.b	nG3, $12, nG3, nA3, $0C, nC4, $12, nC4
	dc.b	nG3, $0C
	smpsReturn

HyperHyper_FM4:
	smpsFMvoice         $02
	dc.b	nRst, $04
	smpsFMAlterVol      $01

HyperHyper_Loop2:
	smpsPan             panLeft, $00
	smpsCall            HyperHyper_Call8
	smpsPan             panRight, $00
	smpsCall            HyperHyper_Call8
	smpsLoop            $01, $0B, HyperHyper_Loop2
	smpsPan             panLeft, $00
	smpsCall            HyperHyper_Call8
	smpsPan             panRight, $00
	dc.b	nC3, $06, nF3, nD3, nG3, $02
	smpsPan             panCenter, $00
	smpsFMAlterVol      $FF
	smpsFMvoice         $01

HyperHyper_Jump3:
	smpsCall            HyperHyper_Call9
	dc.b	nG3, $12, nF3, nG3, $0C
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
	dc.b	nF3, $12
	smpsCall            HyperHyper_Call9
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nF3, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $12, nG3, $48
	smpsAlterPitch      $FE
	smpsCall            HyperHyper_Call9
	smpsAlterPitch      $02
	dc.b	nF3, $12, nEb3, nF3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nF3, $0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nAb3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nAb3, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nBb3, $12
	smpsCall            HyperHyper_Call9
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nF3, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $12, nG3, $48
	smpsCall            HyperHyper_Call9
	dc.b	nG3, $12, nF3, nG3, $0C
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
	dc.b	nF3, $12
	smpsCall            HyperHyper_Call9
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nF3, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $12, nG3, $48
	smpsAlterPitch      $FE
	smpsCall            HyperHyper_Call9
	smpsAlterPitch      $02
	dc.b	nF3, $12, nEb3, nF3, $06, nRst, $12, nAb3
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nAb3, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nBb3, $12
	smpsCall            HyperHyper_Call9
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nF3, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $12, nG3, $48
	smpsJump            HyperHyper_Jump3

HyperHyper_Call9:
	dc.b	nF3, $12, nF3, nF3, $0C, nG3, $12, nG3
	dc.b	nF3, $0C
	smpsReturn

HyperHyper_Call8:
	dc.b	nC3, $06, nF3, nD3, nG3
	smpsReturn

HyperHyper_FM5:
	smpsFMvoice         $02

HyperHyper_Loop3:
	smpsCall            HyperHyper_Call10
	smpsLoop            $01, $06, HyperHyper_Loop3

HyperHyper_Loop4:
	smpsCall            HyperHyper_Call10
	smpsLoop            $01, $04, HyperHyper_Loop4
	smpsAlterPitch      $FE
	smpsCall            HyperHyper_Call10
	smpsCall            HyperHyper_Call10
	smpsAlterPitch      $02
	smpsCall            HyperHyper_Call10
	smpsCall            HyperHyper_Call10

HyperHyper_Loop5:
	smpsCall            HyperHyper_Call10
	smpsLoop            $01, $04, HyperHyper_Loop5
	smpsAlterPitch      $FE
	smpsCall            HyperHyper_Call10
	smpsAlterPitch      $02
	dc.b	nBb2, $06, nEb3, nC3, nF3, nBb2, nEb3, nC3
	dc.b	nRst, nRst, nRst, nC3, nF3, nBb2, nEb3, nC3
	dc.b	nF3
	smpsCall            HyperHyper_Call10
	smpsCall            HyperHyper_Call10
	smpsJump            HyperHyper_Loop4

HyperHyper_Call10:
	dc.b	nC3, $06, nF3, nD3, nG3
	smpsLoop            $00, $04, HyperHyper_Call10
	smpsReturn

HyperHyper_FM6:
	smpsFMvoice         $04
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst
	smpsJump            HyperHyper_Jump4

	; Unused data
	smpsStop

HyperHyper_PSG1:
	smpsPSGvoice        cTone_08
	dc.b	nRst, $60, nRst, nRst, nRst, nRst
	smpsModSet          $01, $06, $01, $01
	smpsPSGAlterVol     $02
	dc.b	nE5, $60
	smpsModSet          $00, $00, $00, $00
	smpsPSGAlterVol     $FE

HyperHyper_Jump4:
	smpsCall            HyperHyper_Call11
	dc.b	nRst, $0C, nC4, $18, nA3, $06, nRst, nC4
	dc.b	$12, nD4, $06, nRst, $0C, nEb4, smpsNoAttack, $0C
	dc.b	nD4, $06, nRst, nEb4, nD4, nRst, nC4, $12
	dc.b	nAb3, nBb3, nC4, $0C, nRst, nG3, nRst, nBb3
	dc.b	$03, smpsNoAttack, nB3, $0F, nG3, $06, nRst, $0C
	dc.b	nF3, smpsNoAttack, $06, nRst, nG3, $54
	smpsCall            HyperHyper_Call11
	dc.b	nRst, $0C, nC4, $18, nA3, $06, nRst, nC4
	dc.b	$12, nD4, $06, nRst, $0C, nEb4, smpsNoAttack, $0C
	dc.b	nD4, $06, nRst, nEb4, nD4, nRst, nC4, $06
	dc.b	nRst, $0C, nAb3, $12, nBb3, nC4, $0C, nRst
	dc.b	nG3, nRst, nBb3, $03, smpsNoAttack, nB3, $0F, nG3
	dc.b	$06, nRst, $0C, nF3, smpsNoAttack, $06, nRst, nG3
	dc.b	$54
	smpsJump            HyperHyper_Jump4

HyperHyper_Call12:
	dc.b	nF3, $0C, nRst, nG3, nRst, nBb3, $03, smpsNoAttack
	dc.b	nB3, $0F, nG3, $06, nRst, $0C
	smpsReturn

HyperHyper_Call11:
	smpsCall            HyperHyper_Call12
	dc.b	nC4, $0C, smpsNoAttack, $0C, nB3, $06, nRst, nC4
	dc.b	nD4, nRst, nG3, $30, nRst, $06
	smpsCall            HyperHyper_Call12
	dc.b	nF4, $0C, smpsNoAttack, $06, nRst, nG4, nRst, nF4
	dc.b	nE4, nRst, nD4, $30, nRst, $06
	smpsReturn

HyperHyper_PSG2:
	smpsPSGvoice        cTone_08
	dc.b	nRst, $60, nRst, nRst, nRst, nRst
	smpsModSet          $01, $06, $01, $01
	smpsPSGAlterVol     $02
	dc.b	nRst, $04, nE5, $5C
	smpsModSet          $00, $00, $00, $00
	smpsPSGAlterVol     $FE
	smpsModSet          $01, $01, $01, $03

HyperHyper_Jump5:
	dc.b	nRst, $06
	smpsCall            HyperHyper_Call11
	dc.b	nRst, $0C, nC4, $18, nA3, $06, nRst, nC4
	dc.b	$12, nD4, $06, nRst, $0C, nEb4, smpsNoAttack, $0C
	dc.b	nD4, $06, nRst, nEb4, nD4, nRst, nC4, $12
	dc.b	nAb3, nBb3, nC4, $0C, nRst, nG3, nRst, nBb3
	dc.b	$03, smpsNoAttack, nB3, $0F, nG3, $06, nRst, $0C
	dc.b	nF3, smpsNoAttack, $06, nRst, nG3, $54
	smpsCall            HyperHyper_Call11
	dc.b	nRst, $0C, nC4, $18, nA3, $06, nRst, nC4
	dc.b	$12, nD4, $06, nRst, $0C, nEb4, smpsNoAttack, $0C
	dc.b	nD4, $06, nRst, nEb4, nD4, nRst, nRst, $06
	dc.b	nRst, $0C, nAb3, $12, nBb3, nC4, $0C, nRst
	dc.b	nG3, nRst, nBb3, $03, smpsNoAttack, nB3, $0F, nG3
	dc.b	$06, nRst, $0C, nF3, smpsNoAttack, $06, nRst, nG3
	dc.b	$4E
	smpsJump            HyperHyper_Jump5

HyperHyper_PSG3:
	smpsPSGform         $E7

HyperHyper_Loop6:
	smpsCall            HyperHyper_Call13
	smpsLoop            $01, $05, HyperHyper_Loop6
	smpsCall            HyperHyper_Call14

HyperHyper_Loop7:
	smpsCall            HyperHyper_Call13
	smpsLoop            $01, $03, HyperHyper_Loop7
	smpsCall            HyperHyper_Call14
	smpsLoop            $02, $02, HyperHyper_Loop7

HyperHyper_Loop8:
	smpsCall            HyperHyper_Call13
	smpsLoop            $01, $03, HyperHyper_Loop8
	smpsCall            HyperHyper_Call14
	smpsCall            HyperHyper_Call13
	smpsPSGvoice        cTone_02
	dc.b	nC4, $06, $06
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsPSGvoice        cTone_02
	dc.b	$06, $06, $06, nRst, nRst, $0C
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsPSGvoice        cTone_02
	dc.b	$06, $06
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsCall            HyperHyper_Call13
	smpsCall            HyperHyper_Call14
	smpsJump            HyperHyper_Loop7

HyperHyper_Call13:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $06, $06
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsLoop            $00, $04, HyperHyper_Call13
	smpsReturn

HyperHyper_Call14:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $04, $04, $04, $06, $06, $06, $06
	dc.b	$06, $06, $06, $06
	smpsPSGvoice        cTone_05
	dc.b	$0C, $0C, $0C
	smpsReturn

HyperHyper_PWM1:
	smpsCall            HyperHyper_Call15
	smpsCall            HyperHyper_Call15
	smpsCall            HyperHyper_Call16

HyperHyper_Loop9:
	smpsCall            HyperHyper_Call15
	smpsLoop            $00, $03, HyperHyper_Loop9
	smpsCall            HyperHyper_Call16
	smpsLoop            $01, $02, HyperHyper_Loop9
	smpsJump            HyperHyper_Loop9

HyperHyper_Call15:
	dc.b	pElecKick, $12, $12, $0C, nRst, pElecKick, nRst, $06
	dc.b	pElecKick, $12, pElecKick, $12, $12, $0C, nRst, $0C
	dc.b	pElecKick, $06, $06, nRst, pElecKick, $12
	smpsReturn

HyperHyper_Call16:
	dc.b	pElecKick, $12, $12, $0C, nRst, pElecKick, nRst, $06
	dc.b	pElecKick, $12, pElecKick, $12, $12, $0C, nRst, $30
	smpsReturn

HyperHyper_PWM2:
	dc.b	$96, $18, pElecSnare, nRst, pElecSnare, nRst, pElecSnare, nRst
	dc.b	pElecSnare, $12, $06
	smpsCall            HyperHyper_Call17
	smpsCall            HyperHyper_Call18

HyperHyper_Loop10:
	smpsCall            HyperHyper_Call17
	smpsLoop            $00, $03, HyperHyper_Loop10
	smpsCall            HyperHyper_Call18
	smpsLoop            $01, $02, HyperHyper_Loop10
	smpsJump            HyperHyper_Loop10

HyperHyper_Call17:
	dc.b	nRst, $18, pElecSnare, nRst, pElecSnare, nRst, pElecSnare, nRst
	dc.b	pElecSnare, $12, $06
	smpsReturn

HyperHyper_Call18:
	dc.b	nRst, $18, pElecSnare, nRst, pElecSnare, nRst, $0C, pElecSnare
	dc.b	pElecSnare, pElecSnare, $04, pElecSnare, pElecSnare, pElecSnare, $06, pElecSnare
	dc.b	pElecSnare, pElecSnare
	smpsFMAlterVol      $90
	dc.b	pTomLo, pTomLo, pTomLo, pTomLo
	smpsFMAlterVol      $70
	smpsReturn

HyperHyper_PWM3:
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pSplash, $60
	smpsFMAlterVol      $04

HyperHyper_Jump6:
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst
	smpsFMAlterVol      $FC
	dc.b	pSplash, $60
	smpsFMAlterVol      $04
	dc.b	nRst
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst, $3C
	smpsFMAlterVol      $C0
	dc.b	pCrash, $12
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pSplash, $12
	smpsFMAlterVol      $04
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst
	smpsJump            HyperHyper_Jump6

HyperHyper_PWM4:
	smpsCall            HyperHyper_Call19
	smpsLoop            $01, $06, HyperHyper_PWM4

HyperHyper_Loop11:
	smpsCall            HyperHyper_Call19
	smpsLoop            $01, $0D, HyperHyper_Loop11
	dc.b	pElecHiHat, $06
	smpsFMAlterVol      $CD
	dc.b	$06
	smpsFMAlterVol      $22
	dc.b	$06
	smpsFMAlterVol      $DE
	dc.b	$06
	smpsFMAlterVol      $33
	dc.b	pElecHiHat, $06
	smpsFMAlterVol      $CD
	dc.b	$06
	smpsFMAlterVol      $22
	dc.b	$06
	smpsFMAlterVol      $11
	dc.b	smpsNoAttack, $1E, pElecHiHat, $06
	smpsFMAlterVol      $CD
	dc.b	$06
	smpsFMAlterVol      $22
	dc.b	$06
	smpsFMAlterVol      $DE
	dc.b	$06
	smpsFMAlterVol      $33
	smpsCall            HyperHyper_Call19
	smpsCall            HyperHyper_Call19
	smpsJump            HyperHyper_Loop11

HyperHyper_Call19:
	dc.b	pElecHiHat, $06
	smpsFMAlterVol      $CD
	dc.b	$06
	smpsFMAlterVol      $22
	dc.b	$06
	smpsFMAlterVol      $DE
	dc.b	$06
	smpsFMAlterVol      $33
	smpsLoop            $00, $04, HyperHyper_Call19
	smpsReturn

HyperHyper_Voices:
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
	; $2C
	; $34, $75, $34, $36,	$1F, $5D, $9F, $5C
	; $03, $0C, $03, $0C,	$02, $06, $02, $06
	; $AF, $8F, $AF, $8F,	$1A, $80, $27, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $03
	smpsVcCoarseFreq    $06, $04, $05, $04
	smpsVcRateScale     $01, $02, $01, $00
	smpsVcAttackRate    $1C, $1F, $1D, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $03, $0C, $03
	smpsVcDecayRate2    $06, $02, $06, $02
	smpsVcDecayLevel    $08, $0A, $08, $0A
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $27, $80, $1A

	; Voice $02
	; $3A
	; $07, $06, $02, $01,	$5F, $5F, $5F, $9F
	; $09, $02, $0A, $AC,	$02, $16, $54, $09
	; $5F, $7F, $AF, $6F,	$18, $17, $1B, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00, $01, $00, $00, $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $06, $07
	smpsVcRateScale     $02, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $01, $00, $00, $00
	smpsVcDecayRate1    $0C, $0A, $02, $09
	smpsVcDecayRate2    $09, $54, $16, $02
	smpsVcDecayLevel    $06, $0A, $07, $05
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1B, $17, $18

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
	; $1C
	; $33, $02, $04, $34,	$5F, $FF, $5F, $FF
	; $05, $05, $05, $07,	$15, $10, $21, $13
	; $9F, $3F, $5F, $AF,	$30, $80, $02, $84
	smpsVcAlgorithm     $04
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $00, $03
	smpsVcCoarseFreq    $04, $04, $02, $03
	smpsVcRateScale     $03, $01, $03, $01
	smpsVcAttackRate    $3F, $1F, $3F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $05, $05, $05
	smpsVcDecayRate2    $13, $21, $10, $15
	smpsVcDecayLevel    $0A, $05, $03, $09
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $84, $02, $80, $30
