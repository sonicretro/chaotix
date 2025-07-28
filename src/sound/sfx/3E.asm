Sfx3E_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx3E_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02
	smpsHeaderSFXChannel cFM6, Sfx3E_FM6, $00, $0A
	smpsHeaderSFXChannel cFM5, Sfx3E_FM5, $00, $0A

Sfx3E_FM5:
	dc.b	nRst, $01
	smpsPitchSlideSpeed $FE

Sfx3E_FM6:
	smpsFMvoice         $00
	smpsModSet          $01, $01, $EB, $00
	dc.b	nCs7, $02, nB6, $0A
	smpsStop

Sfx3E_Voices:
	; Voice $00
	; $04
	; $01, $01, $01, $01,	$1F, $1F, $1F, $1F
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$28, $80, $28, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $28, $80, $28
