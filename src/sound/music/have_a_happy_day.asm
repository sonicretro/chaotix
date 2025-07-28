HaveAHappyDay_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     HaveAHappyDay_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $1C
	smpsHeaderFM        HaveAHappyDay_FM1, $F4, $05
	smpsHeaderFM        HaveAHappyDay_FM2, $00, $10
	smpsHeaderFM        HaveAHappyDay_FM3, $00, $0F
	smpsHeaderFM        HaveAHappyDay_FM4, $00, $1C
	smpsHeaderFM        HaveAHappyDay_FM5, $0C, $16
	smpsHeaderFM        HaveAHappyDay_FM6, $00, $24
	smpsHeaderPSG       HaveAHappyDay_PSG1, $F4, $02, $00, cTone_00
	smpsHeaderPSG       HaveAHappyDay_PSG2, $F4, $02, $00, cTone_00
	smpsHeaderPSG       HaveAHappyDay_PSG3, $23, $00, $00, cTone_00
	smpsHeaderPWM       HaveAHappyDay_PWM1, $CC
	smpsHeaderPWM       HaveAHappyDay_PWM2, $8A
	smpsHeaderPWM       HaveAHappyDay_PWM3, $DD
	smpsHeaderPWM       HaveAHappyDay_PWM4, $00

HaveAHappyDay_FM1:
	smpsFMvoice         $00
	smpsPan             panCenter, $00

HaveAHappyDay_Jump1:
	dc.b	nBb2, $0C, nC3, $06, nBb2, nRst, nBb2, nG2
	dc.b	nF2, nF2, $0C, nG2, nEb2, $06, nF2, $12
	dc.b	nAb2, $0C, nBb2, $06, nAb2, nRst, nAb2, nF2
	dc.b	nEb2, nEb2, $0C, nF2, nBb1, $06, nF2, $12
	smpsJump            HaveAHappyDay_Jump1

HaveAHappyDay_FM2:
	smpsFMvoice         $01
	smpsPan             panCenter, $00
	smpsAlterPitch      $F4

HaveAHappyDay_Jump2:
	dc.b	nBb5, $24, nF5, $24, nF6, $18, smpsNoAttack, $18
	dc.b	nEb6, $0C, nD6, nC6, nD6, nEb6, nC6, nD6
	dc.b	$24, nBb5, $24, nF5, $18, smpsNoAttack, $48, nRst
	dc.b	$18, nF6, $24, nBb5, $24, nCs6, $18, smpsNoAttack
	dc.b	$18, nC6, $0C, nCs6, nBb5, nF5, nG5, nBb5
	dc.b	smpsNoAttack, $60, smpsNoAttack, $18, nC6, nD6, nEb6
	smpsJump            HaveAHappyDay_Jump2

HaveAHappyDay_FM3:
	smpsFMvoice         $02
	smpsPan             panCenter, $00

HaveAHappyDay_Jump3:
	dc.b	nBb4, $24, nF4, $24, nF5, $18, smpsNoAttack, $18
	dc.b	nEb5, $0C, nD5, nC5, nD5, nEb5, nC5, nD5
	dc.b	$24, nBb4, $24, nF4, $18, smpsNoAttack, $48, nRst
	dc.b	$18, nF5, $24, nBb4, $24, nCs5, $18, smpsNoAttack
	dc.b	$18, nC5, $0C, nCs5, nBb4, nF4, nG4, nBb4
	dc.b	smpsNoAttack, $60, smpsNoAttack, $18, nC5, nD5, nEb5
	smpsJump            HaveAHappyDay_Jump3

HaveAHappyDay_FM4:
	smpsFMvoice         $02
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $06

HaveAHappyDay_Jump4:
	dc.b	nBb5, $24, nF5, $24, nF6, $18, smpsNoAttack, $18
	dc.b	nEb6, $0C, nD6, nC6, nD6, nEb6, nC6, nD6
	dc.b	$24, nBb5, $24, nF5, $12
	smpsModSet          $00, $00, $00, $00
	smpsFMvoice         $01
	smpsPan             panRight, $00
	smpsFMAlterVol      $F6
	dc.b	nD6, $12, nEb6, $12, nE6, $0C, nF6, $12
	dc.b	nC6, $12, nEb6, $0C, nRst, $06
	smpsFMAlterVol      $0A
	smpsPan             panCenter, $00
	smpsFMvoice         $02
	smpsModSet          $01, $01, $02, $05
	dc.b	nF6, $24, nBb5, $24, nCs6, $18, smpsNoAttack, $18
	dc.b	nC6, $0C, nCs6, nBb5, nF5, nG5, nBb5, nRst
	dc.b	$5A
	smpsModSet          $00, $00, $00, $00
	smpsFMvoice         $01
	smpsPan             panRight, $00
	smpsFMAlterVol      $FC
	dc.b	nRst, $18, nC6, nD6, nEb6, nRst, $06
	smpsFMAlterVol      $04
	smpsPan             panCenter, $00
	smpsFMvoice         $02
	smpsModSet          $01, $01, $02, $05
	smpsJump            HaveAHappyDay_Jump4

HaveAHappyDay_FM5:
	smpsFMvoice         $01
	smpsPan             panCenter, $00

HaveAHappyDay_Jump5:
	dc.b	nRst, $60, nRst, $60, nRst, $5A
	smpsPan             panLeft, $00
	dc.b	nCs5, $06, nD5, $12, nEb5, $12, nE5, $0C
	dc.b	nF5, $12, nC5, $12, nEb5, $0C, nRst, $60
	dc.b	nRst, $60, nRst, $60, nRst, $18, nC5, nD5
	dc.b	nEb5
	smpsJump            HaveAHappyDay_Jump5

HaveAHappyDay_FM6:
	smpsFMvoice         $03
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $05, $07
	dc.b	nRst, $0C

HaveAHappyDay_Jump6:
	dc.b	nRst, $0C, nBb5, nRst, nBb5, nRst, nBb5, nRst
	dc.b	nBb5, nRst, $0C, nAb5, nRst, nAb5, nRst, nAb5
	dc.b	nRst, nAb5
	smpsJump            HaveAHappyDay_Jump6

HaveAHappyDay_PSG1:
	smpsPSGvoice        cTone_08

HaveAHappyDay_Jump7:
	dc.b	nRst, $0C, nBb4, nRst, nBb4, nRst, nBb4, nRst
	dc.b	nBb4, nRst, $0C, nAb4, nRst, nAb4, nRst, nAb4
	dc.b	nRst, nAb4
	smpsJump            HaveAHappyDay_Jump7

HaveAHappyDay_PSG2:
	smpsPSGvoice        cTone_08

HaveAHappyDay_Jump8:
	dc.b	nRst, $0C, nD4, nRst, nD4, nRst, nD4, nRst
	dc.b	nD4, nRst, $0C, nC4, nRst, nC4, nRst, nC4
	dc.b	nRst, nC4
	smpsJump            HaveAHappyDay_Jump8

HaveAHappyDay_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        cTone_02

HaveAHappyDay_Jump9:
	dc.b	nC4, $06
	smpsPSGAlterVol     $03
	dc.b	nC4, $06
	smpsPSGAlterVol     $FE
	dc.b	nC4, $06
	smpsPSGAlterVol     $02
	dc.b	nC4, $06
	smpsPSGAlterVol     $FD
	smpsJump            HaveAHappyDay_Jump9

HaveAHappyDay_PWM1:
	dc.b	pKick, $18, nRst, $12, pKick, $06, nRst, pKick
	dc.b	pKick, $0C, nRst, $0C, pKick
	smpsJump            HaveAHappyDay_PWM1

HaveAHappyDay_PWM2:
	dc.b	nRst, $18, pSnare
	smpsJump            HaveAHappyDay_PWM2

HaveAHappyDay_PWM3:
	dc.b	pCrash, $60, nRst, $60, nRst, $60, nRst, $60
	smpsJump            HaveAHappyDay_PWM3

HaveAHappyDay_PWM4:
	smpsStop

HaveAHappyDay_Voices:
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
	; $3B
	; $71, $31, $70, $01,	$4F, $10, $51, $4F
	; $06, $0A, $0C, $02,	$01, $00, $01, $00
	; $25, $E5, $35, $17,	$20, $21, $0C, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $07, $03, $07
	smpsVcCoarseFreq    $01, $00, $01, $01
	smpsVcRateScale     $01, $01, $00, $01
	smpsVcAttackRate    $0F, $11, $10, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $0C, $0A, $06
	smpsVcDecayRate2    $00, $01, $00, $01
	smpsVcDecayLevel    $01, $03, $0E, $02
	smpsVcReleaseRate   $07, $05, $05, $05
	smpsVcTotalLevel    $80, $0C, $21, $20

	; Voice $02
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

	; Voice $03
	; $39
	; $02, $01, $02, $01,	$5F, $5F, $1F, $1F
	; $00, $00, $00, $00,	$00, $00, $00, $00
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
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $28, $32, $1B
