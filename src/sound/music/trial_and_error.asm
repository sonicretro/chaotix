TrialAndError_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     TrialAndError_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $22
	smpsHeaderFM        TrialAndError_FM1, $00, $0C
	smpsHeaderFM        TrialAndError_FM2, $0C, $16
	smpsHeaderFM        TrialAndError_FM3, $0C, $14
	smpsHeaderFM        TrialAndError_FM4, $0C, $0D
	smpsHeaderFM        TrialAndError_FM5, $0C, $0D
	smpsHeaderFM        TrialAndError_FM6, $00, $10
	smpsHeaderPSG       TrialAndError_PSG1, $F4, $01, $00, cTone_0C
	smpsHeaderPSG       TrialAndError_PSG2, $F4, $04, $00, cTone_0C
	smpsHeaderPSG       TrialAndError_PSG3, $23, $01, $00, cTone_02
	smpsHeaderPWM       TrialAndError_PWM1, $AA
	smpsHeaderPWM       TrialAndError_PWM2, $99
	smpsHeaderPWM       TrialAndError_PWM3, $AA
	smpsHeaderPWM       TrialAndError_PWM4, $AA

TrialAndError_FM1:
	smpsFMvoice         $00
	dc.b	nB2, $06, nRst
	smpsModSet          $03, $01, $FB, $00
	dc.b	nB1, $18
	smpsModSet          $00, $00, $00, $00

TrialAndError_Loop1:
	smpsCall            TrialAndError_Call1
	smpsLoop            $00, $08, TrialAndError_Loop1

TrialAndError_Loop2:
	dc.b	nE3, $06, nE1, $0C, nE2, $06, nE2, nRst
	dc.b	nE1, $12, nE2, $06, nE2, nRst, nE1, $06
	dc.b	nE1, $0C, nE2, $06, nE2, nRst, nRst, nE1
	dc.b	$0C, nE2, $06, nE2, nRst
	smpsLoop            $00, $03, TrialAndError_Loop2
	dc.b	nE3, $06, nE1, $0C, nE2, $06, nE2, nRst
	dc.b	nE1, $12, nE2, $06, nE2, nRst, nE1, $06
	dc.b	nE1, $0C, nE2, $06, nE2, nRst, nF1, $0C
	dc.b	nF1, nF1
	smpsJump            TrialAndError_Loop1

TrialAndError_Call1:
	dc.b	nE1, $06, $0C, nE2, $06, nRst, nE2, nD1
	dc.b	nE1, nG1, $12, nG2, $06, nG1, nA1, $0C
	dc.b	nA2, $06, nRst, nB2, nRst, $12, nB2, $06
	dc.b	nA1, nB1
	smpsReturn

TrialAndError_FM2:
	smpsFMvoice         $01
	smpsPan             panLeft, $00
	dc.b	nRst, $24

TrialAndError_Loop3:
	smpsCall            TrialAndError_Call2
	smpsLoop            $00, $03, TrialAndError_Loop3
	dc.b	nD3, $06, nRst, $0C, nCs3, $06, nD3, $04
	dc.b	nE3, nD3, nCs3, $06, nB2, nE3, nD3, nCs3
	dc.b	nB2, nD3, $04, nCs3, nD3, nE3, $06, nD3
	dc.b	nCs3, nE3, nRst, $24

TrialAndError_Loop4:
	smpsCall            TrialAndError_Call2
	smpsLoop            $00, $04, TrialAndError_Loop4
	smpsAlterPitch      $0C
	smpsCall            TrialAndError_Call3
	smpsAlterPitch      $F4
	smpsJump            TrialAndError_Loop3

TrialAndError_Call2:
	dc.b	nD3, $06, nRst, $0C, nCs3, $06, nD3, $04
	dc.b	nE3, nD3, nCs3, $06, nB2, nE3, nD3, nCs3
	dc.b	nB2, nD3, $04, nCs3, nD3, nE3, $06, nD3
	dc.b	nCs3, nE3, nRst, $18, nD3, $06, nE3
	smpsReturn

TrialAndError_Call3:
	dc.b	nB2, $0C, nE3, nAb3, $06, nB3, nAb3, nG3
	dc.b	nFs3, nB3, nFs3, nF3, nE3, nB3, nE3, nEb3
	dc.b	nD3, nB3, nD3, nCs3, nC3, nBb2, nRst, nBb2
	dc.b	nB2, $0C, nE3, nAb3, $06, nB3, nAb3, nG3
	dc.b	nFs3, nB3, nFs3, nF3, nE3, nB3, nE3, nEb3
	dc.b	nD3, nB3, nD3, nCs3, nB2, nE3, nRst, nE3
	dc.b	nD3, $0C, nG3, nB3, $06, nD4, nB3, nBb3
	dc.b	nA3, nD4, nA3, nAb3, nG3, nD4, nG3, nFs3
	dc.b	nF3, nD4, nF3, nE3, nEb3, nD3, nRst, nD3
	dc.b	nE3, $0C, nAb3, nE4, $06, nEb4, nD4, nCs4
	dc.b	nC4, nB3, nG3, nF3, smpsNoAttack, $06, nC4, nB3
	dc.b	nG3, nF3, $0C, smpsNoAttack, $24
	smpsReturn

TrialAndError_FM3:
	smpsFMvoice         $01
	smpsPan             panRight, $00
	dc.b	nRst, $24

TrialAndError_Loop5:
	smpsCall            TrialAndError_Call4
	smpsLoop            $00, $03, TrialAndError_Loop5
	dc.b	nA2, $06, nRst, $0C, nAb2, $06, nA2, $04
	dc.b	nB2, nA2, nAb2, $06, nFs2, nB2, nA2, nAb2
	dc.b	nFs2, nA2, $04, nAb2, nA2, nB2, $06, nA2
	dc.b	nAb2, nB2, nRst, $24

TrialAndError_Loop6:
	smpsCall            TrialAndError_Call4
	smpsLoop            $00, $04, TrialAndError_Loop6
	smpsCall            TrialAndError_Call3
	smpsJump            TrialAndError_Loop5

TrialAndError_Call4:
	dc.b	nA2, $06, nRst, $0C, nAb2, $06, nA2, $04
	dc.b	nB2, nA2, nAb2, $06, nFs2, nB2, nA2, nAb2
	dc.b	nFs2, nA2, $04, nAb2, nA2, nB2, $06, nA2
	dc.b	nAb2, nB2, nRst, $18, nA2, $06, nB2
	smpsReturn

TrialAndError_FM4:
	smpsFMvoice         $03
	dc.b	nRst, $24
	smpsCall            TrialAndError_Call5

TrialAndError_Jump1:
	dc.b	nE4, $12, nEb4, nD4, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $06, nD4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, nE4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $1E
	smpsCall            TrialAndError_Call5
	dc.b	nRst, $12, nE4, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $06, nRst, $24, nRst, $06, nD4, $05
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $05
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $05
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $05
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $05
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $05
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $05
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $05
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $05
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $06, nE4, nRst, $48, nRst, $24, nRst
	dc.b	$0C, nD4, $06, nE4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nRst, $48, nRst, $06, nD4, $05
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $05
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $05
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $05
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $05
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $05
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $05
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $05
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $05
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $06, nE4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $42, nD4, $06, nE4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $12, nA3, $06, nAb3, nE3, nD3, $12
	dc.b	smpsNoAttack, $24, smpsNoAttack, $0C, nC4, $06, nB3, nG3
	dc.b	nF3, smpsNoAttack, $24, nE4, $05
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE4, $05
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE4, $05
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE4, $05
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE4, $05
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE4, $06, nE4, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $12, nRst, $18, nD4, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, nE4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $06, nRst, $24, nD4, $06, nE4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $12, nRst, $1E, nD4, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, nD4, nE4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $1E, nRst, $06, nD4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE4
	smpsFMAlterVol      $0A
	smpsPan             panCenter, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nRst, $18, nD4, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, nE4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $06, nRst, $24
	smpsJump            TrialAndError_Jump1

TrialAndError_Call5:
	dc.b	nRst, $06, nD4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE4
	smpsFMAlterVol      $0A
	smpsPan             panCenter, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nRst, $18, nD4, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, nE4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $06, nRst, $24, nD4, $06, nE4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $12, nRst, $1E, nD4, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, nD4, nE4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $1E, nRst, $06, nD4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE4
	smpsFMAlterVol      $0A
	smpsPan             panCenter, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nRst, $18, nD4, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, nE4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $06, nRst, $24
	smpsReturn

TrialAndError_FM5:
	smpsFMvoice         $03
	dc.b	nRst, $24
	smpsCall            TrialAndError_Call6

TrialAndError_Jump2:
	dc.b	nB3, $12, nBb3, nA3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $06, nA3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, nB3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $1E
	smpsCall            TrialAndError_Call6
	dc.b	nRst, $12, nB3, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $06, nRst, $24, nRst, $06, nA3, $05
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $05
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $05
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $05
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $05
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $05
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $05
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $05
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $05
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $06, nB3, nRst, $48, nRst, $24, nRst
	dc.b	$0C, nA3, $06, nB3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nRst, $48, nRst, $06, nA3, $05
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $05
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $05
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $05
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $05
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $05
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $05
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $05
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $05
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $06, nB3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $42, nA3, $06, nB3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $12, nE3, $06, nEb3, nB2, nAb2, $12
	dc.b	smpsNoAttack, $24, smpsNoAttack, $0C, nG3, $06, nFs3, nD3
	dc.b	nC3, smpsNoAttack, $24, nA3, $05
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $05
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $05
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $05
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $05
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $06, nB3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $12, nRst, $18, nA3, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, nB3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $06, nRst, $24, nA3, $06, nB3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $12, nRst, $1E, nA3, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, nA3, nB3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $1E, nRst, $06, nA3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nB3
	smpsFMAlterVol      $0A
	smpsPan             panCenter, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nRst, $18, nA3, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, nB3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $06, nRst, $24
	smpsJump            TrialAndError_Jump2

TrialAndError_Call6:
	dc.b	nRst, $06, nA3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nB3
	smpsFMAlterVol      $0A
	smpsPan             panCenter, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nRst, $18, nA3, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, nB3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $06, nRst, $24, nA3, $06, nB3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $12, nRst, $1E, nA3, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, nA3, nB3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $1E, nRst, $06, nA3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nB3
	smpsFMAlterVol      $0A
	smpsPan             panCenter, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nRst, $18, nA3, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, nB3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $06, nRst, $24
	smpsReturn

TrialAndError_FM6:
	smpsFMvoice         $02
	dc.b	nRst, $24

TrialAndError_Jump3:
	smpsCall            TrialAndError_Call7
	smpsCall            TrialAndError_Call9
	smpsCall            TrialAndError_Call7
	smpsCall            TrialAndError_Call8
	dc.b	nRst, $0C, nB1, nD2, $06, nE2, nRst, $24
	smpsCall            TrialAndError_Call7
	smpsCall            TrialAndError_Call9
	smpsCall            TrialAndError_Call7
	smpsCall            TrialAndError_Call9
	smpsAlterPitch      $F4
	smpsCall            TrialAndError_Call3
	smpsAlterPitch      $0C
	smpsJump            TrialAndError_Jump3

TrialAndError_Call8:
	dc.b	nE2, $12, nAb2, $06, nRst, $0C, nA2, nB2
	dc.b	nRst
	smpsReturn

TrialAndError_Call7:
	smpsCall            TrialAndError_Call8
	dc.b	nRst, $0C, nB1, nD2, nE2, nA2, $12, nAb2
	dc.b	$06
	smpsReturn

TrialAndError_Call9:
	smpsCall            TrialAndError_Call8
	dc.b	nRst, $0C, nB1, nD2, nE2, nA2, nAb2
	smpsReturn

TrialAndError_PSG1:
	smpsPSGvoice        cTone_04

TrialAndError_Jump4:
	dc.b	nRst, $24

TrialAndError_Loop7:
	smpsCall            TrialAndError_Call10
	smpsLoop            $00, $03, TrialAndError_Loop7
	dc.b	nB3, $0C, nD4, $06, nRst, nE4, nRst, nFs4
	dc.b	nRst, nA4, $12, nAb4, $06, smpsNoAttack, $0C, nD4
	dc.b	nEb4, $06, nE4, nRst, $24

TrialAndError_Loop8:
	smpsCall            TrialAndError_Call10
	smpsLoop            $00, $04, TrialAndError_Loop8
	smpsAlterPitch      $0C
	smpsCall            TrialAndError_Call3
	smpsAlterPitch      $F4
	smpsJump            TrialAndError_Loop7

TrialAndError_Call10:
	dc.b	nB3, $0C, nD4, $06, nRst, nE4, nRst, nFs4
	dc.b	nRst, nA4, $12, nAb4, $06, smpsNoAttack, $0C, nD4
	dc.b	nE4, $06, nB4, nA4, nAb4, nE4, nD4, nAb3
	dc.b	nA3
	smpsReturn

TrialAndError_PSG2:
	smpsModSet          $01, $01, $01, $04
	smpsPSGvoice        cTone_04
	dc.b	nRst, $06
	smpsJump            TrialAndError_Jump4

	; Unused data
	smpsStop

TrialAndError_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        cTone_02
	dc.b	nRst, $24

TrialAndError_Loop9:
	dc.b	nC4, $0C
	smpsLoop            $00, $2D, TrialAndError_Loop9
	dc.b	nRst, $24

TrialAndError_Loop10:
	dc.b	nC4, $0C
	smpsLoop            $00, $60, TrialAndError_Loop10
	smpsJump            TrialAndError_Loop9

TrialAndError_PWM1:
	dc.b	pElecKick, $0C, $18

TrialAndError_Loop11:
	smpsCall            TrialAndError_Call11
	smpsLoop            $00, $03, TrialAndError_Loop11
	dc.b	pElecKick, $06, $06, nRst, $0C, pElecKick, pElecKick, $0C
	dc.b	$18, pElecKick, $06, $06, nRst, $0C, pElecKick, nRst
	dc.b	$24

TrialAndError_Loop12:
	smpsCall            TrialAndError_Call11
	smpsLoop            $00, $08, TrialAndError_Loop12
	smpsJump            TrialAndError_Loop11

TrialAndError_Call11:
	dc.b	pElecKick, $06, $06, nRst, $0C, pElecKick, pElecKick, $0C
	dc.b	$18, pElecKick, $06, $06, nRst, $0C, pElecKick, nRst
	dc.b	$06, pElecKick, nRst, $0C, pElecKick, $0C
	smpsReturn

TrialAndError_PWM2:
	dc.b	nRst, $0C, pElecSnare, $06, pElecSnare, pElecSnare, pElecSnare

TrialAndError_Loop13:
	smpsCall            TrialAndError_Call12
	smpsLoop            $00, $03, TrialAndError_Loop13
	dc.b	nRst, $06
	smpsFMAlterVol      $F9
	dc.b	pTomHi
	smpsFMAlterVol      $07
	dc.b	pTomMid, pElecSnare, nRst, $0C, nRst, $18, pElecSnare, $0C
	smpsFMAlterVol      $F9
	dc.b	pTomHi, $06
	smpsFMAlterVol      $07
	dc.b	pTomMid
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	dc.b	pElecSnare, nRst, $0C, nRst, $24

TrialAndError_Loop14:
	smpsCall            TrialAndError_Call12
	smpsLoop            $00, $03, TrialAndError_Loop14
	dc.b	pElecSnare, $06
	smpsFMAlterVol      $90
	dc.b	pTomLo, $0C
	smpsFMAlterVol      $70
	dc.b	pElecSnare, $06, nRst, $0C, nRst, $18, pElecSnare, $0C
	smpsFMAlterVol      $F9
	dc.b	pTomHi, $06
	smpsFMAlterVol      $07
	dc.b	pTomMid
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	dc.b	pElecSnare, nRst, $0C, nRst, $12, pElecSnare

TrialAndError_Loop15:
	smpsCall            TrialAndError_Call12
	smpsLoop            $00, $04, TrialAndError_Loop15
	smpsJump            TrialAndError_Loop13

TrialAndError_Call12:
	dc.b	nRst, $06
	smpsFMAlterVol      $F9
	dc.b	pTomHi
	smpsFMAlterVol      $07
	dc.b	pTomMid, pElecSnare, nRst, $0C, nRst, $18, pElecSnare, $0C
	smpsFMAlterVol      $F9
	dc.b	pTomHi, $06
	smpsFMAlterVol      $07
	dc.b	pTomMid
	smpsFMAlterVol      $90
	dc.b	pTomLo
	smpsFMAlterVol      $70
	dc.b	pElecSnare, nRst, $0C, nRst, $12, pElecSnare
	smpsReturn

TrialAndError_PWM3:
	smpsFMAlterVol      $90
	dc.b	pCrash, $0C
	smpsFMAlterVol      $70
	smpsFMAlterVol      $F9
	dc.b	pSplash, $18
	smpsFMAlterVol      $07

TrialAndError_Jump5:
	smpsFMAlterVol      $90
	dc.b	pCrash, $24
	smpsFMAlterVol      $70
	smpsFMAlterVol      $D0
	dc.b	pRideBell, $18, $18, $18, $18, $0C
	smpsFMAlterVol      $30
	smpsFMAlterVol      $F9
	dc.b	pSplash, $24
	smpsFMAlterVol      $07
	smpsFMAlterVol      $D0
	dc.b	pRideBell, $18, $18, $18, $18, $0C
	smpsFMAlterVol      $30
	smpsFMAlterVol      $90
	dc.b	pCrash, $24
	smpsFMAlterVol      $70
	smpsFMAlterVol      $D0
	dc.b	pRideBell, $18, $18, $18, $18, $0C
	smpsFMAlterVol      $30
	smpsFMAlterVol      $F9
	dc.b	pSplash, $12
	smpsFMAlterVol      $07
	smpsFMAlterVol      $90
	dc.b	pCrash
	smpsFMAlterVol      $70
	smpsFMAlterVol      $F9
	dc.b	pSplash, $18
	smpsFMAlterVol      $07
	smpsFMAlterVol      $D0
	dc.b	pRideBell, pRideBell, nRst, $24
	smpsFMAlterVol      $30
	smpsFMAlterVol      $90
	dc.b	pCrash, $24
	smpsFMAlterVol      $70
	smpsFMAlterVol      $D0
	dc.b	pRideBell, $18, $18, $18, $18, $0C
	smpsFMAlterVol      $30
	smpsFMAlterVol      $F9
	dc.b	pSplash, $24
	smpsFMAlterVol      $07
	smpsFMAlterVol      $D0
	dc.b	pRideBell, $18, $18, $18, $18, $0C
	smpsFMAlterVol      $30
	smpsFMAlterVol      $90
	dc.b	pCrash, $24
	smpsFMAlterVol      $70
	smpsFMAlterVol      $D0
	dc.b	pRideBell, $18, $18, $18, $18, $0C
	smpsFMAlterVol      $30
	dc.b	nRst, $12
	smpsFMAlterVol      $F9
	dc.b	pSplash, $12
	smpsFMAlterVol      $07
	smpsFMAlterVol      $D0
	dc.b	pRideBell, $18, $18, $18, $18, $0C
	smpsFMAlterVol      $30

TrialAndError_Loop16:
	smpsFMAlterVol      $90
	dc.b	pCrash, $24
	smpsFMAlterVol      $70
	smpsFMAlterVol      $D0
	dc.b	pRideBell, $18, $18, $18, $18, $0C
	smpsFMAlterVol      $30
	smpsFMAlterVol      $F9
	dc.b	pSplash, $24
	smpsFMAlterVol      $07
	smpsFMAlterVol      $D0
	dc.b	pRideBell, $18, $18, $18, $18, $0C
	smpsFMAlterVol      $30
	smpsLoop            $00, $02, TrialAndError_Loop16
	smpsJump            TrialAndError_Jump5

TrialAndError_PWM4:
	dc.b	nRst, $0C
	smpsFMAlterVol      $FA
	dc.b	pClap, $06, $06, $06, $06
	smpsFMAlterVol      $06

TrialAndError_Loop17:
	smpsFMAlterVol      $9E
	dc.b	pCowbell, $18, $18, $18, $18, $18
	smpsFMAlterVol      $62
	smpsFMAlterVol      $FA
	dc.b	pClap, $06, $06, $06, $06
	smpsFMAlterVol      $06
	smpsLoop            $00, $0C, TrialAndError_Loop17
	smpsJump            TrialAndError_Loop17

TrialAndError_Voices:
	; Voice $00
	; $3B
	; $58, $31, $04, $02,	$DF, $9F, $9F, $9F
	; $14, $08, $0E, $07,	$10, $0E, $0F, $07
	; $6F, $7F, $3F, $8F,	$05, $14, $18, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $03, $05
	smpsVcCoarseFreq    $02, $04, $01, $08
	smpsVcRateScale     $02, $02, $02, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $0E, $08, $14
	smpsVcDecayRate2    $07, $0F, $0E, $10
	smpsVcDecayLevel    $08, $03, $07, $06
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $18, $14, $05

	; Voice $01
	; $74
	; $39, $30, $53, $51,	$5F, $9D, $5F, $7F
	; $0F, $03, $10, $09,	$0A, $09, $08, $06
	; $3F, $5F, $5F, $1F,	$16, $80, $15, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $01
	smpsVcDetune        $05, $05, $03, $03
	smpsVcCoarseFreq    $01, $03, $00, $09
	smpsVcRateScale     $01, $01, $02, $01
	smpsVcAttackRate    $3F, $1F, $1D, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $10, $03, $0F
	smpsVcDecayRate2    $06, $08, $09, $0A
	smpsVcDecayLevel    $01, $05, $05, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $15, $80, $16

	; Voice $02
	; $3B
	; $11, $05, $31, $02,	$1D, $15, $15, $1F
	; $06, $04, $08, $0C,	$0E, $0A, $0A, $0B
	; $7F, $9F, $7F, $9F,	$16, $20, $19, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $01
	smpsVcCoarseFreq    $02, $01, $05, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $15, $15, $1D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $08, $04, $06
	smpsVcDecayRate2    $0B, $0A, $0A, $0E
	smpsVcDecayLevel    $09, $07, $09, $07
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $19, $20, $16

	; Voice $03
	; $3A
	; $02, $09, $01, $02,	$8E, $8E, $8D, $55
	; $0E, $0E, $0E, $04,	$00, $00, $00, $09
	; $1F, $FF, $3F, $4F,	$16, $29, $1E, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $09, $02
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $15, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $0E, $0E, $0E
	smpsVcDecayRate2    $09, $00, $00, $00
	smpsVcDecayLevel    $04, $03, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1E, $29, $16
