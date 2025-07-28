Decision2nd_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Decision2nd_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $44
	smpsHeaderFM        Decision2nd_FM1, $F4, $0B
	smpsHeaderFM        Decision2nd_FM2, $0C, $0F
	smpsHeaderFM        Decision2nd_FM3, $0C, $0F
	smpsHeaderFM        Decision2nd_FM4, $0C, $0F
	smpsHeaderFM        Decision2nd_FM5, $0C, $16
	smpsHeaderFM        Decision2nd_FM6, $0C, $18
	smpsHeaderPSG       Decision2nd_PSG1, $00, $00, $00, cTone_00
	smpsHeaderPSG       Decision2nd_PSG2, $00, $00, $00, cTone_00
	smpsHeaderPSG       Decision2nd_PSG3, $23, $01, $00, cTone_00
	smpsHeaderPWM       Decision2nd_PWM1, $AA
	smpsHeaderPWM       Decision2nd_PWM2, $88
	smpsHeaderPWM       Decision2nd_PWM3, $BB
	smpsHeaderPWM       Decision2nd_PWM4, $00

Decision2nd_FM1:
	smpsFMvoice         $00
	smpsPan             panCenter, $00
	dc.b	nRst, $08, nAb3, $04
	smpsFMAlterVol      $FC
	dc.b	nRst, $0C, nBb3, $04
	smpsFMAlterVol      $FC
	dc.b	nRst, $0C, nB3, $08
	smpsFMAlterVol      $FD
	dc.b	nCs4, $04, nRst, nEb4, $08, smpsNoAttack, $40, smpsNoAttack
	dc.b	$30
	smpsStop

Decision2nd_FM2:
	smpsFMvoice         $01
	smpsPan             panCenter, $00
	smpsCall            Decision2nd_Call1

Decision2nd_Call1:
	dc.b	nRst, $08, nBb3, $02, nRst
	smpsFMAlterVol      $11
	smpsPan             panLeft, $00
	dc.b	nBb3, $04
	smpsFMAlterVol      $EF
	smpsPan             panCenter, $00
	smpsFMAlterVol      $FC
	dc.b	nRst, $08, nC4, $02, nRst
	smpsFMAlterVol      $11
	smpsPan             panLeft, $00
	dc.b	nC4, $04
	smpsFMAlterVol      $EF
	smpsPan             panCenter, $00
	smpsFMAlterVol      $FC
	dc.b	nRst, $08, nCs4, $08
	smpsFMAlterVol      $FD
	dc.b	nEb4, $04, nRst, nF4, $08, smpsNoAttack, $40, smpsNoAttack
	dc.b	$30
	smpsStop

Decision2nd_FM3:
	smpsFMvoice         $00
	smpsPan             panCenter, $00
	smpsCall            Decision2nd_Call2

Decision2nd_Call2:
	dc.b	nRst, $08, nCs4, $04
	smpsFMAlterVol      $11
	smpsPan             panRight, $00
	dc.b	nCs4, $04
	smpsFMAlterVol      $EF
	smpsPan             panCenter, $00
	smpsFMAlterVol      $FC
	dc.b	nRst, $08, nEb4, $04
	smpsFMAlterVol      $11
	smpsPan             panRight, $00
	dc.b	nEb4, $04
	smpsFMAlterVol      $EF
	smpsPan             panCenter, $00
	smpsFMAlterVol      $FC
	dc.b	nRst, $08, nE4, $08
	smpsFMAlterVol      $FD
	dc.b	nFs4, $04, nRst, nAb4, $08, smpsNoAttack, $40, smpsNoAttack
	dc.b	$30
	smpsStop

Decision2nd_FM4:
	smpsFMvoice         $00
	smpsPan             panCenter, $00
	dc.b	nRst, $08, nFs4, $02, nRst
	smpsFMAlterVol      $15
	dc.b	nFs4, $04
	smpsFMAlterVol      $E7
	dc.b	nRst, $08, nAb4, $02, nRst
	smpsFMAlterVol      $15
	dc.b	nAb4, $04
	smpsFMAlterVol      $E7
	dc.b	nRst, $08, nA4, $08
	smpsFMAlterVol      $FD
	dc.b	nB4, $04, nRst, nCs5, $08, smpsNoAttack, $40, smpsNoAttack
	dc.b	$30
	smpsStop

Decision2nd_FM5:
	smpsFMvoice         $01
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $08
	smpsCall            Decision2nd_Call1
	smpsStop

Decision2nd_FM6:
	smpsFMvoice         $00
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $08
	smpsCall            Decision2nd_Call2
	smpsStop

Decision2nd_PSG1:
	smpsStop

Decision2nd_PSG2:
	smpsStop

Decision2nd_PSG3:
	smpsPSGform         $E7

Decision2nd_Loop1:
	smpsPSGvoice        cTone_05
	dc.b	nC4, $08
	smpsPSGAlterVol     $03
	smpsPSGvoice        cTone_02
	dc.b	nC4
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $03, Decision2nd_Loop1
	smpsPSGvoice        cTone_05
	dc.b	nC4, $10
	smpsStop

Decision2nd_PWM1:
	dc.b	$96, $08, pKick
	smpsLoop            $00, $03, Decision2nd_PWM1
	dc.b	pKick, $10
	smpsStop

Decision2nd_PWM2:
	dc.b	pSnare, $10
	smpsLoop            $00, $02, Decision2nd_PWM2
	dc.b	pSnare, $0C, $04, nRst, $08, pSnare
	smpsStop

Decision2nd_PWM3:
	dc.b	$96, $20, $18, pCrash, $08
	smpsStop

Decision2nd_PWM4:
	smpsStop

Decision2nd_Voices:
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
