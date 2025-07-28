Sfx5A_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx5A_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01
	smpsHeaderSFXChannel cFM6, Sfx5A_FM6, $00, $16

Sfx5A_FM6:
	smpsModSet          $01, $01, $2B, $00
	smpsFMvoice         $00

Sfx5A_Loop1:
	dc.b	nA2, $06, nCs3, $06
	smpsFMAlterVol      $FA
	smpsAlterPitch      $01
	smpsLoop            $00, $03, Sfx5A_Loop1
	smpsStop

Sfx5A_Voices:
	; Voice $00
	; $3D
	; $13, $0A, $10, $31,	$4C, $0A, $50, $11
	; $08, $05, $01, $02,	$01, $00, $00, $00
	; $2C, $2C, $2C, $1C,	$1E, $80, $86, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $01, $00, $01
	smpsVcCoarseFreq    $01, $00, $0A, $03
	smpsVcRateScale     $00, $01, $00, $01
	smpsVcAttackRate    $11, $10, $0A, $0C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $01, $05, $08
	smpsVcDecayRate2    $00, $00, $00, $01
	smpsVcDecayLevel    $01, $02, $02, $02
	smpsVcReleaseRate   $0C, $0C, $0C, $0C
	smpsVcTotalLevel    $80, $86, $80, $1E
