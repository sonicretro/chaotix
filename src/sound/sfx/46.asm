Sfx46_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx46_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $03
	smpsHeaderSFXChannel cFM6, Sfx46_FM6, $00, $00
	smpsHeaderSFXChannel cFM5, Sfx46_FM5, $00, $00
	smpsHeaderSFXChannel cFM4, Sfx46_FM4, $00, $05

Sfx46_FM6:
	smpsFMvoice         $00
	smpsPan             panLeft, $00

Sfx46_Loop1:
	dc.b	nA7, $04, nFs7, nEb7, nC7
	smpsAlterPitch      $F4
	smpsFMAlterVol      $06
	smpsLoop            $00, $06, Sfx46_Loop1
	smpsStop

Sfx46_FM5:
	smpsFMvoice         $00
	smpsPan             panRight, $00
	dc.b	nRst, $02
	smpsJump            Sfx46_Loop1

Sfx46_FM4:
	smpsFMvoice         $01
	smpsModSet          $01, $01, $0D, $02
	dc.b	nC2, $08
	smpsFMAlterVol      $03
	smpsLoop            $00, $0C, Sfx46_FM4
	smpsStop

Sfx46_Voices:
	; Voice $00
	; $3B
	; $05, $04, $01, $02,	$AF, $5D, $5D, $5E
	; $0D, $0E, $13, $08,	$05, $05, $14, $19
	; $9F, $FF, $FF, $EF,	$18, $20, $18, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $04, $05
	smpsVcRateScale     $01, $01, $01, $02
	smpsVcAttackRate    $1E, $1D, $1D, $2F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $13, $0E, $0D
	smpsVcDecayRate2    $19, $14, $05, $05
	smpsVcDecayLevel    $0E, $0F, $0F, $09
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $18, $20, $18

	; Voice $01
	; $18
	; $37, $30, $30, $31,	$9E, $DC, $1C, $9C
	; $0D, $06, $04, $01,	$08, $0A, $03, $05
	; $BF, $BF, $3F, $2F,	$2C, $20, $0A, $88
	smpsVcAlgorithm     $00
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $00, $07
	smpsVcRateScale     $02, $00, $03, $02
	smpsVcAttackRate    $1C, $1C, $1C, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $04, $06, $0D
	smpsVcDecayRate2    $05, $03, $0A, $08
	smpsVcDecayLevel    $02, $03, $0B, $0B
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $88, $0A, $20, $2C
