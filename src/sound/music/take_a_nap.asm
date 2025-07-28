TakeANap_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     TakeANap_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $0E
	smpsHeaderFM        TakeANap_FM1, $00, $0F
	smpsHeaderFM        TakeANap_FM2, $00, $0E
	smpsHeaderFM        TakeANap_FM3, $00, $14
	smpsHeaderFM        TakeANap_FM4, $00, $14
	smpsHeaderFM        TakeANap_FM5, $00, $14
	smpsHeaderFM        TakeANap_FM6, $00, $17
	smpsHeaderPSG       TakeANap_PSG1, $F4, $03, $00, cTone_0C
	smpsHeaderPSG       TakeANap_PSG2, $F4, $03, $00, cTone_0C
	smpsHeaderPSG       TakeANap_PSG3, $23, $01, $00, cTone_02
	smpsHeaderPWM       TakeANap_PWM1, $11
	smpsHeaderPWM       TakeANap_PWM2, $99
	smpsHeaderPWM       TakeANap_PWM3, $96
	smpsHeaderPWM       TakeANap_PWM4, $77

TakeANap_FM1:
	smpsFMvoice         $00
	dc.b	nRst, $54

TakeANap_Loop1:
	dc.b	nF2, $0C, nC2, nD2, nF2, nRst, $24, nF2
	dc.b	$0C, smpsNoAttack, $0C, nD2, nC2, nRst, $3C, nBb1
	dc.b	$0C, nF1, nG1, nBb1, nRst, $24, nC2, $0C
	dc.b	smpsNoAttack, $0C, $0C, $0C, nRst, nC2, nD2, nF2
	dc.b	nG2
	smpsLoop            $00, $02, TakeANap_Loop1
	smpsJump            TakeANap_Loop1

TakeANap_FM2:
	smpsFMvoice         $02
	dc.b	nRst, $54

TakeANap_Jump1:
	smpsCall            TakeANap_Call1
	dc.b	smpsNoAttack, $0C, nCs4, $06, smpsNoAttack, nD4, $12, nC4
	dc.b	$0C, smpsNoAttack, $60
	smpsCall            TakeANap_Call1
	dc.b	smpsNoAttack, $0C, nD3, $18, nFs3, $06, smpsNoAttack, nG3
	dc.b	$06, smpsNoAttack, $60
	smpsJump            TakeANap_Jump1

TakeANap_Call1:
	dc.b	nRst, $18, nAb3, $06, smpsNoAttack, nA3, $12, nG3
	dc.b	$18, nC4, smpsNoAttack, $0C, nD4, $18, nA3, nG3
	dc.b	$0C, nA3, nBb3, smpsNoAttack, $0C, nA3, nG3, nF3
	smpsReturn

TakeANap_FM3:
	smpsFMvoice         $01
	dc.b	nRst, $54

TakeANap_Loop2:
	dc.b	nRst, $18, nA3, nRst, nA3, nRst, $18, nA3
	dc.b	nRst, nA3, nRst, $18, nF3, nRst, nF3, nRst
	dc.b	$18, nG3, nRst, nG3
	smpsLoop            $00, $02, TakeANap_Loop2
	smpsJump            TakeANap_Loop2

TakeANap_FM4:
	smpsFMvoice         $01
	smpsPan             panRight, $00
	dc.b	nRst, $54

TakeANap_Loop3:
	dc.b	nRst, $18, nF3, nRst, nF3, nRst, $18, nF3
	dc.b	nRst, nF3, nRst, $18, nD3, nRst, nD3, nRst
	dc.b	$18, nE3, nRst, nE3
	smpsLoop            $00, $02, TakeANap_Loop3
	smpsJump            TakeANap_Loop3

TakeANap_FM5:
	smpsFMvoice         $01
	smpsPan             panLeft, $00
	dc.b	nRst, $54

TakeANap_Loop4:
	dc.b	nRst, $18, nC3, nRst, nC3, nRst, $18, nC3
	dc.b	nRst, nC3, nRst, $18, nBb2, nRst, nBb2, nRst
	dc.b	$18, nC3, nRst, nC3
	smpsLoop            $00, $02, TakeANap_Loop4
	smpsJump            TakeANap_Loop4

TakeANap_FM6:
	smpsFMvoice         $02
	dc.b	nRst, $54, nRst, $06
	smpsPan             panRight, $00
	smpsModSet          $0A, $01, $02, $04

TakeANap_Jump2:
	smpsCall            TakeANap_Call1
	dc.b	smpsNoAttack, $0C, nCs4, $06, smpsNoAttack, nD4, $12, nC4
	dc.b	$0C, smpsNoAttack, $60
	smpsCall            TakeANap_Call1
	dc.b	smpsNoAttack, $0C, nD3, $18, nFs3, $06, smpsNoAttack, nG3
	dc.b	$06, smpsNoAttack, $60
	smpsJump            TakeANap_Jump2

TakeANap_PSG1:
	smpsPSGvoice        cTone_03
	dc.b	nRst, $54

TakeANap_Loop5:
	dc.b	nRst, $0C, nC4, $06
	smpsPSGAlterVol     $03
	dc.b	$06
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $20, TakeANap_Loop5
	smpsJump            TakeANap_Loop5

TakeANap_PSG2:
	smpsPSGvoice        cTone_03
	dc.b	nRst, $54

TakeANap_Loop6:
	dc.b	nRst, $0C, nF3, $06
	smpsPSGAlterVol     $03
	dc.b	$06
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $0C, TakeANap_Loop6

TakeANap_Loop7:
	dc.b	nRst, $0C, nG3, $06
	smpsPSGAlterVol     $03
	dc.b	$06
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $04, TakeANap_Loop7
	smpsLoop            $01, $02, TakeANap_Loop6
	smpsJump            TakeANap_Loop6

TakeANap_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $24
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C, $0C
	smpsPSGvoice        cTone_05
	dc.b	$18

TakeANap_Loop8:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C, $0C, nRst, nCs4, nRst, nC4, nCs4
	dc.b	nCs4, nRst, nC4, nC4, nCs4, nRst, nC4
	smpsPSGvoice        cTone_05
	dc.b	nC4, $18
	smpsLoop            $00, $04, TakeANap_Loop8
	smpsJump            TakeANap_Loop8

TakeANap_PWM1:
	dc.b	$96, $54

TakeANap_Loop9:
	dc.b	pKick, $0C, $18, $0C, nRst, $24, pKick, $0C
	dc.b	nRst, $0C, pKick, pKick, $48
	smpsLoop            $00, $04, TakeANap_Loop9
	smpsJump            TakeANap_Loop9

TakeANap_PWM2:
	dc.b	pSnare, $0C, nRst, pSnare, pSnare, pSnare, pSnare, pSnare

TakeANap_Jump3:
	dc.b	nRst, $30, pSnare, nRst, pSnare, nRst, pSnare, nRst
	dc.b	pSnare, $24, $0C, nRst, $30, pSnare, nRst, pSnare
	dc.b	nRst, pSnare, nRst, pSnare, $0C, pTomMid
	smpsFMAlterVol      $90
	dc.b	pTomLo, $18
	smpsFMAlterVol      $70
	smpsJump            TakeANap_Jump3

TakeANap_PWM3:
	dc.b	$96, $24, pClap, $30

TakeANap_Loop10:
	dc.b	nRst, $30, pClap
	smpsLoop            $00, $08, TakeANap_Loop10
	smpsJump            TakeANap_Loop10

TakeANap_PWM4:
	dc.b	nRst, $24
	smpsFMAlterVol      $FD
	dc.b	pClickLo, $0C, $0C
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	pClickHi, $0C, $0C
	smpsFMAlterVol      $30

TakeANap_Loop11:
	smpsFMAlterVol      $FD
	dc.b	pClickLo, $0C, $0C
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	pClickHi, $0C, $0C
	smpsFMAlterVol      $30
	smpsLoop            $00, $10, TakeANap_Loop11
	smpsJump            TakeANap_Loop11

TakeANap_Voices:
	; Voice $00
	; $2D
	; $02, $03, $02, $01,	$7F, $DF, $9F, $9F
	; $12, $0A, $0A, $0A,	$10, $09, $09, $09
	; $3F, $2F, $2F, $2F,	$10, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $03, $02
	smpsVcRateScale     $02, $02, $03, $01
	smpsVcAttackRate    $1F, $1F, $1F, $3F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0A, $12
	smpsVcDecayRate2    $09, $09, $09, $10
	smpsVcDecayLevel    $02, $02, $02, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $80, $80, $10

	; Voice $01
	; $2C
	; $61, $03, $01, $33,	$5F, $94, $5F, $94
	; $05, $05, $05, $07,	$02, $02, $02, $02
	; $1F, $6F, $1F, $AF,	$1E, $80, $1E, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $00, $06
	smpsVcCoarseFreq    $03, $01, $03, $01
	smpsVcRateScale     $02, $01, $02, $01
	smpsVcAttackRate    $14, $1F, $14, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $05, $05, $05
	smpsVcDecayRate2    $02, $02, $02, $02
	smpsVcDecayLevel    $0A, $01, $06, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1E, $80, $1E

	; Voice $02
	; $3A
	; $03, $08, $04, $01,	$8E, $8E, $8D, $59
	; $0E, $0E, $0E, $03,	$00, $00, $00, $00
	; $1F, $FF, $1F, $2F,	$17, $28, $20, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $04, $08, $03
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $19, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $20, $28, $17
