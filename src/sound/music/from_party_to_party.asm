FromPartyToParty_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     FromPartyToParty_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00
	smpsHeaderFM        FromPartyToParty_FM1, $00, $0E
	smpsHeaderFM        FromPartyToParty_FM2, $00, $1B
	smpsHeaderFM        FromPartyToParty_FM3, $FB, $21
	smpsHeaderFM        FromPartyToParty_FM4, $00, $0C
	smpsHeaderFM        FromPartyToParty_FM5, $00, $2B
	smpsHeaderFM        FromPartyToParty_FM6, $00, $0D
	smpsHeaderPSG       FromPartyToParty_PSG1, $F4, $00, $00, cTone_00
	smpsHeaderPSG       FromPartyToParty_PSG2, $F4, $00, $00, cTone_00
	smpsHeaderPSG       FromPartyToParty_PSG3, $23, $00, $00, cTone_00
	smpsHeaderPWM       FromPartyToParty_PWM1, $BB
	smpsHeaderPWM       FromPartyToParty_PWM2, $AB
	smpsHeaderPWM       FromPartyToParty_PWM3, $69
	smpsHeaderPWM       FromPartyToParty_PWM4, $88

FromPartyToParty_FM1:
	smpsFMvoice         $00
	smpsPan             panCenter, $00

FromPartyToParty_Jump1:
	dc.b	nA1, $12, nA2, $06, nRst, nA2, nG2, $0C
	dc.b	nE2, nG2, nD2, $06, nE2, $0C, nAb1, $06
	smpsJump            FromPartyToParty_Jump1

FromPartyToParty_FM2:
	smpsFMvoice         $01
	smpsPan             panCenter, $00

FromPartyToParty_Jump2:
	dc.b	nA3, $06, nCs4, nE4, nG4, nA4, nCs5, nE5
	dc.b	nG5
	smpsFMAlterVol      $F6
	dc.b	nA4, $06, nCs5, nE5, nG5, nA5, nCs6, nE6
	dc.b	nG6
	smpsFMAlterVol      $0A
	smpsJump            FromPartyToParty_Jump2

FromPartyToParty_FM3:
	smpsFMvoice         $01
	smpsPan             panCenter, $00

FromPartyToParty_Jump3:
	dc.b	nA3, $06, nCs4, nE4, nG4, nA4, nCs5, nE5
	dc.b	nG5
	smpsFMAlterVol      $F6
	dc.b	nA4, $06, nCs5, nE5, nG5, nA5, nCs6, nE6
	dc.b	nG6
	smpsFMAlterVol      $0A
	smpsJump            FromPartyToParty_Jump3

FromPartyToParty_FM4:
	smpsFMvoice         $02
	smpsPan             panLeft, $00

FromPartyToParty_Loop1:
	dc.b	nA5, $03, nRst
	smpsFMAlterVol      $0A
	dc.b	nA5, $0C
	smpsFMAlterVol      $F6
	dc.b	nE5, $06
	smpsLoop            $00, $03, FromPartyToParty_Loop1
	dc.b	nA5, $03, nRst
	smpsFMAlterVol      $0A
	dc.b	nA5, $0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE5, $06
	smpsPan             panRight, $00

FromPartyToParty_Loop2:
	dc.b	nA5, $03, nRst
	smpsFMAlterVol      $0A
	dc.b	nA5, $0C
	smpsFMAlterVol      $F6
	dc.b	nE5, $06
	smpsLoop            $00, $03, FromPartyToParty_Loop2
	dc.b	nA5, $03, nRst
	smpsFMAlterVol      $0A
	dc.b	nA5, $0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE5, $06
	smpsPan             panLeft, $00
	smpsJump            FromPartyToParty_Loop1

FromPartyToParty_FM5:
	smpsFMvoice         $01
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $06

FromPartyToParty_Jump4:
	dc.b	nA3, $06, nCs4, nE4, nG4, nA4, nCs5, nE5
	dc.b	nG5
	smpsFMAlterVol      $F6
	dc.b	nA4, $06, nCs5, nE5, nG5, nA5, nCs6, nE6
	dc.b	nG6
	smpsFMAlterVol      $0A
	smpsJump            FromPartyToParty_Jump4

FromPartyToParty_FM6:
	smpsFMvoice         $02
	smpsModSet          $01, $01, $04, $05
	dc.b	nRst, $06
	smpsPan             panLeft, $00

FromPartyToParty_Loop3:
	dc.b	nA5, $03, nRst
	smpsFMAlterVol      $0A
	dc.b	nA5, $0C
	smpsFMAlterVol      $F6
	dc.b	nE5, $06
	smpsLoop            $00, $03, FromPartyToParty_Loop3
	dc.b	nA5, $03, nRst
	smpsFMAlterVol      $0A
	dc.b	nA5, $0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE5, $06
	smpsPan             panRight, $00

FromPartyToParty_Loop4:
	dc.b	nA5, $03, nRst
	smpsFMAlterVol      $0A
	dc.b	nA5, $0C
	smpsFMAlterVol      $F6
	dc.b	nE5, $06
	smpsLoop            $00, $03, FromPartyToParty_Loop4
	dc.b	nA5, $03, nRst
	smpsFMAlterVol      $0A
	dc.b	nA5, $0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE5, $06
	smpsPan             panLeft, $00
	smpsJump            FromPartyToParty_Loop3

FromPartyToParty_PSG1:
	smpsStop

FromPartyToParty_PSG2:
	smpsStop

FromPartyToParty_PSG3:
	smpsPSGvoice        cTone_02
	smpsPSGform         $E7

FromPartyToParty_Jump5:
	dc.b	nC4, $06
	smpsPSGAlterVol     $03
	dc.b	nC4, $06
	smpsPSGAlterVol     $FE
	dc.b	nC4, $06
	smpsPSGAlterVol     $02
	dc.b	nC4, $06
	smpsPSGAlterVol     $FD
	smpsJump            FromPartyToParty_Jump5

FromPartyToParty_PWM1:
	dc.b	pKick, $12, $06
	smpsJump            FromPartyToParty_PWM1

FromPartyToParty_PWM2:
	dc.b	$96, $0C, pElecSnare
	smpsJump            FromPartyToParty_PWM2

FromPartyToParty_PWM3:
	dc.b	pSnap, $0C
	smpsFMAlterVol      $AB
	dc.b	pBell, $09, nRst, $03
	smpsFMAlterVol      $55
	smpsJump            FromPartyToParty_PWM3

FromPartyToParty_PWM4:
	dc.b	$96, $0C
	smpsFMAlterVol      $A0
	dc.b	pClickHi, $0C
	smpsFMAlterVol      $60
	dc.b	nRst, $0C
	smpsFMAlterVol      $FA
	dc.b	pClickLo, $06, pClickLo
	smpsFMAlterVol      $06
	smpsJump            FromPartyToParty_PWM4

FromPartyToParty_Voices:
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

	; Voice $02
	; $3A
	; $11, $12, $51, $31,	$1E, $19, $14, $14
	; $08, $0A, $0A, $05,	$08, $08, $05, $05
	; $35, $46, $36, $57,	$19, $1E, $28, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $05, $01, $01
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $14, $19, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $0A, $0A, $08
	smpsVcDecayRate2    $05, $05, $08, $08
	smpsVcDecayLevel    $05, $03, $04, $03
	smpsVcReleaseRate   $07, $06, $06, $05
	smpsVcTotalLevel    $80, $28, $1E, $19
