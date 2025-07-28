DoorIntoSummer_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     DoorIntoSummer_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $25
	smpsHeaderFM        DoorIntoSummer_FM1, $00, $09
	smpsHeaderFM        DoorIntoSummer_FM2, $0C, $10
	smpsHeaderFM        DoorIntoSummer_FM3, $0C, $10
	smpsHeaderFM        DoorIntoSummer_FM4, $00, $10
	smpsHeaderFM        DoorIntoSummer_FM5, $00, $10
	smpsHeaderFM        DoorIntoSummer_FM6, $00, $10
	smpsHeaderPSG       DoorIntoSummer_PSG1, $F4, $00, $00, cTone_0C
	smpsHeaderPSG       DoorIntoSummer_PSG2, $F4, $03, $00, cTone_0C
	smpsHeaderPSG       DoorIntoSummer_PSG3, $23, $01, $00, cTone_02
	smpsHeaderPWM       DoorIntoSummer_PWM1, $99
	smpsHeaderPWM       DoorIntoSummer_PWM2, $AA
	smpsHeaderPWM       DoorIntoSummer_PWM3, $99
	smpsHeaderPWM       DoorIntoSummer_PWM4, $99

DoorIntoSummer_FM1:
	smpsFMvoice         $00

DoorIntoSummer_Loop1:
	smpsCall            DoorIntoSummer_Call1
	smpsLoop            $00, $03, DoorIntoSummer_Loop1
	dc.b	nF1, $12, nF2, $06, nRst, $12, nF1, $06
	dc.b	nRst, $30

DoorIntoSummer_Loop2:
	smpsCall            DoorIntoSummer_Call2
	smpsLoop            $00, $07, DoorIntoSummer_Loop2
	dc.b	nC2, $12, nC3, $06, nRst, $12, nC2, $06
	dc.b	nRst, $30
	smpsCall            DoorIntoSummer_Call3
	dc.b	nA2, $24, nG1, nC2, $18
	smpsCall            DoorIntoSummer_Call3
	dc.b	nA1, $18, nA2, $06, nRst, nA1, $18, $0C
	dc.b	nG1, $06, nG2, nRst, nG2
	smpsCall            DoorIntoSummer_Call3
	dc.b	nA2, $24, nG1, nC2, $18
	smpsCall            DoorIntoSummer_Call3
	dc.b	nD2, $24, nE2, $18, nE3, $06, nRst, nA1
	dc.b	$0C, nA2, $06, nRst

DoorIntoSummer_Loop3:
	smpsCall            DoorIntoSummer_Call1
	smpsLoop            $00, $03, DoorIntoSummer_Loop3
	dc.b	nF1, $12, nF2, $06, nRst, $12, nF1, $06
	dc.b	nRst, nF1, $06, $0C, $0C, nG2, nA1, $12
	dc.b	nA2, $06, nRst, $12, nA1, $06, nRst, nA1
	dc.b	$06, $0C, $0C, nA2, $06, nRst, nAb1, $12
	dc.b	nAb2, $06, nRst, $12, nAb1, $06, nRst, nAb1
	dc.b	$06, $0C, $18, nG1, $12, nG2, $06, nRst
	dc.b	$12, nG1, $06, nRst, nG1, $06, $0C, $0C
	dc.b	nE1, nFs1, $12, nFs2, $06, nRst, $12, nD2
	dc.b	$06, nRst, nD2, $06, $0C, $0C, nD3, $06
	dc.b	nRst
	smpsLoop            $01, $02, DoorIntoSummer_Loop3

DoorIntoSummer_Loop4:
	smpsCall            DoorIntoSummer_Call1
	smpsLoop            $00, $03, DoorIntoSummer_Loop4
	dc.b	nF1, $12, nF2, $06, nRst, $0C, $06, nF1
	dc.b	$06, nRst, $30
	smpsJump            DoorIntoSummer_Loop2

DoorIntoSummer_Call1:
	dc.b	nF1, $12, nF2, $06, nRst, $12, nF1, $06
	dc.b	nRst, nF1, $06, $0C, $0C, nF2, $06, nRst
	smpsReturn

DoorIntoSummer_Call2:
	dc.b	nC2, $12, nC3, $06, nRst, $12, nC2, $06
	dc.b	nRst, nC2, $06, $0C, nBb1, nB1
	smpsReturn

DoorIntoSummer_Call3:
	dc.b	nRst, $0C, nF1, nRst, $06, nF1, $0C, nE1
	dc.b	$06, nRst, $30
	smpsReturn

DoorIntoSummer_FM2:
	smpsFMvoice         $02
	smpsCall            DoorIntoSummer_Call4

DoorIntoSummer_Jump1:
	smpsFMvoice         $04
	smpsAlterPitch      $F4
	dc.b	nRst, $0C, nC4, $06, $06

DoorIntoSummer_Loop5:
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nC4, $06, $06
	smpsLoop            $00, $1D, DoorIntoSummer_Loop5
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $2A
	smpsAlterPitch      $0C
	smpsFMvoice         $03
	smpsPan             panRight, $00
	dc.b	nRst, $3C, nG4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	smpsFMAlterVol      $09
	dc.b	nG4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $5A
	smpsFMAlterVol      $F7
	dc.b	nRst, $3C, nD5, $0C
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	smpsFMAlterVol      $09
	dc.b	nD5, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $ED
	dc.b	nRst, $36, nG4, $06, nA4, nE4, nD4, $0C
	dc.b	nC4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $36, nG4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	smpsFMAlterVol      $09
	dc.b	nG4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $5A
	smpsFMAlterVol      $F7
	dc.b	nRst, $3C, nD5, $0C
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	smpsFMAlterVol      $09
	dc.b	nD5, $0C
	smpsFMAlterVol      $F7
	smpsFMAlterVol      $02
	dc.b	nC4, $24
	smpsFMAlterVol      $FE
	dc.b	nD4
	smpsFMAlterVol      $FE
	dc.b	nE4, $18
	smpsFMAlterVol      $02

DoorIntoSummer_Loop6:
	smpsFMvoice         $02
	smpsPan             panCenter, $00
	dc.b	nRst, $18, nG5
	smpsFMvoice         $03
	smpsPan             panRight, $00
	dc.b	nRst, $06, nG3, nA3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4, $0C, nA3, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsFMvoice         $02
	smpsPan             panCenter, $00
	dc.b	nRst, $18, nG5
	smpsFMvoice         $03
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
	smpsFMvoice         $02
	smpsPan             panCenter, $00
	dc.b	nA4, $18, nB4, nC5, nD5, nG4, nG5, nF5
	dc.b	nE5
	smpsFMvoice         $03
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
	dc.b	nRst, $12, nE4, $3C, nD4, $0C
	smpsLoop            $00, $02, DoorIntoSummer_Loop6
	smpsFMvoice         $02
	smpsPan             panCenter, $00
	smpsCall            DoorIntoSummer_Call4
	smpsJump            DoorIntoSummer_Jump1

DoorIntoSummer_Call4:
	dc.b	nRst, $18, nG5, nRst, $30
	smpsLoop            $00, $03, DoorIntoSummer_Call4
	dc.b	nRst, $18, nG5, nRst, nG5
	smpsReturn

DoorIntoSummer_FM3:
	smpsFMvoice         $02
	smpsCall            DoorIntoSummer_Call5

DoorIntoSummer_Jump2:
	smpsFMvoice         $04
	smpsAlterPitch      $F4
	dc.b	nRst, $0C, nG3, $06, $06
	smpsCall            DoorIntoSummer_Call6
	smpsCall            DoorIntoSummer_Call6
	smpsCall            DoorIntoSummer_Call6
	smpsAlterPitch      $02
	smpsCall            DoorIntoSummer_Call6
	smpsCall            DoorIntoSummer_Call6
	smpsCall            DoorIntoSummer_Call6
	smpsAlterPitch      $FE
	smpsCall            DoorIntoSummer_Call6

DoorIntoSummer_Loop7:
	smpsCall            DoorIntoSummer_Call6
	smpsLoop            $00, $04, DoorIntoSummer_Loop7
	smpsAlterPitch      $02
	smpsCall            DoorIntoSummer_Call6
	smpsCall            DoorIntoSummer_Call6
	smpsCall            DoorIntoSummer_Call6
	smpsAlterPitch      $FE
	smpsCall            DoorIntoSummer_Call6
	smpsLoop            $01, $02, DoorIntoSummer_Loop7
	smpsCall            DoorIntoSummer_Call6
	smpsCall            DoorIntoSummer_Call6
	smpsCall            DoorIntoSummer_Call6
	smpsCall            DoorIntoSummer_Call6
	smpsAlterPitch      $02
	smpsCall            DoorIntoSummer_Call6
	smpsAlterPitch      $FE
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nA3, nG3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $2A
	smpsAlterPitch      $0C
	smpsFMvoice         $03
	smpsPan             panLeft, $00
	dc.b	nRst, $3C, nD4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	smpsFMAlterVol      $09
	dc.b	nD4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $5A
	smpsFMAlterVol      $F7
	dc.b	nRst, $3C, nG4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	smpsFMAlterVol      $09
	dc.b	nG4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $ED
	dc.b	nRst, $36, nB3, $06, nC4, nC4, nA3, $0C
	dc.b	nA3, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $36, nD4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	smpsFMAlterVol      $09
	dc.b	nD4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $5A
	smpsFMAlterVol      $F7
	dc.b	nRst, $3C, nG4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	smpsFMAlterVol      $09
	dc.b	nG4, $0C
	smpsFMAlterVol      $F7
	smpsFMAlterVol      $02
	dc.b	nG3, $24
	smpsFMAlterVol      $FE
	dc.b	nA3
	smpsFMAlterVol      $FE
	dc.b	nBb3, $18
	smpsFMAlterVol      $02

DoorIntoSummer_Loop8:
	smpsFMvoice         $02
	smpsFMAlterVol      $05
	smpsModSet          $01, $01, $04, $05
	dc.b	nRst, $1E, nG5, $12
	smpsFMvoice         $03
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
	smpsFMvoice         $02
	smpsFMAlterVol      $05
	smpsModSet          $01, $01, $04, $05
	dc.b	nRst, $1E, nG5, $12
	smpsFMvoice         $03
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
	smpsFMvoice         $02
	smpsFMAlterVol      $05
	smpsModSet          $01, $01, $04, $05
	dc.b	nRst, $06, nA4, $18, nB4, nC5, nD5, nG4
	dc.b	nG5, nF5, nE5, $12
	smpsFMvoice         $03
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
	dc.b	nRst, $12, nC4, $3C, $0C
	smpsLoop            $00, $02, DoorIntoSummer_Loop8
	smpsFMvoice         $02
	smpsCall            DoorIntoSummer_Call5
	smpsJump            DoorIntoSummer_Jump2

DoorIntoSummer_Call5:
	smpsPan             panLeft, $00
	smpsFMAlterVol      $05
	smpsModSet          $01, $01, $04, $05
	dc.b	nRst, $06, nRst, $18, nG5, nRst, $30, nRst
	dc.b	$18, nG5, nRst, $30, nRst, $18, nG5, nRst
	dc.b	$30, nRst, $18, nG5, nRst, nG5, $12
	smpsPan             panCenter, $00
	smpsFMAlterVol      $FB
	smpsModSet          $00, $00, $00, $00
	smpsReturn

	; Unused data
	smpsReturn

DoorIntoSummer_Call6:
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nG3, $06, $06
	smpsReturn

DoorIntoSummer_FM4:
	smpsFMvoice         $01
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $FE
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $02
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $FE
	smpsCall            DoorIntoSummer_Call8
	smpsAlterPitch      $02

DoorIntoSummer_Loop9:
	dc.b	nRst, $0C, nE3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nE3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nD3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $0C, nRst, $0C, nC3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nC3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nC3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nC3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $0C
	smpsLoop            $00, $03, DoorIntoSummer_Loop9
	dc.b	nRst, $0C, nE3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nE3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nD3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $0C, nRst, $0C, nC3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nC3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $2A
	smpsCall            DoorIntoSummer_Call9
	dc.b	nE3, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3, $18
	smpsCall            DoorIntoSummer_Call9
	dc.b	nE3, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $0C, $06
	smpsCall            DoorIntoSummer_Call9
	dc.b	nE3, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3, $18
	smpsCall            DoorIntoSummer_Call9
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

DoorIntoSummer_Loop10:
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $FE
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $02
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $FE
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $02
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $FE
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $02
	smpsCall            DoorIntoSummer_Call7
	smpsCall            DoorIntoSummer_Call7
	smpsLoop            $00, $02, DoorIntoSummer_Loop10
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $FE
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $02
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $FE
	smpsCall            DoorIntoSummer_Call8
	smpsAlterPitch      $02
	smpsJump            DoorIntoSummer_Loop9

DoorIntoSummer_Call7:
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

DoorIntoSummer_Call8:
	dc.b	nRst, $0C, nE3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nE3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $2A
	smpsReturn

DoorIntoSummer_Call9:
	dc.b	nRst, $0C, nE3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3, $0C, nD3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $2A
	smpsReturn

DoorIntoSummer_FM5:
	smpsFMvoice         $01
	smpsAlterPitch      $FC
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $FF
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $01
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $FF
	smpsCall            DoorIntoSummer_Call8
	smpsAlterPitch      $05

DoorIntoSummer_Loop11:
	dc.b	nRst, $0C, nC3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nC3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nB2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB2, $0C, nRst, $0C, nA2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nA2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nA2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nA2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB2, $0C
	smpsLoop            $00, $03, DoorIntoSummer_Loop11
	dc.b	nRst, $0C, nC3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nC3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nB2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB2, $0C, nRst, $0C, nA2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nA2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $2A
	smpsCall            DoorIntoSummer_Call10
	dc.b	nC3, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nBb2, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nBb2, $18
	smpsCall            DoorIntoSummer_Call10
	dc.b	nC3, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nC3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nC3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB2, $0C, $06
	smpsCall            DoorIntoSummer_Call10
	dc.b	nC3, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nBb2, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nBb2, $18
	smpsCall            DoorIntoSummer_Call10
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

DoorIntoSummer_Loop12:
	smpsAlterPitch      $FC
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $FF
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $01
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $FF
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $01
	smpsCall            DoorIntoSummer_Call7
	smpsCall            DoorIntoSummer_Call7
	smpsCall            DoorIntoSummer_Call7
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $04
	smpsLoop            $00, $02, DoorIntoSummer_Loop12
	smpsAlterPitch      $FC
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $FF
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $01
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $FF
	smpsCall            DoorIntoSummer_Call8
	smpsAlterPitch      $05
	smpsJump            DoorIntoSummer_Loop11

DoorIntoSummer_Call10:
	dc.b	nRst, $0C, nC3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nC3, $0C, nB2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $2A
	smpsReturn

DoorIntoSummer_FM6:
	smpsFMvoice         $01
	smpsAlterPitch      $F9
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $FE
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $02
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $FE
	smpsCall            DoorIntoSummer_Call8
	smpsAlterPitch      $09

DoorIntoSummer_Loop13:
	dc.b	nRst, $0C, nG2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nG2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nG2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $0C, nRst, $0C, nF2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nF2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nF2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nF2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $0C
	smpsLoop            $00, $03, DoorIntoSummer_Loop13
	dc.b	nRst, $0C, nG2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nG2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nG2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $0C, nRst, $0C, nF2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nF2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $2A
	smpsCall            DoorIntoSummer_Call11
	dc.b	nG2, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $18
	smpsCall            DoorIntoSummer_Call11
	dc.b	nG2, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $0C, $06
	smpsCall            DoorIntoSummer_Call11
	dc.b	nG2, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $18
	smpsCall            DoorIntoSummer_Call11
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

DoorIntoSummer_Loop14:
	smpsAlterPitch      $F9
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $FE
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $02
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $FE
	smpsCall            DoorIntoSummer_Call7
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $FE
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $02
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $02
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $07
	smpsLoop            $00, $02, DoorIntoSummer_Loop14
	smpsAlterPitch      $F9
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $FE
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $02
	smpsCall            DoorIntoSummer_Call7
	smpsAlterPitch      $FE
	smpsCall            DoorIntoSummer_Call8
	smpsAlterPitch      $09
	smpsJump            DoorIntoSummer_Loop13

DoorIntoSummer_Call11:
	dc.b	nRst, $0C, nA2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nA2, $0C, nAb2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $2A
	smpsReturn

DoorIntoSummer_PSG1:
	smpsPSGvoice        cTone_08

DoorIntoSummer_Jump4:
	dc.b	nRst, $60, nRst, nRst, nRst, $4E, nG3, $06
	dc.b	nA3, nB3

DoorIntoSummer_Jump3:
	smpsCall            DoorIntoSummer_Call12
	dc.b	nF4, $0C, nE4, nD4, nC4, $06, nD4, $0C
	dc.b	nRst, $06, nE4, $12, nRst, $06, nG3, $0C
	smpsCall            DoorIntoSummer_Call12
	dc.b	nG4, $0C, nA4, nB4, nC5, $18, nE4, $06
	dc.b	nRst, nD4, nG3, nA3, nB3
	smpsCall            DoorIntoSummer_Call12
	dc.b	nF4, $0C, nE4, nD4, nC4, $06, nD4, $0C
	dc.b	nRst, $06, nE4, $12, nRst, $06, nG3, $0C
	smpsCall            DoorIntoSummer_Call12
	dc.b	nF4, $0C, nE4, nD4, nC4, $06, nD4, nRst
	dc.b	$1E, nA3, $06, nC4, nD4, nEb4, $03, smpsNoAttack
	dc.b	nE4, $27, nG4, $1E, nF4, $0C, nE4, nD4
	dc.b	$12, nE4, nC4, $24, nRst, $06, nA3, nC4
	dc.b	nD4, nEb4, $03, smpsNoAttack, nE4, $27, nAb4, $12
	dc.b	nE4, $0C, nD4, nC4, nD4, $12, nC4, nG4
	dc.b	$24, nRst, $06, nA3, nC4, nD4, nEb4, $05
	dc.b	smpsNoAttack, nE4, $25, nG4, $1E, nF4, $0C, nE4
	dc.b	nD4, $12, nE4, nC4, $18, nA3, $0C, nB3
	dc.b	nC4, nD4, $12, nE4, $4E, nRst, $0C, nG3
	dc.b	nAb3, nA3, nC4, nA3, nG4, nF4
	smpsCall            DoorIntoSummer_Call13
	dc.b	nRst, $0C, nG3, nAb3, nA3, nC4, nA3, nG4
	dc.b	nF4
	smpsCall            DoorIntoSummer_Call13
	dc.b	nRst, $18, nE4, $3C, nD4, $0C, nC4, $60
	dc.b	nRst, $60, nRst, nRst, $4E, nG3, $06, nA3
	dc.b	nB3
	smpsJump            DoorIntoSummer_Jump3

DoorIntoSummer_Call12:
	dc.b	nC4, $0C, nG4, $06, nC4, nRst, nC4, nRst
	dc.b	nC4
	smpsLoop            $00, $02, DoorIntoSummer_Call12
	smpsReturn

DoorIntoSummer_Call13:
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

DoorIntoSummer_PSG2:
	smpsPSGvoice        cTone_08
	smpsModSet          $05, $01, $02, $04
	dc.b	nRst, $0C
	smpsJump            DoorIntoSummer_Jump4

DoorIntoSummer_Jump8:
	; Unused data
	smpsJump            DoorIntoSummer_Jump8

DoorIntoSummer_PSG3:
	smpsPSGform         $E7
	smpsCall            DoorIntoSummer_Call14
	smpsCall            DoorIntoSummer_Call15

DoorIntoSummer_Loop15:
	smpsCall            DoorIntoSummer_Call14
	smpsLoop            $00, $03, DoorIntoSummer_Loop15
	smpsCall            DoorIntoSummer_Call15
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C, nRst, nRst, $06
	smpsPSGvoice        cTone_05
	dc.b	nC4, $0C, $06, smpsNoAttack, $06, nRst
	smpsPSGvoice        cTone_02
	dc.b	nC4, $06, $06, nRst, nC4, $06, $0C, nRst
	dc.b	$06, nC4, nC4, nRst, nRst, $0C, nC4, $06
	dc.b	$06, nRst
	smpsPSGvoice        cTone_05
	dc.b	nC4, $06
	smpsPSGvoice        cTone_02
	dc.b	$06, nRst, nC4, $0C, $06, $06, nRst, $0C
	smpsPSGvoice        cTone_05
	dc.b	nC4, nRst, $06, nC4, $0C, $0C, nRst, $06
	smpsPSGvoice        cTone_02
	dc.b	nC4, $06, $06, nRst, nC4, nC4, $0C, nRst
	dc.b	$06, nC4, nC4, nRst, nRst, nC4, nC4
	smpsPSGvoice        cTone_05
	dc.b	nC4
	smpsPSGvoice        cTone_02
	dc.b	nC4, nC4, $0C, $06, nRst, $18, nRst, $0C
	smpsPSGvoice        cTone_05
	dc.b	nC4, nRst, $06, nC4, $0C, $0C, nRst, $06
	smpsPSGvoice        cTone_02
	dc.b	nC4, $06, $06, nRst, nC4, nC4, nC4, nRst
	dc.b	nC4, nC4, nRst, nRst, nC4, nC4, nRst, nC4
	smpsPSGvoice        cTone_05
	dc.b	nC4
	smpsPSGvoice        cTone_02
	dc.b	nC4, nRst, nC4, $0C, $06, $06, nRst, $0C
	smpsPSGvoice        cTone_05
	dc.b	nC4, $0C, nRst, $06, nC4, $0C, nC4, nRst
	dc.b	$2A, nRst, $60
	smpsPSGAlterVol     $01

DoorIntoSummer_Loop16:
	dc.b	nB3, $0C, $0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C
	smpsLoop            $00, $10, DoorIntoSummer_Loop16

DoorIntoSummer_Loop17:
	dc.b	nB3, $0C, $0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C
	smpsLoop            $00, $03, DoorIntoSummer_Loop17
	dc.b	nB3, $0C, $0C, $0C, $0C, nRst, $30
	smpsPSGAlterVol     $FF
	smpsJump            DoorIntoSummer_Loop15

DoorIntoSummer_Call14:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C, $0C, $0C, $0C, $0C
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsPSGvoice        cTone_02
	dc.b	$0C, $0C, $0C, $0C, $0C, $06, $06, $0C
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsPSGvoice        cTone_02
	dc.b	$0C
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsReturn

DoorIntoSummer_Call15:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C, $0C, $0C, $0C, $0C
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsPSGvoice        cTone_02
	dc.b	$0C, $0C, $0C, $0C, $0C, $06, $06, nRst
	dc.b	$30
	smpsReturn

DoorIntoSummer_PWM1:
	smpsCall            DoorIntoSummer_Call16
	dc.b	pElecKick, $18, nRst, $06, pElecKick, nRst, pElecKick, nRst
	dc.b	$18, pElecKick

DoorIntoSummer_Jump5:
	smpsCall            DoorIntoSummer_Call16
	dc.b	pElecKick, $18, nRst, $12, pElecKick, $06, nRst, pElecKick
	dc.b	pElecKick, nRst, nRst, $18
	smpsCall            DoorIntoSummer_Call16
	dc.b	pElecKick, $18, nRst, $06, pElecKick, nRst, pElecKick, nRst
	dc.b	$30

DoorIntoSummer_Loop18:
	dc.b	nRst, $0C, pElecKick, nRst, $06, pElecKick, nRst, pElecKick
	dc.b	nRst, $30, pElecKick, $18, nRst, $0C, pElecKick, nRst
	dc.b	pElecKick, nRst, $06, pElecKick, nRst, pElecKick
	smpsLoop            $00, $03, DoorIntoSummer_Loop18
	dc.b	nRst, $0C, pElecKick, nRst, $06, pElecKick, nRst, pElecKick
	dc.b	nRst, $18, pTomLo, $0C, pTomLo, pElecKick, $18, nRst
	dc.b	$0C, pElecKick, nRst, pElecKick, pElecKick, $18

DoorIntoSummer_Loop19:
	smpsCall            DoorIntoSummer_Call16
	dc.b	pElecKick, $18, nRst, $12, pElecKick, $06, nRst, pElecKick
	dc.b	pElecKick, nRst, nRst, $18
	smpsLoop            $00, $04, DoorIntoSummer_Loop19
	smpsCall            DoorIntoSummer_Call16
	dc.b	pElecKick, $18, nRst, $06, pElecKick, nRst, pElecKick, nRst
	dc.b	$18, pElecKick
	smpsJump            DoorIntoSummer_Jump5

DoorIntoSummer_Call16:
	dc.b	pElecKick, $18, nRst, $12, pElecKick, $06, nRst, pElecKick
	dc.b	pElecKick, nRst, nRst, $0C, pElecKick, pElecKick, $18, nRst
	dc.b	$12, pElecKick, $06, nRst, pElecKick, pElecKick, nRst, nRst
	dc.b	$18, pElecKick, $18, nRst, $12, pElecKick, $06, nRst
	dc.b	pElecKick, pElecKick, nRst, nRst, $0C, pElecKick
	smpsReturn

DoorIntoSummer_PWM2:
	dc.b	$96, $18, pElecSnare, nRst, pElecSnare, nRst, pElecSnare, nRst
	dc.b	pElecSnare, nRst, pElecSnare, nRst, pElecSnare, nRst, pElecSnare, nRst
	dc.b	pElecSnare

DoorIntoSummer_Jump6:
	smpsCall            DoorIntoSummer_Call17
	smpsCall            DoorIntoSummer_Call17
	dc.b	nRst, $48, pElecSnare, $18, nRst, pElecSnare, nRst, pElecSnare
	dc.b	nRst, $48, pElecSnare, $18, nRst, pElecSnare, nRst, pElecSnare
	dc.b	$06
	smpsFMAlterVol      $F9
	dc.b	pTomHi
	smpsFMAlterVol      $07
	dc.b	pTomMid
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	dc.b	nRst, $48, pElecSnare, $18, nRst, $0C, pElecSnare, pElecSnare
	dc.b	$18, nRst, pElecSnare, nRst, $3C
	smpsFMAlterVol      $90
	dc.b	pTomLo, $04, pTomLo, pTomLo
	smpsFMAlterVol      $70
	dc.b	pElecSnare, $0C, pElecSnare, nRst, $48, pElecSnare, $06, pElecSnare
	dc.b	pElecSnare, pElecSnare

DoorIntoSummer_Loop20:
	smpsCall            DoorIntoSummer_Call17
	smpsLoop            $01, $04, DoorIntoSummer_Loop20

DoorIntoSummer_Loop21:
	dc.b	nRst, $18, pElecSnare
	smpsLoop            $00, $08, DoorIntoSummer_Loop21
	smpsJump            DoorIntoSummer_Jump6

DoorIntoSummer_Call17:
	dc.b	nRst, $18, pElecSnare
	smpsLoop            $00, $07, DoorIntoSummer_Call17
	dc.b	nRst, $0C, pElecSnare, pElecSnare, $06, pElecSnare, pTomMid, $0C
	smpsReturn

DoorIntoSummer_PWM3:
	dc.b	$96, $60, nRst, nRst, nRst

DoorIntoSummer_Jump7:
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst, nRst
	smpsFMAlterVol      $C0
	dc.b	nRst, $0C, pCrash, $54
	smpsFMAlterVol      $40
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst
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

DoorIntoSummer_Loop22:
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsLoop            $00, $03, DoorIntoSummer_Loop22
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst
	smpsFMAlterVol      $FC
	dc.b	pSplash
	smpsFMAlterVol      $04
	dc.b	nRst
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsJump            DoorIntoSummer_Jump7

DoorIntoSummer_PWM4:
	smpsFMAlterVol      $F9

DoorIntoSummer_Loop23:
	dc.b	$96, $48, pClap, $18
	smpsLoop            $00, $04, DoorIntoSummer_Loop23
	smpsFMAlterVol      $07
	smpsFMAlterVol      $BC

DoorIntoSummer_Loop24:
	smpsCall            DoorIntoSummer_Call18
	smpsLoop            $01, $03, DoorIntoSummer_Loop24

DoorIntoSummer_Loop25:
	dc.b	nRst, $0C, pElecHiHat
	smpsLoop            $00, $05, DoorIntoSummer_Loop25
	dc.b	nRst, $0C, pElecHiHat, $06, $06, nRst, $30
	smpsFMAlterVol      $44

DoorIntoSummer_Loop26:
	dc.b	$96, $60
	smpsLoop            $00, $08, DoorIntoSummer_Loop26
	smpsFMAlterVol      $D0

DoorIntoSummer_Loop27:
	dc.b	nRst, $06, pRideBell, nRst, pRideBell, nRst, pRideBell, pRideBell
	dc.b	nRst, pRideBell, nRst, pRideBell, nRst, pRideBell, nRst, pRideBell
	dc.b	nRst, pRideBell, nRst, pRideBell, pRideBell, nRst, pRideBell, pRideBell
	dc.b	nRst, pRideBell, nRst, pRideBell, nRst, pRideBell, nRst, pRideBell
	dc.b	pRideBell, nRst, pRideBell, nRst, pRideBell, pRideBell, nRst, pRideBell
	dc.b	pRideBell, nRst, pRideBell, pRideBell, nRst, pRideBell, pRideBell, nRst
	dc.b	pRideBell, nRst, pRideBell, nRst, pRideBell, pRideBell, nRst, pRideBell
	dc.b	pRideBell, nRst, pRideBell, pRideBell, nRst, pRideBell, pRideBell, pRideBell
	dc.b	pRideBell
	smpsLoop            $00, $04, DoorIntoSummer_Loop27
	dc.b	nRst, $06, pRideBell, nRst, pRideBell, nRst, pRideBell, pRideBell
	dc.b	nRst, pRideBell, nRst, pRideBell, nRst, pRideBell, nRst, pRideBell
	dc.b	nRst, pRideBell, nRst, pRideBell, pRideBell, nRst, pRideBell, pRideBell
	dc.b	nRst, pRideBell, nRst, pRideBell, nRst, pRideBell, nRst, pRideBell
	dc.b	pRideBell, nRst, pRideBell, nRst, pRideBell, pRideBell, nRst, pRideBell
	dc.b	pRideBell, nRst, pRideBell, pRideBell, nRst, pRideBell, pRideBell, nRst
	dc.b	pRideBell, nRst, pRideBell, nRst, pRideBell, pRideBell, nRst, pRideBell
	dc.b	pRideBell, nRst, $30
	smpsFMAlterVol      $30
	smpsFMAlterVol      $BC
	smpsJump            DoorIntoSummer_Loop24

DoorIntoSummer_Call18:
	dc.b	nRst, $0C, pElecHiHat
	smpsLoop            $00, $07, DoorIntoSummer_Call18
	dc.b	smpsNoAttack, $0C, pElecHiHat, $06, $06
	smpsReturn

DoorIntoSummer_Voices:
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
	; $1C
	; $32, $02, $04, $34,	$5F, $FF, $5F, $FF
	; $05, $05, $05, $07,	$15, $10, $21, $13
	; $9F, $3F, $5F, $AF,	$30, $80, $02, $84
	smpsVcAlgorithm     $04
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $00, $03
	smpsVcCoarseFreq    $04, $04, $02, $02
	smpsVcRateScale     $03, $01, $03, $01
	smpsVcAttackRate    $3F, $1F, $3F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $05, $05, $05
	smpsVcDecayRate2    $13, $21, $10, $15
	smpsVcDecayLevel    $0A, $05, $03, $09
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $84, $02, $80, $30

	; Voice $02
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

	; Voice $03
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
