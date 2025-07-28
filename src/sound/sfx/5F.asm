Sfx5F_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx5F_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01
	smpsHeaderSFXChannel cFM6, Sfx5F_FM6, $EB, $06

Sfx5F_FM6:
	smpsFMvoice         $00
	smpsFMAlterVol      $05
	dc.b	nF3, $05
	smpsFMAlterVol      $FB
	smpsModSet          $02, $01, $34, $FF
	dc.b	nBb3, $15
	smpsStop

Sfx5F_Voices:
	; Voice $00
	; $0C
	; $08, $08, $08, $08,	$1F, $1F, $1F, $1F
	; $00, $0A, $00, $0A,	$00, $00, $00, $0A
	; $FF, $FF, $FF, $FF,	$55, $81, $33, $81
	smpsVcAlgorithm     $04
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $08, $08, $08, $08
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $00, $0A, $00
	smpsVcDecayRate2    $0A, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $81, $33, $81, $55
