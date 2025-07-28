OrientalLegend_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     OrientalLegend_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00
	smpsHeaderFM        OrientalLegend_FM1, $00, $09
	smpsHeaderFM        OrientalLegend_FM2, $00, $0D
	smpsHeaderFM        OrientalLegend_FM3, $FA, $11
	smpsHeaderFM        OrientalLegend_FM4, $0C, $1B
	smpsHeaderFM        OrientalLegend_FM5, $F4, $13
	smpsHeaderFM        OrientalLegend_FM6, $00, $16
	smpsHeaderPSG       OrientalLegend_PSG1, $E8, $02, $00, cTone_00
	smpsHeaderPSG       OrientalLegend_PSG2, $E2, $03, $00, cTone_00
	smpsHeaderPSG       OrientalLegend_PSG3, $23, $02, $00, cTone_00
	smpsHeaderPWM       OrientalLegend_PWM1, $CC
	smpsHeaderPWM       OrientalLegend_PWM2, $AA
	smpsHeaderPWM       OrientalLegend_PWM3, $AA
	smpsHeaderPWM       OrientalLegend_PWM4, $77

OrientalLegend_FM1:
	smpsFMvoice         $00
	smpsPan             panCenter, $00

OrientalLegend_Loop1:
	smpsFMAlterVol      $FA
	dc.b	nG2, $0C
	smpsFMAlterVol      $06
	dc.b	nG2, $06, nRst, nG2, nRst, nG2, nRst, nG2
	dc.b	nRst, nG2, nRst, nG2, nRst, nG2, nRst, nG2
	dc.b	$06, nRst, nG2, nRst, nG2, nRst, nG2, nRst
	dc.b	nG2, nRst, nG2, nRst, nG2, nRst, nG2, nRst
	smpsAlterPitch      $01
	smpsLoop            $01, $04, OrientalLegend_Loop1
	smpsAlterPitch      $FC

OrientalLegend_Jump1:
	smpsCall            OrientalLegend_Call1
	dc.b	nBb2, $60, smpsNoAttack, $30, nRst, $0C
	smpsFMAlterVol      $FB
	dc.b	nBb3, $0C
	smpsFMAlterVol      $05
	dc.b	nBb2, $18
	smpsCall            OrientalLegend_Call1
	dc.b	nBb2, $60
	smpsFMAlterVol      $05
	dc.b	nF2, $18
	smpsFMAlterVol      $FF
	dc.b	nG2
	smpsFMAlterVol      $FE
	dc.b	nAb2
	smpsFMAlterVol      $FE
	dc.b	nBb2
	smpsJump            OrientalLegend_Jump1

OrientalLegend_Call1:
	smpsFMAlterVol      $FC
	dc.b	nC3, $12
	smpsFMAlterVol      $04
	dc.b	$06, nRst, $48, nC3, $12, $06, nRst, $0C
	dc.b	nC3, $0C, nRst, $30
	smpsFMAlterVol      $FC
	dc.b	nC3, $12
	smpsFMAlterVol      $04
	dc.b	$06, nRst, $48, nC3, $12, $06, nRst, $36
	dc.b	nG2, $12
	smpsLoop            $00, $03, OrientalLegend_Call1
	dc.b	nAb2, $60, smpsNoAttack, $60
	smpsReturn

OrientalLegend_FM2:
	smpsFMvoice         $04
	smpsFMAlterVol      $FB

OrientalLegend_Loop2:
	smpsPan             panCenter, $00
	dc.b	nG6, $18
	smpsPan             panLeft, $00
	smpsFMAlterVol      $02
	dc.b	nG6, $18, nRst, $30
	smpsFMAlterVol      $FE
	dc.b	nRst, $60
	smpsAlterPitch      $01
	smpsLoop            $00, $03, OrientalLegend_Loop2
	smpsFMAlterVol      $05
	smpsPan             panCenter, $00
	dc.b	nG6, $18
	smpsPan             panLeft, $00
	dc.b	nG6, $18, nRst, $30
	smpsAlterPitch      $FD
	smpsFMvoice         $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18
	smpsFMAlterVol      $05

OrientalLegend_Jump2:
	smpsCall            OrientalLegend_Call2
	smpsFMAlterVol      $F8
	dc.b	nF6, $03, nRst, nF6, $03, nRst
	smpsFMAlterVol      $0D
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $F3
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $0D
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $F3
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $0D
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $F3
	dc.b	nF6, $1E, nRst, $18
	smpsFMAlterVol      $08
	smpsCall            OrientalLegend_Call2
	smpsFMAlterVol      $FB
	dc.b	nF4, $12
	smpsFMAlterVol      $0F
	dc.b	nF4, $06
	smpsFMAlterVol      $F1
	dc.b	nG4, $12
	smpsFMAlterVol      $0F
	dc.b	nG4, $06
	smpsFMAlterVol      $F1
	dc.b	nAb4, $12
	smpsFMAlterVol      $0F
	dc.b	nAb4, $06
	smpsFMAlterVol      $F1
	dc.b	nBb4, $12
	smpsFMAlterVol      $0F
	dc.b	nBb4, $06
	smpsFMAlterVol      $F1
	smpsFMAlterVol      $05
	smpsJump            OrientalLegend_Jump2

OrientalLegend_Call2:
	smpsFMAlterVol      $FB
	dc.b	nC5, $06
	smpsFMAlterVol      $0F
	dc.b	nC5, $06
	smpsFMAlterVol      $F1
	dc.b	nRst, $0C
	smpsFMAlterVol      $05
	dc.b	nG4, $06, nRst, nEb4, $0C, nRst, $0C, nG4
	dc.b	$0C, nC5, $06, nRst, nB4, $0C, smpsNoAttack
	smpsFMAlterVol      $07
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18, nRst, $48, nRst, $60
	smpsFMAlterVol      $05
	smpsFMAlterVol      $FB
	dc.b	nC5, $06
	smpsFMAlterVol      $0A
	dc.b	nC5, $06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $05
	dc.b	nG4, $06, nRst, nEb4, $0C, nRst, $0C, nG4
	dc.b	$0C, nC5, $06, nRst, nG5, $0C, smpsNoAttack
	smpsFMAlterVol      $07
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18, nRst, $48, nRst, $60
	smpsFMAlterVol      $05
	dc.b	nRst, $0C, nF4, nFs4, $06, nRst, nF4, nRst
	dc.b	nEb4, $0C, nC4, $06, nRst, nRst, $0C, nBb3
	dc.b	$0C, nC4, $0C, nEb4, $06, nRst, nRst, $0C
	dc.b	nF4, $0C, nRst, $06, nF4, $0C, nG4, $03
	dc.b	nRst, nBb4, $06, nRst, nG4, nRst, nC5, $0C
	dc.b	nG4, $03, nRst, nBb4, nRst, nRst, $06, nG4
	dc.b	$03, nRst, nC5, $0C, nG4, $03, nRst, nBb4
	dc.b	$06, nRst, nG4, $03, nRst, nC5, $0C, nG4
	dc.b	$03, nRst, nBb4, nRst, nRst, $06, nG4, $03
	dc.b	nRst, nC5, $0C, nG4, $03, nRst, nD5, $0C
	dc.b	nG4, $03, nRst, nEb5, $0C, nG4, $03, nRst
	dc.b	nF5, $06, nRst, nG4, $06, nG5, nRst, nBb5
	dc.b	$0C, nRst, $06
	smpsFMAlterVol      $FD
	dc.b	nC6, $06, smpsNoAttack, $48, smpsNoAttack
	smpsFMAlterVol      $03
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18
	smpsFMAlterVol      $09
	smpsFMAlterVol      $FD
	dc.b	nD6, $18, smpsNoAttack
	smpsFMAlterVol      $03
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FC
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FC
	dc.b	$18
	smpsFMAlterVol      $08
	smpsReturn

OrientalLegend_FM3:
	smpsFMvoice         $04
	smpsModSet          $01, $01, $06, $08
	dc.b	nRst, $0C
	smpsAlterPitch      $06
	smpsFMAlterVol      $03

OrientalLegend_Loop3:
	smpsPan             panCenter, $00
	dc.b	nG6, $18
	smpsPan             panRight, $00
	dc.b	nG6, $18, nRst, $30, nRst, $60
	smpsAlterPitch      $01
	smpsLoop            $01, $03, OrientalLegend_Loop3
	smpsFMAlterVol      $05
	smpsPan             panCenter, $00
	dc.b	nG6, $18
	smpsPan             panRight, $00
	dc.b	nG6, $18, nRst, $24
	smpsAlterPitch      $F7
	smpsModSet          $00, $00, $00, $00
	smpsFMvoice         $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F8
	dc.b	nBb4, $18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18
	smpsFMAlterVol      $05
	smpsAlterPitch      $01
	smpsFMAlterVol      $0A

OrientalLegend_Jump3:
	smpsCall            OrientalLegend_Call2
	smpsFMAlterVol      $F8
	dc.b	nF6, $03, nRst, nF6, $03, nRst
	smpsFMAlterVol      $0D
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $F3
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $0D
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $F3
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $0D
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $F3
	dc.b	nF6, $1E, nRst, $18
	smpsFMAlterVol      $08
	smpsCall            OrientalLegend_Call2
	smpsFMAlterVol      $FB
	dc.b	nF4, $12
	smpsFMAlterVol      $0F
	dc.b	nF4, $06
	smpsFMAlterVol      $F1
	dc.b	nG4, $12
	smpsFMAlterVol      $0F
	dc.b	nG4, $06
	smpsFMAlterVol      $F1
	dc.b	nAb4, $12
	smpsFMAlterVol      $0F
	dc.b	nAb4, $06
	smpsFMAlterVol      $F1
	dc.b	nBb4, $12
	smpsFMAlterVol      $0F
	dc.b	nBb4, $06
	smpsFMAlterVol      $F1
	smpsFMAlterVol      $05
	smpsJump            OrientalLegend_Jump3

OrientalLegend_FM4:
	smpsFMvoice         $02
	smpsPan             panCenter, $00
	smpsFMAlterVol      $03

OrientalLegend_Loop4:
	dc.b	nCs4, $60, smpsNoAttack, $60
	smpsAlterPitch      $01
	smpsLoop            $00, $04, OrientalLegend_Loop4
	smpsAlterPitch      $FC
	smpsFMvoice         $04
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F9

OrientalLegend_Jump4:
	smpsCall            OrientalLegend_Call2
	dc.b	nF6, $03, nRst, nF6, $03, nRst
	smpsFMAlterVol      $0D
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $F3
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $0D
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $F3
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $0D
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $F3
	dc.b	nF6, $1E, nRst, $18
	smpsCall            OrientalLegend_Call2
	dc.b	nF4, $12
	smpsFMAlterVol      $0F
	dc.b	nF4, $06
	smpsFMAlterVol      $F1
	dc.b	nG4, $12
	smpsFMAlterVol      $0F
	dc.b	nG4, $06
	smpsFMAlterVol      $F1
	dc.b	nAb4, $12
	smpsFMAlterVol      $0F
	dc.b	nAb4, $06
	smpsFMAlterVol      $F1
	dc.b	nBb4, $12
	smpsFMAlterVol      $0F
	dc.b	nBb4, $06
	smpsFMAlterVol      $F1
	smpsJump            OrientalLegend_Jump4

OrientalLegend_FM5:
	smpsPan             panCenter, $00
	smpsFMvoice         $02

OrientalLegend_Loop5:
	dc.b	nG5, $60, smpsNoAttack, $60
	smpsAlterPitch      $01
	smpsLoop            $00, $04, OrientalLegend_Loop5
	smpsAlterPitch      $FC
	smpsAlterPitch      $0C
	smpsPan             panCenter, $00
	smpsFMAlterVol      $0A
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $0C

OrientalLegend_Jump5:
	smpsCall            OrientalLegend_Call2
	smpsFMAlterVol      $F8
	dc.b	nF6, $03, nRst, nF6, $03, nRst
	smpsFMAlterVol      $0D
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $F3
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $0D
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $F3
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $0D
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $F3
	dc.b	nF6, $1E, nRst, $18
	smpsFMAlterVol      $08
	smpsCall            OrientalLegend_Call2
	smpsFMAlterVol      $F8
	dc.b	nF4, $12
	smpsFMAlterVol      $0F
	dc.b	nF4, $06
	smpsFMAlterVol      $F1
	dc.b	nG4, $12
	smpsFMAlterVol      $0F
	dc.b	nG4, $06
	smpsFMAlterVol      $F1
	dc.b	nAb4, $12
	smpsFMAlterVol      $0F
	dc.b	nAb4, $06
	smpsFMAlterVol      $F1
	dc.b	nBb4, $12
	smpsFMAlterVol      $0F
	dc.b	nBb4, $06
	smpsFMAlterVol      $F1
	smpsFMAlterVol      $08
	smpsJump            OrientalLegend_Jump5

OrientalLegend_FM6:
	smpsFMvoice         $03
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $0C

OrientalLegend_Loop6:
	dc.b	nG4, $08, nBb4, nCs5, nEb5, nFs5, nEb5, nCs5
	dc.b	nBb4, nG4, nBb4, nCs5, nEb5, nFs5, nEb5, nCs5
	dc.b	nBb4, nG4, nBb4, nCs5, nEb5, nFs5, nEb5, nCs5
	dc.b	nBb4
	smpsAlterPitch      $01
	smpsLoop            $01, $03, OrientalLegend_Loop6
	smpsAlterPitch      $FD
	dc.b	nBb4, nCs5, nE5, nFs5, nA5, nFs5, nE5, nCs5
	dc.b	nBb4, nCs5, nE5, nFs5, nA5, nFs5, nE5, nCs5
	dc.b	nBb4, $04, nRst, $09, nBb4, $06, nCs5, nE5
	dc.b	nFs5, nBb5, nCs6, nE6, nBb6

OrientalLegend_Jump6:
	smpsCall            OrientalLegend_Call3
	smpsJump            OrientalLegend_Jump6

OrientalLegend_PSG1:
	smpsPSGvoice        cTone_0C
	smpsCall            OrientalLegend_Call4

OrientalLegend_Jump7:
	smpsCall            OrientalLegend_Call3
	smpsJump            OrientalLegend_Jump7

OrientalLegend_Call4:
	smpsPSGAlterVol     $FF
	dc.b	nG4, $08
	smpsPSGAlterVol     $01
	dc.b	nBb4, nCs5, nEb5, nFs5, nEb5, nCs5, nBb4, nG4
	dc.b	nBb4, nCs5, nEb5
	smpsPSGAlterVol     $FF
	dc.b	nFs5
	smpsPSGAlterVol     $01
	dc.b	nEb5, nCs5, nBb4, nG4, nBb4, nCs5, nEb5, nFs5
	dc.b	nEb5, nCs5, nBb4
	smpsAlterPitch      $01
	smpsLoop            $01, $03, OrientalLegend_Call4
	smpsAlterPitch      $FD
	smpsPSGAlterVol     $FF
	dc.b	nBb4
	smpsPSGAlterVol     $01
	dc.b	nCs5, nE5, nFs5, nA5, nFs5, nE5, nCs5, nBb4
	dc.b	nCs5, nE5, nFs5
	smpsPSGAlterVol     $FF
	dc.b	nA5
	smpsPSGAlterVol     $01
	dc.b	nFs5, nE5, nCs5, nBb4, nCs5, nBb4, $06, nCs5
	dc.b	nE5, nFs5, nBb5, nCs6, nE6, nBb6
	smpsReturn

OrientalLegend_Call3:
	smpsPSGAlterVol     $FE
	dc.b	nC4, $06
	smpsPSGAlterVol     $02
	dc.b	nC4, $0C, nF4, $06, nG4, nBb4, nC5, nEb5
	dc.b	nG5, $0C, nBb4, nC5, $18
	smpsPSGAlterVol     $FE
	dc.b	nC4, $06
	smpsPSGAlterVol     $02
	dc.b	nC4, $0C, nF4, $06, nG4, nBb4, nRst, nD5
	dc.b	nEb5, $0C, nA4, nBb4, $06, nE4, $12
	smpsLoop            $00, $07, OrientalLegend_Call3
	smpsPSGAlterVol     $FE
	dc.b	nC4, $06
	smpsPSGAlterVol     $02
	dc.b	nC4, $0C, nF4, $06, nG4, nBb4, nC5, nEb5
	dc.b	nG5, $0C, nBb4, nC5, $18
	smpsAlterPitch      $FE
	smpsPSGAlterVol     $FE
	dc.b	nC4, $06
	smpsPSGAlterVol     $02
	dc.b	nC4, $0C, nF4, $06, nG4, nBb4, nRst, nD5
	dc.b	nEb5, $0C, nA4, nBb4, $06, nE4, $12
	smpsAlterPitch      $02
	smpsLoop            $01, $02, OrientalLegend_Call3
	smpsReturn

OrientalLegend_PSG2:
	smpsPSGvoice        cTone_0C
	smpsCall            OrientalLegend_Call4
	smpsAlterPitch      $01

OrientalLegend_Jump8:
	smpsCall            OrientalLegend_Call3
	smpsJump            OrientalLegend_Jump8

OrientalLegend_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        cTone_02

OrientalLegend_Loop7:
	dc.b	nC4, $0C
	smpsPSGAlterVol     $04
	dc.b	nC4
	smpsPSGAlterVol     $FE
	dc.b	nC4
	smpsPSGAlterVol     $02
	dc.b	nC4
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $0F, OrientalLegend_Loop7
	dc.b	nC4, $06
	smpsPSGAlterVol     $03
	dc.b	nC4
	smpsPSGAlterVol     $FE
	dc.b	nC4
	smpsPSGAlterVol     $02
	dc.b	nC4
	smpsPSGAlterVol     $FD
	dc.b	nC4, $18
	smpsPSGAlterVol     $FF

OrientalLegend_Jump9:
	dc.b	nC4, $06
	smpsPSGAlterVol     $04
	dc.b	nC4
	smpsPSGAlterVol     $FE
	dc.b	nC4
	smpsPSGAlterVol     $02
	dc.b	nC4
	smpsPSGAlterVol     $FC
	smpsJump            OrientalLegend_Jump9

OrientalLegend_PWM1:
	dc.b	pKick, $18, nRst, $3C, pKick, $0C, pKick, $18
	dc.b	pKick, nRst, $18, pKick, $18
	smpsLoop            $00, $04, OrientalLegend_PWM1

OrientalLegend_Loop8:
	dc.b	pKick, $12, $06, nRst, $18, pKick, $18, nRst
	dc.b	$0C, pKick, $0C, pKick, $12, $06, nRst, $06
	dc.b	pKick, $06, nRst, $24, pKick, $18, pKick, $12
	dc.b	$06, nRst, $0C, pKick, $0C, nRst, $12, pKick
	dc.b	$06, nRst, $18, pKick, $18, nRst, $0C, pKick
	dc.b	$0C, $18, $18
	smpsLoop            $00, $03, OrientalLegend_Loop8

OrientalLegend_Loop9:
	dc.b	pKick, $18, nRst, $12, pKick, $06, $0C, $0C
	dc.b	nRst, $18
	smpsLoop            $00, $04, OrientalLegend_Loop9
	smpsJump            OrientalLegend_Loop8

OrientalLegend_PWM2:
	dc.b	$96, $60, $96, $3C, pSnare, $0C, nRst, $18
	smpsLoop            $00, $03, OrientalLegend_PWM2
	dc.b	nRst, $60, nRst, $30
	smpsFMAlterVol      $22
	dc.b	pSnare, $06
	smpsFMAlterVol      $BC
	dc.b	$0C
	smpsFMAlterVol      $11
	dc.b	$06
	smpsFMAlterVol      $22
	dc.b	$0C, $0C
	smpsFMAlterVol      $EF

OrientalLegend_Loop10:
	dc.b	nRst, $18, pSnare, $18, nRst, pSnare, $18
	smpsLoop            $00, $0C, OrientalLegend_Loop10
	dc.b	nRst, $60, nRst, $54, pSnare, $0C, nRst, $60
	dc.b	nRst, $30, pSnare, $06, $0C, $06, $0C, $0C
	smpsJump            OrientalLegend_Loop10

OrientalLegend_PWM3:
	dc.b	pRideBell, $60, nRst, $60
	smpsLoop            $00, $03, OrientalLegend_PWM3
	dc.b	pRideBell, $60
	smpsFMAlterVol      $AB
	dc.b	pCrash, $18
	smpsFMAlterVol      $11
	dc.b	pCrash, $18
	smpsFMAlterVol      $11
	dc.b	pCrash, $18
	smpsFMAlterVol      $11
	dc.b	pCrash, $18
	smpsFMAlterVol      $22

OrientalLegend_Jump10:
	dc.b	pCrash, $60, nRst, $60, nRst, $60, nRst, $60
	smpsJump            OrientalLegend_Jump10

OrientalLegend_PWM4:
	dc.b	nRst, $60
	smpsLoop            $00, $07, OrientalLegend_PWM4
	dc.b	nRst, $30
	smpsFMAlterVol      $FD
	dc.b	pClickHi, $06, $06, nRst, pClickHi, $06, $06, $06
	dc.b	$06, $06

OrientalLegend_Loop11:
	dc.b	pClickLo, $06, $06, nRst
	smpsFMAlterVol      $03
	smpsFMAlterVol      $CE
	smpsFMAlterVol      $DE
	dc.b	pBongoLo
	smpsFMAlterVol      $32
	smpsFMAlterVol      $22
	smpsFMAlterVol      $FD
	dc.b	pClickLo, $06, $06, nRst
	smpsFMAlterVol      $03
	smpsFMAlterVol      $CE
	smpsFMAlterVol      $DE
	dc.b	pBongoLo
	smpsFMAlterVol      $32
	smpsFMAlterVol      $22
	smpsFMAlterVol      $FD
	dc.b	pClickLo, $0C, $0C, $06, $06
	smpsFMAlterVol      $03
	smpsFMAlterVol      $CE
	smpsFMAlterVol      $DE
	dc.b	pBongoLo
	smpsFMAlterVol      $32
	smpsFMAlterVol      $22
	smpsFMAlterVol      $FD
	dc.b	pClickLo
	smpsLoop            $00, $0B, OrientalLegend_Loop11
	dc.b	pClickLo, $06, $06, nRst
	smpsFMAlterVol      $03
	smpsFMAlterVol      $CE
	smpsFMAlterVol      $DE
	dc.b	pBongoLo
	smpsFMAlterVol      $32
	smpsFMAlterVol      $22
	smpsFMAlterVol      $FD
	dc.b	pClickLo, $06, $06, nRst
	smpsFMAlterVol      $03
	smpsFMAlterVol      $CE
	smpsFMAlterVol      $DE
	dc.b	pBongoLo
	smpsFMAlterVol      $32
	smpsFMAlterVol      $22
	smpsFMAlterVol      $FD
	dc.b	pClickLo, $0C, $0C, $06, $06, $06, $06
	smpsFMAlterVol      $22

OrientalLegend_Loop13:
	dc.b	pClickHi, $04, $04, $04, $06, $06, $06, $06
	dc.b	$06, $06, $0C, $0C, $06, $06, $06, $06
	dc.b	nRst, $06, pClickHi, nRst, pClickHi, pClickHi, $06, $03
	dc.b	$03, $06, $06

OrientalLegend_Loop12:
	dc.b	nRst, $06, pClickLo
	smpsLoop            $00, $04, OrientalLegend_Loop12
	smpsLoop            $01, $02, OrientalLegend_Loop13
	smpsFMAlterVol      $DE
	smpsJump            OrientalLegend_Loop11

OrientalLegend_Voices:
	; Voice $00
	; $3A
	; $20, $23, $60, $00,	$1E, $1F, $1F, $1F
	; $0A, $0A, $0B, $09,	$05, $07, $0A, $00
	; $A4, $85, $96, $D7,	$21, $25, $28, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $06, $02, $02
	smpsVcCoarseFreq    $00, $00, $03, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $0B, $0A, $0A
	smpsVcDecayRate2    $00, $0A, $07, $05
	smpsVcDecayLevel    $0D, $09, $08, $0A
	smpsVcReleaseRate   $07, $06, $05, $04
	smpsVcTotalLevel    $80, $28, $25, $21

	; Voice $01
	; $3A
	; $01, $03, $02, $01,	$0F, $10, $11, $19
	; $0A, $05, $0A, $05,	$02, $02, $02, $02
	; $36, $36, $36, $58,	$19, $1E, $32, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $03, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $19, $11, $10, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $0A, $05, $0A
	smpsVcDecayRate2    $02, $02, $02, $02
	smpsVcDecayLevel    $05, $03, $03, $03
	smpsVcReleaseRate   $08, $06, $06, $06
	smpsVcTotalLevel    $80, $32, $1E, $19

	; Voice $02
	; $3D
	; $61, $34, $34, $72,	$14, $0B, $0B, $0B
	; $08, $05, $05, $05,	$00, $00, $00, $00
	; $12, $27, $27, $27,	$19, $99, $99, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $03, $06
	smpsVcCoarseFreq    $02, $04, $04, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0B, $0B, $0B, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $05, $08
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $02, $02, $01
	smpsVcReleaseRate   $07, $07, $07, $02
	smpsVcTotalLevel    $80, $99, $99, $19

	; Voice $03
	; $39
	; $02, $01, $02, $01,	$5F, $5F, $1F, $1F
	; $00, $00, $00, $00,	$00, $00, $0C, $0E
	; $0F, $0F, $0F, $0F,	$1B, $32, $28, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $01, $02
	smpsVcRateScale     $00, $00, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $0E, $0C, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $28, $32, $1B

	; Voice $04
	; $2C
	; $35, $76, $35, $36,	$1F, $1D, $1F, $1C
	; $03, $0A, $03, $0A,	$02, $02, $02, $02
	; $A3, $77, $A3, $77,	$1E, $80, $28, $85
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $03
	smpsVcCoarseFreq    $06, $05, $06, $05
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1C, $1F, $1D, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $03, $0A, $03
	smpsVcDecayRate2    $02, $02, $02, $02
	smpsVcDecayLevel    $07, $0A, $07, $0A
	smpsVcReleaseRate   $07, $03, $07, $03
	smpsVcTotalLevel    $85, $28, $80, $1E
