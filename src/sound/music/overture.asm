Overture_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Overture_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $1E
	smpsHeaderFM        Overture_FM1, $00, $10
	smpsHeaderFM        Overture_FM2, $00, $15
	smpsHeaderFM        Overture_FM3, $00, $15
	smpsHeaderFM        Overture_FM4, $00, $15
	smpsHeaderFM        Overture_FM5, $00, $15
	smpsHeaderFM        Overture_FM6, $00, $15
	smpsHeaderPSG       Overture_PSG1, $F4, $06, $00, cTone_0C
	smpsHeaderPSG       Overture_PSG2, $F4, $03, $00, cTone_0C
	smpsHeaderPSG       Overture_PSG3, $F4, $05, $00, cTone_02
	smpsHeaderPWM       Overture_PWM1, $99
	smpsHeaderPWM       Overture_PWM2, $11
	smpsHeaderPWM       Overture_PWM3, $99
	smpsHeaderPWM       Overture_PWM4, $33

Overture_FM1:
	smpsFMvoice         $00
	smpsModSet          $09, $01, $02, $00
	dc.b	nC2, $30
	smpsModSet          $00, $00, $00, $00
	dc.b	smpsNoAttack, $30

Overture_Jump1:
	dc.b	nD2, $60, smpsNoAttack, $60, nC2, smpsNoAttack, $60
	smpsJump            Overture_Jump1

Overture_FM2:
	smpsModSet          $09, $01, $02, $00
	smpsFMvoice         $04
	smpsPan             panRight, $00
	dc.b	nF3, $30
	smpsModSet          $00, $00, $00, $00
	dc.b	smpsNoAttack, $30
	smpsPan             panCenter, $00

Overture_Loop2:
	smpsFMvoice         $02
	dc.b	nF5, $12
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00

Overture_Loop1:
	dc.b	$06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$02
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsLoop            $00, $03, Overture_Loop1
	smpsLoop            $01, $02, Overture_Loop2
	dc.b	nF5, $12
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsFMvoice         $01
	smpsModSet          $01, $01, $03, $03
	dc.b	nRst, $18, nC4, $30
	smpsModSet          $00, $00, $00, $00
	smpsAlterPitch      $FE
	smpsLoop            $02, $02, Overture_Loop2
	smpsAlterPitch      $04
	smpsJump            Overture_Loop2

Overture_FM3:
	smpsModSet          $09, $01, $02, $00
	smpsFMvoice         $04
	dc.b	nC3, $30
	smpsModSet          $00, $00, $00, $00
	dc.b	smpsNoAttack, $30

Overture_Loop4:
	smpsFMvoice         $02
	dc.b	nC5, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6

Overture_Loop3:
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$02
	smpsFMAlterVol      $F6
	smpsLoop            $00, $03, Overture_Loop3
	smpsLoop            $01, $02, Overture_Loop4
	dc.b	nC5, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsFMvoice         $01
	smpsModSet          $01, $01, $03, $03
	dc.b	nRst, $30
	smpsPan             panRight, $00
	dc.b	nF4, $18
	smpsPan             panCenter, $00
	smpsModSet          $00, $00, $00, $00
	smpsAlterPitch      $FE
	smpsLoop            $03, $02, Overture_Loop4
	smpsAlterPitch      $04
	smpsJump            Overture_Loop4

Overture_FM4:
	smpsModSet          $09, $01, $02, $00
	smpsPan             panLeft, $00
	smpsFMvoice         $04
	dc.b	nG2, $30
	smpsModSet          $00, $00, $00, $00
	dc.b	smpsNoAttack, $30
	smpsPan             panCenter, $00

Overture_Loop6:
	smpsFMvoice         $02
	dc.b	nG4, $12
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00

Overture_Loop5:
	dc.b	$06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$02
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsLoop            $00, $03, Overture_Loop5
	smpsLoop            $01, $02, Overture_Loop6
	dc.b	nG4, $12
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsFMvoice         $01
	smpsModSet          $01, $01, $03, $04
	smpsFMAlterVol      $07
	dc.b	nRst, $06, nG3, $18, nC4
	smpsPan             panLeft, $00
	dc.b	nF4, $12
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	smpsFMvoice         $02
	smpsAlterPitch      $FE
	smpsLoop            $02, $02, Overture_Loop6
	smpsAlterPitch      $04
	smpsJump            Overture_Loop6

Overture_FM5:
	dc.b	nRst, $60

Overture_Loop7:
	smpsFMvoice         $03
	smpsPan             panLeft, $00
	smpsCall            Overture_Call1
	smpsFMvoice         $01
	smpsModSet          $01, $01, $03, $04
	dc.b	nD3, $60
	smpsModSet          $00, $00, $00, $00
	smpsAlterPitch      $FE
	smpsLoop            $00, $02, Overture_Loop7
	smpsAlterPitch      $04
	smpsJump            Overture_Loop7

Overture_Call1:
	dc.b	nE4, $08, nEb4, nD4, $50
	smpsReturn

Overture_FM6:
	dc.b	nRst, $60

Overture_Loop8:
	smpsFMvoice         $03
	smpsPan             panRight, $00
	smpsAlterPitch      $F9
	smpsCall            Overture_Call1
	smpsAlterPitch      $07
	smpsFMvoice         $01
	smpsPan             panLeft, $00
	smpsModSet          $01, $01, $03, $03
	smpsFMAlterVol      $07
	dc.b	nRst, $06, nD3, $12
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nG3, $48
	smpsModSet          $00, $00, $00, $00
	smpsAlterPitch      $FE
	smpsLoop            $00, $02, Overture_Loop8
	smpsAlterPitch      $04
	smpsJump            Overture_Loop8

Overture_PSG1:
	smpsPSGvoice        cTone_04
	smpsModSet          $09, $02, $FF, $00
	dc.b	nF3, $30
	smpsModSet          $00, $00, $00, $00
	dc.b	smpsNoAttack, $30

Overture_Jump2:
	smpsModSet          $03, $01, $04, $03
	dc.b	nG3, $60, smpsNoAttack, $60, nF3, smpsNoAttack, $60
	smpsJump            Overture_Jump2

Overture_PSG2:
	smpsPSGvoice        cTone_04
	smpsModSet          $09, $02, $FF, $00
	dc.b	nBb2, $30
	smpsModSet          $00, $00, $00, $00
	dc.b	smpsNoAttack, $30

Overture_Jump3:
	smpsModSet          $01, $01, $02, $03
	dc.b	nC3, $60, smpsNoAttack, $60, nBb2, smpsNoAttack, $60
	smpsJump            Overture_Jump3

Overture_PSG3:
	smpsPSGvoice        cTone_04
	smpsModSet          $09, $02, $FF, $00
	dc.b	nF3, $30
	smpsModSet          $00, $00, $00, $00
	dc.b	smpsNoAttack, $30

Overture_Jump4:
	smpsModSet          $02, $01, $03, $03
	dc.b	nG3, $60, smpsNoAttack, $60, nF3, smpsNoAttack, $60
	smpsJump            Overture_Jump4

Overture_PWM1:
	dc.b	$96, $60

Overture_Jump5:
	dc.b	pKick, $60, pKick, pKick, pKick
	smpsJump            Overture_Jump5

Overture_PWM2:
	dc.b	pElecSnare, $04, pElecSnare, pElecSnare
	smpsFMAlterVol      $11
	smpsLoop            $00, $04, Overture_PWM2

Overture_Loop9:
	dc.b	pElecSnare, $04, pElecSnare
	smpsFMAlterVol      $11
	smpsLoop            $00, $06, Overture_Loop9

Overture_Loop10:
	dc.b	pElecSnare, $18, $08, $08, $08, $18, $14
	smpsFMAlterVol      $CD
	dc.b	$02, $02
	smpsFMAlterVol      $33
	dc.b	$18, $08, $08, $08, $08, $08, $08, $08
	dc.b	$08, $08
	smpsLoop            $00, $02, Overture_Loop10
	smpsJump            Overture_Loop10

Overture_PWM3:
	smpsFMAlterVol      $FC
	dc.b	pSplash, $60
	smpsFMAlterVol      $04

Overture_Loop11:
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pSplash
	smpsFMAlterVol      $04
	smpsLoop            $00, $02, Overture_Loop11
	smpsJump            Overture_Loop11

Overture_PWM4:
	dc.b	pTimpaniLo, $03
	smpsLoop            $00, $04, Overture_PWM4
	smpsFMAlterVol      $11
	smpsLoop            $01, $08, Overture_PWM4

Overture_Jump6:
	dc.b	pTimpaniHi, $60, pTimpaniLo, pTimpaniHi, pTimpaniLo
	smpsJump            Overture_Jump6

Overture_Voices:
	; Voice $00
	; $37
	; $32, $34, $32, $31,	$9E, $DC, $1C, $5C
	; $05, $06, $04, $01,	$02, $0A, $03, $03
	; $1F, $2F, $2F, $0F,	$85, $80, $80, $80
	smpsVcAlgorithm     $07
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $02, $04, $02
	smpsVcRateScale     $01, $00, $03, $02
	smpsVcAttackRate    $1C, $1C, $1C, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $04, $06, $05
	smpsVcDecayRate2    $03, $03, $0A, $02
	smpsVcDecayLevel    $00, $02, $02, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $80, $80, $85

	; Voice $01
	; $34
	; $3F, $01, $02, $11,	$1F, $1F, $1F, $1F
	; $0E, $08, $0F, $09,	$0F, $04, $05, $00
	; $6F, $0D, $1F, $1D,	$0F, $80, $10, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $00, $03
	smpsVcCoarseFreq    $01, $02, $01, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $0F, $08, $0E
	smpsVcDecayRate2    $00, $05, $04, $0F
	smpsVcDecayLevel    $01, $01, $00, $06
	smpsVcReleaseRate   $0D, $0F, $0D, $0F
	smpsVcTotalLevel    $80, $10, $80, $0F

	; Voice $02
	; $3D
	; $51, $12, $01, $01,	$94, $1C, $1C, $1C
	; $0F, $0F, $0F, $0F,	$07, $04, $04, $04
	; $25, $1A, $1A, $1A,	$11, $82, $82, $82
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $01, $05
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $1C, $1C, $1C, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $0F, $0F, $0F
	smpsVcDecayRate2    $04, $04, $04, $07
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $82, $82, $82, $11

	; Voice $03
	; $04
	; $71, $01, $31, $31,	$15, $15, $15, $15
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$1A, $80, $19, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $00, $07
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $15, $15, $15, $15
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $19, $80, $1A

	; Voice $04
	; $28
	; $44, $47, $12, $71,	$1F, $12, $1F, $1F
	; $04, $01, $04, $0C,	$01, $01, $01, $00
	; $1F, $1F, $1F, $1F,	$26, $17, $14, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $01, $04, $04
	smpsVcCoarseFreq    $01, $02, $07, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $04, $01, $04
	smpsVcDecayRate2    $00, $01, $01, $01
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $14, $17, $26
