ReachTheGoal_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     ReachTheGoal_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $3B
	smpsHeaderFM        ReachTheGoal_FM1, $00, $10
	smpsHeaderFM        ReachTheGoal_FM2, $00, $05
	smpsHeaderFM        ReachTheGoal_FM3, $00, $05
	smpsHeaderFM        ReachTheGoal_FM4, $00, $1C
	smpsHeaderFM        ReachTheGoal_FM5, $00, $1C
	smpsHeaderFM        ReachTheGoal_FM6, $0C, $12
	smpsHeaderPSG       ReachTheGoal_PSG1, $F4, $00, $00, cTone_00
	smpsHeaderPSG       ReachTheGoal_PSG2, $F4, $00, $00, cTone_00
	smpsHeaderPSG       ReachTheGoal_PSG3, $00, $00, $00, cTone_00
	smpsHeaderPWM       ReachTheGoal_PWM1, $FF
	smpsHeaderPWM       ReachTheGoal_PWM2, $CC
	smpsHeaderPWM       ReachTheGoal_PWM3, $AA
	smpsHeaderPWM       ReachTheGoal_PWM4, $00

ReachTheGoal_FM1:
	smpsFMvoice         $00
	smpsPan             panCenter, $00
	dc.b	nF2, $03, nRst, nF2, $03, nRst, nRst, $18
	dc.b	nF2, $06, nG2, nRst, $18, nF3, $06, nG2
	dc.b	$0C, nRst, $06, nG2, nG1, $06, nRst, nA1
	dc.b	$0C, smpsNoAttack, $48
	smpsStop

ReachTheGoal_FM2:
	smpsFMvoice         $01
	smpsPan             panCenter, $00
	smpsCall            ReachTheGoal_Call1

ReachTheGoal_Call1:
	dc.b	nE5, $06, nF5, $03, nRst, nE5, $06, nD5
	dc.b	$03, nRst
	smpsFMAlterVol      $07
	dc.b	nD5, $03, nRst
	smpsFMAlterVol      $F9
	dc.b	nC5, $03, nRst
	smpsFMAlterVol      $07
	dc.b	nC5, $03, nRst
	smpsFMAlterVol      $F9
	dc.b	nB4, $03, nRst
	smpsFMAlterVol      $07
	dc.b	nB4, $03, nRst
	smpsFMAlterVol      $F9
	dc.b	nC5, $03, nRst
	smpsFMAlterVol      $07
	dc.b	nC5, $03, nRst
	smpsFMAlterVol      $F9
	dc.b	nD5, $03, nRst
	smpsFMAlterVol      $07
	dc.b	nD5, $03, nRst
	smpsFMAlterVol      $F9
	dc.b	nC5, $03, nRst, nB4, nRst, nC5, nRst, nG4
	dc.b	$06
	smpsFMAlterVol      $07
	dc.b	nG4, $06
	smpsFMAlterVol      $F9
	dc.b	nA4, $54
	smpsStop

ReachTheGoal_FM3:
	smpsFMvoice         $01
	smpsPan             panCenter, $00
	smpsCall            ReachTheGoal_Call2

ReachTheGoal_Call2:
	smpsAlterPitch      $FB
	dc.b	nE5, $06, nF5, $03, nRst, nE5, $06, nD5
	dc.b	$03, nRst
	smpsFMAlterVol      $07
	dc.b	nD5, $03, nRst
	smpsFMAlterVol      $F9
	dc.b	nC5, $03, nRst
	smpsFMAlterVol      $07
	dc.b	nC5, $03, nRst
	smpsFMAlterVol      $F9
	dc.b	nB4, $03, nRst
	smpsFMAlterVol      $07
	dc.b	nB4, $03, nRst
	smpsFMAlterVol      $F9
	dc.b	nC5, $03, nRst
	smpsFMAlterVol      $07
	dc.b	nC5, $03, nRst
	smpsFMAlterVol      $F9
	dc.b	nD5, $03, nRst
	smpsFMAlterVol      $07
	dc.b	nD5, $03, nRst
	smpsFMAlterVol      $F9
	dc.b	nC5, $03, nRst, nB4, nRst, nC5, nRst
	smpsAlterPitch      $05
	dc.b	nD4, $06
	smpsFMAlterVol      $07
	dc.b	nD4, $06
	smpsFMAlterVol      $F9
	dc.b	nCs4, $54
	smpsStop

ReachTheGoal_FM4:
	smpsFMvoice         $01
	smpsPan             panLeft, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $06
	smpsCall            ReachTheGoal_Call1
	smpsStop

ReachTheGoal_FM5:
	smpsFMvoice         $01
	smpsPan             panRight, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $06
	smpsCall            ReachTheGoal_Call2
	smpsStop

ReachTheGoal_FM6:
	smpsFMvoice         $02
	smpsPan             panCenter, $00
	dc.b	nE5, $06, nF5, $03, nRst, nE5, $06, nD5
	dc.b	$03, nRst
	smpsFMAlterVol      $0A
	dc.b	nD5, $03, nRst
	smpsFMAlterVol      $F6
	dc.b	nC5, $03, nRst
	smpsFMAlterVol      $0A
	dc.b	nC5, $03, nRst
	smpsFMAlterVol      $F6
	dc.b	nB4, $03, nRst
	smpsFMAlterVol      $0A
	dc.b	nB4, $03, nRst
	smpsFMAlterVol      $F6
	dc.b	nC5, $03, nRst
	smpsFMAlterVol      $0A
	dc.b	nC5, $03, nRst
	smpsFMAlterVol      $F6
	dc.b	nD5, $03, nRst
	smpsFMAlterVol      $0A
	dc.b	nD5, $03, nRst
	smpsFMAlterVol      $F6
	dc.b	nC5, $03, nRst, nB4, nRst, nC5, nRst, nG4
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	nG4, $06
	smpsFMAlterVol      $F6
	dc.b	nA4, $0C
	smpsStop

ReachTheGoal_PSG1:
	smpsStop

ReachTheGoal_PSG2:
	smpsStop

ReachTheGoal_PSG3:
	smpsStop

ReachTheGoal_PWM1:
	dc.b	pKick, $06, pKick, nRst, $18, pKick, $06, pKick
	dc.b	nRst, $18, pKick, $06, $0C, $06, pKick, $0C
	dc.b	$0C
	smpsStop

ReachTheGoal_PWM2:
	dc.b	$96, $18, pElecSnare, $06, pElecSnare, nRst, $0C, $18
	dc.b	pElecSnare, $06, pElecSnare
	smpsStop

ReachTheGoal_PWM3:
	dc.b	pCrash, $30, nRst, $0C, nRst, $06, pTomHi, $03
	dc.b	$03, pTomHi, $06, pTomMid, pTomLo, pTomLo, pCrash, $0C
	dc.b	$0C
	smpsStop

ReachTheGoal_PWM4:
	smpsStop

ReachTheGoal_Voices:
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

	; Unused data
	dc.b	$06, $05, $04, $10, $1F, $5F, $5F, $5F
	dc.b	$05, $07, $0C, $0C, $17, $17, $12, $18
	dc.b	nFs2, nEb2, nEb2, nEb2, $2D, nRst, nRst, nRst
