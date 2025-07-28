Sfx3B_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx3B_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $03
	smpsHeaderSFXChannel cFM6, Sfx3B_FM6, $00, $03
	smpsHeaderSFXChannel cFM5, Sfx3B_FM5, $DF, $00
	smpsHeaderSFXChannel cPSG3, Sfx3B_PSG3, $20, $00

Sfx3B_FM5:
	dc.b	nRst, $03

Sfx3B_FM6:
	smpsFMvoice         $00
	smpsModSet          $01, $01, $20, $02
	dc.b	nEb0, $06, nC0, $05

Sfx3B_Loop1:
	smpsFMAlterVol      $03
	dc.b	nEb0, $04
	smpsLoop            $00, $10, Sfx3B_Loop1
	smpsStop

Sfx3B_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        cTone_05
	smpsModSet          $01, $01, $10, $03

Sfx3B_Loop2:
	dc.b	nE4, $02
	smpsPSGAlterVol     $03
	smpsLoop            $00, $05, Sfx3B_Loop2
	smpsStop

Sfx3B_Voices:
	; Voice $00
	; $3A
	; $51, $01, $00, $20,	$FF, $FF, $FF, $FC
	; $00, $00, $00, $0A,	$10, $00, $00, $10
	; $FF, $0F, $FF, $FF,	$0D, $0A, $1D, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $00, $00, $05
	smpsVcCoarseFreq    $00, $00, $01, $01
	smpsVcRateScale     $03, $03, $03, $03
	smpsVcAttackRate    $3C, $3F, $3F, $3F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $00, $00, $00
	smpsVcDecayRate2    $10, $00, $00, $10
	smpsVcDecayLevel    $0F, $0F, $00, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1D, $0A, $0D
