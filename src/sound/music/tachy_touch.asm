TachyTouch_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     TachyTouch_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $55
	smpsHeaderFM        TachyTouch_FM1, $F4, $0E
	smpsHeaderFM        TachyTouch_FM2, $00, $07
	smpsHeaderFM        TachyTouch_FM3, $FC, $0A
	smpsHeaderFM        TachyTouch_FM4, $00, $15
	smpsHeaderFM        TachyTouch_FM5, $FC, $18
	smpsHeaderFM        TachyTouch_FM6, $00, $1C
	smpsHeaderPSG       TachyTouch_PSG1, $E8, $01, $00, cTone_00
	smpsHeaderPSG       TachyTouch_PSG2, $E8, $02, $00, cTone_00
	smpsHeaderPSG       TachyTouch_PSG3, $23, $02, $00, cTone_00
	smpsHeaderPWM       TachyTouch_PWM1, $FF
	smpsHeaderPWM       TachyTouch_PWM2, $DD
	smpsHeaderPWM       TachyTouch_PWM3, $BB
	smpsHeaderPWM       TachyTouch_PWM4, $00

TachyTouch_FM1:
	smpsFMvoice         $00
	smpsPan             panCenter, $00
	dc.b	nRst, $40, nRst, $40, nRst, $40, nCs3, $04
	dc.b	nCs3, nCs3, nCs3, nCs3, nCs3, nCs3, nCs3, nCs3
	dc.b	nRst, nCs4, nRst, nC3, $02, nCs3, $0E

TachyTouch_Loop1:
	dc.b	nEb3, $04, nRst, nEb3, nEb3, nEb3, nRst, nEb3
	dc.b	nEb3, nEb3, nRst, nEb3, nEb3, nEb3, nRst, nEb3
	dc.b	nEb3, nCs3, $04, nRst, nCs3, nCs3, nCs3, nRst
	dc.b	nCs3, nCs3, nCs3, nRst, nCs3, nCs3, nCs3, nRst
	dc.b	nCs3, nCs3
	smpsLoop            $00, $04, TachyTouch_Loop1
	dc.b	nEb3, $08, nRst, nBb3, nRst, $04, nEb3, $08
	dc.b	nRst, $04, nEb3, $08, nRst, $04, nBb3, $08
	dc.b	nRst, $04, nCs3, $08, nRst, nAb3, nRst, $04
	dc.b	nCs3, $08, nRst, $04, nCs3, $08, nRst, $04
	dc.b	nAb3, $08, nRst, $04, nEb3, $08, nRst, nBb3
	dc.b	nRst, $04, nEb3, $08, nRst, $04, nEb3, $08
	dc.b	nRst, $04, nBb3, $08, nRst, $04, nCs3, $08
	dc.b	nRst, nAb3, nRst, $04, nCs3, $08, nRst, $1C
	dc.b	nEb3, $08, nRst, nBb3, nRst, $04, nEb3, $08
	dc.b	nRst, $04, nEb3, $08, nRst, $04, nBb3, $08
	dc.b	nRst, $04, nCs3, $08, nRst, nAb3, nRst, $04
	dc.b	nCs3, $08, nRst, $04, nCs3, $08, nRst, $04
	dc.b	nAb3, $08, nRst, $04, nEb3, $40, nCs3, $20
	dc.b	nRst, $08, nCs3, nC4, $02, nCs3, $0E
	smpsJump            TachyTouch_Loop1

TachyTouch_FM2:
	smpsPan             panCenter, $00
	smpsFMvoice         $01
	smpsCall            TachyTouch_Call1
	smpsCall            TachyTouch_Call2

TachyTouch_Loop2:
	smpsCall            TachyTouch_Call1
	smpsLoop            $00, $03, TachyTouch_Loop2
	smpsCall            TachyTouch_Call2
	smpsFMvoice         $02
	dc.b	nEb4, $08, nRst, nG4, nRst, nAb4, nRst, $04
	dc.b	nBb4, $08, nRst, $04, nEb4, $08, nRst, nCs4
	dc.b	nF4, nRst, nAb4, nRst, $04, nBb4, $08, nRst
	dc.b	$04, nCs4, $08, nEb4, nRst, nG4, nRst, nAb4
	dc.b	nRst, $04, nBb4, $08, nRst, $04, nEb4, $08
	dc.b	nRst, nCs4, nF4, nRst, nAb4, nRst, $04, nBb4
	dc.b	$08, nRst, $04, nCs4, $08, nEb4, nRst, nG4
	dc.b	nRst, nAb4, nRst, $04, nBb4, $08, nRst, $04
	dc.b	nEb5, $08, nRst, nCs4, nF4, nRst, nAb4, nRst
	dc.b	$04, nBb4, $08, nRst, $04, nCs5, $08, nEb4
	dc.b	nRst, nG4, nRst, nAb4, nRst, $04, nBb4, $08
	dc.b	nRst, $04, nEb5, $08, nRst, nCs4, nF4, nRst
	dc.b	nAb4, nRst, $04, nBb4, $08, nRst, $0C
	smpsJump            TachyTouch_Loop2

TachyTouch_Call1:
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $04, nG5, $08, nC5, $02, nRst, nRst
	dc.b	$04
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nC5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nC5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nC5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nC5, $04, nF5, $08
	smpsReturn

TachyTouch_Call2:
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $04, nG5, $08, nC5, $02, nRst, nRst
	dc.b	$04
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nC5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nF4, $04, nRst, $20
	smpsReturn

TachyTouch_FM3:
	smpsPan             panCenter, $00
	smpsFMvoice         $01
	smpsCall            TachyTouch_Call1
	smpsCall            TachyTouch_Call2

TachyTouch_Loop3:
	smpsCall            TachyTouch_Call1
	smpsLoop            $00, $03, TachyTouch_Loop3
	smpsCall            TachyTouch_Call2
	smpsFMvoice         $02
	smpsAlterPitch      $FF
	dc.b	nEb4, $08, nRst, nG4, nRst, nAb4, nRst, $04
	dc.b	nBb4, $08, nRst, $04, nEb4, $08, nRst, nCs4
	dc.b	nF4, nRst, nAb4, nRst, $04, nBb4, $08, nRst
	dc.b	$04, nCs4, $08, nEb4, nRst, nG4, nRst, nAb4
	dc.b	nRst, $04, nBb4, $08, nRst, $04, nEb4, $08
	dc.b	nRst, nCs4, nF4, nRst, nAb4, nRst, $04, nBb4
	dc.b	$08, nRst, $04, nCs4, $08, nEb4, nRst, nG4
	dc.b	nRst, nAb4, nRst, $04, nBb4, $08, nRst, $04
	dc.b	nEb5, $08, nRst, nCs4, nF4, nRst, nAb4, nRst
	dc.b	$04, nBb4, $08, nRst, $04, nCs5, $08, nEb4
	dc.b	nRst, nG4, nRst, nAb4, nRst, $04, nBb4, $08
	dc.b	nRst, $04, nEb5, $08, nRst, nCs4, nF4, nRst
	dc.b	nAb4, nRst, $04, nBb4, $08, nRst, $0C
	smpsAlterPitch      $01
	smpsJump            TachyTouch_Loop3

TachyTouch_FM4:
	smpsFMvoice         $01
	smpsPan             panLeft, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $04
	smpsCall            TachyTouch_Call1
	smpsCall            TachyTouch_Call2

TachyTouch_Loop4:
	smpsCall            TachyTouch_Call1
	smpsLoop            $00, $03, TachyTouch_Loop4
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $04, nG5, $08, nC5, $02, nRst, nRst
	dc.b	$04
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nC5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nF4, $04, nRst, $1C
	smpsFMvoice         $03
	smpsModSet          $00, $00, $00, $00
	smpsFMAlterVol      $03

TachyTouch_Loop5:
	dc.b	nG4, $40, nF4
	smpsLoop            $00, $04, TachyTouch_Loop5
	dc.b	nRst, $04
	smpsFMvoice         $01
	smpsModSet          $01, $01, $02, $05
	smpsFMAlterVol      $FD
	smpsJump            TachyTouch_Loop4

TachyTouch_FM5:
	smpsFMvoice         $01
	smpsPan             panRight, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $04
	smpsCall            TachyTouch_Call1
	smpsCall            TachyTouch_Call2

TachyTouch_Loop6:
	smpsCall            TachyTouch_Call1
	smpsLoop            $00, $03, TachyTouch_Loop6
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $04, nG5, $08, nC5, $02, nRst, nRst
	dc.b	$04
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nC5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nF4, $04, nRst, $1C
	smpsFMvoice         $03
	smpsAlterPitch      $FF
	smpsFMAlterVol      $03

TachyTouch_Loop7:
	dc.b	nG4, $40, nF4
	smpsLoop            $00, $04, TachyTouch_Loop7
	smpsAlterPitch      $01
	dc.b	nRst, $04
	smpsFMvoice         $01
	smpsModSet          $00, $00, $00, $00
	smpsFMAlterVol      $FD
	smpsJump            TachyTouch_Loop6

TachyTouch_FM6:
	smpsPan             panCenter, $00
	dc.b	nRst, $40, $40, $40, $40
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $04

TachyTouch_Loop8:
	smpsFMvoice         $04
	dc.b	nBb5, $03, nRst, $01, nBb5, $03, nRst, $01
	dc.b	nBb5, $03, nRst, $01, nF5, $03, nRst, $01
	dc.b	nBb5, $03, nRst, $01, nBb5, $03, nRst, $01
	dc.b	nBb5, $03, nRst, $01, nF5, $03, nRst, $01
	dc.b	nD5, $03, nRst, $01, nD5, $03, nRst, $01
	dc.b	nD5, $03, nRst, $01, nF5, $03, nRst, $01
	dc.b	nD5, $03, nRst, $01, nD5, $03, nRst, $01
	dc.b	nD5, $03, nRst, $01, nF5, $03, nRst, $01
	dc.b	nAb5, $03, nRst, $01, nAb5, $03, nRst, $01
	dc.b	nAb5, $03, nRst, $01, nEb5, $03, nRst, $01
	dc.b	nAb5, $03, nRst, $01, nAb5, $03, nRst, $01
	dc.b	nAb5, $03, nRst, $01, nEb5, $03, nRst, $01
	dc.b	nC5, $03, nRst, $01, nC5, $03, nRst, $01
	dc.b	nC5, $03, nRst, $01, nEb5, $03, nRst, $01
	dc.b	nC5, $03, nRst, $01, nC5, $03, nRst, $01
	dc.b	nC5, $03, nRst, $01, nEb5, $03, nRst, $01
	smpsLoop            $00, $04, TachyTouch_Loop8
	smpsFMvoice         $02
	dc.b	nEb4, $08, nRst, nG4, nRst, nAb4, nRst, $04
	dc.b	nBb4, $08, nRst, $04, nEb4, $08, nRst, nCs4
	dc.b	nF4, nRst, nAb4, nRst, $04, nBb4, $08, nRst
	dc.b	$04, nCs4, $08, nEb4, nRst, nG4, nRst, nAb4
	dc.b	nRst, $04, nBb4, $08, nRst, $04, nEb4, $08
	dc.b	nRst, nCs4, nF4, nRst, nAb4, nRst, $04, nBb4
	dc.b	$08, nRst, $04, nCs4, $08, nEb4, nRst, nG4
	dc.b	nRst, nAb4, nRst, $04, nBb4, $08, nRst, $04
	dc.b	nEb5, $08, nRst, nCs4, nF4, nRst, nAb4, nRst
	dc.b	$04, nBb4, $08, nRst, $04, nCs5, $08, nEb4
	dc.b	nRst, nG4, nRst, nAb4, nRst, $04, nBb4, $08
	dc.b	nRst, $04, nEb5, $08, nRst, nCs4, nF4, nRst
	dc.b	nAb4, nRst, $04, nBb4, $08, nRst, $0C
	smpsJump            TachyTouch_Loop8

TachyTouch_PSG1:
	smpsPSGvoice        cTone_08
	dc.b	nRst, $40, $40, $40, $40

TachyTouch_Loop9:
	dc.b	nBb5, $02, nRst, nBb5, nRst, nBb5, nRst, nF5
	dc.b	nRst, nBb5, nRst, nBb5, nRst, nBb5, nRst, nF5
	dc.b	nRst, nD5, nRst, nD5, nRst, nD5, nRst, nF5
	dc.b	nRst, nD5, nRst, nD5, nRst, nD5, nRst, nF5
	dc.b	nRst, nAb5, nRst, nAb5, nRst, nAb5, nRst, nEb5
	dc.b	nRst, nAb5, nRst, nAb5, nRst, nAb5, nRst, nEb5
	dc.b	nRst, nC5, nRst, nC5, nRst, nC5, nRst, nEb5
	dc.b	nRst, nC5, nRst, nC5, nRst, nC5, nRst, nEb5
	dc.b	nRst
	smpsLoop            $00, $04, TachyTouch_Loop9
	smpsPSGAlterVol     $FF

TachyTouch_Loop10:
	dc.b	nEb5, $02, nRst, $06, nBb4, $02, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, nEb5
	dc.b	nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, $06
	smpsLoop            $00, $04, TachyTouch_Loop10

TachyTouch_Loop11:
	dc.b	nEb5, $02, nRst, $06, nBb4, $02, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, nEb5
	dc.b	nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nF5, $02, nRst, $06
	dc.b	nEb5, $02, nRst, $06, nBb4, $02, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, nEb5
	dc.b	nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, $06
	smpsLoop            $00, $02, TachyTouch_Loop11
	smpsPSGAlterVol     $01
	smpsJump            TachyTouch_Loop9

TachyTouch_PSG2:
	smpsPSGvoice        cTone_08
	dc.b	nRst, $40, nRst, $40, nRst, $40, nRst, $40

TachyTouch_Loop12:
	smpsAlterPitch      $FE
	dc.b	nBb5, $02, nRst, nBb5, nRst, nBb5, nRst, nF5
	dc.b	nRst, nBb5, nRst, nBb5, nRst, nBb5, nRst, nF5
	dc.b	nRst, nD5, nRst, nD5, nRst, nD5, nRst, nF5
	dc.b	nRst, nD5, nRst, nD5, nRst, nD5, nRst, nF5
	dc.b	nRst, nAb5, nRst, nAb5, nRst, nAb5, nRst, nEb5
	dc.b	nRst, nAb5, nRst, nAb5, nRst, nAb5, nRst, nEb5
	dc.b	nRst, nC5, nRst, nC5, nRst, nC5, nRst, nEb5
	dc.b	nRst, nC5, nRst, nC5, nRst, nC5, nRst, nEb5
	dc.b	nRst
	smpsAlterPitch      $02
	smpsLoop            $00, $04, TachyTouch_Loop12
	smpsPSGAlterVol     $03
	smpsModSet          $01, $01, $03, $06
	dc.b	nRst, $08

TachyTouch_Loop13:
	dc.b	nEb5, $02, nRst, $06, nBb4, $02, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, nEb5
	dc.b	nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, $06
	smpsLoop            $00, $03, TachyTouch_Loop13
	dc.b	nEb5, $02, nRst, $06, nBb4, $02, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, nEb5
	dc.b	nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06
	dc.b	nCs5, $02, nRst, $06
	smpsModSet          $00, $00, $00, $00
	smpsPSGAlterVol     $FD
	smpsPSGAlterVol     $FE

TachyTouch_Loop14:
	smpsAlterPitch      $07
	dc.b	nEb5, $02, nRst, $06, nBb4, $02, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, nEb5
	dc.b	nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nF5, $02, nRst, $06
	dc.b	nEb5, $02, nRst, $06, nBb4, $02, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, nEb5
	dc.b	nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, $06
	smpsAlterPitch      $F9
	smpsLoop            $00, $02, TachyTouch_Loop14
	smpsPSGAlterVol     $02
	smpsJump            TachyTouch_Loop12

TachyTouch_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        cTone_02

TachyTouch_Loop15:
	dc.b	nRst, $08, nC4, $04, nC4, nRst, $08, nC4
	dc.b	$04, nC4, nRst, $08, nC4, $04, nC4, nRst
	dc.b	$04, nC4, nRst, $08
	smpsLoop            $00, $04, TachyTouch_Loop15
	smpsPSGAlterVol     $FE

TachyTouch_Jump1:
	smpsPSGvoice        cTone_05
	dc.b	nC4, $04
	smpsPSGvoice        cTone_02
	smpsPSGAlterVol     $03
	dc.b	nC4, $04
	smpsPSGAlterVol     $FE
	dc.b	nC4, $04
	smpsPSGAlterVol     $02
	dc.b	nC4, $04
	smpsPSGAlterVol     $FD

TachyTouch_Loop16:
	dc.b	nC4, $04
	smpsPSGAlterVol     $03
	dc.b	nC4, $04
	smpsPSGAlterVol     $FE
	dc.b	nC4, $04
	smpsPSGAlterVol     $02
	dc.b	nC4, $04
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $03, TachyTouch_Loop16
	smpsJump            TachyTouch_Jump1

TachyTouch_PWM1:
	dc.b	$96, $40, $40, $40, $40

TachyTouch_Loop17:
	dc.b	pKick, $10, pKick, pKick, pKick, pKick, pKick, pKick
	dc.b	pKick, $0C, pKick, $04
	smpsLoop            $00, $04, TachyTouch_Loop17

TachyTouch_Loop18:
	dc.b	pKick, $10, pKick, pKick, pKick
	smpsLoop            $00, $08, TachyTouch_Loop18
	smpsJump            TachyTouch_Loop17

TachyTouch_PWM2:
	dc.b	$96, $40, $96, $40, $96, $40, $96, $20
	dc.b	pElecSnare, $04, $08, $04, $08, $08

TachyTouch_Jump2:
	smpsCall            TachyTouch_Call3
	dc.b	nRst, $10, pElecSnare, $0C, $04, nRst, $04, pElecSnare
	dc.b	$04, $08, $10, nRst, $10, pElecSnare, $0C, $04
	dc.b	nRst, $04, pElecSnare, $04, $08, pElecSnare, $08, $04
	dc.b	$04, nRst, $10, pElecSnare, $0C, $04, nRst, $04
	dc.b	pElecSnare, $04, $08, $10, nRst, $10, pElecSnare, $0C
	dc.b	$04, pElecSnare, $04, $08, $04, pElecSnare, $08, $08

TachyTouch_Loop19:
	smpsCall            TachyTouch_Call3
	smpsLoop            $00, $02, TachyTouch_Loop19
	smpsJump            TachyTouch_Jump2

TachyTouch_Call3:
	dc.b	nRst, $10, pElecSnare, $0C, $04, nRst, $04, pElecSnare
	dc.b	$04, $08, $10, nRst, $10, pElecSnare, $0C, $04
	dc.b	nRst, $04, pElecSnare, $04, $08, $08, $04, $04
	dc.b	nRst, $10, pElecSnare, $0C, $04, nRst, $04, pElecSnare
	dc.b	$04, $08, $10, nRst, $10, pElecSnare, $0C, $04
	dc.b	nRst, $04, pElecSnare, pElecSnare, pElecSnare, pElecSnare, $08, $04
	dc.b	$04
	smpsReturn

TachyTouch_PWM3:
	dc.b	nRst, $40, nRst, $40, nRst, $40, nRst, $40

TachyTouch_Loop20:
	dc.b	nRst, $40
	smpsLoop            $00, $08, TachyTouch_Loop20

TachyTouch_Loop21:
	dc.b	pRideBell, $08, $96, pRideBell, $96, pRideBell, $08, $96
	dc.b	$04, pRideBell, $04, smpsNoAttack, $04, $96, pRideBell, $08
	dc.b	$96, $08, pRideBell, $04, $96, pRideBell, $08, $96
	dc.b	pRideBell, $08, $96, $04, pRideBell, $04, smpsNoAttack, $04
	dc.b	$96, pRideBell, $04, $96
	smpsLoop            $00, $03, TachyTouch_Loop21
	dc.b	pRideBell, $08, $96, pRideBell, $96, pRideBell, $08, $96
	dc.b	$04, pRideBell, $04, smpsNoAttack, $04, $96, pRideBell, $08
	dc.b	$96, $08, pRideBell, $04, $96, pRideBell, $08, $96
	dc.b	pRideBell, $08, $96, $04, pRideBell, $04, smpsNoAttack, $04
	dc.b	$96, nRst, $08
	smpsJump            TachyTouch_Loop20

TachyTouch_PWM4:
	smpsStop

TachyTouch_Voices:
	; Voice $00
	; $3D
	; $01, $00, $01, $02,	$1F, $1F, $1F, $1F
	; $0D, $0C, $0C, $0C,	$0D, $0A, $0A, $0A
	; $F6, $97, $A7, $A7,	$1C, $80, $80, $85
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0C, $0C, $0D
	smpsVcDecayRate2    $0A, $0A, $0A, $0D
	smpsVcDecayLevel    $0A, $0A, $09, $0F
	smpsVcReleaseRate   $07, $07, $07, $06
	smpsVcTotalLevel    $85, $80, $80, $1C

	; Voice $01
	; $3A
	; $01, $02, $01, $01,	$14, $14, $17, $14
	; $0A, $0C, $03, $07,	$02, $08, $08, $03
	; $07, $E9, $A8, $18,	$1C, $2B, $28, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $17, $14, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $03, $0C, $0A
	smpsVcDecayRate2    $03, $08, $08, $02
	smpsVcDecayLevel    $01, $0A, $0E, $00
	smpsVcReleaseRate   $08, $08, $09, $07
	smpsVcTotalLevel    $80, $28, $2B, $1C

	; Voice $02
	; $3A
	; $01, $0F, $01, $01,	$0F, $0F, $0F, $14
	; $0A, $0A, $0A, $05,	$02, $02, $02, $08
	; $56, $A6, $56, $17,	$19, $28, $28, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $0F, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $0F, $0F, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $0A, $0A, $0A
	smpsVcDecayRate2    $08, $02, $02, $02
	smpsVcDecayLevel    $01, $05, $0A, $05
	smpsVcReleaseRate   $07, $06, $06, $06
	smpsVcTotalLevel    $80, $28, $28, $19

	; Voice $03
	; $3D
	; $01, $22, $51, $01,	$0F, $0F, $0F, $4F
	; $0A, $05, $05, $05,	$00, $00, $00, $00
	; $56, $28, $28, $28,	$23, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $02, $00
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $01, $00, $00, $00
	smpsVcAttackRate    $0F, $0F, $0F, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $05, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $02, $02, $05
	smpsVcReleaseRate   $08, $08, $08, $06
	smpsVcTotalLevel    $80, $80, $80, $23

	; Voice $04
	; $39
	; $02, $01, $02, $01,	$5F, $5F, $1F, $0F
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $76,	$1B, $32, $28, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $01, $02
	smpsVcRateScale     $00, $00, $01, $01
	smpsVcAttackRate    $0F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $07, $00, $00, $00
	smpsVcReleaseRate   $06, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $28, $32, $1B
