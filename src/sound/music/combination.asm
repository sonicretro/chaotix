Combination_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Combination_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $43
	smpsHeaderFM        Combination_FM1, $00, $0D
	smpsHeaderFM        Combination_FM2, $00, $11
	smpsHeaderFM        Combination_FM3, $0C, $0E
	smpsHeaderFM        Combination_FM4, $0C, $0E
	smpsHeaderFM        Combination_FM5, $00, $11
	smpsHeaderFM        Combination_FM6, $00, $11
	smpsHeaderPSG       Combination_PSG1, $F4, $04, $00, cTone_0C
	smpsHeaderPSG       Combination_PSG2, $F4, $03, $00, cTone_0C
	smpsHeaderPSG       Combination_PSG3, $23, $02, $00, cTone_02
	smpsHeaderPWM       Combination_PWM1, $AA
	smpsHeaderPWM       Combination_PWM2, $AA
	smpsHeaderPWM       Combination_PWM3, $99
	smpsHeaderPWM       Combination_PWM4, $61

Combination_FM1:
	smpsFMvoice         $00
	dc.b	nRst, $18, nG1

Combination_Loop1:
	dc.b	nC2, $08, nB1, $04, nC2, $08, nD2, $04
	dc.b	nRst, $08, nE2, $04, nRst, $08, nC2, $04
	dc.b	nRst, $08, nC2, $0C, nB1, $04, nC2, $0C
	dc.b	nD2, nRst, $08, nB1, $04, nC2, $08, nD2
	dc.b	$04, nRst, $08, nE2, $04, nRst, $08, nC2
	dc.b	$04, nRst, $08, nC2, $0C, nB1, $04, nC2
	dc.b	$0C, nD2
	smpsLoop            $00, $08, Combination_Loop1
	smpsJump            Combination_Loop1

Combination_FM2:
	smpsFMvoice         $01
	dc.b	nRst, $30

Combination_Loop2:
	dc.b	nB3, $18
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $18, $0C, nC4, nB3, nA3, $18, nD3
	dc.b	nE3, nG3, nA3, $18
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $18, nG4, $0C, nFs4, nD4, nE4, nB3
	dc.b	nD4, nA3, $3C, nB3, $18
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $18, nG4, $0C, nG4, nG4, nG4, nA4
	dc.b	nE4, nG4, $18, nD4, $0C, nE4, nB3, nA3
	dc.b	$18
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $24, nG4, $18, nFs4, nA4, $0C, nD4
	dc.b	$3C
	smpsLoop            $00, $02, Combination_Loop2
	smpsJump            Combination_Loop2

Combination_FM3:
	smpsFMvoice         $02
	dc.b	nRst, $30, nRst, $60

Combination_Jump1:
	dc.b	nRst, $60, nRst, nRst, $0C, nG4, nFs4, $08
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $14
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $0C, nB3, $08
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $08
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsCall            Combination_Call1
	smpsFMAlterVol      $08
	smpsCall            Combination_Call1
	smpsFMAlterVol      $08
	smpsCall            Combination_Call1
	smpsFMAlterVol      $08
	smpsCall            Combination_Call1
	smpsPan             panCenter, $00
	smpsFMAlterVol      $E8
	smpsAlterPitch      $FE
	smpsCall            Combination_Call1
	smpsFMAlterVol      $08
	smpsCall            Combination_Call1
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F8
	smpsAlterPitch      $02
	smpsFMAlterVol      $02
	dc.b	nA3, $18
	smpsFMAlterVol      $FF
	dc.b	nB3
	smpsFMAlterVol      $FE
	dc.b	nC4
	smpsFMAlterVol      $FF
	dc.b	nD4
	smpsFMAlterVol      $02
	dc.b	nB3, $10
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $14, nRst, $0C, nG4, $08
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $08, nG4, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $08, nRst, $08, nG4, $04, nFs4, $08
	dc.b	nD4, $04, nB3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $04, nG4, $04, nFs4, $08, nD4, $04
	dc.b	nB3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $04, nB3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $04, nB3, nRst, $08, nA3, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $04, nA3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $14
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	dc.b	nRst, $08, nA3, $04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $04, nA3
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $14
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nRst, $0C, nD4, nE4, $08
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG4, $08
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA4, $14
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nB4, $14, nG4, $04, smpsNoAttack, $60
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG4, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG4, smpsNoAttack, $08, nA4, $04, nB4, $08, nD4
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $14
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	dc.b	nRst, $08, nD4, $04
	smpsFMAlterVol      $0A
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	dc.b	nD4
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $14
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	smpsFMAlterVol      $02
	dc.b	nA3, $18
	smpsFMAlterVol      $FF
	dc.b	nB3
	smpsFMAlterVol      $FE
	dc.b	nC4
	smpsFMAlterVol      $FF
	dc.b	nD4
	smpsFMAlterVol      $02
	dc.b	nB3, $5C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsJump            Combination_Jump1

Combination_Call1:
	dc.b	nB3, $10
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $14
	smpsReturn

Combination_FM4:
	smpsFMvoice         $02
	dc.b	nRst, $30, nRst, $60

Combination_Jump2:
	dc.b	nRst, $60, nRst, nRst, $0C, nB3, nA3, $08
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $14
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD3, $0C, nE3, $08
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $08
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsCall            Combination_Call2
	smpsFMAlterVol      $08
	smpsCall            Combination_Call2
	smpsFMAlterVol      $08
	smpsCall            Combination_Call2
	smpsFMAlterVol      $08
	smpsCall            Combination_Call2
	smpsPan             panCenter, $00
	smpsFMAlterVol      $E8
	smpsAlterPitch      $FE
	smpsCall            Combination_Call2
	smpsFMAlterVol      $08
	smpsCall            Combination_Call2
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F8
	smpsAlterPitch      $02
	smpsFMAlterVol      $02
	dc.b	nD3, $18
	smpsFMAlterVol      $FF
	dc.b	nE3
	smpsFMAlterVol      $FE
	dc.b	nG3
	smpsFMAlterVol      $FF
	dc.b	nA3
	smpsFMAlterVol      $02
	dc.b	nE3, $10
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $14, nRst, $0C, nD4, $08
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $08, nD4, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $08, nRst, $08, nG3, $04, nFs3, $08
	dc.b	nD3, $04, nB2, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $04, nG3, $04, nFs3, $08, nD3, $04
	dc.b	nB2, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $04, nB2
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $04, nB2, nRst, $08, nD3, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $04, nD3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $14
	smpsFMAlterVol      $08
	smpsPan             panRight, $00
	dc.b	nRst, $08, nD3, $04
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $04, nD3
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $14
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nRst, $0C, nFs3, nG3, $08
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $08
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC4, $14
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE4, $14, nE4, $04, smpsNoAttack, $60
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE4, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE4
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE4, smpsNoAttack, $08, nFs4, $04, nG4, $08, nB3
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nB3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $14
	smpsFMAlterVol      $08
	smpsPan             panRight, $00
	dc.b	nRst, $08, nA3, $04
	smpsFMAlterVol      $0A
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	dc.b	nA3
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $14
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	smpsFMAlterVol      $02
	dc.b	nD3, $18
	smpsFMAlterVol      $FF
	dc.b	nE3
	smpsFMAlterVol      $FE
	dc.b	nG3
	smpsFMAlterVol      $FF
	dc.b	nA3
	smpsFMAlterVol      $02
	dc.b	nE3, $5C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsJump            Combination_Jump2

Combination_Call2:
	dc.b	nE3, $10
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $14
	smpsReturn

Combination_FM5:
	smpsFMvoice         $01
	dc.b	nRst, $30

Combination_Loop3:
	dc.b	nG3, $18
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nB3, $18, nRst, $0C
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	dc.b	nD4, $0C, nC4, nB3, nA3, $18, nD3, nE3
	dc.b	nG3, $0C
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nFs3, $18
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $18, nRst, $0C
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	dc.b	nG4, $0C, nFs4, nD4, nE4, nB3, nD4, nA3
	dc.b	$30
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nG3, $18
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nB3, $18, nRst, $0C
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	dc.b	nG4, $0C, nG4, nG4, nG4, nA4, nE4, nG4
	dc.b	$18, nD4, $0C, nE4
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nFs3, $18
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $24, nRst, $0C
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	dc.b	nG4, $18, nFs4, nA4, $0C, nD4, $30
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	smpsLoop            $00, $02, Combination_Loop3
	smpsJump            Combination_Loop3

Combination_FM6:
	smpsFMvoice         $01
	dc.b	nRst, $30

Combination_Loop4:
	dc.b	nE3, $18
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $3C, smpsNoAttack, $60, nD3, $18
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nFs3, $3C, smpsNoAttack, $60
	smpsLoop            $00, $04, Combination_Loop4
	smpsJump            Combination_Loop4

Combination_PSG1:
	smpsModSet          $0A, $01, $01, $04
	smpsPSGvoice        cTone_04
	dc.b	nRst, $30

Combination_Loop5:
	dc.b	nB3, $60, smpsNoAttack, $60, nA3, $60, smpsNoAttack, $60
	smpsLoop            $00, $04, Combination_Loop5
	smpsJump            Combination_Loop5

Combination_PSG2:
	smpsModSet          $0A, $01, $02, $02
	smpsPSGvoice        cTone_04
	dc.b	nRst, $30

Combination_Loop6:
	dc.b	nE3, $60, smpsNoAttack, $60, nD3, $60, smpsNoAttack, $60
	smpsLoop            $00, $04, Combination_Loop6
	smpsJump            Combination_Loop6

Combination_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $30

Combination_Loop7:
	smpsCall            Combination_Call3
	smpsLoop            $00, $03, Combination_Loop7
	smpsPSGvoice        cTone_02
	dc.b	nC4, $08, $04, $0C, $08, $04, $08, $04
	dc.b	$08, $04, $08, $04, $0C, $0C
	smpsLoop            $01, $04, Combination_Loop7
	smpsJump            Combination_Loop7

Combination_Call3:
	smpsPSGvoice        cTone_02
	dc.b	nC4, $08, $04, $0C, $08, $04, $08, $04
	dc.b	$08, $04
	smpsPSGvoice        cTone_05
	dc.b	$0C
	smpsPSGvoice        cTone_02
	dc.b	$08, $04, $08, $04
	smpsReturn

Combination_PWM1:
	dc.b	$96, $30

Combination_Loop8:
	dc.b	pElecKick, $18, nRst, $0C, pElecKick, nRst, pElecKick, nRst
	dc.b	$18
	smpsLoop            $00, $10, Combination_Loop8
	smpsJump            Combination_Loop8

Combination_PWM2:
	dc.b	pElecSnare, $0C, $0C, $08, $04
	smpsFMAlterVol      $90
	dc.b	pTomLo, $0C
	smpsFMAlterVol      $70

Combination_Loop9:
	smpsCall            Combination_Call4
	dc.b	nRst, $14, pElecSnare, $04, nRst, $30, pElecSnare, $08
	dc.b	$04
	smpsFMAlterVol      $90
	dc.b	pTomLo, $0C
	smpsFMAlterVol      $70
	smpsCall            Combination_Call4
	dc.b	nRst, $14, pElecSnare, $04, nRst, $18, pElecSnare, $0C
	dc.b	$0C, $08, $04
	smpsFMAlterVol      $90
	dc.b	pTomLo, $0C
	smpsFMAlterVol      $70
	smpsLoop            $00, $02, Combination_Loop9
	smpsJump            Combination_Loop9

Combination_Call4:
	dc.b	nRst, $14, pElecSnare, $04, nRst, $30, pElecSnare, $18
	dc.b	nRst, $14, pElecSnare, $04, nRst, $30, pElecSnare, $14
	dc.b	$04, nRst, $14, pElecSnare, $04, nRst, $30, pElecSnare
	dc.b	$18
	smpsReturn

Combination_PWM3:
	smpsFMAlterVol      $FC
	dc.b	pSplash, $30
	smpsFMAlterVol      $04

Combination_Loop10:
	smpsFMAlterVol      $C0
	dc.b	pCrash, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsFMAlterVol      $FC
	dc.b	pSplash, $60
	smpsFMAlterVol      $04
	dc.b	nRst, nRst, nRst
	smpsLoop            $00, $02, Combination_Loop10
	smpsLoop            $00, $02, Combination_Loop10
	smpsJump            Combination_Loop10

Combination_PWM4:
	dc.b	$96, $30

Combination_Loop11:
	dc.b	nRst, $0C, pElecHiHat
	smpsLoop            $00, $07, Combination_Loop11
	dc.b	smpsNoAttack, $0C, pElecHiHat, $08, $04

Combination_Loop12:
	dc.b	nRst, $0C, pElecHiHat
	smpsLoop            $00, $07, Combination_Loop12
	dc.b	nRst, $0C, pElecHiHat, $04, $04, $04
	smpsLoop            $01, $04, Combination_Loop11
	smpsJump            Combination_Loop11

Combination_Voices:
	; Voice $00
	; $3C
	; $01, $06, $00, $00,	$5F, $5F, $15, $1F
	; $11, $0D, $12, $05,	$07, $14, $09, $02
	; $5D, $5D, $2A, $1F,	$0E, $80, $07, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $06, $01
	smpsVcRateScale     $00, $00, $01, $01
	smpsVcAttackRate    $1F, $15, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $12, $0D, $11
	smpsVcDecayRate2    $02, $09, $14, $07
	smpsVcDecayLevel    $01, $02, $05, $05
	smpsVcReleaseRate   $0F, $0A, $0D, $0D
	smpsVcTotalLevel    $80, $07, $80, $0E

	; Voice $01
	; $3C
	; $43, $08, $73, $54,	$5E, $5E, $5E, $9E
	; $0C, $0C, $08, $08,	$0C, $0C, $15, $15
	; $8F, $9F, $8F, $CF,	$41, $80, $28, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $07, $00, $04
	smpsVcCoarseFreq    $04, $03, $08, $03
	smpsVcRateScale     $02, $01, $01, $01
	smpsVcAttackRate    $1E, $1E, $1E, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $08, $0C, $0C
	smpsVcDecayRate2    $15, $15, $0C, $0C
	smpsVcDecayLevel    $0C, $08, $09, $08
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $28, $80, $41

	; Voice $02
	; $3A
	; $01, $07, $01, $01,	$8E, $8E, $8D, $53
	; $0E, $0E, $0E, $03,	$00, $00, $00, $00
	; $1F, $FF, $1F, $0F,	$17, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $27, $28, $17
