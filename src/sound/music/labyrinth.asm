Labyrinth_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Labyrinth_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $25
	smpsHeaderFM        Labyrinth_FM1, $00, $0C
	smpsHeaderFM        Labyrinth_FM2, $0C, $13
	smpsHeaderFM        Labyrinth_FM3, $00, $17
	smpsHeaderFM        Labyrinth_FM4, $00, $17
	smpsHeaderFM        Labyrinth_FM5, $00, $17
	smpsHeaderFM        Labyrinth_FM6, $0C, $15
	smpsHeaderPSG       Labyrinth_PSG1, $F4, $01, $00, cTone_0C
	smpsHeaderPSG       Labyrinth_PSG2, $00, $03, $00, cTone_0C
	smpsHeaderPSG       Labyrinth_PSG3, $23, $01, $00, cTone_02
	smpsHeaderPWM       Labyrinth_PWM1, $99
	smpsHeaderPWM       Labyrinth_PWM2, $99
	smpsHeaderPWM       Labyrinth_PWM3, $41
	smpsHeaderPWM       Labyrinth_PWM4, $99

Labyrinth_FM1:
	smpsFMvoice         $00
	dc.b	nRst, $54, nB1, $0C

Labyrinth_Jump1:
	dc.b	nC2, $24, nC2, nC2, $30, nEb2, $24, nEb2
	dc.b	nEb2, $30, nB1, $24, nB1, nAb1, $30, nBb1
	dc.b	$24, nBb1, nBb1, nBb1, $18, nB1, $0C
	smpsJump            Labyrinth_Jump1

Labyrinth_FM2:
	smpsFMvoice         $02
	dc.b	nRst, $60

Labyrinth_Jump2:
	dc.b	nEb3, $0C, nC3, nG3, nEb3, nBb3, nG3, nD4
	dc.b	nBb3, nEb4, nD4, nEb3, nBb2, nFs3, nEb3, nBb3
	dc.b	nFs3, nCs4, nBb3, nEb4, nF4, nRst, nFs4, nEb4
	dc.b	nBb4, nAb4, nFs4, nAb4, nBb4, nFs4, nRst, nRst
	dc.b	nBb4, nAb4, nCs5, nB4, nBb4, nAb4, nBb4, nFs4
	dc.b	nF4, nEb4, nD4
	smpsJump            Labyrinth_Jump2

Labyrinth_FM3:
	smpsFMvoice         $01
	smpsModSet          $07, $01, $06, $07
	dc.b	nRst, $54, nA3, $0C

Labyrinth_Loop1:
	dc.b	nBb3, $60, smpsNoAttack, $18
	smpsLoop            $00, $03, Labyrinth_Loop1
	dc.b	nAb3, $60, smpsNoAttack, $30
	smpsJump            Labyrinth_Loop1

Labyrinth_FM4:
	smpsFMvoice         $01
	smpsModSet          $11, $01, $07, $05
	smpsPan             panRight, $00
	dc.b	nRst, $54, nFs3, $0C

Labyrinth_Jump3:
	dc.b	nG3, $60, smpsNoAttack, $18, nFs3, $60, smpsNoAttack, $18
	dc.b	nFs3, $60, smpsNoAttack, $18, nF3, $60, smpsNoAttack, $30
	smpsJump            Labyrinth_Jump3

Labyrinth_FM5:
	smpsFMvoice         $01
	smpsModSet          $05, $01, $02, $0A
	smpsPan             panLeft, $00
	dc.b	nRst, $54, nD3, $0C

Labyrinth_Jump4:
	dc.b	nEb3, $60, smpsNoAttack, $18, nCs3, $60, smpsNoAttack, $18
	dc.b	nEb3, $60, smpsNoAttack, $18, nD3, $60, smpsNoAttack, $30
	smpsJump            Labyrinth_Jump4

Labyrinth_FM6:
	smpsFMvoice         $02
	smpsModSet          $01, $01, $03, $05
	smpsPitchSlideSpeed $FC
	dc.b	nRst, $06, nRst, $60

Labyrinth_Jump5:
	dc.b	nEb3, $0C, nC3, nG3, nEb3, nBb3, nG3, nD4
	dc.b	nBb3, nEb4, nD4, nEb3, nBb2, nFs3, nEb3, nBb3
	dc.b	nFs3, nCs4, nBb3, nEb4, nF4, nRst, nFs4, nEb4
	dc.b	nBb4, nAb4, nFs4, nAb4, nBb4, nFs4, nRst, nRst
	dc.b	nBb4, nAb4, nCs5, nB4, nBb4, nAb4, nBb4, nFs4
	dc.b	nF4, nEb4, nD4
	smpsJump            Labyrinth_Jump5

Labyrinth_PSG1:
	smpsPSGvoice        cTone_07
	smpsModSet          $01, $06, $01, $01
	smpsPSGAlterVol     $02
	dc.b	nRst, $04, nE6, $5C
	smpsModSet          $00, $00, $00, $00
	smpsPSGAlterVol     $FE
	smpsPSGvoice        cTone_02

Labyrinth_Loop2:
	dc.b	nRst, $0C, nEb4, $06, nD4, nEb4
	smpsPSGAlterVol     $03
	dc.b	$06
	smpsPSGAlterVol     $FD
	dc.b	nRst, $24, nEb4, $06, nD4, nEb4
	smpsPSGAlterVol     $03
	dc.b	$06
	smpsPSGAlterVol     $FD
	dc.b	nRst, $18
	smpsLoop            $00, $04, Labyrinth_Loop2
	dc.b	nRst, $18
	smpsJump            Labyrinth_Loop2

Labyrinth_PSG2:
	smpsPSGvoice        cTone_07
	smpsModSet          $01, $06, $01, $01
	dc.b	nE5, $60
	smpsModSet          $00, $00, $00, $00

Labyrinth_Jump6:
	smpsPSGvoice        cTone_08
	smpsModSet          $01, $01, $01, $02
	dc.b	nEb3, $0C, nC3, nG3, nEb3, nBb3, nG3, nD4
	dc.b	nBb3, nEb4, nD4, nEb3, nBb2, nFs3, nEb3, nBb3
	dc.b	nFs3, nCs4, nBb3, nEb4, nF4, nRst, nFs4, nEb4
	dc.b	nBb4, nAb4, nFs4, nAb4, nBb4, nFs4, nRst, nRst
	dc.b	nBb4, nAb4, nCs5, nB4, nBb4, nAb4, nBb4, nFs4
	dc.b	nF4, nEb4, nD4
	smpsJump            Labyrinth_Jump6

Labyrinth_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        cTone_07
	dc.b	nC4, $60
	smpsPSGvoice        cTone_02

Labyrinth_Loop3:
	dc.b	nRst, $0C, nC4
	smpsLoop            $00, $0F, Labyrinth_Loop3

Labyrinth_Loop4:
	dc.b	nRst, $0C, nC4
	smpsLoop            $00, $06, Labyrinth_Loop4
	smpsJump            Labyrinth_Loop3

Labyrinth_PWM1:
	dc.b	$96, $54, pKick, $0C

Labyrinth_Jump7:
	dc.b	pKick, $24, pKick, pKick, $30, pKick, $24, pKick
	dc.b	pKick, $30, pKick, $24, pKick, pKick, $30, pKick
	dc.b	$24, pKick, pKick, pKick
	smpsJump            Labyrinth_Jump7

Labyrinth_PWM2:
	dc.b	$96, $60

Labyrinth_Jump8:
	dc.b	nRst, $24, pElecHiHat, $30
	smpsFMAlterVol      $FD
	dc.b	$24, nRst, $0C
	smpsFMAlterVol      $FD
	dc.b	pElecHiHat, $30
	smpsFMAlterVol      $FD
	dc.b	$30
	smpsFMAlterVol      $03
	dc.b	$0C, nRst, $24
	smpsFMAlterVol      $03
	dc.b	pElecHiHat, $30
	smpsFMAlterVol      $03
	dc.b	$24, smpsNoAttack, $0C
	smpsFMAlterVol      $C0
	dc.b	pElecHiHat, $30
	smpsFMAlterVol      $C0
	dc.b	$30
	smpsFMAlterVol      $40
	dc.b	$18
	smpsFMAlterVol      $20
	dc.b	$0C
	smpsFMAlterVol      $20
	smpsJump            Labyrinth_Jump8

Labyrinth_PWM3:
	dc.b	$96, $60

Labyrinth_Loop5:
	dc.b	pSnap, $0C, pSnap, pBell
	smpsLoop            $00, $03, Labyrinth_Loop5
	dc.b	pSnap
	smpsLoop            $01, $03, Labyrinth_Loop5

Labyrinth_Loop6:
	dc.b	pSnap, $0C, pSnap, pBell
	smpsLoop            $00, $04, Labyrinth_Loop6
	smpsJump            Labyrinth_Loop5

Labyrinth_PWM4:
	dc.b	$96, $60

Labyrinth_Jump9:
	dc.b	pBongoHi, $0C, pBongoLo, pBongoLo
	smpsFMAlterVol      $E0
	dc.b	pBongoHi, $0C, pBongoLo, pBongoLo
	smpsFMAlterVol      $E0
	dc.b	pBongoHi, $0C, pBongoLo, pBongoLo
	smpsFMAlterVol      $E0
	dc.b	pBongoHi
	smpsFMAlterVol      $E0
	dc.b	pBongoHi, $0C, pBongoLo, pBongoLo
	smpsFMAlterVol      $20
	dc.b	pBongoHi, $0C, pBongoLo, pBongoLo
	smpsFMAlterVol      $20
	dc.b	pBongoHi, $0C, pBongoLo, pBongoLo
	smpsFMAlterVol      $20
	dc.b	pBongoHi
	smpsFMAlterVol      $20
	dc.b	pBongoHi, $0C, pBongoLo, pBongoLo
	smpsFMAlterVol      $FE
	dc.b	pBongoHi, $0C, pBongoLo, pBongoLo
	smpsFMAlterVol      $FE
	dc.b	pBongoHi, $0C, pBongoLo, pBongoLo
	smpsFMAlterVol      $FE
	dc.b	pBongoHi
	smpsFMAlterVol      $FE
	dc.b	pBongoHi, $0C, pBongoLo, pBongoLo
	smpsFMAlterVol      $02
	dc.b	pBongoHi, $0C, pBongoLo, pBongoLo
	smpsFMAlterVol      $02
	dc.b	pBongoHi, $0C, pBongoLo, pBongoLo
	smpsFMAlterVol      $02
	dc.b	pBongoHi, $0C, pBongoLo, pBongoLo
	smpsFMAlterVol      $02
	smpsJump            Labyrinth_Jump9

Labyrinth_Voices:
	; Voice $00
	; $18
	; $35, $31, $31, $32,	$9E, $DC, $1C, $9C
	; $0D, $06, $04, $01,	$08, $06, $03, $05
	; $BF, $5F, $3F, $2F,	$29, $1B, $17, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $02, $01, $01, $05
	smpsVcRateScale     $02, $00, $03, $02
	smpsVcAttackRate    $1C, $1C, $1C, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $04, $06, $0D
	smpsVcDecayRate2    $05, $03, $06, $08
	smpsVcDecayLevel    $02, $03, $05, $0B
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $17, $1B, $29

	; Voice $01
	; $07
	; $03, $01, $02, $01,	$15, $15, $15, $15
	; $0D, $00, $00, $00,	$08, $00, $00, $00
	; $5F, $0A, $0A, $0A,	$87, $80, $80, $80
	smpsVcAlgorithm     $07
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $01, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $15, $15, $15, $15
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $0D
	smpsVcDecayRate2    $00, $00, $00, $08
	smpsVcDecayLevel    $00, $00, $00, $05
	smpsVcReleaseRate   $0A, $0A, $0A, $0F
	smpsVcTotalLevel    $80, $80, $80, $87

	; Voice $02
	; $2D
	; $77, $66, $05, $15,	$1F, $5F, $5F, $5F
	; $05, $07, $0C, $0C,	$17, $11, $12, $11
	; $9F, $9C, $9C, $9C,	$1D, $83, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $06, $07
	smpsVcCoarseFreq    $05, $05, $06, $07
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0C, $07, $05
	smpsVcDecayRate2    $11, $12, $11, $17
	smpsVcDecayLevel    $09, $09, $09, $09
	smpsVcReleaseRate   $0C, $0C, $0C, $0F
	smpsVcTotalLevel    $80, $80, $83, $1D
