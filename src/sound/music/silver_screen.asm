SilverScreen_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     SilverScreen_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $45
	smpsHeaderFM        SilverScreen_FM1, $00, $08
	smpsHeaderFM        SilverScreen_FM2, $00, $0B
	smpsHeaderFM        SilverScreen_FM3, $FB, $0C
	smpsHeaderFM        SilverScreen_FM4, $00, $1B
	smpsHeaderFM        SilverScreen_FM5, $00, $1B
	smpsHeaderFM        SilverScreen_FM6, $00, $20
	smpsHeaderPSG       SilverScreen_PSG1, $E8, $01, $00, cTone_00
	smpsHeaderPSG       SilverScreen_PSG2, $E3, $02, $00, cTone_00
	smpsHeaderPSG       SilverScreen_PSG3, $23, $00, $00, cTone_00
	smpsHeaderPWM       SilverScreen_PWM1, $CC
	smpsHeaderPWM       SilverScreen_PWM2, $AA
	smpsHeaderPWM       SilverScreen_PWM3, $CC
	smpsHeaderPWM       SilverScreen_PWM4, $AA

SilverScreen_FM1:
	smpsFMvoice         $00
	smpsPan             panCenter, $00
	dc.b	nRst, $14

SilverScreen_Loop1:
	dc.b	nE2, $04, nRst, $04, nD3, $04, nE3, $02
	dc.b	nB2, $02, nRst, $02, nD3, $04, nB2, $02
	dc.b	nD3, $04, nE3, $04, nE2, $04, nE2, $04
	dc.b	nD3, $04, nE3, $02, nB2, $02, nRst, $02
	dc.b	nD3, $02, nD3, $02, nB2, $02, nD3, $04
	dc.b	nCs3, $04
	smpsLoop            $00, $03, SilverScreen_Loop1
	dc.b	nE2, $04, nRst, $04, nD3, $04, nE3, $02
	dc.b	nB2, $02, nRst, $02, nD3, $04, nB2, $02
	dc.b	nD3, $04, nE3, $04, nE2, $04, nE3, $04
	dc.b	nEb3, $04, nEb2, $02, nD2, $02, nRst, $02
	dc.b	nD2, $02, nD3, $04, nCs2, $02, nCs3, $02
	dc.b	nD2, $02, nD3, $02

SilverScreen_Loop2:
	dc.b	nE2, $04, nRst, $04, nD3, $04, nE3, $02
	dc.b	nB2, $02, nRst, $02, nD3, $04, nB2, $02
	dc.b	nD3, $04, nE3, $04, nE2, $04, nE2, $04
	dc.b	nD3, $04, nE3, $02, nB2, $02, nRst, $02
	dc.b	nD3, $02, nD3, $02, nB2, $02, nD3, $04
	dc.b	nCs3, $04
	smpsLoop            $00, $04, SilverScreen_Loop2

SilverScreen_Loop3:
	dc.b	nE2, $04, nB2, nD3, nE3, nD3, nB2, nE2
	dc.b	nB2, nD3, nE3, nD3, nB2, nD3, nB2, nE3
	dc.b	nE2
	smpsLoop            $00, $06, SilverScreen_Loop3
	smpsJump            SilverScreen_Loop1

SilverScreen_FM2:
	smpsPan             panCenter, $00
	smpsFMvoice         $01
	dc.b	nRst, $14

SilverScreen_Loop4:
	smpsCall            SilverScreen_Call1
	smpsLoop            $00, $04, SilverScreen_Loop4

SilverScreen_Loop5:
	dc.b	nRst, $20
	smpsLoop            $00, $04, SilverScreen_Loop5
	smpsCall            SilverScreen_Call1
	smpsAlterPitch      $0C
	smpsCall            SilverScreen_Call1
	smpsAlterPitch      $F4
	smpsJump            SilverScreen_Loop4

SilverScreen_Call1:
	dc.b	nE5, $02, nRst, $02
	smpsFMAlterVol      $0F
	smpsPan             panLeft, $00
	dc.b	nE5, $02, nRst, $02, nRst, $04
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nE5, $02, nRst, $02
	smpsFMAlterVol      $0F
	smpsPan             panLeft, $00
	dc.b	nE5, $02, nRst, $02, nRst, $04
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nE5, $02, nRst, $02
	smpsFMAlterVol      $0F
	smpsPan             panLeft, $00
	dc.b	nE5, $02, nRst, $02, nRst, $0C
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nE5, $02, nRst, $02, nD5, $02, nRst, $02
	dc.b	nD5, $02, nRst, $02, nF5, $02, nRst, $02
	dc.b	nF5, $02, nRst, $02, nE5, $02, nRst, $02
	smpsFMAlterVol      $0F
	smpsPan             panLeft, $00
	dc.b	nE5, $02, nRst, $02, nRst, $04
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nE5, $02, nRst, $02
	smpsFMAlterVol      $0F
	smpsPan             panLeft, $00
	dc.b	nE5, $02, nRst, $02, nRst, $04
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nE5, $02, nRst, $02
	smpsFMAlterVol      $0F
	smpsPan             panLeft, $00
	dc.b	nE5, $02, nRst, $02, nRst, $20
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	smpsReturn

SilverScreen_FM3:
	smpsPan             panCenter, $00
	smpsFMvoice         $01
	dc.b	nRst, $14

SilverScreen_Loop6:
	smpsCall            SilverScreen_Call2
	smpsLoop            $00, $04, SilverScreen_Loop6

SilverScreen_Loop7:
	dc.b	nRst, $20
	smpsLoop            $00, $04, SilverScreen_Loop7
	smpsCall            SilverScreen_Call2
	smpsAlterPitch      $0C
	smpsCall            SilverScreen_Call2
	smpsAlterPitch      $F4
	smpsJump            SilverScreen_Loop6

SilverScreen_Call2:
	dc.b	nE5, $02, nRst, $02
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	nE5, $02, nRst, $02, nRst, $04
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nE5, $02, nRst, $02
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	nE5, $02, nRst, $02, nRst, $04
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nE5, $02, nRst, $02
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	nE5, $02, nRst, $02, nRst, $0C
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nE5, $02, nRst, $02, nD5, $02, nRst, $02
	dc.b	nD5, $02, nRst, $02, nF5, $02, nRst, $02
	dc.b	nF5, $02, nRst, $02, nE5, $02, nRst, $02
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	nE5, $02, nRst, $02, nRst, $04
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nE5, $02, nRst, $02
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	nE5, $02, nRst, $02, nRst, $04
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nE5, $02, nRst, $02
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	nE5, $02, nRst, $02, nRst, $20
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	smpsReturn

SilverScreen_FM4:
	smpsPan             panCenter, $00
	smpsFMvoice         $02
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $14

SilverScreen_Loop8:
	dc.b	nBb4, $01, nB4, $1F, smpsNoAttack, $10, nA4, nB4
	dc.b	$20, smpsNoAttack, $1F, nBb5, $01, nB5, $20, smpsNoAttack
	dc.b	$10, nA5, $10, nB5, $20, smpsNoAttack, $20
	smpsLoop            $00, $02, SilverScreen_Loop8

SilverScreen_Loop9:
	dc.b	nRst, $20
	smpsLoop            $00, $0B, SilverScreen_Loop9
	dc.b	nRst, $20
	smpsJump            SilverScreen_Loop8

SilverScreen_FM5:
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $02, $05
	smpsFMvoice         $02
	dc.b	nRst, $14

SilverScreen_Loop10:
	dc.b	nEb4, $01, nE4, $1F, smpsNoAttack, $10, nD4, $10
	dc.b	nE4, $20, smpsNoAttack, $1F, nEb5, $01, nE5, $20
	dc.b	smpsNoAttack, $10, nD5, $10, nE5, $20, smpsNoAttack, $20
	smpsLoop            $00, $02, SilverScreen_Loop10
	smpsFMvoice         $03
	smpsAlterPitch      $13
	smpsFMAlterVol      $05
	dc.b	nRst, $04

SilverScreen_Loop11:
	dc.b	nE2, $04, nB2, nD3, nE3, nD3, nB2, nE2
	dc.b	nB2, nD3, nE3, nD3, nB2, nD3, nB2, nE3
	dc.b	nE2
	smpsLoop            $00, $05, SilverScreen_Loop11
	dc.b	nE2, nB2, nD3, nE3, nD3, nB2, nE2, nB2
	dc.b	nD3, nE3, nD3, nB2, nD3, nB2, nE3
	smpsAlterPitch      $ED
	smpsFMAlterVol      $FB
	smpsFMvoice         $02
	smpsJump            SilverScreen_Loop10

SilverScreen_FM6:
	smpsFMvoice         $03
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $04, nRst, $14

SilverScreen_Jump1:
	smpsCall            SilverScreen_Call3
	smpsJump            SilverScreen_Jump1

SilverScreen_PSG1:
	smpsPSGvoice        cTone_0C
	dc.b	nRst, $14

SilverScreen_Jump2:
	smpsCall            SilverScreen_Call3
	smpsJump            SilverScreen_Jump2

SilverScreen_Call3:
	dc.b	nRst, $20, nRst, $20, nRst, $04, nE5, $04
	dc.b	nG5, $04, nD6, $04, nCs6, $06, nB5, $02
	dc.b	nA5, $04, nB5, $04, nA5, $04, nD5, nE5
	dc.b	nG5, nA5, nB5, nD6, nFs6, nRst, $20, nRst
	dc.b	$20, nRst, $04, nE5, $04, nG5, $04, nD6
	dc.b	$04, nCs6, $06, nB5, $02, nA5, $04, nB5
	dc.b	$04, nA5, $04, nD5, nE5, nG5, nA5, nG5
	dc.b	nFs5, nD5
	smpsLoop            $00, $02, SilverScreen_Call3
	smpsAlterPitch      $18

SilverScreen_Loop12:
	dc.b	nE2, $04, nB2, nD3, nE3, nD3, nB2, nE2
	dc.b	nB2, nD3, nE3, nD3, nB2, nD3, nB2, nE3
	dc.b	nE2
	smpsLoop            $00, $06, SilverScreen_Loop12
	smpsAlterPitch      $E8
	smpsReturn

SilverScreen_PSG2:
	smpsPSGvoice        cTone_0C
	dc.b	nRst, $14

SilverScreen_Jump3:
	smpsCall            SilverScreen_Call3
	smpsJump            SilverScreen_Jump3

SilverScreen_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $14

SilverScreen_Loop13:
	smpsPSGvoice        cTone_05
	dc.b	nC4, $04
	smpsPSGvoice        cTone_02
	smpsPSGAlterVol     $04
	dc.b	nC4
	smpsPSGvoice        cTone_05
	smpsPSGAlterVol     $FD
	dc.b	nC4
	smpsPSGvoice        cTone_02
	smpsPSGAlterVol     $03
	dc.b	nC4
	smpsPSGAlterVol     $FC
	smpsPSGvoice        cTone_05
	dc.b	nC4, $04
	smpsPSGvoice        cTone_02
	smpsPSGAlterVol     $04
	dc.b	nC4
	smpsPSGvoice        cTone_05
	smpsPSGAlterVol     $FD
	dc.b	nC4
	smpsPSGvoice        cTone_02
	smpsPSGAlterVol     $03
	dc.b	nC4
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $10, SilverScreen_Loop13

SilverScreen_Loop14:
	dc.b	nRst, $20
	smpsLoop            $00, $0B, SilverScreen_Loop14
	smpsPSGvoice        cTone_05
	dc.b	nC4, $04
	smpsPSGvoice        cTone_02
	dc.b	nC4
	smpsPSGAlterVol     $04
	smpsPSGvoice        cTone_05
	dc.b	nC4
	smpsPSGvoice        cTone_02
	dc.b	nC4
	smpsPSGvoice        cTone_05
	smpsPSGAlterVol     $FF
	dc.b	nC4
	smpsPSGvoice        cTone_02
	smpsPSGAlterVol     $FF
	dc.b	nC4
	smpsPSGvoice        cTone_05
	smpsPSGAlterVol     $FF
	dc.b	nC4
	smpsPSGvoice        cTone_02
	smpsPSGAlterVol     $FF
	dc.b	nC4
	smpsJump            SilverScreen_Loop13

SilverScreen_PWM1:
	dc.b	$96, $14

SilverScreen_Jump4:
	dc.b	pKick, $04, pTomLo, pKick, pKick, pTomLo, pKick, pKick
	dc.b	pTomLo, pKick, $04, pKick, pTomLo, pKick, pTomLo, pKick
	dc.b	pTomLo, pKick
	smpsJump            SilverScreen_Jump4

SilverScreen_PWM2:
	smpsFMAlterVol      $C0
	dc.b	pElecSnare, $02, pElecSnare
	smpsFMAlterVol      $40
	smpsFMAlterVol      $11
	dc.b	pElecSnare, $04
	smpsFMAlterVol      $AB
	dc.b	pElecSnare, $02, pElecSnare
	smpsFMAlterVol      $11
	dc.b	pElecSnare, $02
	smpsFMAlterVol      $11
	dc.b	pElecSnare, $02
	smpsFMAlterVol      $11
	dc.b	pElecSnare, $02
	smpsFMAlterVol      $11
	dc.b	pElecSnare, $02
	smpsFMAlterVol      $11
	dc.b	pElecSnare, $08, nRst, $18
	smpsFMAlterVol      $EF

SilverScreen_Loop15:
	dc.b	nRst, $20
	smpsLoop            $00, $06, SilverScreen_Loop15
	dc.b	nRst, $0C
	smpsLoop            $01, $02, SilverScreen_PWM2
	dc.b	pElecSnare, $02, pElecSnare
	smpsFMAlterVol      $11
	dc.b	pElecSnare, $04
	smpsFMAlterVol      $AB
	dc.b	pElecSnare, $02, pElecSnare
	smpsFMAlterVol      $11
	dc.b	pElecSnare, $02
	smpsFMAlterVol      $11
	dc.b	pElecSnare, $02
	smpsFMAlterVol      $11
	dc.b	pElecSnare, $02
	smpsFMAlterVol      $11
	dc.b	pElecSnare, $02

SilverScreen_Loop16:
	smpsFMAlterVol      $11
	dc.b	pElecSnare, $08, nRst, $18
	smpsFMAlterVol      $EF
	dc.b	nRst, $20
	smpsLoop            $00, $05, SilverScreen_Loop16
	smpsFMAlterVol      $11
	dc.b	pElecSnare, $08, nRst, $18
	smpsFMAlterVol      $EF
	dc.b	nRst, $0C
	smpsJump            SilverScreen_PWM2

SilverScreen_PWM3:
	dc.b	$96, $04
	smpsFMAlterVol      $9A
	dc.b	pCrash, $08
	smpsFMAlterVol      $33
	dc.b	pCrash, $08
	smpsFMAlterVol      $33

SilverScreen_Loop18:
	dc.b	pCrash, $20

SilverScreen_Loop17:
	dc.b	nRst, $20
	smpsLoop            $00, $03, SilverScreen_Loop17
	smpsLoop            $01, $04, SilverScreen_Loop18

SilverScreen_Loop19:
	dc.b	nRst, $20
	smpsLoop            $00, $0B, SilverScreen_Loop19
	smpsFMAlterVol      $9A
	dc.b	pCrash, $08
	smpsFMAlterVol      $11
	dc.b	pCrash, $08
	smpsFMAlterVol      $22
	dc.b	pCrash, $08
	smpsFMAlterVol      $11
	dc.b	pCrash, $08
	smpsFMAlterVol      $22
	smpsJump            SilverScreen_Loop18

SilverScreen_PWM4:
	dc.b	nRst, $14

SilverScreen_Loop21:
	dc.b	pSplash, $20

SilverScreen_Loop20:
	dc.b	nRst, $20
	smpsLoop            $00, $03, SilverScreen_Loop20
	smpsLoop            $01, $04, SilverScreen_Loop21

SilverScreen_Loop22:
	smpsFMAlterVol      $22
	dc.b	pClap, $04
	smpsFMAlterVol      $DE
	dc.b	$04, nRst, $08, pClap, $08
	smpsFMAlterVol      $22
	dc.b	$04
	smpsFMAlterVol      $DE
	dc.b	$04, nRst, $08, pClap, nRst, $04, pClap, nRst
	dc.b	pClap
	smpsLoop            $00, $06, SilverScreen_Loop22
	smpsJump            SilverScreen_Loop21

SilverScreen_Voices:
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

	; Voice $02
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

	; Voice $03
	; $39
	; $02, $01, $02, $01,	$5F, $5F, $1F, $10
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $07,	$1B, $32, $28, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $01, $02
	smpsVcRateScale     $00, $00, $01, $01
	smpsVcAttackRate    $10, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $07, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $28, $32, $1B

	; Voice $04
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
