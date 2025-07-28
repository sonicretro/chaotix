Surprise_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Surprise_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00
	smpsHeaderFM        Surprise_FM1, $00, $09
	smpsHeaderFM        Surprise_FM2, $00, $1A
	smpsHeaderFM        Surprise_FM3, $FB, $1A
	smpsHeaderFM        Surprise_FM4, $00, $10
	smpsHeaderFM        Surprise_FM5, $07, $11
	smpsHeaderFM        Surprise_FM6, $00, $23
	smpsHeaderPSG       Surprise_PSG1, $E8, $01, $00, cTone_00
	smpsHeaderPSG       Surprise_PSG2, $E8, $05, $00, cTone_00
	smpsHeaderPSG       Surprise_PSG3, $23, $00, $00, cTone_00
	smpsHeaderPWM       Surprise_PWM1, $CC
	smpsHeaderPWM       Surprise_PWM2, $72
	smpsHeaderPWM       Surprise_PWM3, $00
	smpsHeaderPWM       Surprise_PWM4, $55

Surprise_FM1:
	smpsFMvoice         $00
	smpsPan             panCenter, $00

Surprise_Jump1:
	dc.b	nA2, $0C, nE2, nFs2, nG2, nA2, nC3, nD3
	dc.b	nEb3, nE3, nD3, nB2, nF3, nE3, nD3, nC3
	dc.b	nB2, nA2, nE2, nFs2, nG2, nA2, nC3, nD3
	dc.b	nEb3, nE3, nG3, nFs3, nF3, nE3, nD3, nB2
	dc.b	nC3, nD3, nA2, nB2, nC3, nD3, nF3, nG3
	dc.b	nAb3, nA3, nG3, nE3, nBb3, nA3, nG3, nF3
	dc.b	nE3, nD3, nA2, nB2, nC3, nD3, nF3, nG3
	dc.b	nAb3, nA3, nC4, nB3, nBb3, nA3, nG3, nE3
	dc.b	nF3, nE3, nB2, nCs3, nD3, nE3, nG3, nA3
	dc.b	nBb3, nA3, nG3, nE3, nBb3, nA3, nG3, nF3
	dc.b	nE3, nD3, nA2, nB2, nC3, nD3, nF3, nG3
	dc.b	nAb3, nE3, nG3, nFs3, nF3, nE3, nD3, nB2
	dc.b	nC3
	smpsJump            Surprise_Jump1

Surprise_FM2:
	smpsFMvoice         $01
	smpsPan             panCenter, $00
	smpsCall            Surprise_Call1

Surprise_Call1:
	smpsFMAlterVol      $FE
	dc.b	nA4, $06, nE4, $03, nRst, nG4, $06, nE4
	dc.b	$03, nRst
	smpsFMAlterVol      $FD
	dc.b	nA4, $06, nE4, $03, nRst, nG4, $06, nE4
	dc.b	$03, nRst
	smpsLoop            $00, $04, Surprise_Call1
	dc.b	nA4, $0C, nBb4, $54, smpsNoAttack
	smpsFMAlterVol      $02
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $03
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $02
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $03
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $02
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $03
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $02
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $03
	dc.b	$0C

Surprise_Loop1:
	smpsFMAlterVol      $FE
	dc.b	nD5, $06, nA4, $03, nRst, nC5, $06, nA4
	dc.b	$03, nRst
	smpsFMAlterVol      $FD
	dc.b	nD5, $06, nA4, $03, nRst, nC5, $06, nA4
	dc.b	$03, nRst
	smpsLoop            $00, $04, Surprise_Loop1
	dc.b	nD5, $0C, nEb5, $54, smpsNoAttack
	smpsFMAlterVol      $02
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $03
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $02
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $03
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $02
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $03
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $02
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $03
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $F6
	dc.b	nE4, $60, nD4, $60, smpsNoAttack, $60, smpsNoAttack, $30
	dc.b	nRst, $06, nD4, nEb4, nE4, nF4, nFs4, nG4
	dc.b	nAb4
	smpsFMAlterVol      $0A
	smpsJump            Surprise_Call1

Surprise_FM3:
	smpsFMvoice         $01
	smpsPan             panCenter, $00
	smpsCall            Surprise_Call1

Surprise_FM4:
	smpsFMvoice         $02
	smpsPan             panLeft, $00

Surprise_Loop2:
	dc.b	nA2, $12, nA2, $06, nRst, $24, nA2, $06
	dc.b	nRst, $0C, nA2, $12
	smpsLoop            $00, $04, Surprise_Loop2

Surprise_Loop3:
	dc.b	nD3, $12, nD3, $06, nRst, $24, nD3, $06
	dc.b	nRst, $0C, nD3, $12
	smpsLoop            $00, $04, Surprise_Loop3
	dc.b	nE3, $12, nE3, $06, nRst, $24, nE3, $06
	dc.b	nRst, $0C, nE3, $12, nD3, $12, nD3, $06
	dc.b	nRst, $24, nD3, $06, nRst, $0C, nD3, $12
	dc.b	nD3, nD3, $06, nRst, $24, nD3, $06, nRst
	dc.b	$0C, nD3, $12, nA2, nA2, $06, nRst, $24
	dc.b	nA2, $06, nRst, $0C, nA2, $12
	smpsJump            Surprise_Loop2

Surprise_FM5:
	smpsFMvoice         $02
	smpsPan             panRight, $00

Surprise_Loop4:
	dc.b	nA2, $12, nA2, $06, nRst, $24, nA2, $06
	dc.b	nRst, $0C, nA2, $12
	smpsLoop            $00, $04, Surprise_Loop4

Surprise_Loop5:
	dc.b	nD3, $12, nD3, $06, nRst, $24, nD3, $06
	dc.b	nRst, $0C, nD3, $12
	smpsLoop            $00, $04, Surprise_Loop5
	dc.b	nE3, $12, nE3, $06, nRst, $24, nE3, $06
	dc.b	nRst, $0C, nE3, $12, nD3, $12, nD3, $06
	dc.b	nRst, $24, nD3, $06, nRst, $0C, nD3, $12
	dc.b	nD3, nD3, $06, nRst, $24, nD3, $06, nRst
	dc.b	$0C, nD3, $12, nA2, nA2, $06, nRst, $24
	dc.b	nA2, $06, nRst, $0C, nA2, $12
	smpsJump            Surprise_Loop4

Surprise_FM6:
	smpsFMvoice         $01
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $05, $08
	dc.b	nRst, $06
	smpsCall            Surprise_Call1

Surprise_PSG1:
	smpsPSGvoice        cTone_08
	dc.b	nRst, $60
	smpsLoop            $00, $03, Surprise_PSG1
	dc.b	nCs5, $08, nE5, nB5, nBb5, $48

Surprise_Loop6:
	dc.b	nRst, $60
	smpsLoop            $00, $03, Surprise_Loop6
	dc.b	nFs5, $08, nA5, nE6, nEb6, $30, nRst, $18
	smpsAlterPitch      $0C
	smpsPSGvoice        cTone_02
	dc.b	nE4, $06, nFs4, nG4, nE4, nA4, nG4, nFs4
	dc.b	nA4, nG4, nFs4, nE4, nB3, nA3, nB3, nCs4
	dc.b	nEb4, nD4, nE4, nF4, nD4, nG4, nF4, nE4
	dc.b	nG4, nF4, nE4, nD4, nA3, nG3, nA3, nB3
	dc.b	nCs4, nD4, nE4, nF4, nD4, nG4, nF4, nE4
	dc.b	nG4, nA3, nE4, nG4
	smpsPSGvoice        cTone_08
	dc.b	nA4, $1E, smpsNoAttack, $36
	smpsPSGvoice        cTone_02
	dc.b	nD4, $06, nEb4, nE4, nF4, nFs4, nG4, nAb4
	smpsAlterPitch      $F4
	smpsJump            Surprise_PSG1

Surprise_PSG2:
	smpsModSet          $01, $01, $02, $04
	dc.b	nRst, $08

Surprise_Loop7:
	smpsPSGvoice        cTone_08
	dc.b	nRst, $60
	smpsLoop            $00, $03, Surprise_Loop7
	dc.b	nCs5, $08, nE5, nB5, nBb5, $30, nRst, $18

Surprise_Loop8:
	dc.b	nRst, $60
	smpsLoop            $00, $03, Surprise_Loop8
	dc.b	nFs5, $08, nA5, nE6, nEb6, $30, nRst, $10
	smpsAlterPitch      $0C
	smpsPSGvoice        cTone_02
	dc.b	nRst, $06, nE4, $06, nFs4, nG4, nE4, nA4
	dc.b	nG4, nFs4, nA4, nG4, nFs4, nE4, nB3, nA3
	dc.b	nB3, nCs4, nEb4, nD4, nE4, nF4, nD4, nG4
	dc.b	nF4, nE4, nG4, nF4, nE4, nD4, nA3, nG3
	dc.b	nA3, nB3, nCs4, nD4, nE4, nF4, nD4, nG4
	dc.b	nF4, nE4, nG4, nA3, nE4, nG4
	smpsPSGvoice        cTone_08
	dc.b	nA4, $1E, smpsNoAttack, $36
	smpsPSGvoice        cTone_02
	dc.b	nD4, $06, nEb4, nE4, nF4, nFs4, nG4, nRst
	dc.b	$08
	smpsAlterPitch      $F4
	smpsJump            Surprise_Loop7

Surprise_PSG3:
	smpsPSGform         $E7

Surprise_Jump2:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsJump            Surprise_Jump2

Surprise_PWM1:
	dc.b	pRideBell, $0C
	smpsFMAlterVol      $DE
	dc.b	pRideBell, $0C
	smpsFMAlterVol      $22
	smpsJump            Surprise_PWM1

Surprise_PWM2:
	dc.b	nRst, $60
	smpsLoop            $00, $08, Surprise_PWM2

Surprise_Loop9:
	dc.b	pClap, $18
	smpsLoop            $00, $10, Surprise_Loop9
	smpsJump            Surprise_PWM2

Surprise_PWM3:
	smpsStop

Surprise_PWM4:
	smpsFMAlterVol      $FD
	dc.b	pBongoLo, $0C
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	pBongoHi, nRst, $06, pBongoHi
	smpsFMAlterVol      $30
	smpsFMAlterVol      $FD
	dc.b	pBongoLo, pBongoLo
	smpsFMAlterVol      $03

Surprise_Loop10:
	smpsFMAlterVol      $33
	smpsFMAlterVol      $D0
	dc.b	pBongoHi
	smpsFMAlterVol      $CD
	smpsFMAlterVol      $30
	smpsFMAlterVol      $FD
	dc.b	pBongoLo, pBongoLo
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	pBongoHi
	smpsFMAlterVol      $30
	smpsFMAlterVol      $FD
	dc.b	pBongoLo, pBongoLo
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	pBongoHi
	smpsFMAlterVol      $30
	smpsFMAlterVol      $FD
	dc.b	pBongoLo
	smpsFMAlterVol      $03
	smpsLoop            $00, $03, Surprise_Loop10
	smpsFMAlterVol      $44
	smpsFMAlterVol      $FE
	dc.b	pBongoLo, $06, $06
	smpsFMAlterVol      $DE
	dc.b	$06, $06, pBongoLo, $06, $06
	smpsFMAlterVol      $DE
	dc.b	$06, $06, pBongoLo, $06, $06
	smpsFMAlterVol      $EF
	dc.b	$03, $03, $03, $03, pBongoLo, $03, $03, $03
	dc.b	$03
	smpsFMAlterVol      $EF
	dc.b	$03, $03, $03, $03
	smpsFMAlterVol      $66
	smpsFMAlterVol      $02
	smpsFMAlterVol      $BC
	smpsFMAlterVol      $44
	smpsFMAlterVol      $E0
	dc.b	pBongoHi, $06, $06
	smpsFMAlterVol      $DE
	dc.b	$06, $06, pBongoHi, $06, $06
	smpsFMAlterVol      $DE
	dc.b	$06, $06, pBongoHi, $06, $06
	smpsFMAlterVol      $EF
	dc.b	$03, $03, $03, $03, pBongoHi, $03, $03, $03
	dc.b	$03
	smpsFMAlterVol      $EF
	dc.b	$03, $03, $03, $03
	smpsFMAlterVol      $66
	smpsFMAlterVol      $20
	smpsFMAlterVol      $BC
	smpsLoop            $01, $02, Surprise_PWM4

Surprise_Loop11:
	dc.b	nRst, $0C
	smpsFMAlterVol      $D0
	dc.b	pBongoHi, $0C
	smpsFMAlterVol      $30
	dc.b	nRst, $0C
	smpsFMAlterVol      $FD
	dc.b	pBongoLo, $06, pBongoLo
	smpsFMAlterVol      $03
	smpsLoop            $00, $07, Surprise_Loop11
	smpsFMAlterVol      $22
	dc.b	pClickHi, $06, $0C, $06, pClickLo, $06, $06, $06
	dc.b	$06
	smpsFMAlterVol      $DE
	smpsJump            Surprise_PWM4

Surprise_Voices:
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
	; $07
	; $78, $06, $72, $31,	$9F, $DF, $5F, $DF
	; $0A, $0A, $00, $00,	$00, $00, $00, $00
	; $17, $17, $07, $07,	$88, $8A, $80, $83
	smpsVcAlgorithm     $07
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $00, $07
	smpsVcCoarseFreq    $01, $02, $06, $08
	smpsVcRateScale     $03, $01, $03, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $0A, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $01, $01
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $83, $80, $8A, $88
