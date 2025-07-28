SpeedOfSound_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     SpeedOfSound_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $4C
	smpsHeaderFM        SpeedOfSound_FM1, $00, $0B
	smpsHeaderFM        SpeedOfSound_FM2, $00, $0D
	smpsHeaderFM        SpeedOfSound_FM3, $0C, $18
	smpsHeaderFM        SpeedOfSound_FM4, $00, $12
	smpsHeaderFM        SpeedOfSound_FM5, $00, $12
	smpsHeaderFM        SpeedOfSound_FM6, $00, $11
	smpsHeaderPSG       SpeedOfSound_PSG1, $F4, $03, $00, cTone_0C
	smpsHeaderPSG       SpeedOfSound_PSG2, $E8, $03, $00, cTone_0C
	smpsHeaderPSG       SpeedOfSound_PSG3, $23, $02, $00, cTone_02
	smpsHeaderPWM       SpeedOfSound_PWM1, $99
	smpsHeaderPWM       SpeedOfSound_PWM2, $BB
	smpsHeaderPWM       SpeedOfSound_PWM3, $BB
	smpsHeaderPWM       SpeedOfSound_PWM4, $66

SpeedOfSound_FM1:
	smpsFMvoice         $01
	smpsPan             panLeft, $00
	smpsFMAlterVol      $14
	smpsAlterPitch      $0C
	dc.b	nRst, $02
	smpsCall            SpeedOfSound_Call1
	smpsCall            SpeedOfSound_Call2
	dc.b	nF4, $04, nE4, nC4, nG3, nF3, nE3, nC3
	dc.b	nG2, $02
	smpsPan             panCenter, $00
	smpsFMAlterVol      $EB
	smpsAlterPitch      $F4
	smpsFMvoice         $00

SpeedOfSound_Loop1:
	dc.b	nG1, $08, nG2, $04, nRst
	smpsLoop            $00, $03, SpeedOfSound_Loop1
	dc.b	nFs1, $08, $04, nRst

SpeedOfSound_Loop2:
	smpsCall            SpeedOfSound_Call3
	smpsLoop            $00, $04, SpeedOfSound_Loop2
	smpsAlterPitch      $02

SpeedOfSound_Loop3:
	smpsCall            SpeedOfSound_Call3
	smpsLoop            $00, $04, SpeedOfSound_Loop3
	smpsAlterPitch      $FE

SpeedOfSound_Loop4:
	smpsCall            SpeedOfSound_Call3
	smpsLoop            $00, $04, SpeedOfSound_Loop4
	smpsAlterPitch      $02

SpeedOfSound_Loop5:
	smpsCall            SpeedOfSound_Call3
	smpsLoop            $00, $03, SpeedOfSound_Loop5
	smpsAlterPitch      $FE
	dc.b	nA1, $08, nA2, $04, nRst, nA1, nRst, nRst
	dc.b	nA1, nRst, nA1, nA1, $08, nA1, nBb2
	smpsCall            SpeedOfSound_Call4
	dc.b	nRst, $28, nD2, $08, nD3, nA1
	smpsCall            SpeedOfSound_Call4
	dc.b	nRst, $08, nC2, nC2, nC3, $04, nRst, nD2
	dc.b	$08, nD3, $04, nRst, nD2, $08, nD3, $04
	dc.b	nRst
	smpsCall            SpeedOfSound_Call4
	dc.b	nRst, $28, nD2, $08, nD3, nA1, nB1, $08
	dc.b	nB2, $04, nRst, nB1, $08, nC2, nRst, $18
	dc.b	nC2, $08, nRst, nC2, nC2, nFs2, $04, nRst
	dc.b	nFs1, $08, nFs2, $04, nRst, nFs1, $08, $08
	smpsCall            SpeedOfSound_Call5
	smpsAlterPitch      $FB
	smpsCall            SpeedOfSound_Call5
	smpsAlterPitch      $03
	smpsCall            SpeedOfSound_Call5
	smpsAlterPitch      $02
	dc.b	nG1, $08, nG2, $04, nRst, nG1, $08, nG2
	dc.b	$04, nRst, nG1, $08, nG2, $04, nRst, nA1
	dc.b	$08, nA2, $04, nRst
	smpsCall            SpeedOfSound_Call5
	smpsAlterPitch      $FB
	smpsCall            SpeedOfSound_Call5
	smpsAlterPitch      $03
	smpsCall            SpeedOfSound_Call5
	smpsAlterPitch      $02
	dc.b	nB1, $0C, nBb1, nA1, nAb1, nG1, $04, nRst
	dc.b	nG1, nRst
	smpsCall            SpeedOfSound_Call5
	smpsAlterPitch      $FB
	smpsCall            SpeedOfSound_Call5
	smpsAlterPitch      $03
	smpsCall            SpeedOfSound_Call5
	smpsAlterPitch      $02
	dc.b	nG1, $08, nG2, $04, nRst, nG1, $08, nG2
	dc.b	$04, nRst, nG1, $08, nG2, $04, nRst, nA1
	dc.b	$08, nA2, $04, nRst
	smpsCall            SpeedOfSound_Call5
	smpsAlterPitch      $FB
	smpsCall            SpeedOfSound_Call5
	smpsAlterPitch      $03
	smpsCall            SpeedOfSound_Call5
	smpsAlterPitch      $02
	dc.b	nG1, $08, nG2, $04, nRst, nG1, $08, nG2
	dc.b	$04, nRst, nRst, $08, nA2, $04, nRst
	smpsModSet          $01, $03, $F8, $00
	dc.b	nA1, $10
	smpsModSet          $00, $00, $00, $00
	smpsCall            SpeedOfSound_Call5
	smpsAlterPitch      $FB
	smpsCall            SpeedOfSound_Call5
	smpsAlterPitch      $03
	smpsCall            SpeedOfSound_Call5
	smpsAlterPitch      $02
	dc.b	nG1, $08, nG2, $04, nRst, nG1, $08, nG2
	dc.b	$04, nRst, nG1, $08, nG2, $04, nRst, nA1
	dc.b	$08, nA2, $04, nRst
	smpsCall            SpeedOfSound_Call5
	smpsAlterPitch      $FB
	smpsCall            SpeedOfSound_Call5
	smpsAlterPitch      $03
	smpsCall            SpeedOfSound_Call5
	smpsAlterPitch      $02
	dc.b	nB1, $0C, nBb1, nA1, nAb1, nG1, $04, nRst
	dc.b	nG1, nRst, nG1, $0C, nFs1, nF1, nE2, nEb2
	dc.b	$04, nRst, nEb2, nRst
	smpsJump            SpeedOfSound_Loop2

SpeedOfSound_Call3:
	dc.b	nG1, $08, nG2, $04, nRst, nG1, nRst, nRst
	dc.b	nG1, nRst, nG1, nG1, $08, nF1, nFs1
	smpsReturn

SpeedOfSound_Call4:
	dc.b	nB1, $08, nB2, $04, nRst, nB1, $08, nC2
	dc.b	nRst, $20
	smpsReturn

SpeedOfSound_Call5:
	dc.b	nD2, $08, nD3, $04, nRst
	smpsLoop            $00, $04, SpeedOfSound_Call5
	smpsReturn

SpeedOfSound_FM2:
	smpsFMvoice         $02
	dc.b	nRst, $40, nRst, nRst, nF3, $10, nF3, nF3
	dc.b	nE3

SpeedOfSound_Jump1:
	smpsFMvoice         $04
	smpsAlterPitch      $0C
	smpsFMAlterVol      $FD
	smpsCall            SpeedOfSound_Call6
	dc.b	smpsNoAttack, $08, nD4, $10, nC4, nD4, $18
	smpsCall            SpeedOfSound_Call6
	dc.b	smpsNoAttack, $08, nB4, $10, nC5, nD5, $08, nC5
	dc.b	nB4
	smpsFMAlterVol      $0A
	dc.b	$04, nRst, $04
	smpsFMAlterVol      $F6
	dc.b	nA4, $04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nA4
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nA4
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nA4, $08, nB4, $04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nA4
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nD5, $08, smpsNoAttack, $08, nE5, nA4, $18, nG4
	dc.b	$08, nE4, nA4, smpsNoAttack, $40
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $3C
	smpsCall            SpeedOfSound_Call6
	dc.b	smpsNoAttack, $08, nD4, $10, nC4, nD4, $18
	smpsCall            SpeedOfSound_Call6
	dc.b	smpsNoAttack, $08, nB4, $10, nC5, nD5, $08, nC5
	dc.b	nB4
	smpsFMAlterVol      $0A
	dc.b	$04, nRst, $04
	smpsFMAlterVol      $F6
	dc.b	nA4, $04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nA4
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nA4
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nA4, $08, nB4, $04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nA4
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nD5, $08, smpsNoAttack, $08, nE5, nA4, $18, nG5
	dc.b	$08, nFs5, nA4, smpsNoAttack, $40
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsAlterPitch      $F4
	smpsFMvoice         $03
	smpsFMAlterVol      $03
	dc.b	nRst, $34, nG4, $08
	smpsCall            SpeedOfSound_Call7
	dc.b	nFs5, $08, nE5, $0C
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nD5, $0C
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nC5, $0C
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nD5, $08, smpsNoAttack, $04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nC5, $0C
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nB4, $0C
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nA4, $0C
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nG4, $08
	smpsCall            SpeedOfSound_Call7
	dc.b	nFs5, $08, nG5, $0C
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nA5, $0C
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nD5, $0C
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nE5, $08, smpsNoAttack, $18, nFs5, $04, nE5, nD5
	dc.b	$10
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C, nE4, $0C, nFs4, nD4, $28, nE4
	dc.b	$0C, nFs4, nA4, $10, nG4, $04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nFs4, nE4, $08, nD4, $04, smpsNoAttack, $08, nC4
	dc.b	nD4, $04, nC4, $08, nD4, $0C, nE4, $08
	dc.b	nFs4, nE4, nFs4, $10, nE4, nD4, nA3, $08
	dc.b	nA4, nE4, $0C, nFs4, nD4, $28, nE4, $0C
	dc.b	nFs4, nA4, $10, nG4, $04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nFs4, nG4, $04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nE4, $04, smpsNoAttack, $40
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $3C, nE4, $0C, nFs4, nD4, $28, nE4
	dc.b	$0C, nFs4, nA4, $10, nG4, $04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nFs4, nE4, $08, nD4, $04, smpsNoAttack, $08, nC4
	dc.b	nD4, $04, nC4, $08, nD4, $0C, nE4, $08
	dc.b	nFs4, nE4, nFs4, $10, nE4, nD4, nA3, $08
	dc.b	nA4, nE4, $0C, nFs4, nD4, $28, nE4, $0C
	dc.b	nFs4, nA4, $10, nG4, $04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nC5, nB4
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nA4, $04, smpsNoAttack, $38, nG4, $08, nA4, $08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nA4, $08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nA4, $08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $1C, nE4, $0C, nFs4, nD4, $28, nE4
	dc.b	$0C, nFs4, nA4, $10, nG4, $04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nFs4, nE4, $08, nD4, $04, smpsNoAttack, $08, nC4
	dc.b	nD4, $04, nC4, $08, nD4, $0C, nE4, $08
	dc.b	nFs4, nE4, nFs4, $10, nE4, nD4, nA3, $08
	dc.b	nA4, nE4, $0C, nFs4, nD4, $28, nE4, $0C
	dc.b	nFs4, nA4, $10, nG4, $04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nFs4, nG4, $04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nE4, $04, smpsNoAttack, $40
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $3C, nRst, $40
	smpsJump            SpeedOfSound_Jump1

SpeedOfSound_Call6:
	dc.b	nRst, $08, nF4, $04
	smpsFMAlterVol      $0A
	dc.b	nF4
	smpsFMAlterVol      $F6
	dc.b	nF4
	smpsFMAlterVol      $0A
	dc.b	nF4
	smpsFMAlterVol      $F6
	dc.b	nF4
	smpsFMAlterVol      $0A
	dc.b	nF4
	smpsFMAlterVol      $F6
	dc.b	nF4, $08, nD4, $04
	smpsFMAlterVol      $0A
	dc.b	nD4
	smpsFMAlterVol      $F6
	dc.b	nF4
	smpsFMAlterVol      $0A
	dc.b	nF4
	smpsFMAlterVol      $F6
	dc.b	nG4, $08
	smpsReturn

SpeedOfSound_Call7:
	dc.b	nD5, $18, nG4, $1C
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nG4, $08, nD5, $18, nG4, $10, nFs5, $04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nFs5
	smpsFMAlterVol      $0A
	dc.b	nFs5
	smpsFMAlterVol      $F6
	dc.b	nFs5
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsReturn

SpeedOfSound_FM3:
	smpsFMvoice         $01
	smpsCall            SpeedOfSound_Call1
	smpsCall            SpeedOfSound_Call1

SpeedOfSound_Jump2:
	smpsCall            SpeedOfSound_Call1
	smpsCall            SpeedOfSound_Call1
	smpsAlterPitch      $02
	smpsCall            SpeedOfSound_Call1
	smpsCall            SpeedOfSound_Call2
	dc.b	nF4, $04, nE4, nC4, nG3, nF3, nE3, nC3
	dc.b	nG2
	smpsAlterPitch      $FE
	dc.b	nE3, $04, nFs3, nG3, nA3, nB3, nCs4, nD4
	dc.b	nE4, nRst, $14, nCs4, $04, nD4, nE4
	smpsCall            SpeedOfSound_Call1
	smpsCall            SpeedOfSound_Call1
	smpsAlterPitch      $02
	smpsCall            SpeedOfSound_Call1
	smpsCall            SpeedOfSound_Call2
	dc.b	nF4, $04, nE4, nC4, nG3, nF3, nE3, nC3
	dc.b	nG2
	smpsAlterPitch      $FE
	dc.b	nE3, $04, nFs3, nG3, nA3, nB3, nCs4, nD4
	dc.b	nE4, nD3, nE3, nF3, nG3, nAb3, nA3, nBb3
	dc.b	nB3
	smpsFMAlterVol      $FD
	smpsCall            SpeedOfSound_Call8
	dc.b	nFs4, $08, smpsNoAttack, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE4, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nB3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC4, $08
	smpsCall            SpeedOfSound_Call8
	dc.b	nA4, $08, smpsNoAttack, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nFs4, $08, nE4, nD4, $20
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsCall            SpeedOfSound_Call8
	dc.b	nFs4, $08, smpsNoAttack, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE4, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nB3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC4, $08
	smpsCall            SpeedOfSound_Call8
	dc.b	nA4, $08, smpsNoAttack, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panLeft, $00
	dc.b	nE4, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nCs4, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nCs4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nFs4, $08, nCs5
	smpsFMAlterVol      $03
	smpsCall            SpeedOfSound_Call9
	dc.b	nG3, $04, nA3, nB3, nC4, nB3, nC4, nD4
	dc.b	nE4, nD4, nE4, nFs4, nG4, nA4, nB4, nC5
	dc.b	nD5
	smpsCall            SpeedOfSound_Call9
	smpsFMvoice         $02
	smpsAlterPitch      $F4
	smpsAlterPitch      $FC
	smpsFMAlterVol      $FA
	smpsCall            SpeedOfSound_Call10
	smpsAlterPitch      $04
	smpsFMvoice         $01
	smpsAlterPitch      $0C
	smpsPan             panCenter, $00
	smpsFMAlterVol      $06
	smpsCall            SpeedOfSound_Call9
	dc.b	nG3, $04, nA3, nB3, nC4, nB3, nC4, nD4
	dc.b	nE4, nD4, nE4, nFs4, nG4, nA4, nB4, nC5
	dc.b	nD5
	smpsCall            SpeedOfSound_Call9
	dc.b	nG3, $04, nA3, nB3, nC4, nB3, nC4, nD4
	dc.b	nE4, nRst, $14, nB4, $04, nC5, nD5
	smpsCall            SpeedOfSound_Call9
	dc.b	nG3, $04, nA3, nB3, nC4, nB3, nC4, nD4
	dc.b	nE4, nD4, nE4, nFs4, nG4, nA4, nB4, nC5
	dc.b	nD5
	smpsCall            SpeedOfSound_Call9
	smpsFMvoice         $02
	smpsAlterPitch      $F4
	smpsAlterPitch      $FC
	smpsFMAlterVol      $FA
	smpsCall            SpeedOfSound_Call10
	smpsCall            SpeedOfSound_Call11
	smpsAlterPitch      $04
	smpsFMvoice         $01
	smpsAlterPitch      $0C
	smpsPan             panCenter, $00
	smpsFMAlterVol      $06
	smpsJump            SpeedOfSound_Jump2

SpeedOfSound_Call1:
	smpsCall            SpeedOfSound_Call2
	dc.b	nF4, $04, nE4, nC4, nG3, nF3, nE3, nC3
	dc.b	nG2
	smpsCall            SpeedOfSound_Call2
	dc.b	nD3, $04, nE3, nF3, nG3, nA3, nB3, nC4
	dc.b	nD4
	smpsReturn

SpeedOfSound_Call2:
	dc.b	nF4, $04, nE4, nC4, nG3, nF3, nE3, nF3
	dc.b	nG3
	smpsReturn

SpeedOfSound_Call8:
	dc.b	nG3, $04, nA3, nB3, nC4, nD4, nRst, nE4
	dc.b	$0C, nRst, $04, nG4, $0C, nRst, $04
	smpsReturn

SpeedOfSound_Call9:
	dc.b	nA4, $04, nG4, nFs4, nE4, nFs4, nE4, nD4
	dc.b	nCs4, nD4, nCs4, nB3, nA3, nB3, nFs3, nG3
	dc.b	nA3, nE4, nD4, nCs4, nB3, nCs4, nB3, nA3
	dc.b	nAb3, nA3, nRst, $10, nAb3, $04, nA3, nB3
	dc.b	nC4, nB3, nC4, nD4, nE4, nD4, nE4, nA4
	dc.b	nG4, nFs4, nE4, nD4, nE4, nD4, nC4, nD4
	smpsReturn

SpeedOfSound_FM4:
	smpsFMvoice         $02
	dc.b	nRst, $40, nRst, nRst
	smpsPan             panLeft, $00
	dc.b	nC4, $10, nC4, nC4, nG3

SpeedOfSound_Jump3:
	smpsCall            SpeedOfSound_Call12
	smpsAlterPitch      $FF
	smpsCall            SpeedOfSound_Call12
	smpsAlterPitch      $01
	smpsCall            SpeedOfSound_Call12
	smpsAlterPitch      $FF
	smpsCall            SpeedOfSound_Call12
	smpsAlterPitch      $03
	smpsCall            SpeedOfSound_Call12
	smpsAlterPitch      $FF
	smpsCall            SpeedOfSound_Call12
	smpsAlterPitch      $01
	smpsCall            SpeedOfSound_Call12
	smpsAlterPitch      $FE
	dc.b	nCs4, $08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $1C
	smpsCall            SpeedOfSound_Call12
	smpsAlterPitch      $FF
	smpsCall            SpeedOfSound_Call12
	smpsAlterPitch      $01
	smpsCall            SpeedOfSound_Call12
	smpsAlterPitch      $FF
	smpsCall            SpeedOfSound_Call12
	smpsAlterPitch      $03
	smpsCall            SpeedOfSound_Call12
	smpsAlterPitch      $FF
	smpsCall            SpeedOfSound_Call12
	smpsAlterPitch      $01
	smpsCall            SpeedOfSound_Call12
	smpsAlterPitch      $FF
	smpsCall            SpeedOfSound_Call12
	smpsAlterPitch      $FF
	smpsFMAlterVol      $FE
	smpsCall            SpeedOfSound_Call13
	dc.b	smpsNoAttack, $04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nG3, $0C
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nA3, $28
	smpsCall            SpeedOfSound_Call13
	dc.b	smpsNoAttack, $04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$0C
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$0C
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsFMAlterVol      $02
	smpsCall            SpeedOfSound_Call14
	dc.b	nB3, $08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $04, nB3, $04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nCs4, $0C
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsCall            SpeedOfSound_Call14
	smpsCall            SpeedOfSound_Call10
	smpsPan             panLeft, $00
	smpsCall            SpeedOfSound_Call14
	dc.b	nB3, $08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $04, nB3, $04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nCs4, $0C
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsCall            SpeedOfSound_Call14
	dc.b	nB3, $08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $1C
	smpsCall            SpeedOfSound_Call14
	dc.b	nB3, $08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $04, nB3, $04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nCs4, $0C
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsCall            SpeedOfSound_Call14
	smpsCall            SpeedOfSound_Call10
	smpsCall            SpeedOfSound_Call11
	smpsPan             panLeft, $00
	smpsJump            SpeedOfSound_Jump3

SpeedOfSound_Call12:
	dc.b	nC4, $08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsReturn

SpeedOfSound_Call13:
	dc.b	nG3, $14
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nG3, $08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $1C, nRst, $38, nG3, $04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nG3, $14
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nG3, $08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C, nRst, $08, nG3
	smpsReturn

SpeedOfSound_Call14:
	smpsAlterPitch      $FD
	smpsCall            SpeedOfSound_Call12
	smpsAlterPitch      $04
	smpsCall            SpeedOfSound_Call12
	smpsAlterPitch      $FA
	smpsCall            SpeedOfSound_Call12
	smpsAlterPitch      $05
	smpsReturn

SpeedOfSound_Call10:
	smpsFMAlterVol      $FD
	smpsPan             panLeft, $00
	dc.b	nEb4, $0C
	smpsPan             panRight, $00
	dc.b	nD4, $0C
	smpsPan             panLeft, $00
	dc.b	nCs4, $0C
	smpsPan             panRight, $00
	dc.b	nC4, $0C
	smpsPan             panLeft, $00
	dc.b	nB3, $0C
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsFMAlterVol      $03
	smpsReturn

SpeedOfSound_Call11:
	smpsFMAlterVol      $FD
	smpsPan             panRight, $00
	dc.b	nB3, $0C
	smpsPan             panLeft, $00
	dc.b	nBb3, $0C
	smpsPan             panRight, $00
	dc.b	nA3, $0C
	smpsPan             panLeft, $00
	dc.b	nAb3, $0C
	smpsPan             panRight, $00
	dc.b	nG3, $0C
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsFMAlterVol      $03
	smpsReturn

SpeedOfSound_FM5:
	smpsFMvoice         $02
	dc.b	nRst, $40, nRst, nRst
	smpsPan             panRight, $00
	dc.b	nD3, $10, nD3, nD3, nCs3
	smpsAlterPitch      $F9

SpeedOfSound_Loop6:
	smpsCall            SpeedOfSound_Call12
	smpsLoop            $00, $04, SpeedOfSound_Loop6
	smpsAlterPitch      $02
	smpsCall            SpeedOfSound_Call12
	smpsCall            SpeedOfSound_Call12
	smpsCall            SpeedOfSound_Call12
	smpsAlterPitch      $05
	dc.b	nG3, $08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $1C
	smpsAlterPitch      $F9

SpeedOfSound_Loop7:
	smpsCall            SpeedOfSound_Call12
	smpsLoop            $00, $04, SpeedOfSound_Loop7
	smpsAlterPitch      $02

SpeedOfSound_Loop8:
	smpsCall            SpeedOfSound_Call12
	smpsLoop            $00, $04, SpeedOfSound_Loop8
	smpsAlterPitch      $05
	smpsFMAlterVol      $FE
	smpsCall            SpeedOfSound_Call15
	dc.b	smpsNoAttack, $04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nE3, $0C
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nFs3, $28
	smpsCall            SpeedOfSound_Call15
	dc.b	smpsNoAttack, $04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$0C
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$0C
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsFMAlterVol      $02
	smpsCall            SpeedOfSound_Call16
	dc.b	nD3, $08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $04, nD3, $04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nE3, $0C
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsCall            SpeedOfSound_Call16
	smpsAlterPitch      $F7
	smpsCall            SpeedOfSound_Call10
	smpsAlterPitch      $09
	smpsCall            SpeedOfSound_Call16
	dc.b	nD3, $08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $04, nD3, $04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nE3, $0C
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsCall            SpeedOfSound_Call16
	dc.b	nD3, $08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $1C
	smpsCall            SpeedOfSound_Call16
	dc.b	nD3, $08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	$08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $04, nD3, $04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nE3, $0C
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsCall            SpeedOfSound_Call16
	smpsAlterPitch      $F7
	smpsCall            SpeedOfSound_Call10
	smpsCall            SpeedOfSound_Call11
	smpsAlterPitch      $09
	smpsAlterPitch      $F9
	smpsJump            SpeedOfSound_Loop6

SpeedOfSound_Call15:
	dc.b	nD3, $14
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nE3, $08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $1C, nRst, $38, nD3, $04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nD3, $14
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nE3, $08
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C, nRst, $08, nE3
	smpsReturn

SpeedOfSound_Call16:
	smpsAlterPitch      $FA
	smpsCall            SpeedOfSound_Call12
	smpsAlterPitch      $FE
	smpsCall            SpeedOfSound_Call12
	smpsCall            SpeedOfSound_Call12
	smpsAlterPitch      $08
	smpsReturn

SpeedOfSound_FM6:
	smpsFMvoice         $01
	smpsPan             panRight, $00
	smpsModSet          $05, $01, $02, $04
	dc.b	nRst, $04, nRst, $40, nRst, nRst, nRst

SpeedOfSound_Jump7:
	smpsJump            SpeedOfSound_Jump1

	; Unused data
	smpsJump            SpeedOfSound_Jump7

SpeedOfSound_PSG1:
	smpsPSGvoice        cTone_04
	dc.b	nRst, $01
	smpsModSet          $01, $01, $02, $03
	smpsCall            SpeedOfSound_Call1
	smpsCall            SpeedOfSound_Call1

SpeedOfSound_Jump4:
	smpsCall            SpeedOfSound_Call1
	smpsCall            SpeedOfSound_Call1
	smpsAlterPitch      $02
	smpsCall            SpeedOfSound_Call1
	smpsCall            SpeedOfSound_Call2
	dc.b	nF4, $04, nE4, nC4, nG3, nF3, nE3, nC3
	dc.b	nG2
	smpsAlterPitch      $FE
	dc.b	nE3, $04, nFs3, nG3, nA3, nB3, nCs4, nD4
	dc.b	nE4, nRst, $14, nCs4, $04, nD4, nE4
	smpsCall            SpeedOfSound_Call1
	smpsCall            SpeedOfSound_Call1
	smpsAlterPitch      $02
	smpsCall            SpeedOfSound_Call1
	smpsCall            SpeedOfSound_Call2
	dc.b	nF4, $04, nE4, nC4, nG3, nF3, nE3, nC3
	dc.b	nG2
	smpsAlterPitch      $FE
	dc.b	nE3, $04, nFs3, nG3, nA3, nB3, nCs4, nD4
	dc.b	nE4, nD3, nE3, nF3, nG3, nAb3, nA3, nBb3
	dc.b	nB3
	smpsCall            SpeedOfSound_Call8
	dc.b	nFs4, $08, smpsNoAttack, $04, nRst, $04, nE4, $0C
	dc.b	nRst, $04, nD4, $0C, nRst, $04, nB3, $0C
	dc.b	nRst, $04, nC4, $08
	smpsCall            SpeedOfSound_Call8
	dc.b	nA4, $08, smpsNoAttack, $04, nRst, $04, nFs4, $08
	dc.b	nE4, nD4, $20, nRst, $08
	smpsCall            SpeedOfSound_Call8
	dc.b	nFs4, $08, smpsNoAttack, $04, nRst, $04, nE4, $0C
	dc.b	nRst, $04, nD4, $0C, nRst, $04, nB3, $0C
	dc.b	nRst, $04, nC4, $08
	smpsCall            SpeedOfSound_Call8
	dc.b	nA4, $08, smpsNoAttack, $04, nRst, $04, nE4, $08
	dc.b	nRst, nCs4, $0C, nRst, $04, nCs4, nRst, nFs4
	dc.b	$08, nCs5
	smpsCall            SpeedOfSound_Call9
	dc.b	nG3, $04, nA3, nB3, nC4, nB3, nC4, nD4
	dc.b	nE4, nD4, nE4, nFs4, nG4, nA4, nB4, nC5
	dc.b	nD5
	smpsCall            SpeedOfSound_Call9
	dc.b	nRst, $40
	smpsCall            SpeedOfSound_Call9
	dc.b	nG3, $04, nA3, nB3, nC4, nB3, nC4, nD4
	dc.b	nE4, nD4, nE4, nFs4, nG4, nA4, nB4, nC5
	dc.b	nD5
	smpsCall            SpeedOfSound_Call9
	dc.b	nG3, $04, nA3, nB3, nC4, nB3, nC4, nD4
	dc.b	nE4, nRst, $14, nB4, $04, nC5, nD5
	smpsCall            SpeedOfSound_Call9
	dc.b	nG3, $04, nA3, nB3, nC4, nB3, nC4, nD4
	dc.b	nE4, nD4, nE4, nFs4, nG4, nA4, nB4, nC5
	dc.b	nD5
	smpsCall            SpeedOfSound_Call9
	dc.b	nRst, $40, nRst, $40
	smpsJump            SpeedOfSound_Jump4

SpeedOfSound_PSG2:
	smpsPSGvoice        cTone_08
	smpsModSet          $01, $01, $01, $02
	dc.b	nRst, $40, nRst, nRst, nRst

SpeedOfSound_Jump5:
	smpsCall            SpeedOfSound_Call17
	dc.b	smpsNoAttack, $08, nD4, $10, nC4, nD4, $18
	smpsCall            SpeedOfSound_Call17
	dc.b	smpsNoAttack, $08, nB4, $10, nC5, nD5, $08, nC5
	dc.b	nB4, nRst, nA4, $04, nRst, nA4, nRst, nA4
	dc.b	nRst, nA4, $08, nB4, $04, nRst, nA4, nRst
	dc.b	nD5, $08, smpsNoAttack, $08, nE5, nA4, $18, nG4
	dc.b	$08, nE4, nA4, smpsNoAttack, $40, nRst, $40
	smpsCall            SpeedOfSound_Call17
	dc.b	smpsNoAttack, $08, nD4, $10, nC4, nD4, $18
	smpsCall            SpeedOfSound_Call17
	dc.b	smpsNoAttack, $08, nB4, $10, nC5, nD5, $08, nC5
	dc.b	nB4, nRst, nA4, $04, nRst, nA4, nRst, nA4
	dc.b	nRst, nA4, $08, nB4, $04, nRst, nA4, nRst
	dc.b	nD5, $08, smpsNoAttack, $08, nE5, nA4, $18, nG5
	dc.b	$08, nFs5, nA4, smpsNoAttack, $40, nRst, $38, nG4
	dc.b	$08
	smpsCall            SpeedOfSound_Call18
	dc.b	nFs5, $08, nE5, $0C, nRst, $04, nD5, $0C
	dc.b	nRst, $04, nC5, $0C, nRst, $04, nD5, $08
	dc.b	smpsNoAttack, $04, nRst, nC5, $0C, nRst, $04, nB4
	dc.b	$0C, nRst, $04, nA4, $0C, nRst, $04, nG4
	dc.b	$08
	smpsCall            SpeedOfSound_Call18
	dc.b	nFs5, $04, nRst, nG5, $0C, nRst, $04, nA5
	dc.b	$0C, nRst, $04, nD5, $0C, nRst, $04, nE5
	dc.b	$08, smpsNoAttack, $18, nFs5, $04, nE5, nD5, $10
	dc.b	nRst, nE4, $0C, nFs4, nD4, $28, nE4, $0C
	dc.b	nFs4, nA4, $10, nG4, $04, nRst, nFs4, nE4
	dc.b	$08, nD4, $04, smpsNoAttack, $08, nC4, nD4, $04
	dc.b	nC4, $08, nD4, $0C, nE4, $08, nFs4, nE4
	dc.b	nFs4, $10, nE4, nD4, nA3, $08, nA4, nE4
	dc.b	$0C, nFs4, nD4, $28, nE4, $0C, nFs4, nA4
	dc.b	$10, nG4, $04, nRst, nFs4, nG4, $04, nRst
	dc.b	nE4, $04, smpsNoAttack, $40, nRst, $40, nE4, $0C
	dc.b	nFs4, nD4, $28, nE4, $0C, nFs4, nA4, $10
	dc.b	nG4, $04, nRst, nFs4, nE4, $08, nD4, $04
	dc.b	smpsNoAttack, $08, nC4, nD4, $04, nC4, $08, nD4
	dc.b	$0C, nE4, $08, nFs4, nE4, nFs4, $10, nE4
	dc.b	nD4, nA3, $08, nA4, nE4, $0C, nFs4, nD4
	dc.b	$28, nE4, $0C, nFs4, nA4, $10, nG4, $04
	dc.b	nRst, nC5, nB4, nRst, nA4, $04, smpsNoAttack, $38
	dc.b	nG4, $08, nA4, $04, nRst, $08, nA4, $04
	dc.b	nRst, $08, nA4, $04, nRst, $24, nE4, $0C
	dc.b	nFs4, nD4, $28, nE4, $0C, nFs4, nA4, $10
	dc.b	nG4, $04, nRst, nFs4, nE4, $08, nD4, $04
	dc.b	smpsNoAttack, $08, nC4, nD4, $04, nC4, $08, nD4
	dc.b	$0C, nE4, $08, nFs4, nE4, nFs4, $10, nE4
	dc.b	nD4, nA3, $08, nA4, nE4, $0C, nFs4, nD4
	dc.b	$28, nE4, $0C, nFs4, nA4, $10, nG4, $04
	dc.b	nRst, nFs4, nG4, $04, nRst, nE4, $04, smpsNoAttack
	dc.b	$40, nRst, $40, nRst, $40
	smpsJump            SpeedOfSound_Jump5

SpeedOfSound_Call17:
	dc.b	nRst, $08, nF4, $04, nRst, nF4, nRst, nF4
	dc.b	nRst, nF4, $08, nD4, $04, nRst, nF4, nRst
	dc.b	nG4, $08
	smpsReturn

SpeedOfSound_Call18:
	dc.b	nD5, $18, nG4, $1C, nRst, $04, nG4, $08
	dc.b	nD5, $18, nG4, $10, nFs5, $04, nRst, nFs5
	dc.b	nRst, nFs5, nRst
	smpsReturn

SpeedOfSound_PSG3:
	smpsPSGform         $E7

SpeedOfSound_Loop9:
	smpsCall            SpeedOfSound_Call19
	smpsLoop            $01, $04, SpeedOfSound_Loop9

SpeedOfSound_Loop10:
	smpsCall            SpeedOfSound_Call19
	smpsLoop            $01, $07, SpeedOfSound_Loop10
	smpsPSGvoice        cTone_02
	dc.b	nC4, $04, $04
	smpsPSGvoice        cTone_05
	dc.b	$08
	smpsPSGvoice        cTone_02
	dc.b	nC4, $04, $04
	smpsPSGvoice        cTone_05
	dc.b	$08, nRst, $20

SpeedOfSound_Loop11:
	smpsCall            SpeedOfSound_Call19
	smpsLoop            $01, $10, SpeedOfSound_Loop11

SpeedOfSound_Loop12:
	smpsCall            SpeedOfSound_Call19
	smpsLoop            $01, $0F, SpeedOfSound_Loop12

SpeedOfSound_Loop13:
	smpsPSGvoice        cTone_02
	dc.b	$04, $04
	smpsPSGvoice        cTone_05
	dc.b	$08
	smpsLoop            $00, $02, SpeedOfSound_Loop13
	dc.b	nRst, $20

SpeedOfSound_Loop14:
	smpsCall            SpeedOfSound_Call19
	smpsLoop            $01, $09, SpeedOfSound_Loop14
	smpsJump            SpeedOfSound_Loop10

SpeedOfSound_Call19:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $04, $04
	smpsPSGvoice        cTone_05
	dc.b	$08
	smpsLoop            $00, $04, SpeedOfSound_Call19
	smpsReturn

SpeedOfSound_PWM1:
	dc.b	pKick, $10
	smpsLoop            $00, $0B, SpeedOfSound_PWM1
	dc.b	pKick, $08, pKick, pKick, $10, $10, $10, $10

SpeedOfSound_Loop15:
	smpsCall            SpeedOfSound_Call20
	smpsLoop            $01, $0C, SpeedOfSound_Loop15
	dc.b	pKick, $10, pKick, pKick, pKick
	smpsJump            SpeedOfSound_Loop15

SpeedOfSound_Call20:
	dc.b	pKick, $10, $10, $08, $08, nRst, pKick
	smpsLoop            $00, $03, SpeedOfSound_Call20
	dc.b	pKick, $10, $10, $10, $10
	smpsReturn

SpeedOfSound_PWM2:
	dc.b	$96, $40, nRst, nRst, $30
	smpsFMAlterVol      $F9
	dc.b	pTomHi, $04
	smpsFMAlterVol      $07
	dc.b	pTomMid
	smpsFMAlterVol      $90
	dc.b	pTomLo, $08
	smpsFMAlterVol      $70
	dc.b	pSnare, $04, pSnare, pSnare, nRst, pSnare, nRst, nRst
	dc.b	pSnare, pSnare, pSnare, pSnare, nRst, pSnare, pSnare, pSnare
	dc.b	pSnare

SpeedOfSound_Jump6:
	smpsCall            SpeedOfSound_Call21
	smpsCall            SpeedOfSound_Call22
	smpsCall            SpeedOfSound_Call21
	smpsCall            SpeedOfSound_Call21
	smpsCall            SpeedOfSound_Call21
	smpsCall            SpeedOfSound_Call21
	smpsCall            SpeedOfSound_Call21
	dc.b	nRst, $10, pSnare, $04, nRst, nRst, pSnare, nRst
	dc.b	$10, pSnare, $04, nRst, nRst, pSnare, nRst, $10
	dc.b	pSnare, $04, nRst, nRst, pSnare, nRst, $10, pSnare
	dc.b	nRst, $10, pSnare, $04, nRst, nRst, pSnare, nRst
	dc.b	$10, pSnare, $04, nRst, nRst, pSnare, nRst, $30
	dc.b	pSnare, $08, $04, $04
	smpsCall            SpeedOfSound_Call21
	smpsCall            SpeedOfSound_Call22
	smpsCall            SpeedOfSound_Call21
	dc.b	nRst, $10, pSnare, $04, nRst, nRst, pSnare, nRst
	dc.b	$10, pSnare, $04, nRst, nRst, pSnare, nRst, $10
	dc.b	pSnare, $04, nRst, nRst, pSnare, nRst, $10, pSnare
	dc.b	nRst, $10, pSnare, $04, nRst, nRst, pSnare, nRst
	dc.b	$10, pSnare, $04, nRst, nRst, pSnare, nRst, $30
	dc.b	pSnare, $08, $04, $04, nRst, $30, pSnare, $08
	dc.b	$04, $04
	smpsJump            SpeedOfSound_Jump6

SpeedOfSound_Call21:
	dc.b	nRst, $10, pSnare, $04, nRst, nRst, pSnare, nRst
	dc.b	$10, pSnare, $04, nRst, nRst, pSnare, nRst, $10
	dc.b	pSnare, $04, nRst, nRst, pSnare, nRst, $10, pSnare
	dc.b	nRst, $10, pSnare, $04, nRst, nRst, pSnare, nRst
	dc.b	$10, pSnare, $04, nRst, nRst, pSnare, pSnare, $04
	dc.b	pSnare, pSnare, nRst, pSnare, nRst, nRst, pSnare, pSnare
	dc.b	pSnare, pSnare, nRst, pSnare, nRst, nRst, pSnare
	smpsReturn

SpeedOfSound_Call22:
	dc.b	nRst, $10, pSnare, $04, nRst, nRst, pSnare, nRst
	dc.b	$10, pSnare, $04, nRst, nRst, pSnare, nRst, $10
	dc.b	pSnare, $04, nRst, nRst, pSnare, nRst, $10, pSnare
	dc.b	nRst, $10, pSnare, $04, nRst, nRst, pSnare, nRst
	dc.b	$10, pSnare, $04, nRst, nRst, pSnare, pSnare, $04
	dc.b	pSnare, pSnare, nRst, pSnare, nRst, nRst, pSnare, nRst
	dc.b	$20
	smpsReturn

SpeedOfSound_PWM3:
	smpsFMAlterVol      $C0
	dc.b	pCrash, $40, nRst, pCrash, $40
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pSplash, $40
	smpsFMAlterVol      $04

SpeedOfSound_Loop16:
	smpsFMAlterVol      $C0
	dc.b	pCrash, $40
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsFMAlterVol      $FC
	dc.b	pSplash, $40
	smpsFMAlterVol      $04
	dc.b	nRst, nRst, nRst
	smpsLoop            $00, $02, SpeedOfSound_Loop16

SpeedOfSound_Loop17:
	smpsFMAlterVol      $C0
	dc.b	pCrash, $40, nRst, pCrash, $38
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pSplash, $08, nRst, $40
	smpsFMAlterVol      $04
	smpsLoop            $00, $02, SpeedOfSound_Loop17
	smpsFMAlterVol      $C0
	dc.b	pCrash, $40
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsFMAlterVol      $C0
	dc.b	pCrash, $40
	smpsFMAlterVol      $40
	dc.b	nRst
	smpsFMAlterVol      $C0
	dc.b	pCrash, $40
	smpsFMAlterVol      $40
	smpsCall            SpeedOfSound_Call23
	smpsFMAlterVol      $C0
	dc.b	pCrash, $40
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsFMAlterVol      $C0
	dc.b	pCrash, $40
	smpsFMAlterVol      $40
	dc.b	nRst
	smpsFMAlterVol      $C0
	dc.b	pCrash, $40
	smpsFMAlterVol      $40
	dc.b	nRst
	smpsFMAlterVol      $C0
	dc.b	pCrash, $40
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsFMAlterVol      $C0
	dc.b	pCrash, $40
	smpsFMAlterVol      $40
	dc.b	nRst
	smpsFMAlterVol      $C0
	dc.b	pCrash, $40
	smpsFMAlterVol      $40
	smpsCall            SpeedOfSound_Call23
	smpsCall            SpeedOfSound_Call23
	smpsJump            SpeedOfSound_Loop16

SpeedOfSound_Call23:
	smpsFMAlterVol      $FC
	dc.b	pSplash, $0C
	smpsFMAlterVol      $04
	smpsFMAlterVol      $C0
	dc.b	pCrash
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pSplash
	smpsFMAlterVol      $04
	smpsFMAlterVol      $C0
	dc.b	pCrash
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pSplash, $10
	smpsFMAlterVol      $04
	smpsReturn

SpeedOfSound_PWM4:
	smpsFMAlterVol      $FD
	dc.b	$96, $08, pElecHiHat, $04, $04
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	nRst, $08, pElecHiHat, $04, $04
	smpsFMAlterVol      $30
	smpsLoop            $01, $08, SpeedOfSound_PWM4

SpeedOfSound_Loop18:
	smpsCall            SpeedOfSound_Call24
	smpsLoop            $01, $07, SpeedOfSound_Loop18
	smpsFMAlterVol      $FD
	dc.b	nRst, $08, pElecHiHat, $04, $04
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	nRst, $08, pElecHiHat, $04, $04
	smpsFMAlterVol      $30
	dc.b	$96, $20

SpeedOfSound_Loop19:
	smpsCall            SpeedOfSound_Call24
	smpsLoop            $01, $1F, SpeedOfSound_Loop19
	smpsFMAlterVol      $FD
	dc.b	nRst, $08, pElecHiHat, $04, $04
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	nRst, $08, pElecHiHat, $04, $04
	smpsFMAlterVol      $30
	dc.b	$96, $20

SpeedOfSound_Loop20:
	smpsCall            SpeedOfSound_Call24
	smpsLoop            $01, $09, SpeedOfSound_Loop20
	smpsJump            SpeedOfSound_Loop18

SpeedOfSound_Call24:
	smpsFMAlterVol      $FD
	dc.b	nRst, $08, pElecHiHat, $04, $04
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	nRst, $08, pElecHiHat, $04, $04
	smpsFMAlterVol      $30
	smpsLoop            $00, $02, SpeedOfSound_Call24
	smpsReturn

SpeedOfSound_Voices:
	; Voice $00
	; $3A
	; $73, $77, $31, $72,	$1F, $95, $1F, $1F
	; $0E, $0F, $05, $0C,	$07, $06, $06, $07
	; $2F, $4F, $1F, $4F,	$22, $11, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $07, $07
	smpsVcCoarseFreq    $02, $01, $07, $03
	smpsVcRateScale     $00, $00, $02, $00
	smpsVcAttackRate    $1F, $1F, $15, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $05, $0F, $0E
	smpsVcDecayRate2    $07, $06, $06, $07
	smpsVcDecayLevel    $04, $01, $04, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $27, $11, $22

	; Voice $01
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

	; Voice $02
	; $30
	; $77, $77, $72, $32,	$D8, $58, $96, $94
	; $01, $1B, $03, $08,	$01, $04, $01, $04
	; $FF, $2F, $5F, $9F,	$26, $2B, $10, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $07
	smpsVcCoarseFreq    $02, $02, $07, $07
	smpsVcRateScale     $02, $02, $01, $03
	smpsVcAttackRate    $14, $16, $18, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $03, $1B, $01
	smpsVcDecayRate2    $04, $01, $04, $01
	smpsVcDecayLevel    $09, $05, $02, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $10, $2B, $26

	; Voice $03
	; $3A
	; $32, $25, $73, $41,	$5F, $1F, $1F, $9F
	; $08, $05, $04, $07,	$03, $04, $02, $03
	; $2F, $2F, $1F, $0F,	$20, $27, $1F, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $07, $02, $03
	smpsVcCoarseFreq    $01, $03, $05, $02
	smpsVcRateScale     $02, $00, $00, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $04, $05, $08
	smpsVcDecayRate2    $03, $02, $04, $03
	smpsVcDecayLevel    $00, $01, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1F, $27, $20

	; Voice $04
	; $2D
	; $77, $65, $05, $15,	$1F, $5F, $5F, $5F
	; $00, $03, $03, $05,	$00, $01, $02, $01
	; $0F, $6C, $6C, $1C,	$22, $8C, $8C, $8C
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
	smpsVcDecayLevel    $01, $06, $06, $00
	smpsVcReleaseRate   $0C, $0C, $0C, $0F
	smpsVcTotalLevel    $8C, $8C, $8C, $22
