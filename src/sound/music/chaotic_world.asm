ChaoticWorld_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     ChaoticWorld_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $16
	smpsHeaderFM        ChaoticWorld_FM1, $00, $0D
	smpsHeaderFM        ChaoticWorld_FM2, $00, $0D
	smpsHeaderFM        ChaoticWorld_FM3, $FB, $17
	smpsHeaderFM        ChaoticWorld_FM4, $00, $1A
	smpsHeaderFM        ChaoticWorld_FM5, $FB, $1C
	smpsHeaderFM        ChaoticWorld_FM6, $00, $00
	smpsHeaderPSG       ChaoticWorld_PSG1, $E8, $02, $00, cTone_00
	smpsHeaderPSG       ChaoticWorld_PSG2, $E8, $05, $00, cTone_00
	smpsHeaderPSG       ChaoticWorld_PSG3, $23, $00, $00, cTone_00
	smpsHeaderPWM       ChaoticWorld_PWM1, $FF
	smpsHeaderPWM       ChaoticWorld_PWM2, $CD
	smpsHeaderPWM       ChaoticWorld_PWM3, $58
	smpsHeaderPWM       ChaoticWorld_PWM4, $44

ChaoticWorld_FM1:
	smpsFMvoice         $00
	smpsPan             panCenter, $00

ChaoticWorld_Loop1:
	dc.b	nA3, $06, nRst, $12, nE3, $06, nRst, $12
	dc.b	nA3, $06, nRst, $12, nE3, $06, nRst, $12
	dc.b	nA3, $06, nRst, $12, nE3, $06, nRst, $12
	dc.b	nA3, $06, nRst, $12, nE3, $06, nRst, $12
	dc.b	nD3, $06, nRst, $12, nA2, $06, nRst, $12
	dc.b	nD3, $06, nRst, $12, nA2, $06, nRst, $12
	dc.b	nD3, $06, nRst, $12, nA2, $06, nRst, $12
	dc.b	nD3, $06, nRst, $2A
	smpsLoop            $00, $02, ChaoticWorld_Loop1
	dc.b	nA3, $06, nRst, $12, nE3, $06, nRst, $12
	dc.b	nA3, $06, nRst, $12, nE3, $06, nRst, $12
	dc.b	nA3, $06, nRst, $12, nE3, $06, nRst, $12
	dc.b	nE3, $06, nRst, $12, nE3, $06, nRst, $12
	dc.b	nA3, $06, nRst, $12, nE3, $06, nRst, $12
	dc.b	nA3, $06, nRst, $12, nE3, $06, nRst, $12
	dc.b	nA3, $06, nRst, $12, nE3, $06, nRst, $12
	dc.b	nE3, $06, nRst, nE3, nRst, nFs3, nRst, nAb3
	dc.b	nRst
	smpsJump            ChaoticWorld_Loop1

ChaoticWorld_FM2:
	smpsFMvoice         $01
	smpsPan             panCenter, $00

ChaoticWorld_Jump1:
	smpsCall            ChaoticWorld_Call1
	smpsFMvoice         $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $05
	dc.b	nE4, nE5, nFs4, nFs5, nG4, nG5
	smpsFMvoice         $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $FB
	smpsCall            ChaoticWorld_Call1
	dc.b	nRst, $24
	smpsFMAlterVol      $02
	dc.b	nA4, $60, smpsNoAttack, $30, nRst, $0C, nE5, $06
	dc.b	nRst, nE5, $03, nRst, nE5, $06, smpsNoAttack, $0C
	dc.b	nA4, $60, smpsNoAttack, $18, nRst, $15, nEb5, $03
	dc.b	nE5, $0C, nRst, nRst, $18
	smpsFMAlterVol      $FE
	smpsJump            ChaoticWorld_Jump1

ChaoticWorld_Call1:
	dc.b	nA4, $06, nRst, nA4, $03, nRst, nE4, nRst
	dc.b	nG4, $06, nRst, nG4, $03, nRst, nE4, nRst
	dc.b	nA4, $06, nRst, nA4, $03, nRst, nE4, nRst
	dc.b	nB4, $06, nCs5, nD5, $03, nRst, nB4, nRst
	dc.b	nCs5, $06, nD5, $03, nRst, nE5, nRst, nCs5
	dc.b	nRst, nB4, $06, nA4, $03, nRst, nG4, nRst
	dc.b	nB4, nRst, nA4, $06, nRst, nA4, nRst, nE4
	dc.b	nRst, nE4, nRst, nD5, $06, nRst, nD5, $03
	dc.b	nRst, nA4, nRst, nC5, $06, nRst, nC5, $03
	dc.b	nRst, nA4, nRst, nD5, $06, nRst, nD5, $03
	dc.b	nRst, nA4, nRst, nE5, $06, nFs5, $03, nRst
	dc.b	nG5, nRst, nE5, nRst, nFs5, $06, nG5, $03
	dc.b	nRst, nA5, nRst, nFs5, nRst, nE5, $06, nD5
	dc.b	$03, nRst, nC5, nRst, nE5, nRst, nD5, $06
	dc.b	nRst
	smpsReturn

ChaoticWorld_FM3:
	smpsFMvoice         $01
	smpsPan             panCenter, $00

ChaoticWorld_Jump2:
	smpsCall            ChaoticWorld_Call1
	smpsFMvoice         $03
	smpsPan             panRight, $00
	smpsFMAlterVol      $05
	dc.b	nE4, nE5, nFs4, nFs5, nG4, nG5
	smpsFMvoice         $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $FB
	smpsCall            ChaoticWorld_Call1
	dc.b	nRst, $24
	smpsFMAlterVol      $03
	dc.b	nA4, $60, smpsNoAttack, $30, nRst, $0C, nE5, $06
	dc.b	nRst, nE5, $03, nRst, nE5, $06, smpsNoAttack, $0C
	dc.b	nA4, $60, smpsNoAttack, $18, nRst, $15, nEb5, $03
	dc.b	nE5, $0C, nRst, nRst, $18
	smpsFMAlterVol      $FD
	smpsJump            ChaoticWorld_Jump2

ChaoticWorld_FM4:
	smpsFMvoice         $01
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $06

ChaoticWorld_Jump3:
	smpsCall            ChaoticWorld_Call1
	smpsFMvoice         $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $05
	dc.b	nE4, nE5, nFs4, nFs5, nG4, nG5
	smpsFMvoice         $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $FB
	smpsCall            ChaoticWorld_Call1
	dc.b	nRst, $24
	smpsFMAlterVol      $04
	dc.b	nA4, $60, smpsNoAttack, $30, nRst, $0C, nE5, $06
	dc.b	nRst, nE5, $03, nRst, nE5, $06, smpsNoAttack, $0C
	dc.b	nA4, $60, smpsNoAttack, $18, nRst, $15, nEb5, $03
	dc.b	nE5, $0C, nRst, nRst, $18
	smpsFMAlterVol      $FC
	smpsJump            ChaoticWorld_Jump3

ChaoticWorld_FM5:
	smpsFMvoice         $01
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $05, $08
	dc.b	nRst, $06

ChaoticWorld_Jump4:
	smpsCall            ChaoticWorld_Call1
	smpsFMvoice         $03
	smpsPan             panRight, $00
	smpsFMAlterVol      $05
	dc.b	nE4, nE5, nFs4, nFs5, nG4, nG5
	smpsFMvoice         $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $FB
	smpsCall            ChaoticWorld_Call1
	dc.b	nRst, $24
	smpsFMAlterVol      $04
	dc.b	nA4, $60, smpsNoAttack, $30, nRst, $0C, nE5, $06
	dc.b	nRst, nE5, $03, nRst, nE5, $06, smpsNoAttack, $0C
	dc.b	nA4, $60, smpsNoAttack, $18, nRst, $15, nEb5, $03
	dc.b	nE5, $0C, nRst, nRst, $18
	smpsFMAlterVol      $FC
	smpsJump            ChaoticWorld_Jump4

ChaoticWorld_FM6:
	smpsStop

ChaoticWorld_PSG1:
	smpsPSGvoice        cTone_02

ChaoticWorld_Jump5:
	smpsCall            ChaoticWorld_Call2
	smpsPSGvoice        cTone_08
	dc.b	nE4, $06, nE5, nFs4, nFs5, nG4, nG5
	smpsPSGvoice        cTone_02
	smpsCall            ChaoticWorld_Call2
	dc.b	nRst, $24
	smpsPSGvoice        cTone_08
	smpsPSGAlterVol     $FF
	dc.b	nA4, $06, nB4, nCs5, nA4, nD5, nCs5, nB4
	dc.b	nD5, nCs5, nB4, nA4, nE4, nD4, nE4, nFs4
	dc.b	nAb4, nA4, nB4, nCs5, nA4, nD5, nCs5, nB4
	dc.b	nD5, nE4, nB4, nD5, nE5, $0C, nD5, $06
	dc.b	nCs5, nB4, nA4, nB4, nCs5, nA4, nD5, nCs5
	dc.b	nB4, nD5, nCs5, nB4, nA4, nE4, nD4, nE4
	dc.b	nFs4, nAb4, nA4, nB4, nCs5, nA4, nD5, nCs5
	dc.b	nB4, nD5, nE5, nRst, $2A
	smpsPSGAlterVol     $01
	smpsPSGvoice        cTone_02
	smpsJump            ChaoticWorld_Jump5

ChaoticWorld_Call2:
	dc.b	nRst, $09, nEb5, $03, nE5, $0C, nCs5, $15
	dc.b	nEb5, $03, nE5, $12, nCs5, $06, nRst, $09
	dc.b	nEb5, $03, nE5, $0C, nRst, $09, nEb5, $03
	dc.b	nE5, $06, nRst, nCs5, $0C, nCs5, $09, nEb5
	dc.b	$03, nE5, $12, nCs5, $06, nRst, $09, nEb5
	dc.b	$03, nE5, $0C, nRst, $09, nAb5, $03, nA5
	dc.b	$0C, nFs5, $15, nAb5, $03, nA5, $12, nFs5
	dc.b	$06, nRst, $09, nAb5, $03, nA5, $0C, nRst
	dc.b	$09, nAb5, $03, nA5, $0C, nFs5, $0C, nFs5
	dc.b	$09, nAb5, $03, nA5, $0C
	smpsReturn

ChaoticWorld_PSG2:
	smpsPSGvoice        cTone_02
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $06

ChaoticWorld_Jump6:
	smpsCall            ChaoticWorld_Call2
	smpsPSGvoice        cTone_08
	dc.b	nE4, $06, nE5, nFs4, nFs5, nG4, nG5
	smpsPSGvoice        cTone_02
	smpsCall            ChaoticWorld_Call2
	dc.b	nRst, $24
	smpsPSGvoice        cTone_08
	smpsPSGAlterVol     $FF
	dc.b	nA4, $06, nB4, nCs5, nA4, nD5, nCs5, nB4
	dc.b	nD5, nCs5, nB4, nA4, nE4, nD4, nE4, nFs4
	dc.b	nAb4, nA4, nB4, nCs5, nA4, nD5, nCs5, nB4
	dc.b	nD5, nE4, nB4, nD5, nE5, $0C, nD5, $06
	dc.b	nCs5, nB4, nA4, nB4, nCs5, nA4, nD5, nCs5
	dc.b	nB4, nD5, nCs5, nB4, nA4, nE4, nD4, nE4
	dc.b	nFs4, nAb4, nA4, nB4, nCs5, nA4, nD5, nCs5
	dc.b	nB4, nD5, nE5, nRst, $2A
	smpsPSGAlterVol     $01
	smpsPSGvoice        cTone_02
	smpsJump            ChaoticWorld_Jump6

ChaoticWorld_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        cTone_02

ChaoticWorld_Jump7:
	dc.b	nC4, $06
	smpsPSGAlterVol     $03
	dc.b	nC4, $06
	smpsPSGAlterVol     $FE
	dc.b	nC4, $06
	smpsPSGAlterVol     $02
	dc.b	nC4, $06
	smpsPSGAlterVol     $FD
	smpsJump            ChaoticWorld_Jump7

ChaoticWorld_PWM1:
	dc.b	pElecKick, $18
	smpsLoop            $00, $0F, ChaoticWorld_PWM1
	dc.b	nRst, $18
	smpsLoop            $01, $02, ChaoticWorld_PWM1

ChaoticWorld_Loop2:
	dc.b	pElecKick, $18
	smpsLoop            $00, $10, ChaoticWorld_Loop2
	smpsJump            ChaoticWorld_PWM1

ChaoticWorld_PWM2:
	dc.b	$96, $0C, pElecSnare
	smpsLoop            $00, $0F, ChaoticWorld_PWM2
	dc.b	pElecSnare, $0C, pElecSnare

ChaoticWorld_Loop3:
	dc.b	nRst, $0C, pElecSnare
	smpsLoop            $00, $0F, ChaoticWorld_Loop3
	dc.b	pElecSnare, $06, pElecSnare, pElecSnare, pElecSnare

ChaoticWorld_Loop4:
	dc.b	nRst, $0C, pElecSnare
	smpsLoop            $00, $10, ChaoticWorld_Loop4
	smpsJump            ChaoticWorld_PWM2

ChaoticWorld_PWM3:
	smpsCall            ChaoticWorld_Call3
	dc.b	pCrash, $09, pClap, $03, pClap, $0C, pClap, $06
	dc.b	$06, $0C
	smpsCall            ChaoticWorld_Call3
	dc.b	pCrash, $30

ChaoticWorld_Loop6:
	dc.b	nRst, $60
	smpsLoop            $00, $04, ChaoticWorld_Loop6
	smpsJump            ChaoticWorld_PWM3

ChaoticWorld_Call3:
	dc.b	pCrash, $18

ChaoticWorld_Loop5:
	dc.b	pRideBell
	smpsLoop            $00, $0D, ChaoticWorld_Loop5
	smpsReturn

ChaoticWorld_PWM4:
	dc.b	$96, $60
	smpsLoop            $00, $07, ChaoticWorld_PWM4
	dc.b	$96, $3C
	smpsFMAlterVol      $D0
	dc.b	pBongoHi, $0C
	smpsFMAlterVol      $30
	smpsFMAlterVol      $FD
	dc.b	pBongoLo, $06, pBongoLo, pBongoLo, pBongoLo
	smpsFMAlterVol      $03

ChaoticWorld_Loop7:
	smpsFMAlterVol      $FD
	dc.b	pBongoLo, $0C
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	pBongoHi, $0C
	smpsFMAlterVol      $30
	dc.b	nRst, $0C
	smpsFMAlterVol      $FD
	dc.b	pBongoLo, $06, pBongoLo, pBongoLo, $0C
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	pBongoHi, $0C
	smpsFMAlterVol      $30
	dc.b	nRst, $0C
	smpsFMAlterVol      $FD
	dc.b	pBongoLo, $06, pBongoLo
	smpsFMAlterVol      $03
	smpsLoop            $00, $03, ChaoticWorld_Loop7
	smpsFMAlterVol      $FD
	dc.b	pBongoLo, $0C
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	pBongoHi, $0C
	smpsFMAlterVol      $30
	dc.b	nRst, $0C
	smpsFMAlterVol      $FD
	dc.b	pBongoLo, $06, pBongoLo
	smpsFMAlterVol      $03
	smpsFMAlterVol      $33
	smpsFMAlterVol      $E0
	dc.b	pClickLo, $04, pClickLo, pClickLo, pClickLo, $06, pClickLo, pClickLo
	dc.b	pClickLo, pClickLo, $04, pClickLo, pClickLo
	smpsFMAlterVol      $20
	smpsFMAlterVol      $CD
	smpsJump            ChaoticWorld_PWM4

ChaoticWorld_Voices:
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

	; Voice $03
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
