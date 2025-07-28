ChildsSong_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     ChildsSong_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $30
	smpsHeaderFM        ChildsSong_FM1, $00, $0A
	smpsHeaderFM        ChildsSong_FM2, $00, $10
	smpsHeaderFM        ChildsSong_FM3, $00, $10
	smpsHeaderFM        ChildsSong_FM4, $00, $12
	smpsHeaderFM        ChildsSong_FM5, $00, $14
	smpsHeaderFM        ChildsSong_FM6, $00, $1B
	smpsHeaderPSG       ChildsSong_PSG1, $E8, $02, $00, cTone_00
	smpsHeaderPSG       ChildsSong_PSG2, $E8, $05, $00, cTone_00
	smpsHeaderPSG       ChildsSong_PSG3, $23, $03, $00, cTone_00
	smpsHeaderPWM       ChildsSong_PWM1, $EE
	smpsHeaderPWM       ChildsSong_PWM2, $99
	smpsHeaderPWM       ChildsSong_PWM3, $88
	smpsHeaderPWM       ChildsSong_PWM4, $00

ChildsSong_FM1:
	smpsFMvoice         $00
	smpsPan             panCenter, $00
	dc.b	nRst, $48, nE3, $18, nA3, $06, nRst, $12
	dc.b	nE3, $06, nRst, $12, nA3, $06, nRst, $12
	dc.b	nE3, $06, nRst, $12

ChildsSong_Loop1:
	dc.b	nA3, $06, nRst, $12, nE3, $06, nRst, $12
	dc.b	nA3, $06, nRst, $12, nE3, $06, nRst, $12
	dc.b	nF3, $06, nRst, $12, nC3, $06, nRst, $12
	dc.b	nF3, $06, nRst, $12, nC3, $06, nRst, $12
	smpsLoop            $00, $02, ChildsSong_Loop1
	dc.b	nE3, $18, nF3, $06, nRst, $12, nE3, $18
	dc.b	nF3, $06, nRst, $12, nE3, $06, nRst, $1E
	dc.b	nE3, $06, nRst, nF3, nRst, nAb3, nRst, nA3
	dc.b	nRst, nB3, nRst
	smpsLoop            $01, $02, ChildsSong_Loop1
	dc.b	nA3, nRst, $12, nE3, $06, nRst, $12, nA3
	dc.b	$06, nRst, $12, nE3, $06, nRst, $12, nA3
	dc.b	$06, nRst, $12, nE3, $06, nRst, $12, nA3
	dc.b	$06, nRst, nE3, nRst, nFs3, nRst, nAb3, nRst
	smpsFMAlterVol      $02
	dc.b	nA2, nRst, nE3, nRst, nC3, nRst, nE3, nRst
	dc.b	nA2, nRst, nE3, nRst, nC3, nRst, nE3, nRst
	dc.b	nE2, nRst, nD3, nRst, nB2, nRst, nD3, nRst
	dc.b	nE2, nRst, nD3, nRst, nB2, nRst, nD3, nRst
	dc.b	nA2, nRst, nE3, nRst, nC3, nRst, nE3, nRst
	dc.b	nA2, nRst, nE3, nRst, nC3, nRst, nE3, nRst
	dc.b	nE2, nRst, nD3, nRst, nB2, nRst, nD3, nRst
	dc.b	nE2, $0C, nE2, $06, nRst, nFs2, nRst, nAb2
	dc.b	nRst
	smpsFMAlterVol      $FE
	smpsJump            ChildsSong_Loop1

ChildsSong_FM2:
	smpsFMvoice         $01
	smpsPan             panCenter, $00
	dc.b	nRst, $60, nRst, $60

ChildsSong_Loop2:
	dc.b	nA4, $03, nRst, $09, nA4, $06, nB4, nC5
	dc.b	$0C, nB4, nA4, nE4, nC4, nE4, nF4, $4B
	dc.b	nRst, $15, nA4, $03, nRst, $09, nA4, $06
	dc.b	nB4, nC5, $0C, nB4, nA4, nE4, nC4, nE4
	dc.b	nEb4, $4B, nRst, $15, nE4, $18, nF4, $03
	dc.b	nRst, $15, nE4, $18, nF4, $03, nRst, $39
	dc.b	nE4, $0C, nF4, nAb4, nA4, nB4
	smpsLoop            $00, $02, ChildsSong_Loop2
	dc.b	nA4, $60
	smpsPan             panRight, $00
	dc.b	nC5, $06, nAb4, nG4, nFs4
	smpsPan             panCenter, $00
	dc.b	nD4, nB3
	smpsPan             panLeft, $00
	dc.b	nAb3, nG3, nFs3, $30
	smpsPan             panCenter, $00

ChildsSong_Loop3:
	dc.b	nRst, $60
	smpsLoop            $00, $04, ChildsSong_Loop3
	smpsJump            ChildsSong_Loop2

ChildsSong_FM3:
	smpsFMvoice         $02
	smpsPan             panCenter, $00

ChildsSong_Loop4:
	dc.b	nA4, $06, nE5, nC5, nE5, nA4, nE5, nC5
	dc.b	nE5, nA4, nE5, nC5, nE5, nA4, nE5, nC5
	dc.b	nE5
	smpsLoop            $00, $02, ChildsSong_Loop4

ChildsSong_Loop5:
	dc.b	nA4, $06, nE5, nC5, nE5, nA4, nE5, nC5
	dc.b	nE5, nA4, nE5, nC5, nE5, nA4, nE5, nC5
	dc.b	nE5, nA4, nEb5, nC5, nEb5, nA4, nEb5, nC5
	dc.b	nEb5, nA4, nEb5, nC5, nEb5, nA4, nEb5, nC5
	dc.b	nEb5
	smpsLoop            $00, $02, ChildsSong_Loop5
	dc.b	nRst, $60
	smpsPan             panLeft, $00
	dc.b	nE2, $06, nF2, nAb2, nB2, nE3, nF3, nAb3
	smpsPan             panCenter, $00
	dc.b	nB3, $06
	smpsPan             panRight, $00
	dc.b	nE4, $06, nF4, nAb4, nB4, nE5, nF5, nAb5
	dc.b	nB5
	smpsPan             panCenter, $00
	smpsLoop            $01, $02, ChildsSong_Loop5
	dc.b	nA4, $06, nE5, nC5, nE5, nA4, nE5, nC5
	dc.b	nE5, nA4, nE5, nC5, nE5, nA4, nE5, nC5
	dc.b	nE5, nA4, $06, nE5, nC5, nE5, nA4, nE5
	dc.b	nC5, nE5, nA4, nE5, nC5, nE5, nA4, nE5
	dc.b	nC5, nE5

ChildsSong_Loop6:
	dc.b	nRst, $60
	smpsLoop            $00, $03, ChildsSong_Loop6
	dc.b	nRst, $30, nE2, $06, nAb2, nB2, nD3, nE3
	dc.b	nD3, nC3, nB2
	smpsJump            ChildsSong_Loop5

ChildsSong_FM4:
	smpsFMvoice         $03
	smpsPan             panCenter, $00
	smpsPitchSlideSpeed $02
	smpsModSet          $00, $00, $00, $00
	dc.b	nRst, $60, nRst, $60

ChildsSong_Loop7:
	dc.b	nA4, $03, nRst, $09, nA4, $06, nB4, nC5
	dc.b	$0C, nB4, nA4, nE4, nC4, nE4, nF4, $4B
	dc.b	nRst, $15, nA4, $03, nRst, $09, nA4, $06
	dc.b	nB4, nC5, $0C, nB4, nA4, nE4, nC4, nE4
	dc.b	nEb4, $4B, nRst, $15, nE4, $18, nF4, $03
	dc.b	nRst, $15, nE4, $18, nF4, $03, nRst, $39
	dc.b	nE4, $0C, nF4, nAb4, nA4, nB4
	smpsLoop            $00, $02, ChildsSong_Loop7
	dc.b	nA4, $60
	smpsPan             panRight, $00
	dc.b	nC6, $06, nAb5, nG5, nFs5
	smpsPan             panCenter, $00
	dc.b	nD5, $06, nB4
	smpsPan             panLeft, $00
	dc.b	nAb4, $06, nG4, nFs4, $30
	smpsPan             panCenter, $00
	smpsFMAlterVol      $03
	dc.b	nA5, $06, nC6, nE6, nA6, nA5, nC6, nE6
	dc.b	nA6, nA5, nC6, nE6, nA6, nA5, nC6, nE6
	dc.b	nA6, nE5, nAb5, nB5, nE6, nE5, nAb5, nB5
	dc.b	nE6, nE5, nAb5, nB5, nE6, nE5, nAb5, nB5
	dc.b	nE6, nA5, nC6, nE6, nA6, nA5, nC6, nE6
	dc.b	nA6, nA5, nC6, nE6, nA6, nA5, nC6, nE6
	dc.b	nA6, nE5, nAb5, nB5, nE6, nE5, nAb5, nB5
	dc.b	nE6, nE5, nAb5, nB5, nD6, nE6, nD6, nC6
	dc.b	nB5
	smpsFMAlterVol      $FD
	smpsJump            ChildsSong_Loop7

ChildsSong_FM5:
	smpsFMvoice         $01
	smpsPan             panCenter, $00
	smpsPitchSlideSpeed $02
	smpsModSet          $05, $01, $02, $04
	dc.b	nRst, $06, nRst, $60, nRst, $60

ChildsSong_Loop8:
	dc.b	nA4, $03, nRst, $09, nA4, $06, nB4, nC5
	dc.b	$0C, nB4, nA4, nE4, nC4, nE4, nF4, $4B
	dc.b	nRst, $15, nA4, $03, nRst, $09, nA4, $06
	dc.b	nB4, nC5, $0C, nB4, nA4, nE4, nC4, nE4
	dc.b	nEb4, $4B, nRst, $15, nE4, $18, nF4, $03
	dc.b	nRst, $15, nE4, $18, nF4, $03, nRst, $39
	dc.b	nE4, $0C, nF4, nAb4, nA4, nB4
	smpsLoop            $00, $02, ChildsSong_Loop8
	dc.b	nA4, $60
	smpsPan             panRight, $00
	dc.b	nC6, $06, nAb4, nG4, nFs4, nD4, nB3, nAb3
	dc.b	nG3, nFs3, $30
	smpsPan             panCenter, $00

ChildsSong_Loop9:
	dc.b	nRst, $60
	smpsLoop            $00, $04, ChildsSong_Loop9
	smpsJump            ChildsSong_Loop8

ChildsSong_FM6:
	smpsFMvoice         $04
	smpsPan             panCenter, $00
	dc.b	nRst, $06, nRst, $60, nRst, $0C, nE5, $06
	dc.b	nRst, $12, nE5, $06, nRst, $12, nE5, $06
	dc.b	nRst, $12, nE5, $06, nRst, $06

ChildsSong_Loop10:
	dc.b	nRst, $0C, nE5, $06, nRst, $12, nE5, $06
	dc.b	nRst, $12, nE5, $06, nRst, $12, nE5, $06
	dc.b	nRst, $06, nRst, $0C, nEb5, $06, nRst, $12
	dc.b	nEb5, $06, nRst, $12, nEb5, $06, nRst, $12
	dc.b	nEb5, $06, nRst, $06, nRst, $0C, nE5, $06
	dc.b	nRst, $12, nE5, $06, nRst, $12, nE5, $06
	dc.b	nRst, $12, nE5, $06, nRst, $06, nRst, $0C
	dc.b	nEb5, $06, nRst, $12, nEb5, $0C, nEb5, nE5
	dc.b	nF5, nFs5, nE5, $18, nF5, $06, nRst, $12
	dc.b	nE5, $18, nF5, $06, nRst, $12, nRst, $0C
	dc.b	nE5, $0C, nRst, $0C, nE5, $0C, nF5, nAb5
	dc.b	nA5, nB5
	smpsLoop            $00, $02, ChildsSong_Loop10
	dc.b	nRst, $0C, nE5, $06, nRst, $12, nE5, $06
	dc.b	nRst, $12, nE5, $06, nRst, $12, nE5, $06
	dc.b	nRst, $06, nRst, $0C, nE5, $06, nRst, $12
	dc.b	nE5, $06, nRst, $12, nE5, $06, nRst, $12
	dc.b	nE5, $06, nRst, $06, nRst, $60, nRst, $60
	dc.b	nRst, $60, nRst, $60
	smpsJump            ChildsSong_Loop10

ChildsSong_PSG1:
	smpsPSGvoice        cTone_08
	dc.b	nRst, $60, nRst, $0C, nE5, $06, nRst, $12
	dc.b	nE5, $06, nRst, $12, nE5, $06, nRst, $12
	dc.b	nE5, $06, nRst, $06

ChildsSong_Loop11:
	dc.b	nRst, $0C, nE5, $06, nRst, $12, nE5, $06
	dc.b	nRst, $12, nE5, $06, nRst, $12, nE5, $06
	dc.b	nRst, $06, nRst, $0C, nEb5, $06, nRst, $12
	dc.b	nEb5, $06, nRst, $12, nEb5, $06, nRst, $12
	dc.b	nEb5, $06, nRst, $06, nRst, $0C, nE5, $06
	dc.b	nRst, $12, nE5, $06, nRst, $12, nE5, $06
	dc.b	nRst, $12, nE5, $06, nRst, $06, nRst, $0C
	dc.b	nEb5, $06, nRst, $12, nEb5, $0C, nEb5, nE5
	dc.b	nF5, nFs5, nE5, $18, nF5, $06, nRst, $12
	dc.b	nE5, $18, nF5, $06, nRst, $12, nRst, $0C
	dc.b	nE5, $0C, nRst, $0C, nE5, $0C, nF5, nAb5
	dc.b	nA5, nB5
	smpsLoop            $00, $02, ChildsSong_Loop11
	dc.b	nRst, $0C, nE5, $06, nRst, $12, nE5, $06
	dc.b	nRst, $12, nE5, $06, nRst, $12, nE5, $06
	dc.b	nRst, $06, nRst, $0C, nE5, $06, nRst, $12
	dc.b	nE5, $06, nRst, $12, nE5, $06, nRst, $12
	dc.b	nE5, $06, nRst, $06
	smpsPSGAlterVol     $FE
	smpsAlterPitch      $0C
	dc.b	nA4, $03, nRst, $09, nA4, $06, nB4, nC5
	dc.b	$0C, nB4, nA4, nE4, nC4, nE4, nF4, $4B
	dc.b	nRst, $15, nA4, $03, nRst, $09, nA4, $06
	dc.b	nB4, nC5, $0C, nB4, nA4, nE4, nC4, nEb4
	dc.b	nE4, $4E, nRst, $12
	smpsPSGAlterVol     $02
	smpsAlterPitch      $F4
	smpsJump            ChildsSong_Loop11

ChildsSong_PSG2:
	smpsPSGvoice        cTone_08
	dc.b	nRst, $60, nRst, $0C, nC5, $06, nRst, $12
	dc.b	nC5, $06, nRst, $12, nC5, $06, nRst, $12
	dc.b	nC5, $06, nRst, $06

ChildsSong_Loop12:
	dc.b	nRst, $0C, nC5, $06, nRst, $12, nC5, $06
	dc.b	nRst, $12, nC5, $06, nRst, $12, nC5, $06
	dc.b	nRst, $06
	smpsLoop            $00, $03, ChildsSong_Loop12
	dc.b	nRst, $0C, nC5, $06, nRst, $12, nC5, $0C
	dc.b	nEb4, $0C, nE4, nF4, nFs4, nAb4, $18, nA4
	dc.b	$06, nRst, $12, nAb4, $18, nA4, $06, nRst
	dc.b	$1E, nAb4, $06, nRst, $12, nAb4, $0C, nA4
	dc.b	nB4, nC5, nD5
	smpsLoop            $01, $02, ChildsSong_Loop12
	dc.b	nRst, $0C, nC5, $06, nRst, $12, nC5, $06
	dc.b	nRst, $12, nC5, $06, nRst, $12, nC5, $06
	dc.b	nRst, $06, nRst, $0C, nC5, $06, nRst, $12
	dc.b	nC5, $06, nRst, $12, nC5, $06, nRst, $12
	dc.b	nC5, $06, nRst, $06
	smpsAlterPitch      $0C
	smpsModSet          $05, $01, $02, $04
	dc.b	nRst, $06, nA4, $03, nRst, $09, nA4, $06
	dc.b	nB4, nC5, $0C, nB4, nA4, nE4, nC4, nE4
	dc.b	nF4, $4B, nRst, $15, nA4, $03, nRst, $09
	dc.b	nA4, $06, nB4, nC5, $0C, nB4, nA4, nE4
	dc.b	nC4, nEb4, nE4, $4E, nRst, $0C
	smpsAlterPitch      $F4
	smpsModSet          $00, $00, $00, $00
	smpsJump            ChildsSong_Loop12

ChildsSong_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        cTone_02
	dc.b	nRst, $60

ChildsSong_Loop13:
	dc.b	nC4, $06, $06
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $03
	dc.b	$06
	smpsLoop            $00, $04, ChildsSong_Loop13

ChildsSong_Loop14:
	dc.b	nC4, $06, $06
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $03
	dc.b	$06
	smpsLoop            $00, $10, ChildsSong_Loop14
	dc.b	nRst, $60, nRst, $60

ChildsSong_Loop15:
	dc.b	nC4, $06, $06
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $03
	dc.b	$06
	smpsLoop            $00, $10, ChildsSong_Loop15
	dc.b	nRst, $60, nRst, $60

ChildsSong_Loop16:
	dc.b	nC4, $06, $06
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $03
	dc.b	$06
	smpsLoop            $00, $18, ChildsSong_Loop16
	smpsJump            ChildsSong_Loop14

ChildsSong_PWM1:
	dc.b	$96, $60, pKick, $18, pKick, pKick, pKick

ChildsSong_Loop17:
	dc.b	pKick, $18, pKick, pKick, pKick
	smpsLoop            $00, $04, ChildsSong_Loop17
	dc.b	pKick, $18, nRst, pKick, nRst, pKick, $18, pKick
	dc.b	pKick, pKick
	smpsLoop            $00, $02, ChildsSong_Loop17

ChildsSong_Loop18:
	dc.b	pKick, $18, pKick, pKick, pKick
	smpsLoop            $00, $06, ChildsSong_Loop18
	smpsJump            ChildsSong_Loop17

ChildsSong_PWM2:
	dc.b	$96, $60, $96, $0C, pSnare, nRst, pSnare, nRst
	dc.b	pSnare, nRst, pSnare

ChildsSong_Loop19:
	dc.b	nRst, $0C, pSnare, nRst, pSnare, nRst, pSnare, nRst
	dc.b	pSnare, nRst, $0C, pSnare, nRst, pSnare, nRst, pSnare
	dc.b	$06, pSnare, nRst, $0C, pSnare
	smpsLoop            $00, $02, ChildsSong_Loop19
	dc.b	pSnare, $18, pSnare, pSnare, pSnare, nRst, $0C, pSnare
	dc.b	nRst, pSnare, nRst, pSnare, pSnare, pSnare
	smpsLoop            $01, $02, ChildsSong_Loop19
	dc.b	nRst, $0C, pSnare, nRst, pSnare, nRst, pSnare, nRst
	dc.b	pSnare, nRst, $0C, pSnare, nRst, pSnare, pSnare, pSnare
	dc.b	pSnare, $06, pSnare, pSnare, $0C

ChildsSong_Loop20:
	dc.b	nRst, $0C, pSnare, nRst, pSnare, nRst, pSnare, nRst
	dc.b	pSnare, nRst, $0C, pSnare, nRst, pSnare, nRst, pSnare
	dc.b	$06, pSnare, nRst, $0C, pSnare
	smpsLoop            $00, $02, ChildsSong_Loop20
	smpsJump            ChildsSong_Loop19

ChildsSong_PWM3:
	dc.b	nRst, $60, nRst, $60

ChildsSong_Loop21:
	dc.b	nRst, $60
	smpsLoop            $00, $04, ChildsSong_Loop21
	dc.b	pCrash, $30, $30

ChildsSong_Loop22:
	dc.b	nRst, $60
	smpsLoop            $00, $05, ChildsSong_Loop22
	dc.b	pCrash, $30, $30

ChildsSong_Loop23:
	dc.b	nRst, $60
	smpsLoop            $00, $07, ChildsSong_Loop23
	smpsJump            ChildsSong_Loop21

ChildsSong_PWM4:
	smpsStop

ChildsSong_Voices:
	; Voice $00
	; $30
	; $35, $01, $00, $00,	$5F, $5F, $14, $1F
	; $05, $05, $0F, $0A,	$03, $03, $0A, $07
	; $F6, $F6, $A6, $A7,	$1E, $28, $1E, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $03
	smpsVcCoarseFreq    $00, $00, $01, $05
	smpsVcRateScale     $00, $00, $01, $01
	smpsVcAttackRate    $1F, $14, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0F, $05, $05
	smpsVcDecayRate2    $07, $0A, $03, $03
	smpsVcDecayLevel    $0A, $0A, $0F, $0F
	smpsVcReleaseRate   $07, $06, $06, $06
	smpsVcTotalLevel    $80, $1E, $28, $1E

	; Voice $01
	; $0F
	; $32, $76, $72, $31,	$1F, $1F, $1F, $1F
	; $00, $0F, $00, $00,	$00, $00, $00, $00
	; $0A, $69, $09, $08,	$85, $83, $80, $80
	smpsVcAlgorithm     $07
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $03
	smpsVcCoarseFreq    $01, $02, $06, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $0F, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $06, $00
	smpsVcReleaseRate   $08, $09, $09, $0A
	smpsVcTotalLevel    $80, $80, $83, $85

	; Voice $02
	; $39
	; $7C, $1A, $01, $54,	$1F, $1F, $1F, $1F
	; $07, $08, $0C, $0B,	$00, $06, $07, $07
	; $FA, $37, $36, $37,	$26, $34, $19, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $00, $01, $07
	smpsVcCoarseFreq    $04, $01, $0A, $0C
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $0C, $08, $07
	smpsVcDecayRate2    $07, $07, $06, $00
	smpsVcDecayLevel    $03, $03, $03, $0F
	smpsVcReleaseRate   $07, $06, $07, $0A
	smpsVcTotalLevel    $80, $19, $34, $26

	; Voice $03
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

	; Voice $04
	; $39
	; $02, $01, $02, $01,	$5F, $5F, $10, $10
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $08,	$1B, $32, $28, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $01, $02
	smpsVcRateScale     $00, $00, $01, $01
	smpsVcAttackRate    $10, $10, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $08, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $28, $32, $1B
