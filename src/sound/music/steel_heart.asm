SteelHeart_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     SteelHeart_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $20
	smpsHeaderFM        SteelHeart_FM1, $00, $0D
	smpsHeaderFM        SteelHeart_FM2, $00, $0C
	smpsHeaderFM        SteelHeart_FM3, $00, $0F
	smpsHeaderFM        SteelHeart_FM4, $00, $1E
	smpsHeaderFM        SteelHeart_FM5, $00, $0F
	smpsHeaderFM        SteelHeart_FM6, $00, $20
	smpsHeaderPSG       SteelHeart_PSG1, $E8, $02, $00, cTone_00
	smpsHeaderPSG       SteelHeart_PSG2, $E3, $06, $00, cTone_00
	smpsHeaderPSG       SteelHeart_PSG3, $00, $00, $00, cTone_00
	smpsHeaderPWM       SteelHeart_PWM1, $BB
	smpsHeaderPWM       SteelHeart_PWM2, $FF
	smpsHeaderPWM       SteelHeart_PWM3, $AA
	smpsHeaderPWM       SteelHeart_PWM4, $33

SteelHeart_FM1:
	smpsFMvoice         $00
	smpsPan             panCenter, $00
	smpsCall            SteelHeart_Call1
	smpsFMAlterVol      $F8
	dc.b	nAb2, $08
	smpsFMAlterVol      $08
	dc.b	nG2, nCs2, smpsNoAttack, $18
	smpsFMAlterVol      $F8
	dc.b	nG2, $08
	smpsFMAlterVol      $08
	dc.b	nFs2, nC2, smpsNoAttack, $18, smpsNoAttack

SteelHeart_Jump1:
	smpsCall            SteelHeart_Call1
	smpsJump            SteelHeart_Jump1

SteelHeart_Call1:
	smpsFMAlterVol      $F9
	dc.b	nC2, $08
	smpsFMAlterVol      $07
	dc.b	nC3, nC2, nC3, nC2, nC3
	smpsLoop            $00, $04, SteelHeart_Call1
	smpsReturn

SteelHeart_FM2:
	smpsFMvoice         $02
	smpsPan             panCenter, $00
	dc.b	nRst, $60, nRst, $06, nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nE4, $06, nRst, $12
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nE4, $06, nRst, $0C
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	smpsAlterPitch      $04

SteelHeart_Loop1:
	smpsFMAlterVol      $FA
	dc.b	nE4, $0C
	smpsFMAlterVol      $06
	dc.b	nF4, nFs4, nG4
	smpsLoop            $00, $04, SteelHeart_Loop1
	smpsFMAlterVol      $FD
	dc.b	nE4, $0C
	smpsFMAlterVol      $03
	dc.b	nF4
	smpsFMAlterVol      $02
	dc.b	nFs4
	smpsFMAlterVol      $02
	dc.b	nG4
	smpsFMAlterVol      $02
	smpsFMAlterVol      $FE
	dc.b	nE4, $0C
	smpsFMAlterVol      $02
	dc.b	nF4
	smpsFMAlterVol      $02
	dc.b	nFs4
	smpsFMAlterVol      $02
	dc.b	nG4
	smpsFMAlterVol      $F6
	smpsAlterPitch      $FC

SteelHeart_Jump2:
	dc.b	nRst, $60, nRst, $08, nBb3, nEb4, $05, nRst
	dc.b	$03
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nEb4, $0C, nRst, $06
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nF4, $06, nA4, $05, nRst, $03
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nA4, $08, nRst
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nC5, $08, nAb4, $05, nRst, $03
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nAb4, $08
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nRst, $60, nRst, $06, nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nE4, $06, nRst, $12
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nE4, $06, nRst, $0C
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	smpsJump            SteelHeart_Jump2

SteelHeart_FM3:
	smpsFMvoice         $02
	smpsPan             panCenter, $00
	dc.b	nRst, $60
	smpsAlterPitch      $FA
	dc.b	nRst, $06, nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panRight, $00
	dc.b	nE4, $06, nRst, $12
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panRight, $00
	dc.b	nE4, $06, nRst, $0C
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panRight, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	smpsAlterPitch      $06

SteelHeart_Loop2:
	smpsFMAlterVol      $FA
	dc.b	nE4, $0C
	smpsFMAlterVol      $06
	dc.b	nF4, nFs4, nG4
	smpsLoop            $00, $04, SteelHeart_Loop2
	smpsFMAlterVol      $FD
	dc.b	nE4, $0C
	smpsFMAlterVol      $03
	dc.b	nF4
	smpsFMAlterVol      $02
	dc.b	nFs4
	smpsFMAlterVol      $02
	dc.b	nG4
	smpsFMAlterVol      $02
	smpsFMAlterVol      $FE
	dc.b	nE4, $0C
	smpsFMAlterVol      $02
	dc.b	nF4
	smpsFMAlterVol      $02
	dc.b	nFs4
	smpsFMAlterVol      $02
	dc.b	nG4
	smpsFMAlterVol      $F6

SteelHeart_Jump3:
	dc.b	nRst, $60
	smpsFMAlterVol      $0A
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $08, nRst, $08, nBb3, nEb4, $05, nRst
	dc.b	$03
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nEb4, $0C, nRst, $06
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nF4, $06, nA4, $05, nRst, $03
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nA4, $08, nRst
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nC5, $08, nAb4, $05, nRst, $03
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F6
	smpsModSet          $00, $00, $00, $00
	dc.b	nRst, $60
	smpsAlterPitch      $FA
	dc.b	nRst, $06, nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panRight, $00
	dc.b	nE4, $06, nRst, $12
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panRight, $00
	dc.b	nE4, $06, nRst, $0C
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panRight, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	smpsAlterPitch      $06
	smpsJump            SteelHeart_Jump3

SteelHeart_FM4:
	smpsFMvoice         $02
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $06
	smpsFMAlterVol      $0A
	dc.b	nRst, $60, nRst, $06, nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nE4, $06, nRst, $12
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nE4, $06, nRst, $0C
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nE4, $06
	smpsFMAlterVol      $EF
	smpsPan             panCenter, $00
	smpsModSet          $00, $00, $00, $00
	smpsFMAlterVol      $F9
	dc.b	nAb4, $08
	smpsFMAlterVol      $07
	dc.b	nG4, nCs4, smpsNoAttack, $18
	smpsFMAlterVol      $F9
	dc.b	nG4, $08
	smpsFMAlterVol      $07
	dc.b	nFs4, nC4, smpsNoAttack, $18, smpsNoAttack, $60, nRst, $60
	smpsFMAlterVol      $0A
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $08

SteelHeart_Jump4:
	dc.b	nRst, $60, nRst, $08, nBb3, nEb4, $05, nRst
	dc.b	$03
	smpsFMAlterVol      $07
	smpsPan             panRight, $00
	dc.b	nEb4, $0C, nRst, $06
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nF4, $06, nA4, $05, nRst, $03
	smpsFMAlterVol      $07
	smpsPan             panRight, $00
	dc.b	nA4, $08, nRst
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nC5, $08, nAb4, $05, nRst, $03
	smpsFMAlterVol      $07
	smpsPan             panRight, $00
	dc.b	nAb4, $08
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nRst, $60, nRst, $06, nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nE4, $06, nRst, $12
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nE4, $06, nRst, $0C
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	smpsJump            SteelHeart_Jump4

SteelHeart_FM5:
	smpsFMvoice         $01
	smpsPan             panCenter, $00
	smpsCall            SteelHeart_Call2
	dc.b	nRst, $60

SteelHeart_Jump5:
	smpsCall            SteelHeart_Call2
	smpsJump            SteelHeart_Jump5

SteelHeart_Call2:
	dc.b	nE2, $06, nRst, $18, nE2, $06, nRst, $0C
	dc.b	nE2, $06, nRst, $12, nRst, $12, nE2, $03
	dc.b	nRst, nE2, $06, nRst, $0C, nE2, $06, nRst
	dc.b	$12, nE2, $06, nRst, $08, nE2, $04, nRst
	dc.b	nE2, $04, nRst, nRst, $18
	smpsReturn

SteelHeart_FM6:
	smpsFMvoice         $03
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $08
	smpsCall            SteelHeart_Call3
	dc.b	nRst, $36, nC4, $03, nCs4, nD4, nEb4, nE4
	dc.b	nF4, nFs4, nG4, nAb4, nA4, nBb4, nB4, nC5
	dc.b	nCs5, nAb4, $08, nG4, nCs4, smpsNoAttack, $18, nG4
	dc.b	$08, nFs4, nC4, smpsNoAttack, $18, smpsNoAttack, $60, nRst
	dc.b	$60

SteelHeart_Jump6:
	smpsCall            SteelHeart_Call3
	dc.b	nRst, $60
	smpsJump            SteelHeart_Jump6

SteelHeart_PSG1:
	smpsPSGvoice        cTone_0C
	smpsCall            SteelHeart_Call3
	smpsPSGvoice        cTone_08
	dc.b	nRst, $36, nC4, $03, nCs4, nD4, nEb4, nE4
	dc.b	nF4, nFs4, nG4, nAb4, nA4, nBb4, nB4, nC5
	dc.b	nCs5
	smpsPSGAlterVol     $FE
	dc.b	nAb4, $08
	smpsPSGAlterVol     $02
	dc.b	nG4, nCs4, smpsNoAttack, $18
	smpsPSGAlterVol     $FE
	dc.b	nG4, $08
	smpsPSGAlterVol     $02
	dc.b	nFs4, nC4, smpsNoAttack, $18, smpsNoAttack, $60, nRst, $60
	smpsPSGvoice        cTone_0C

SteelHeart_Jump7:
	smpsCall            SteelHeart_Call3
	dc.b	nRst, $60
	smpsJump            SteelHeart_Jump7

SteelHeart_Call3:
	dc.b	nC6, $08, nEb6, nBb5, nD6, nA5, nCs6, nAb5
	dc.b	nC6, nG5, nB5, nFs5, nBb5
	smpsReturn

SteelHeart_PSG2:
	smpsPSGvoice        cTone_0C
	smpsCall            SteelHeart_Call3
	smpsPSGvoice        cTone_08
	dc.b	nRst, $36, nC4, $03, nCs4, nD4, nEb4, nE4
	dc.b	nF4, nFs4, nG4, nAb4, nA4, nBb4, nB4, nC5
	dc.b	nCs5
	smpsPSGAlterVol     $FE
	dc.b	nAb4, $08
	smpsPSGAlterVol     $02
	dc.b	nG4, nCs4, smpsNoAttack, $18
	smpsPSGAlterVol     $FE
	dc.b	nG4, $08
	smpsPSGAlterVol     $02
	dc.b	nFs4, nC4, smpsNoAttack, $18, smpsNoAttack, $60, nRst, $60
	smpsPSGvoice        cTone_0C

SteelHeart_Jump8:
	smpsCall            SteelHeart_Call3
	dc.b	nRst, $60
	smpsJump            SteelHeart_Jump8

SteelHeart_PSG3:
	smpsStop

SteelHeart_PWM1:
	dc.b	pKick, $18, nRst, $06, pKick, $12, pKick, $18
	dc.b	nRst, $12, pKick, $06, pKick, $12, $06, nRst
	dc.b	$12, pKick, $06, nRst, $08, pKick, $08, pKick
	dc.b	nRst, $12, pKick, $06, nRst, $60

SteelHeart_Jump9:
	dc.b	pKick, $18, nRst, $06, pKick, $12, pKick, $18
	dc.b	nRst, $12, pKick, $06, pKick, $12, $06, nRst
	dc.b	$12, pKick, $06, nRst, $08, pKick, $08, pKick
	dc.b	nRst, $12, pKick, $06
	smpsJump            SteelHeart_Jump9

SteelHeart_PWM2:
	dc.b	$96, $60, $96, $18
	smpsFMAlterVol      $78
	dc.b	pSnare
	smpsFMAlterVol      $44
	dc.b	pSnare
	smpsFMAlterVol      $44
	dc.b	pSnare, nRst, $60

SteelHeart_Jump10:
	dc.b	nRst, $60, nRst, $48, pSnare, $18
	smpsJump            SteelHeart_Jump10

SteelHeart_PWM3:
	dc.b	$96, $60, $96, $60, pCrash, $18, nRst
	smpsFMAlterVol      $22
	dc.b	pCrash
	smpsStop

SteelHeart_PWM4:
	smpsFMAlterVol      $D0
	dc.b	pBongoLo, $08
	smpsFMAlterVol      $30
	smpsFMAlterVol      $FD
	dc.b	pBongoHi, pBongoHi
	smpsFMAlterVol      $03
	smpsLoop            $00, $08, SteelHeart_PWM4
	dc.b	nRst, $60

SteelHeart_Jump11:
	smpsFMAlterVol      $D0
	dc.b	pBongoLo, $08
	smpsFMAlterVol      $30
	smpsFMAlterVol      $FD
	dc.b	pBongoHi, pBongoHi
	smpsFMAlterVol      $03
	smpsJump            SteelHeart_Jump11

SteelHeart_Voices:
	; Voice $00
	; $38
	; $0A, $70, $30, $00,	$1F, $1F, $1F, $1F
	; $12, $0E, $0A, $0A,	$00, $04, $04, $03
	; $26, $26, $26, $28,	$24, $2D, $12, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $07, $00
	smpsVcCoarseFreq    $00, $00, $00, $0A
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0E, $12
	smpsVcDecayRate2    $03, $04, $04, $00
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $08, $06, $06, $06
	smpsVcTotalLevel    $80, $12, $2D, $24

	; Voice $01
	; $16
	; $75, $73, $30, $31,	$5F, $5F, $5F, $5F
	; $05, $08, $06, $08,	$05, $05, $07, $05
	; $25, $F7, $57, $25,	$1E, $80, $80, $8A
	smpsVcAlgorithm     $06
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $01, $00, $03, $05
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $06, $08, $05
	smpsVcDecayRate2    $05, $07, $05, $05
	smpsVcDecayLevel    $02, $05, $0F, $02
	smpsVcReleaseRate   $05, $07, $07, $05
	smpsVcTotalLevel    $8A, $80, $80, $1E

	; Voice $02
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
