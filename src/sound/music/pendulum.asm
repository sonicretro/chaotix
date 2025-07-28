Pendulum_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Pendulum_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $15
	smpsHeaderFM        Pendulum_FM1, $00, $0A
	smpsHeaderFM        Pendulum_FM2, $00, $08
	smpsHeaderFM        Pendulum_FM3, $00, $08
	smpsHeaderFM        Pendulum_FM4, $00, $13
	smpsHeaderFM        Pendulum_FM5, $00, $13
	smpsHeaderFM        Pendulum_FM6, $00, $00
	smpsHeaderPSG       Pendulum_PSG1, $E8, $00, $00, cTone_00
	smpsHeaderPSG       Pendulum_PSG2, $E8, $03, $00, cTone_00
	smpsHeaderPSG       Pendulum_PSG3, $23, $03, $00, cTone_00
	smpsHeaderPWM       Pendulum_PWM1, $FF
	smpsHeaderPWM       Pendulum_PWM2, $89
	smpsHeaderPWM       Pendulum_PWM3, $99
	smpsHeaderPWM       Pendulum_PWM4, $BA

Pendulum_FM1:
	smpsFMvoice         $00
	smpsPan             panCenter, $00
	dc.b	nRst, $30, nE2, $06, $0C, $06, nEb3, $03
	dc.b	nE3, $09, smpsNoAttack, $0C

Pendulum_Loop1:
	smpsFMvoice         $00
	smpsFMAlterVol      $FC
	dc.b	nA2, $06
	smpsFMAlterVol      $04
	dc.b	nA2, $0C, nD3, $06, nRst, $06, nE3, $06
	dc.b	nG3, $06, nA3, $06, nEb4, $03, nE4, $09
	dc.b	nG3, $0C, nA3, $18
	smpsFMAlterVol      $FC
	dc.b	nA2, $06
	smpsFMAlterVol      $04
	dc.b	nA2, $0C, nD3, nE3, $06, nG3, nB3, nC4
	dc.b	$0C, nFs3, nG3, $06, nCs3, $12
	smpsFMAlterVol      $FC
	dc.b	nA2, $06
	smpsFMAlterVol      $04
	dc.b	nA2, $0C, nD3, $06, nRst, $06, nE3, $06
	dc.b	nG3, $06, nA3, $06, nEb4, $03, nE4, $09
	dc.b	nG3, $0C, nA3, $18, nB3, $06, nC4, nRst
	dc.b	nBb3, nRst, nA3, nG3, nD3, nF3, $0C, nFs3
	dc.b	$24
	smpsLoop            $00, $03, Pendulum_Loop1
	smpsFMAlterVol      $FC
	dc.b	nA2, $06
	smpsFMAlterVol      $04
	dc.b	nA2, $0C, nD3, $06, nRst, $06, nE3, $06
	dc.b	nG3, $06, nA3, $06, nEb4, $03, nE4, $09
	dc.b	nG3, $0C, nA3, $18
	smpsFMAlterVol      $FC
	dc.b	nA2, $06
	smpsFMAlterVol      $04
	dc.b	nA2, $0C, nD3, nE3, $06, nG3, nB3, nC4
	dc.b	$0C, nFs3, nG3, $06, nCs3, $12
	smpsFMAlterVol      $FC
	dc.b	nA2, $06
	smpsFMAlterVol      $04
	dc.b	nA2, $0C, nD3, $06, nRst, $06, nE3, $06
	dc.b	nG3, $06, nA3, $06, nEb4, $03, nE4, $09
	dc.b	nG3, $0C, nA3, $18, nB3, $06, nC4, nRst
	dc.b	nBb3, nRst, nA3, nG3, nD3, nF2, nFs2, nG2
	dc.b	nAb2, nA2, nBb2, nB2, nC3
	smpsFMvoice         $01
	smpsFMAlterVol      $05

Pendulum_Loop2:
	smpsFMAlterVol      $FE
	dc.b	nA2
	smpsFMAlterVol      $02
	dc.b	nE3, nA3, nF2, nC3, nF3, nE3, nC3, nA2
	dc.b	nE3, nA3, nF2, nC3, nF3, nE3, nC3
	smpsLoop            $00, $04, Pendulum_Loop2
	smpsFMAlterVol      $FE
	dc.b	nBb2
	smpsFMAlterVol      $02
	dc.b	nF3, nBb3, nFs2, nCs3, nFs3, nF3, nCs3, nBb2
	dc.b	nF3, nBb3, nFs2, nCs3, nFs3, nF3, nCs3
	smpsFMAlterVol      $FE
	dc.b	nBb2
	smpsFMAlterVol      $02
	dc.b	nF3, nBb3, nFs2, nCs3, nFs3, nF3, nCs3, nBb2
	dc.b	nF3, nBb3, nFs2, nCs3, nFs3, nF3, nCs3
	smpsFMAlterVol      $FE
	dc.b	nB2
	smpsFMAlterVol      $02
	dc.b	nFs3, nB3, nG2, nD3, nG3, nFs3, nD3, nB2
	dc.b	nFs3, nB3, nG2, nD3, nG3, nFs3, nD3
	smpsFMAlterVol      $FE
	dc.b	nB2
	smpsFMAlterVol      $02
	dc.b	nFs3, nB3, nG2, nD3, nG3, nFs3, nD3, nE2
	dc.b	$06, $0C, $06, nEb3, $03, nE3, $09, smpsNoAttack
	dc.b	$0C
	smpsFMAlterVol      $FB
	smpsJump            Pendulum_Loop1

Pendulum_FM2:
	dc.b	nRst, $60

Pendulum_Loop3:
	smpsCall            Pendulum_Call1
	smpsAlterPitch      $F4
	dc.b	nRst, $2A, nG5, $06, nRst, nG5, $06, nFs5
	dc.b	$06, nRst, nE5, $03, nRst, nFs5, $06
	smpsFMAlterVol      $07
	dc.b	nFs5, $06, nRst
	smpsFMAlterVol      $F9
	smpsAlterPitch      $0C
	smpsCall            Pendulum_Call1
	dc.b	nRst, $30, nA3, $03, nRst, nB3, nRst, nC4
	dc.b	nRst, nD4, nRst, nE4, nRst, nF4, nRst, nG4
	dc.b	nRst, nAb4, $06
	smpsLoop            $00, $02, Pendulum_Loop3
	smpsFMvoice         $02
	smpsPan             panRight, $00
	smpsCall            Pendulum_Call2
	smpsJump            Pendulum_Loop3

Pendulum_Call1:
	dc.b	nRst, $4E
	smpsFMvoice         $03
	smpsPan             panCenter, $00
	dc.b	nE5, $03, nRst, nE5, $03, nRst, nD5, $03
	smpsFMAlterVol      $07
	dc.b	nD5
	smpsFMAlterVol      $F9
	smpsAlterPitch      $F4
	dc.b	nRst, $2A, nG5, $06, nRst, nG5, $06, nFs5
	dc.b	$06, nRst, nE5, $03, nRst, nD5, $06
	smpsFMAlterVol      $07
	dc.b	nD5, $06, nRst
	smpsFMAlterVol      $F9
	smpsAlterPitch      $0C
	dc.b	nRst, $4E, nE5, $03, nRst, nE5, $03, nRst
	dc.b	nD5, $03
	smpsFMAlterVol      $07
	dc.b	nD5
	smpsFMAlterVol      $F9
	smpsReturn

Pendulum_Call2:
	dc.b	nA3, $06, nE4, nA4, nF3, nC4, nF4, nE4
	dc.b	nC4, nA3, nE4, nA4, nF3, nC4, nF4, nE4
	dc.b	nC4
	smpsLoop            $00, $04, Pendulum_Call2
	dc.b	nBb3, nF4, nBb4, nFs3, nCs4, nFs4, nF4, nCs4
	dc.b	nBb3, nF4, nBb4, nFs3, nCs4, nFs4, nF4, nCs4
	dc.b	nBb3, nF4, nBb4, nFs3, nCs4, nFs4, nF4, nCs4
	dc.b	nBb3, nF4, nBb4, nFs3, nCs4, nFs4, nF4, nCs4
	dc.b	nB3, nFs4, nB4, nG3, nD4, nG4, nFs4, nD4
	dc.b	nB3, nFs4, nB4, nG3, nD4, nG4, nFs4, nD4
	dc.b	nB3, nFs4, nB4, nG3, nD4, nG4, nFs4, nD4
	dc.b	nA4, nAb4, nG4, nF4, nE4, nD4, nC4, nB3
	smpsReturn

Pendulum_FM3:
	dc.b	nRst, $60

Pendulum_Loop4:
	smpsCall            Pendulum_Call3
	smpsAlterPitch      $F4
	dc.b	nRst, $2A, nD5, $06, nRst, nD5, $06, nD5
	dc.b	$06, nRst, nC5, $03, nRst, nD5, $06
	smpsFMAlterVol      $09
	dc.b	nD5, $06, nRst
	smpsFMAlterVol      $F7
	smpsAlterPitch      $0C
	smpsCall            Pendulum_Call3
	dc.b	nRst, $30, nF3, $03, nRst, nG3, nRst, nAb3
	dc.b	nRst, nBb3, nRst, nC4, nRst, nCs4, nRst, nEb4
	dc.b	nRst, nE4, $06
	smpsLoop            $00, $02, Pendulum_Loop4
	smpsFMvoice         $02
	smpsPan             panLeft, $00
	smpsFMAlterVol      $03
	smpsCall            Pendulum_Call4
	smpsFMAlterVol      $FD
	smpsJump            Pendulum_Loop4

Pendulum_Call3:
	dc.b	nRst, $4E
	smpsFMvoice         $03
	smpsPan             panCenter, $00
	dc.b	nC5, $03, nRst, nC5, $03, nRst, nC5, $03
	smpsFMAlterVol      $09
	dc.b	nC5
	smpsFMAlterVol      $F7
	smpsAlterPitch      $F4
	dc.b	nRst, $2A, nD5, $06, nRst, nD5, $06, nD5
	dc.b	$06, nRst, nC5, $03, nRst, nB4, $06
	smpsFMAlterVol      $09
	dc.b	nB4, $06, nRst
	smpsFMAlterVol      $F7
	smpsAlterPitch      $0C
	dc.b	nRst, $4E, nC5, $03, nRst, nC5, $03, nRst
	dc.b	nC5, $03
	smpsFMAlterVol      $09
	dc.b	nC5
	smpsFMAlterVol      $F7
	smpsReturn

Pendulum_Call4:
	dc.b	nE3, $06, nB3, nE4, nC3, nG3, nC4, nB3
	dc.b	nG3, nE3, nB3, nE4, nC3, nG3, nC4, nB3
	dc.b	nG3
	smpsLoop            $00, $04, Pendulum_Call4
	dc.b	nF3, nC4, nF4, nCs3, nAb3, nCs4, nC4, nAb3
	dc.b	nF3, nC4, nF4, nCs3, nAb3, nCs4, nC4, nAb3
	dc.b	nF3, nC4, nF4, nCs3, nAb3, nCs4, nC4, nAb3
	dc.b	nF3, nC4, nF4, nCs3, nAb3, nCs4, nC4, nAb3
	dc.b	nFs3, nCs4, nFs4, nD3, nA3, nD4, nCs4, nA3
	dc.b	nFs3, nCs4, nFs4, nD3, nA3, nD4, nCs4, nA3
	dc.b	nFs3, nCs4, nFs4, nD3, nA3, nD4, nCs4, nA3
	dc.b	nE4, nEb4, nD4, nC4, nB3, nA3, nG3, nFs3
	smpsReturn

Pendulum_FM4:
	smpsPan             panRight, $00
	smpsModSet          $01, $01, $02, $06
	dc.b	nRst, $06, nRst, $60

Pendulum_Loop5:
	smpsFMvoice         $03
	smpsCall            Pendulum_Call1
	smpsAlterPitch      $F4
	dc.b	nRst, $2A, nG5, $06, nRst, nG5, $06, nFs5
	dc.b	$06, nRst, nE5, $03, nRst, nFs5, $06
	smpsFMAlterVol      $07
	dc.b	nFs5, $06, nRst
	smpsFMAlterVol      $F9
	smpsAlterPitch      $0C
	smpsCall            Pendulum_Call1
	dc.b	nRst, $30, nA3, $03, nRst, nB3, nRst, nC4
	dc.b	nRst, nD4, nRst, nE4, nRst, nF4, nRst, nG4
	dc.b	nRst, nAb4, $06
	smpsLoop            $00, $02, Pendulum_Loop5
	smpsFMvoice         $02
	smpsPan             panRight, $00
	smpsFMAlterVol      $03
	smpsCall            Pendulum_Call2
	smpsFMAlterVol      $FD
	smpsJump            Pendulum_Loop5

Pendulum_FM5:
	smpsFMvoice         $03
	smpsPan             panRight, $00
	smpsModSet          $01, $01, $02, $06
	dc.b	nRst, $06, nRst, $60

Pendulum_Loop6:
	smpsCall            Pendulum_Call3
	smpsAlterPitch      $F4
	dc.b	nRst, $2A, nD5, $06, nRst, nD5, $06, nD5
	dc.b	$06, nRst, nC5, $03, nRst, nD5, $06
	smpsFMAlterVol      $09
	dc.b	nD5, $06, nRst
	smpsFMAlterVol      $F7
	smpsAlterPitch      $0C
	smpsCall            Pendulum_Call3
	dc.b	nRst, $30, nF3, $03, nRst, nG3, nRst, nAb3
	dc.b	nRst, nBb3, nRst, nC4, nRst, nCs4, nRst, nEb4
	dc.b	nRst, nE4, $06
	smpsLoop            $00, $02, Pendulum_Loop6
	smpsFMvoice         $02
	smpsPan             panLeft, $00
	smpsFMAlterVol      $03
	smpsCall            Pendulum_Call4
	smpsFMAlterVol      $FD
	smpsJump            Pendulum_Loop6

Pendulum_FM6:
	smpsStop

Pendulum_PSG1:
	smpsPSGvoice        cTone_08
	dc.b	nRst, $60

Pendulum_Loop7:
	smpsPSGAlterVol     $01
	dc.b	nA4, $06, nA4, $03, nRst
	smpsPSGAlterVol     $FF
	dc.b	nA5, $03, nRst, nA4, nRst, nE5, nRst, nA4
	dc.b	nRst, nG5, nRst, nA4, nRst
	smpsPSGAlterVol     $01
	dc.b	nA4, $06, nA4, $03, nRst
	smpsPSGAlterVol     $FF
	dc.b	nA5, $03, nRst, nA4, nRst, nC5, nRst, nD5
	dc.b	nRst, nE5, nRst, nG5, nRst
	smpsPSGAlterVol     $01
	dc.b	nA4, $06, nA4, $03, nRst
	smpsPSGAlterVol     $FF
	dc.b	nA5, $03, nRst, nA4, nRst, nE5, nRst, nA4
	dc.b	nRst, nG5, nRst, nA4, nRst
	smpsPSGAlterVol     $01
	dc.b	nA4, $06, nA4, $03, nRst
	smpsPSGAlterVol     $FF
	dc.b	nA5, $03, nRst, nA4, nRst, nC5, nRst, nB4
	dc.b	nRst, nA4, nRst, nG4, nRst
	smpsLoop            $01, $03, Pendulum_Loop7
	smpsPSGAlterVol     $01
	dc.b	nA4, $06, nA4, $03, nRst
	smpsPSGAlterVol     $FF
	dc.b	nA5, $03, nRst, nA4, nRst, nE5, nRst, nA4
	dc.b	nRst, nG5, nRst, nA4, nRst
	smpsPSGAlterVol     $01
	dc.b	nA4, $06, nA4, $03, nRst
	smpsPSGAlterVol     $FF
	dc.b	nA5, $03, nRst, nA4, nRst, nC5, nRst, nD5
	dc.b	nRst, nE5, nRst, nG5, nRst
	smpsPSGAlterVol     $01
	dc.b	nA4, $06, nA4, $03, nRst
	smpsPSGAlterVol     $FF
	dc.b	nA5, $03, nRst, nA4, nRst, nE5, nRst, nA4
	dc.b	nRst, nG5, nRst, nA4, nRst, nA4, nRst, nB4
	dc.b	nRst, nC5, nRst, nD5, nRst, nE5, nRst, nF5
	dc.b	nRst, nG5, nRst, nAb5, nRst
	smpsLoop            $00, $02, Pendulum_Loop7
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60
	smpsJump            Pendulum_Loop7

Pendulum_PSG2:
	smpsPSGvoice        cTone_08
	smpsModSet          $01, $01, $02, $04
	dc.b	nRst, $60, nRst, $06

Pendulum_Loop8:
	dc.b	nA4, $06, nA4, nA5, nA4, nE5, nA4, nG5
	dc.b	nA4, nA4, nA4, nA5, nA4, nC5, nD5, nE5
	dc.b	nG5, nA4, $06, nA4, nA5, nA4, nE5, nA4
	dc.b	nG5, nA4, nA4, nA4, nA5, nA4, nC5, nB4
	dc.b	nA4, nG4
	smpsLoop            $01, $03, Pendulum_Loop8
	dc.b	nA4, $06, nA4, nA5, nA4, nE5, nA4, nG5
	dc.b	nA4, nA4, nA4, nA5, nA4, nC5, nD5, nE5
	dc.b	nG5, nA4, $06, nA4, nA5, nA4, nE5, nA4
	dc.b	nG5, nA4, nA4, nB4, nC5, nD5, nE5, nF5
	dc.b	nG5, nAb5
	smpsLoop            $00, $02, Pendulum_Loop8
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60
	smpsJump            Pendulum_Loop8

Pendulum_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        cTone_02
	dc.b	nRst, $60

Pendulum_Jump1:
	dc.b	nC4, $06
	smpsPSGAlterVol     $04
	dc.b	nC4
	smpsPSGAlterVol     $FD
	dc.b	nC4
	smpsPSGAlterVol     $03
	dc.b	nC4
	smpsPSGAlterVol     $FD
	dc.b	nC4
	smpsPSGAlterVol     $03
	dc.b	nC4
	smpsPSGAlterVol     $FD
	dc.b	nC4
	smpsPSGAlterVol     $03
	dc.b	nC4
	smpsPSGAlterVol     $FC
	dc.b	nC4
	smpsPSGAlterVol     $04
	dc.b	nC4
	smpsPSGAlterVol     $FD
	dc.b	nC4
	smpsPSGAlterVol     $03
	dc.b	nC4
	smpsPSGAlterVol     $FD
	dc.b	nC4
	smpsPSGAlterVol     $03
	dc.b	nC4
	smpsPSGAlterVol     $FD
	dc.b	nC4
	smpsPSGAlterVol     $03
	dc.b	nC4
	smpsPSGAlterVol     $FC
	smpsJump            Pendulum_Jump1

Pendulum_PWM1:
	dc.b	pKick, $18, pElecSnare, $18, pElecSnare, $06, pElecSnare, pElecSnare
	dc.b	pElecSnare, pElecSnare, $0C, pElecSnare, $06, pElecSnare

Pendulum_Loop9:
	dc.b	pKick, $18, pElecSnare, $18, nRst, $18, pElecSnare, $18
	smpsLoop            $00, $07, Pendulum_Loop9
	smpsLoop            $01, $02, Pendulum_PWM1
	dc.b	pKick, $18, pElecSnare, $18, pElecSnare, $06, pElecSnare, pElecSnare
	dc.b	pElecSnare, pElecSnare, $0C, pElecSnare, $06, pElecSnare

Pendulum_Loop10:
	dc.b	pKick, $18, pKick, pKick, pKick
	smpsLoop            $00, $07, Pendulum_Loop10
	dc.b	pKick, $18, pKick, $18, pElecSnare, $06, pElecSnare, pElecSnare
	dc.b	pElecSnare, pElecSnare, pElecSnare, pElecSnare, pElecSnare
	smpsJump            Pendulum_Loop9

Pendulum_PWM2:
	dc.b	$96, $0C, pTomLo, $0C, nRst, $0C, pTomLo, $0C
	dc.b	nRst, $30

Pendulum_Loop11:
	dc.b	nRst, $0C, pTomLo, nRst, pTomLo, nRst, pTomLo, nRst
	dc.b	pTomLo
	smpsLoop            $00, $07, Pendulum_Loop11
	dc.b	nRst, $0C, pTomLo, nRst, pTomLo, nRst, $30
	smpsLoop            $01, $02, Pendulum_Loop11

Pendulum_Loop12:
	dc.b	nRst, $60
	smpsLoop            $00, $08, Pendulum_Loop12
	smpsJump            Pendulum_Loop11

Pendulum_PWM3:
	dc.b	$96, $12, pTomMid, $06, nRst, $12, pTomMid, $06
	dc.b	nRst, $30

Pendulum_Loop13:
	dc.b	nRst, $12, pTomMid, $06, nRst, $12, pTomMid, $06
	dc.b	nRst, $12, pTomMid, $06, nRst, $18
	smpsLoop            $00, $07, Pendulum_Loop13
	dc.b	nRst, $12, pTomMid, $06, nRst, $12, pTomMid, $06
	dc.b	nRst, $30
	smpsLoop            $01, $02, Pendulum_Loop13

Pendulum_Loop14:
	dc.b	nRst, $60
	smpsLoop            $00, $08, Pendulum_Loop14
	smpsJump            Pendulum_Loop13

Pendulum_PWM4:
	dc.b	$96, $60

Pendulum_Loop15:
	dc.b	$96, $30, pTomLo, $18, nRst, $18
	smpsLoop            $00, $07, Pendulum_Loop15
	dc.b	nRst, $60
	smpsLoop            $01, $02, Pendulum_Loop15

Pendulum_Loop16:
	dc.b	nRst, $60
	smpsLoop            $00, $08, Pendulum_Loop16
	smpsJump            Pendulum_Loop15

Pendulum_Voices:
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
	; $23
	; $0D, $01, $00, $00,	$1F, $1F, $1F, $1F
	; $0E, $0D, $09, $09,	$00, $00, $00, $00
	; $D6, $D6, $D6, $D7,	$33, $15, $17, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $01, $0D
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $09, $0D, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0D, $0D, $0D, $0D
	smpsVcReleaseRate   $07, $06, $06, $06
	smpsVcTotalLevel    $80, $17, $15, $33

	; Voice $02
	; $3A
	; $01, $01, $03, $02,	$0D, $07, $07, $19
	; $09, $00, $00, $03,	$01, $01, $01, $08
	; $52, $02, $03, $38,	$1A, $23, $1E, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $03, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $19, $07, $07, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $00, $00, $09
	smpsVcDecayRate2    $08, $01, $01, $01
	smpsVcDecayLevel    $03, $00, $00, $05
	smpsVcReleaseRate   $08, $03, $02, $02
	smpsVcTotalLevel    $80, $1E, $23, $1A

	; Voice $03
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
