HaveSomeFun_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     HaveSomeFun_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $4D
	smpsHeaderFM        HaveSomeFun_FM1, $00, $0A
	smpsHeaderFM        HaveSomeFun_FM2, $00, $08
	smpsHeaderFM        HaveSomeFun_FM3, $00, $0D
	smpsHeaderFM        HaveSomeFun_FM4, $F4, $10
	smpsHeaderFM        HaveSomeFun_FM5, $FB, $15
	smpsHeaderFM        HaveSomeFun_FM6, $F4, $1C
	smpsHeaderPSG       HaveSomeFun_PSG1, $F4, $00, $00, cTone_00
	smpsHeaderPSG       HaveSomeFun_PSG2, $F4, $03, $00, cTone_00
	smpsHeaderPSG       HaveSomeFun_PSG3, $23, $00, $00, cTone_00
	smpsHeaderPWM       HaveSomeFun_PWM1, $FF
	smpsHeaderPWM       HaveSomeFun_PWM2, $AF
	smpsHeaderPWM       HaveSomeFun_PWM3, $FF
	smpsHeaderPWM       HaveSomeFun_PWM4, $88

HaveSomeFun_FM1:
	smpsFMvoice         $00
	smpsPan             panCenter, $00
	dc.b	nA1, $30, nC2, nA1, nC2, nCs2, $06, nE2
	dc.b	nG2, nBb2, nD3, nF3, nAb3, nB3, $36
	smpsStop

HaveSomeFun_FM2:
	smpsFMvoice         $02
	smpsPan             panCenter, $00
	dc.b	nE6, $18
	smpsFMAlterVol      $03
	smpsPan             panRight, $00
	dc.b	nE7
	smpsFMAlterVol      $FD
	smpsPan             panCenter, $00
	dc.b	nEb6
	smpsFMAlterVol      $03
	smpsPan             panRight, $00
	dc.b	nEb7
	smpsFMAlterVol      $FD
	smpsPan             panCenter, $00
	dc.b	nD6
	smpsFMAlterVol      $03
	smpsPan             panRight, $00
	dc.b	nD7
	smpsFMAlterVol      $FD
	smpsPan             panCenter, $00
	dc.b	nE6
	smpsFMAlterVol      $03
	smpsPan             panRight, $00
	dc.b	nE7
	smpsFMAlterVol      $FD
	smpsPan             panCenter, $00
	dc.b	nG6, $30
	smpsFMAlterVol      $03
	smpsPan             panCenter, $1C
	smpsStop

HaveSomeFun_FM3:
	smpsFMvoice         $02
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $09, nE6, $18
	smpsFMAlterVol      $03
	smpsPan             panRight, $00
	dc.b	nE7
	smpsFMAlterVol      $FD
	smpsPan             panCenter, $00
	dc.b	nEb6
	smpsFMAlterVol      $03
	smpsPan             panRight, $00
	dc.b	nEb7
	smpsFMAlterVol      $FD
	smpsPan             panCenter, $00
	dc.b	nD6
	smpsFMAlterVol      $03
	smpsPan             panRight, $00
	dc.b	nD7
	smpsFMAlterVol      $FD
	smpsPan             panCenter, $00
	dc.b	nE6
	smpsFMAlterVol      $03
	smpsPan             panRight, $00
	dc.b	nE7, $0F
	smpsFMAlterVol      $FD
	smpsPan             panCenter, $00
	smpsFMAlterVol      $FB
	dc.b	nCs5, $06, nE5, $03, nRst, nG5, $06, nBb5
	dc.b	$03, nRst, nD6, $06, nF6, $03, nRst, nA6
	dc.b	$06, nB6, $06
	smpsStop

HaveSomeFun_FM4:
	smpsFMvoice         $01
	smpsPan             panCenter, $00
	smpsCall            HaveSomeFun_Call1
	smpsStop

HaveSomeFun_Call1:
	smpsFMAlterVol      $F6
	dc.b	nA4, $06
	smpsFMAlterVol      $0A
	dc.b	nB4, $03, nRst, nC5, nRst, nA4, $06, nB4
	dc.b	$03, nRst, nA4, nRst, nB4, nRst, nC5, $06
	dc.b	nA4, $06, nE5, $03, nRst, nC5, nRst, nA4
	dc.b	$06, nB4, $03, nRst, nA4, nRst, nB4, nRst
	smpsFMAlterVol      $F6
	dc.b	nC5, $06
	smpsFMAlterVol      $0A
	smpsLoop            $00, $02, HaveSomeFun_Call1
	smpsFMAlterVol      $F6
	dc.b	nCs5, $06
	smpsFMAlterVol      $0A
	dc.b	nE5, $03, nRst, nG5, $06, nBb5, $03, nRst
	smpsFMAlterVol      $F6
	dc.b	nD6, $06
	smpsFMAlterVol      $0A
	dc.b	nF6, $03, nRst, nA6, $06, nB6, $36
	smpsReturn

HaveSomeFun_FM5:
	smpsFMvoice         $01
	smpsPan             panCenter, $00
	smpsCall            HaveSomeFun_Call1
	smpsStop

HaveSomeFun_FM6:
	smpsFMvoice         $01
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $06
	smpsCall            HaveSomeFun_Call1
	smpsStop

HaveSomeFun_PSG1:
	smpsPSGvoice        cTone_02

HaveSomeFun_Loop1:
	dc.b	nA4, $06, nA5
	smpsPSGAlterVol     $07
	dc.b	nA5, $06, nRst, $06
	smpsPSGAlterVol     $F9
	smpsLoop            $00, $08, HaveSomeFun_Loop1
	dc.b	nRst, $60
	smpsStop

HaveSomeFun_PSG2:
	smpsPSGvoice        cTone_02
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $0C, nA4, $06, nA5, $03, nRst, $03
	smpsPSGAlterVol     $07
	dc.b	nRst, $06, nRst, $06
	smpsPSGAlterVol     $F9
	smpsLoop            $00, $08, HaveSomeFun_Loop1
	dc.b	nRst, $60
	smpsStop

HaveSomeFun_PSG3:
	smpsPSGform         $E7

HaveSomeFun_Loop2:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C
	smpsPSGAlterVol     $03
	dc.b	nC4, $0C, nC4, nC4, nC4, nC4, nC4, nC4
	dc.b	$06
	smpsPSGvoice        cTone_05
	dc.b	nC4, $06
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $02, HaveSomeFun_Loop2
	smpsPSGvoice        cTone_02
	dc.b	nC4, $0C, nC4
	smpsPSGvoice        cTone_05
	dc.b	nC4, $06
	smpsPSGvoice        $48
	dc.b	nC4, $0C, nRst, $30
	smpsStop

HaveSomeFun_PWM1:
	dc.b	pKick, $18, nRst, $12, pKick, $06, pKick, $0C
	dc.b	pKick, nRst, $18
	smpsLoop            $00, $02, HaveSomeFun_PWM1
	dc.b	pKick, $18, nRst, $48
	smpsStop

HaveSomeFun_PWM2:
	dc.b	$96, $60, $96, $30, pElecSnare, $12
	smpsFMAlterVol      $A6
	dc.b	$03, $03
	smpsFMAlterVol      $11
	dc.b	pElecSnare, $06
	smpsFMAlterVol      $22
	dc.b	pElecSnare
	smpsFMAlterVol      $22
	dc.b	pElecSnare
	smpsFMAlterVol      $22
	dc.b	pElecSnare
	smpsFMAlterVol      $22
	dc.b	pElecSnare, $18, nRst, $48
	smpsStop

HaveSomeFun_PWM3:
	dc.b	$96, $60, $96, $60, $96, $2A, pCrash, $06
	dc.b	nRst, $30
	smpsStop

HaveSomeFun_PWM4:
	dc.b	pTimpaniLo, $30, nRst, $1E
	smpsFMAlterVol      $11
	dc.b	pTimpaniHi, $12, pTimpaniLo, $18, nRst, $18
	smpsFMAlterVol      $78
	dc.b	pTimpaniLo, $03, pTimpaniLo
	smpsFMAlterVol      $11
	dc.b	pTimpaniLo, $03, pTimpaniLo
	smpsFMAlterVol      $11

HaveSomeFun_Loop3:
	dc.b	pTimpaniLo, $03, pTimpaniLo
	smpsFMAlterVol      $22
	smpsLoop            $00, $06, HaveSomeFun_Loop3
	dc.b	pTimpaniHi, $0C
	smpsStop

HaveSomeFun_Voices:
	; Voice $00
	; $3D
	; $01, $00, $01, $02,	$1F, $1F, $1F, $1F
	; $0D, $0C, $0C, $0C,	$0D, $0A, $0A, $0A
	; $F6, $97, $A7, $A7,	$1C, $80, $80, $85
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0C, $0C, $0D
	smpsVcDecayRate2    $0A, $0A, $0A, $0D
	smpsVcDecayLevel    $0A, $0A, $09, $0F
	smpsVcReleaseRate   $07, $07, $07, $06
	smpsVcTotalLevel    $85, $80, $80, $1C

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
