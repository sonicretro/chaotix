NewMoon_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     NewMoon_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $1C
	smpsHeaderFM        NewMoon_FM1, $00, $14
	smpsHeaderFM        NewMoon_FM2, $00, $0E
	smpsHeaderFM        NewMoon_FM3, $00, $0E
	smpsHeaderFM        NewMoon_FM4, $00, $14
	smpsHeaderFM        NewMoon_FM5, $00, $13
	smpsHeaderFM        NewMoon_FM6, $00, $16
	smpsHeaderPSG       NewMoon_PSG1, $F4, $02, $00, cTone_0C
	smpsHeaderPSG       NewMoon_PSG2, $F4, $02, $00, cTone_0C
	smpsHeaderPSG       NewMoon_PSG3, $23, $02, $00, cTone_02
	smpsHeaderPWM       NewMoon_PWM1, $AA
	smpsHeaderPWM       NewMoon_PWM2, $BB
	smpsHeaderPWM       NewMoon_PWM3, $99
	smpsHeaderPWM       NewMoon_PWM4, $77

NewMoon_FM1:
	smpsFMvoice         $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $08
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
	smpsFMAlterVol      $F8
	smpsFMvoice         $02
	smpsFMAlterVol      $02
	smpsCall            NewMoon_Call1
	smpsFMAlterVol      $0A
	smpsCall            NewMoon_Call1
	smpsFMAlterVol      $F6
	dc.b	nRst, $60
	smpsCall            NewMoon_Call1
	smpsFMAlterVol      $0A
	smpsCall            NewMoon_Call1
	smpsFMAlterVol      $F6
	dc.b	nRst, $3C
	smpsFMAlterVol      $FE
	smpsPan             panCenter, $00
	smpsFMvoice         $00
	smpsFMAlterVol      $F8
	dc.b	nF3, $06, nG3, nBb2, nC3, nF2, nG2

NewMoon_Jump1:
	smpsCall            NewMoon_Call2
	dc.b	nRst, $06, nG1
	smpsCall            NewMoon_Call2
	dc.b	nRst, $06, nF1, nG1, $06, nF1, nFs1, nG1
	dc.b	nRst, $18, nFs1, $06, nRst, nF2, nFs2, nRst
	dc.b	nC2, nD2, nFs1, nF2, nD2, nEb2, nE2, nRst
	dc.b	$12, nEb2, $06, nRst, nRst, nD3, nEb3, nF2
	dc.b	nG2, nD2, nEb2, nD2, nC2, nCs2, nD2, nRst
	dc.b	$12, nD2, $06, nRst, nRst, nF2, nFs2, nRst
	dc.b	nFs1, nRst, nFs1, nFs1, nE1, nF1, nFs1, nRst
	dc.b	nFs1, nRst, nFs1, nRst, nRst, nF2, nFs2, nRst
	dc.b	nD2, nRst, nD2, nEb2, nC2, nD2, nEb2, nRst
	dc.b	$18, nF2, $06, nRst, nF2, nRst, nRst, nRst
	dc.b	nEb2, nF2, nFs1, nEb1, nF1, nFs1, nRst, $12
	dc.b	nFs2, $06, nRst, nRst, nFs2, nG2, nRst, nG1
	dc.b	nRst, nG1, nC2, nBb1, nB1, nC2, nRst, $12
	dc.b	nF2, $06, nRst, nRst, nBb2, nC3, nRst, nC2
	dc.b	nRst, nC2, nF1, nEb1, nE1, nF1, nRst, nF1
	dc.b	nRst, nF1, nRst, nRst, nEb3, nF3, nBb2, nC3
	dc.b	nEb2, nF2

NewMoon_Loop1:
	smpsCall            NewMoon_Call2
	dc.b	nRst, $06, nG1
	smpsLoop            $00, $04, NewMoon_Loop1
	smpsFMvoice         $02
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	smpsCall            NewMoon_Call1
	smpsFMAlterVol      $0A
	smpsCall            NewMoon_Call1
	smpsFMAlterVol      $F6
	dc.b	nRst, $60
	smpsCall            NewMoon_Call1
	smpsFMAlterVol      $0A
	smpsCall            NewMoon_Call1
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsFMvoice         $00
	smpsFMAlterVol      $F8
	dc.b	nRst, $06, nF3, nG3, $0C, nC3, $06, nF2
	dc.b	$0C, nF3, $06, nG2, $0C, nG3, $06, nBb2
	dc.b	$0C, nEb2, $06, nBb1, nB1
	smpsFMvoice         $02
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	smpsCall            NewMoon_Call1
	smpsFMAlterVol      $0A
	smpsCall            NewMoon_Call1
	smpsFMAlterVol      $F6
	dc.b	nRst, $60
	smpsCall            NewMoon_Call1
	smpsFMAlterVol      $0A
	smpsCall            NewMoon_Call1
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsFMvoice         $00
	smpsFMAlterVol      $F8
	dc.b	nRst, $3C, nF3, $06, nG3, nBb2, nC3, nF2
	dc.b	nG2
	smpsJump            NewMoon_Jump1

NewMoon_Call2:
	dc.b	nC2, $06, nG1, nBb1, nC2, nRst, $18, nC2
	dc.b	$06, nRst, nC2, nRst, $1E, nC2, $06, nG1
	dc.b	nBb1, nC2, nRst, $12, nC2, $06, nRst, $0C
	dc.b	nC3, $06, nD3, nRst, nF2, nG2, nEb2, nF2
	dc.b	$06, nC2, nEb2, nF2, nRst, $12, nF2, $06
	dc.b	nRst, $0C, nF3, $06, nG3, nRst, nBb2, nC3
	dc.b	nEb2, nG1, $06, nRst, nG1, nRst, nRst, nG2
	dc.b	nRst, nG1, nG2, nF2, nC2, nD2, nRst, nG1
	smpsReturn

NewMoon_Call1:
	dc.b	nF4, $0C
	smpsFMAlterVol      $08
	dc.b	$06
	smpsFMAlterVol      $F8
	dc.b	$06
	smpsFMAlterVol      $08
	dc.b	$06
	smpsFMAlterVol      $F8
	dc.b	nRst, $12
	smpsReturn

NewMoon_FM2:
	smpsFMvoice         $03
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
	smpsPan             panLeft, $00
	smpsFMAlterVol      $F7
	dc.b	nRst, $06, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $4E, nRst, $06, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $4E, nRst, $06, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12, nG4, $06, nFs4, nF4, nE4, nC4
	dc.b	nG3, nBb3, nB3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nC4, nBb3, nB3, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $2A

NewMoon_Jump2:
	smpsFMvoice         $04
	smpsPan             panCenter, $00
	smpsAlterPitch      $0C
	smpsFMAlterVol      $05
	smpsModSet          $05, $01, $02, $04
	dc.b	nRst, $0C, nC4, nF4, nG4, nBb4, $12, nA4
	dc.b	$06, nRst, $0C, nG4, nF4, $12, nG4, $06
	dc.b	nRst, $0C, nEb4, nRst, nD4, nEb4, nF4, smpsNoAttack
	dc.b	$0C
	smpsFMvoice         $03
	smpsPan             panLeft, $00
	smpsAlterPitch      $F4
	smpsFMAlterVol      $FB
	smpsModSet          $00, $00, $00, $00
	dc.b	nF4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nEb4, nD4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb3, nB3, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3, nFs3, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4, smpsNoAttack, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsFMvoice         $04
	smpsPan             panCenter, $00
	smpsAlterPitch      $0C
	smpsFMAlterVol      $05
	smpsModSet          $05, $01, $02, $04
	dc.b	nRst, $0C, nC4, nF4, nG4, nBb4, $12, nA4
	dc.b	$06, nRst, $0C, nG4, nF4, $12, nG4, $06
	dc.b	nRst, $0C, nEb4, nRst, nD4, nEb4, nBb4, smpsNoAttack
	dc.b	$0C
	smpsFMvoice         $03
	smpsPan             panLeft, $00
	smpsAlterPitch      $F4
	smpsFMAlterVol      $FB
	smpsModSet          $00, $00, $00, $00
	dc.b	nC4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nD4, nEb4, nE4, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nBb3, nB3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4, nEb4, nE4, nF4, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3, nF3, nE3, nEb3, nC3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst
	smpsFMvoice         $04
	smpsPan             panCenter, $00
	smpsAlterPitch      $0C
	smpsFMAlterVol      $05
	smpsModSet          $05, $01, $02, $09
	dc.b	nG4, $18, nA4, $0C, nBb4, nC5, nD5, nBb4
	dc.b	$18, nC5, $30, nA4, $18, nFs4, nEb5, nD5
	dc.b	nFs4, nG4, nFs4, nG4, nBb4, nRst, $18, nEb4
	dc.b	nF4, $0C, nG4, nA4, nBb4, nA4, $18, nFs4
	dc.b	nG4, nA4, nBb4, $24, nC5, $3C
	smpsModSet          $00, $00, $00, $00
	smpsFMvoice         $03
	smpsPan             panLeft, $00
	smpsAlterPitch      $F4
	smpsFMAlterVol      $FB
	dc.b	nRst, $06, nF3, nG3, nBb3, nC4, nEb4, nE4
	dc.b	nF4, nRst, $30
	smpsFMvoice         $04
	smpsPan             panCenter, $00
	smpsAlterPitch      $0C
	smpsFMAlterVol      $05
	smpsModSet          $05, $01, $02, $04
	smpsCall            NewMoon_Call3
	dc.b	nRst, $0C
	smpsFMvoice         $03
	smpsPan             panLeft, $00
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
	dc.b	nRst, nRst, $18
	smpsFMvoice         $04
	smpsPan             panCenter, $00
	smpsAlterPitch      $0C
	smpsFMAlterVol      $05
	smpsModSet          $05, $01, $02, $04
	smpsCall            NewMoon_Call3
	dc.b	nRst, $0C
	smpsFMvoice         $03
	smpsPan             panLeft, $00
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
	dc.b	nRst, $06, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $4E, nRst, $06, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $4E, nRst, $06, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12, nG3, $18, nA3, nBb3, $30, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $4E, nG4, $06, nFs4, nF4, nE4
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
	dc.b	nRst, $06, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12, nG4, $06, nFs4, nF4, nE4, nC4
	dc.b	nG3, nBb3, nB3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nC4, nBb3, nB3, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $2A
	smpsJump            NewMoon_Jump2

NewMoon_Call3:
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

NewMoon_FM3:
	smpsFMvoice         $03
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
	smpsPan             panRight, $00
	smpsFMAlterVol      $F7
	dc.b	nRst, $06, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $4E, nRst, $06, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $4E, nRst, $06, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12, nC4, $06, nB3, nBb3, nG3, nF3
	dc.b	nC3, nEb3, nE3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nG3, nC3, nEb3, nE3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $2A

NewMoon_Jump3:
	smpsFMvoice         $04
	smpsFMAlterVol      $0B
	smpsAlterPitch      $0C
	smpsModSet          $05, $01, $02, $04
	dc.b	nRst, $0C, nRst, $0C, nC4, nF4, nG4, nBb4
	dc.b	$12, nA4, $06, nRst, $0C, nG4, nF4, $12
	dc.b	nG4, $06, nRst, $0C, nEb4, nRst, nD4, nEb4
	dc.b	nF4
	smpsFMvoice         $03
	smpsFMAlterVol      $F5
	smpsAlterPitch      $F4
	smpsModSet          $00, $00, $00, $00
	dc.b	nC4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb3, nA3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3, nFs3, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb2, nB2, nC3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3, smpsNoAttack, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsFMvoice         $04
	smpsFMAlterVol      $0B
	smpsAlterPitch      $0C
	smpsModSet          $05, $01, $02, $04
	dc.b	nRst, $0C, nRst, $0C, nC4, nF4, nG4, nBb4
	dc.b	$12, nA4, $06, nRst, $0C, nG4, nF4, $12
	dc.b	nG4, $06, nRst, $0C, nEb4, nRst, nD4, nEb4
	dc.b	nF4
	smpsFMvoice         $03
	smpsFMAlterVol      $F5
	smpsAlterPitch      $F4
	smpsModSet          $00, $00, $00, $00
	dc.b	nG3, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nBb3, nB3, nC4, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nF3, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3, nBb3, nB3, nC4, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD3, nC3, nB2, nBb2, nG2
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst
	smpsModSet          $05, $01, $02, $09
	smpsFMvoice         $04
	smpsFMAlterVol      $0B
	smpsAlterPitch      $0C
	dc.b	nRst, $0C, nG4, $18, nA4, $0C, nBb4, nC5
	dc.b	nD5, nBb4, $18, nC5, $30, nA4, $18, nFs4
	dc.b	nEb5, nD5, nFs4, nG4, nFs4, nG4, nBb4, nRst
	dc.b	$18, nEb4, nF4, $0C, nG4, nA4, nBb4, nA4
	dc.b	$18, nFs4, nG4, nA4, nBb4, $24, nC5, $30
	smpsModSet          $00, $00, $00, $00
	smpsFMvoice         $03
	smpsFMAlterVol      $F5
	smpsAlterPitch      $F4
	dc.b	nRst, $06, nC3, nD3, nF3, nG3, nBb3, nB3
	dc.b	nC4, nRst, $30
	smpsFMvoice         $04
	smpsFMAlterVol      $0B
	smpsAlterPitch      $0C
	smpsModSet          $05, $01, $02, $04
	dc.b	nRst, $0C
	smpsCall            NewMoon_Call3
	smpsFMvoice         $03
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
	dc.b	nRst, nRst, $18
	smpsFMvoice         $04
	smpsFMAlterVol      $0B
	smpsAlterPitch      $0C
	smpsModSet          $05, $01, $02, $04
	dc.b	nRst, $0C
	smpsCall            NewMoon_Call3
	smpsFMvoice         $03
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
	dc.b	nRst, $06, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $4E, nRst, $06, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $4E, nRst, $06, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12, nC3, $18, nD3, nEb3, $30, nF3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $4E, nC4, $06, nB3, nBb3, nG3
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
	dc.b	nRst, $06, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12, nC4, $06, nB3, nBb3, nG3, nF3
	dc.b	nC3, nEb3, nE3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nG3, nC3, nEb3, nE3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $2A
	smpsJump            NewMoon_Jump3

NewMoon_FM4:
	smpsFMvoice         $03
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
	smpsFMvoice         $02
	smpsAlterPitch      $F6

NewMoon_Loop2:
	smpsCall            NewMoon_Call1
	smpsFMAlterVol      $0A
	smpsCall            NewMoon_Call1
	smpsFMAlterVol      $F6
	dc.b	nRst, $60
	smpsLoop            $00, $02, NewMoon_Loop2
	smpsAlterPitch      $0A

NewMoon_Loop3:
	smpsCall            NewMoon_Call4
	smpsLoop            $00, $02, NewMoon_Loop3
	smpsPan             panCenter, $00
	smpsModSet          $0F, $01, $01, $08
	smpsFMvoice         $05
	dc.b	nD3, $30, nFs3, nBb3, $18, nC4, nBb3, $30
	dc.b	nA3, nC4, smpsNoAttack, $60, nBb3, $30, nA3, smpsNoAttack
	dc.b	$30, nBb3, smpsNoAttack, $60
	smpsModSet          $00, $00, $00, $00
	dc.b	nA3, $1E, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06, nRst, $30
	smpsFMvoice         $02

NewMoon_Loop4:
	smpsCall            NewMoon_Call4
	smpsLoop            $00, $04, NewMoon_Loop4
	smpsAlterPitch      $F6
	smpsPan             panRight, $00

NewMoon_Loop5:
	smpsCall            NewMoon_Call1
	smpsFMAlterVol      $0A
	smpsCall            NewMoon_Call1
	smpsFMAlterVol      $F6
	dc.b	nRst, $60
	smpsLoop            $00, $04, NewMoon_Loop5
	smpsAlterPitch      $0A
	smpsJump            NewMoon_Loop3

NewMoon_Call4:
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
	smpsReturn

NewMoon_FM5:
	dc.b	nRst, $60
	smpsFMvoice         $01

NewMoon_Loop6:
	smpsCall            NewMoon_Call5
	smpsLoop            $01, $04, NewMoon_Loop6

NewMoon_Loop7:
	smpsCall            NewMoon_Call5
	smpsLoop            $01, $08, NewMoon_Loop7
	dc.b	nG2, $06, nD3, nG2, nD3, nG2, nD3, nG2
	dc.b	nD3, nFs2, nD3, nFs2, nD3, nFs2, nD3, nFs2
	dc.b	nD3, nBb2, nD3, nBb2, nD3, nBb2, nD3, nBb2
	dc.b	nD3, nAb2, nEb2, nAb2, nEb3, nAb2, nEb3, nAb2
	dc.b	nEb3, nA2, nD3, nA2, nD3, nA2, nD3, nA2
	dc.b	nD3, nA2, nC3, nA2, nC3, nA2, nC3, nA2
	dc.b	nC3, nA2, nC3, nA2, nC3, nA2, nC3, nA2
	dc.b	nC3, nA2, nC3, nA2, nC3, nA2, nC3, nA2
	dc.b	nC3, nG2, nD3, nG2, nD3, nG2, nD3, nG2
	dc.b	nD3, nF2, nC3, nF2, nC3, nF2, nC3, nF2
	dc.b	nC3, nFs2, nC3, nFs2, nC3, nFs2, nC3, nFs2
	dc.b	nC3, nG2, nD3, nG2, nD3, nG2, nD3, nG2
	dc.b	nD3, nBb2, nEb3, nBb2, nEb3, nBb2, nEb3, nBb2
	dc.b	nEb3, nBb2, nEb3, nBb2, nEb3, nBb2, nEb3, nBb2
	dc.b	nEb3, nA2, nF3, nA2, nF3, nA2, nF3, nA2
	dc.b	nF3, nRst, $30

NewMoon_Loop8:
	smpsCall            NewMoon_Call5
	smpsLoop            $01, $18, NewMoon_Loop8
	smpsJump            NewMoon_Loop7

NewMoon_Call5:
	dc.b	nC2, $06, nF2, nC2, nG2
	smpsLoop            $00, $04, NewMoon_Call5
	smpsReturn

NewMoon_FM6:
	smpsFMvoice         $01
	dc.b	nRst, $60

NewMoon_Loop9:
	smpsCall            NewMoon_Call6
	smpsLoop            $00, $04, NewMoon_Loop9

NewMoon_Jump4:
	smpsFMvoice         $06
	smpsModSet          $01, $01, $03, $06
	dc.b	nRst, $0C, nC4, nF4, nG4, nBb4, $12, nA4
	dc.b	$06, nRst, $0C, nG4, nF4, $12, nG4, $06
	dc.b	nRst, $0C, nEb4, nRst, nD4, nEb4, nF4, smpsNoAttack
	dc.b	$60, nRst, nRst, $0C, nC4, nF4, nG4, nBb4
	dc.b	$12, nA4, $06, nRst, $0C, nG4, nF4, $12
	dc.b	nG4, $06, nRst, $0C, nEb4, nRst, nD4, nEb4
	dc.b	nBb4, smpsNoAttack, $60, nRst, nRst, $18, nG4, nA4
	dc.b	$0C, nBb4, nC5, nD5, nBb4, $18, nC5, $30
	dc.b	nA4, $18, nFs4, nEb5, nD5, nFs4, nG4, nFs4
	dc.b	nG4, nBb4, nRst, $18, nEb4, nF4, $0C, nG4
	dc.b	nA4, nBb4, nA4, $18, nFs4, nG4, nA4, nBb4
	dc.b	$24, nC5, $3C, nRst, $60
	smpsCall            NewMoon_Call3
	dc.b	smpsNoAttack, $0C, smpsNoAttack, $60
	smpsCall            NewMoon_Call3
	dc.b	smpsNoAttack, $0C, smpsNoAttack, $60

NewMoon_Loop10:
	smpsFMvoice         $01
	smpsModSet          $00, $00, $00, $00
	smpsCall            NewMoon_Call6
	smpsLoop            $00, $08, NewMoon_Loop10
	smpsJump            NewMoon_Jump4

NewMoon_Call6:
	smpsFMAlterVol      $03
	smpsPitchSlideSpeed $02
	smpsPan             panLeft, $00
	dc.b	nC3, $06, nF3, nC3, nG3
	smpsPan             panRight, $00
	dc.b	nC3, $06, nF3, nC3, nG3
	smpsPan             panLeft, $00
	dc.b	nC3, $06, nF3, nC3, nG3
	smpsPan             panRight, $00
	dc.b	nC3, $06, nF3, nC3, nG3
	smpsFMAlterVol      $FD
	smpsPitchSlideSpeed $FE
	smpsPan             panCenter, $00
	smpsReturn

NewMoon_PSG1:
	dc.b	nRst, $60
	smpsPSGvoice        cTone_06

NewMoon_Loop11:
	smpsCall            NewMoon_Call7
	smpsPSGAlterVol     $05
	smpsCall            NewMoon_Call7
	smpsPSGAlterVol     $FB
	dc.b	nRst, $60
	smpsLoop            $00, $02, NewMoon_Loop11

NewMoon_Loop12:
	smpsCall            NewMoon_Call8
	smpsLoop            $00, $08, NewMoon_Loop12
	smpsPSGvoice        cTone_09
	smpsModSet          $0F, $01, $01, $08
	dc.b	nBb2, $30, nD3, nF3, $18, nG3, nG3, $30
	dc.b	nFs3, nA3, smpsNoAttack, $60, nG3, $30, nF3, smpsNoAttack
	dc.b	$30, nG3, smpsNoAttack, $60
	smpsModSet          $00, $00, $00, $00
	smpsPSGvoice        cTone_06
	dc.b	nF3, $1E, $06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	$06, nRst, $30

NewMoon_Loop13:
	smpsCall            NewMoon_Call8
	smpsLoop            $00, $10, NewMoon_Loop13

NewMoon_Loop14:
	smpsCall            NewMoon_Call7
	smpsPSGAlterVol     $05
	smpsCall            NewMoon_Call7
	smpsPSGAlterVol     $FB
	dc.b	nRst, $60
	smpsLoop            $00, $04, NewMoon_Loop14
	smpsJump            NewMoon_Loop12

NewMoon_Call7:
	dc.b	nBb2, $0C
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nRst, $12
	smpsReturn

NewMoon_Call8:
	dc.b	nF3, $12, $06, nRst, $24, nF3, $06, nRst
	dc.b	$0C, nF3, nRst, $06
	smpsReturn

NewMoon_PSG2:
	dc.b	nRst, $60
	smpsPSGvoice        cTone_06
	smpsAlterPitch      $02

NewMoon_Loop15:
	smpsCall            NewMoon_Call7
	smpsPSGAlterVol     $05
	smpsCall            NewMoon_Call7
	smpsPSGAlterVol     $FB
	dc.b	nRst, $60
	smpsLoop            $00, $02, NewMoon_Loop15
	smpsAlterPitch      $FE
	smpsAlterPitch      $F9

NewMoon_Loop16:
	smpsCall            NewMoon_Call8
	smpsLoop            $00, $08, NewMoon_Loop16
	smpsAlterPitch      $07
	smpsPSGvoice        cTone_09
	smpsModSet          $0F, $01, $01, $08
	dc.b	nG2, $30, nA2, nD3, $18, nE3, nD3, $30
	dc.b	nE3, nFs3, smpsNoAttack, $60, nD3, $30, nC3, smpsNoAttack
	dc.b	$30, nD3, smpsNoAttack, $60
	smpsModSet          $00, $00, $00, $00
	smpsPSGvoice        cTone_06
	dc.b	nC3, $1E, $06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	$06, nRst, $30
	smpsAlterPitch      $F9

NewMoon_Loop17:
	smpsCall            NewMoon_Call8
	smpsLoop            $00, $10, NewMoon_Loop17
	smpsAlterPitch      $07
	smpsAlterPitch      $02

NewMoon_Loop18:
	smpsCall            NewMoon_Call7
	smpsPSGAlterVol     $05
	smpsCall            NewMoon_Call7
	smpsPSGAlterVol     $FB
	dc.b	nRst, $60
	smpsLoop            $00, $04, NewMoon_Loop18
	smpsAlterPitch      $FE
	smpsAlterPitch      $F9
	smpsJump            NewMoon_Loop16

NewMoon_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $60

NewMoon_Loop19:
	smpsCall            NewMoon_Call9
	smpsLoop            $01, $04, NewMoon_Loop19

NewMoon_Loop20:
	smpsCall            NewMoon_Call10
	smpsLoop            $01, $0F, NewMoon_Loop20
	smpsPSGvoice        cTone_02
	dc.b	nC4, $06, $06
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsPSGvoice        cTone_02
	dc.b	nC4, $06, $06
	smpsPSGvoice        cTone_05
	dc.b	$0C, nRst, $30

NewMoon_Loop21:
	smpsCall            NewMoon_Call10
	smpsLoop            $01, $10, NewMoon_Loop21

NewMoon_Loop22:
	smpsCall            NewMoon_Call9
	smpsLoop            $01, $08, NewMoon_Loop22
	smpsJump            NewMoon_Loop20

NewMoon_Call9:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C
	smpsLoop            $00, $08, NewMoon_Call9
	smpsReturn

NewMoon_Call10:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $06, $06
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsLoop            $00, $04, NewMoon_Call10
	smpsReturn

NewMoon_PWM1:
	dc.b	$96, $60

NewMoon_Loop23:
	dc.b	pKick, $0C, $0C, nRst, pKick, pKick, $12, $12
	dc.b	$0C
	smpsLoop            $00, $04, NewMoon_Loop23

NewMoon_Jump5:
	smpsCall            NewMoon_Call11
	smpsCall            NewMoon_Call11
	smpsCall            NewMoon_Call11
	smpsCall            NewMoon_Call12
	dc.b	nRst, $30

NewMoon_Loop24:
	smpsCall            NewMoon_Call11
	smpsLoop            $00, $04, NewMoon_Loop24

NewMoon_Loop25:
	dc.b	pKick, $0C, $0C, nRst, pKick, pKick, $12, $12
	dc.b	$0C
	smpsLoop            $00, $08, NewMoon_Loop25
	smpsJump            NewMoon_Jump5

NewMoon_Call11:
	smpsCall            NewMoon_Call12
	dc.b	nRst, $0C, pKick, nRst, $18
	smpsReturn

NewMoon_Call12:
	dc.b	pKick, $06, $06, $06, $06, nRst, $18, pKick
	dc.b	$0C, $0C, nRst, $18, pKick, $06, $06, $06
	dc.b	$06, nRst, $12, pKick, $06, nRst, $0C, pKick
	dc.b	nRst, $18, pKick, $06, $06, $06, $06, nRst
	dc.b	$12, pKick, $06, nRst, $0C, pKick, nRst, $18
	dc.b	pKick, $06, $06, $06, $06, nRst, pKick, nRst
	dc.b	pKick
	smpsReturn

NewMoon_PWM2:
	dc.b	$96, $60
	smpsFMAlterVol      $DE
	smpsCall            NewMoon_Call13

NewMoon_Jump6:
	smpsCall            NewMoon_Call15
	smpsCall            NewMoon_Call15
	smpsCall            NewMoon_Call15
	smpsCall            NewMoon_Call16
	dc.b	nRst, $06
	smpsFMAlterVol      $F9
	dc.b	pTomHi
	smpsFMAlterVol      $07
	dc.b	pTomMid
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70

NewMoon_Loop26:
	smpsCall            NewMoon_Call15
	smpsLoop            $00, $04, NewMoon_Loop26
	smpsFMAlterVol      $DE
	smpsCall            NewMoon_Call14
	smpsFMAlterVol      $F9
	dc.b	pTomHi
	smpsFMAlterVol      $07
	dc.b	pSnare, pSnare, pTomMid
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	dc.b	pSnare, pSnare
	smpsFMAlterVol      $90
	dc.b	pTomLo, pTomLo
	smpsFMAlterVol      $70
	dc.b	pSnare
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	dc.b	pTomMid, pSnare, pSnare, pSnare, pSnare
	smpsCall            NewMoon_Call13
	smpsJump            NewMoon_Jump6

NewMoon_Call13:
	smpsCall            NewMoon_Call14
	smpsFMAlterVol      $F9
	dc.b	pTomHi
	smpsFMAlterVol      $07
	dc.b	pSnare, pSnare, pTomMid
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	dc.b	pSnare, pSnare
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	smpsFMAlterVol      $22
	dc.b	pSnare, pSnare, pSnare, pSnare, pSnare, pSnare, pSnare, pSnare
	smpsReturn

NewMoon_Call15:
	smpsCall            NewMoon_Call16
	dc.b	pSnare, $06
	smpsFMAlterVol      $F9
	dc.b	pTomHi
	smpsFMAlterVol      $07
	dc.b	pTomMid
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	smpsReturn

NewMoon_Call16:
	dc.b	nRst, $18, pSnare, nRst, pSnare, nRst, pSnare, nRst
	dc.b	pSnare, $0C, $06, $06, nRst, $18, pSnare, nRst
	dc.b	pSnare, nRst, pSnare, nRst
	smpsReturn

NewMoon_Call14:
	smpsFMAlterVol      $F9
	dc.b	pTomHi, $06
	smpsFMAlterVol      $07
	dc.b	pSnare
	smpsFMAlterVol      $F9
	dc.b	pTomHi, pTomHi
	smpsFMAlterVol      $07
	dc.b	pTomMid, pSnare
	smpsFMAlterVol      $F9
	dc.b	pTomHi
	smpsFMAlterVol      $07
	dc.b	pTomMid, pSnare
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	dc.b	pSnare, pSnare, pTomMid, pSnare, pSnare, pSnare
	smpsFMAlterVol      $F9
	dc.b	pTomHi
	smpsFMAlterVol      $07
	dc.b	pSnare
	smpsFMAlterVol      $F9
	dc.b	pTomHi
	smpsFMAlterVol      $07
	dc.b	pTomMid
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	dc.b	pSnare, pSnare
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	dc.b	pSnare
	smpsFMAlterVol      $F9
	dc.b	pTomHi
	smpsFMAlterVol      $07
	dc.b	pTomMid
	smpsFMAlterVol      $90
	dc.b	pTomLo, pTomLo
	smpsFMAlterVol      $70
	dc.b	pSnare, pSnare
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	smpsFMAlterVol      $F9
	dc.b	pTomHi
	smpsFMAlterVol      $07
	dc.b	pSnare, pTomMid
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	dc.b	pSnare
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	smpsFMAlterVol      $F9
	dc.b	pTomHi
	smpsFMAlterVol      $07
	dc.b	pSnare, pSnare, pTomMid
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	dc.b	pSnare
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	dc.b	pSnare, pSnare, pSnare
	smpsReturn

NewMoon_PWM3:
	dc.b	$96, $60
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst

NewMoon_Jump7:
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

NewMoon_Loop27:
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsFMAlterVol      $FC
	dc.b	pSplash, $60
	smpsFMAlterVol      $04
	dc.b	nRst, nRst, nRst
	smpsLoop            $00, $04, NewMoon_Loop27
	smpsJump            NewMoon_Jump7

NewMoon_PWM4:
	dc.b	$96, $60

NewMoon_Loop28:
	smpsCall            NewMoon_Call17
	smpsLoop            $01, $04, NewMoon_Loop28

NewMoon_Loop29:
	smpsCall            NewMoon_Call17
	smpsLoop            $01, $0F, NewMoon_Loop29
	smpsFMAlterVol      $FD
	dc.b	nRst, $0C, pElecHiHat, $06, $06
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	nRst, $0C, pElecHiHat, $06, $06
	smpsFMAlterVol      $30
	dc.b	$96, $30

NewMoon_Loop30:
	smpsCall            NewMoon_Call17
	smpsLoop            $01, $18, NewMoon_Loop30
	smpsJump            NewMoon_Loop29

NewMoon_Call17:
	smpsFMAlterVol      $FD
	dc.b	nRst, $0C, pElecHiHat, $06, $06
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	nRst, $0C, pElecHiHat, $06, $06
	smpsFMAlterVol      $30
	smpsLoop            $00, $02, NewMoon_Call17
	smpsReturn

NewMoon_Voices:
	; Voice $00
	; $3B
	; $18, $31, $04, $02,	$DF, $9F, $9F, $9F
	; $14, $08, $0E, $07,	$10, $0E, $0F, $07
	; $6F, $7F, $3F, $8F,	$12, $14, $18, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $03, $01
	smpsVcCoarseFreq    $02, $04, $01, $08
	smpsVcRateScale     $02, $02, $02, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $0E, $08, $14
	smpsVcDecayRate2    $07, $0F, $0E, $10
	smpsVcDecayLevel    $08, $03, $07, $06
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $18, $14, $12

	; Voice $01
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

	; Voice $02
	; $1F
	; $67, $32, $53, $23,	$1C, $98, $1F, $1F
	; $12, $0F, $0F, $0F,	$00, $00, $00, $00
	; $FF, $0F, $0F, $0F,	$80, $83, $80, $80
	smpsVcAlgorithm     $07
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $05, $03, $06
	smpsVcCoarseFreq    $03, $03, $02, $07
	smpsVcRateScale     $00, $00, $02, $00
	smpsVcAttackRate    $1F, $1F, $18, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $0F, $0F, $12
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $80, $83, $80

	; Voice $03
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

	; Voice $04
	; $2D
	; $77, $65, $05, $15,	$1F, $DF, $DF, $DF
	; $00, $00, $03, $02,	$00, $04, $02, $01
	; $BF, $4C, $6C, $5C,	$22, $8E, $8E, $8E
	smpsVcAlgorithm     $05
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $06, $07
	smpsVcCoarseFreq    $05, $05, $05, $07
	smpsVcRateScale     $03, $03, $03, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $03, $00, $00
	smpsVcDecayRate2    $01, $02, $04, $00
	smpsVcDecayLevel    $05, $06, $04, $0B
	smpsVcReleaseRate   $0C, $0C, $0C, $0F
	smpsVcTotalLevel    $8E, $8E, $8E, $22

	; Voice $05
	; $2C
	; $72, $72, $33, $32,	$1F, $08, $1F, $08
	; $01, $00, $01, $00,	$01, $00, $01, $00
	; $1F, $0F, $1F, $0F,	$19, $80, $17, $85
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $02, $03, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $08, $1F, $08, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $01, $00, $01
	smpsVcDecayRate2    $00, $01, $00, $01
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $85, $17, $80, $19

	; Voice $06
	; $37
	; $52, $31, $34, $50,	$1F, $1F, $1F, $1F
	; $05, $05, $10, $10,	$05, $05, $05, $05
	; $4D, $4D, $4C, $4C,	$80, $87, $87, $80
	smpsVcAlgorithm     $07
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $03, $05
	smpsVcCoarseFreq    $00, $04, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $10, $05, $05
	smpsVcDecayRate2    $05, $05, $05, $05
	smpsVcDecayLevel    $04, $04, $04, $04
	smpsVcReleaseRate   $0C, $0C, $0D, $0D
	smpsVcTotalLevel    $80, $87, $87, $80
