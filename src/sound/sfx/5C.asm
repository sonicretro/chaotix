Sfx5C_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx5C_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02
	smpsHeaderSFXChannel cFM6, Sfx5C_FM6, $0C, $07
	smpsHeaderSFXChannel cFM5, Sfx5C_FM5, $0C, $07

Sfx5C_FM5:
	smpsModSet          $01, $01, $04, $04
	dc.b	nRst, $06
	smpsPan             panLeft, $00

Sfx5C_FM6:
	smpsFMvoice         $00
	dc.b	nC6, $07, nF5, nG5, nB5, nD6, nG5, nA5
	dc.b	nC6, nF6, nE6, nC6, nG5, nF5, nE5, nB4
	dc.b	nC5

Sfx5C_Loop1:
	smpsFMAlterVol      $05
	dc.b	nC5
	smpsLoop            $00, $08, Sfx5C_Loop1
	smpsStop

Sfx5C_Voices:
	; Voice $00
	; $0D
	; $75, $33, $57, $10,	$5F, $5F, $5F, $5F
	; $0C, $0F, $0E, $0B,	$08, $0B, $10, $0C
	; $7F, $4C, $4C, $3C,	$20, $83, $80, $82
	smpsVcAlgorithm     $05
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $05, $03, $07
	smpsVcCoarseFreq    $00, $07, $03, $05
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $0E, $0F, $0C
	smpsVcDecayRate2    $0C, $10, $0B, $08
	smpsVcDecayLevel    $03, $04, $04, $07
	smpsVcReleaseRate   $0C, $0C, $0C, $0F
	smpsVcTotalLevel    $82, $80, $83, $20
