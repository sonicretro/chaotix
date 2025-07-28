Sfx3C_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx3C_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02
	smpsHeaderSFXChannel cFM6, Sfx3C_FM6, $00, $04
	smpsHeaderSFXChannel cPSG3, Sfx3C_PSG3, $00, $00

Sfx3C_FM6:
	smpsFMvoice         $00
	smpsModSet          $01, $01, $C5, $1A
	dc.b	nE6, $0F
	smpsStop

Sfx3C_PSG3:
	smpsPSGvoice        cTone_0D
	dc.b	nRst, $06
	smpsModSet          $01, $02, $05, $FF
	smpsPSGform         $E7
	dc.b	nE6, $4F
	smpsStop

Sfx3C_Voices:
	; Voice $00
	; $3D
	; $09, $03, $00, $00,	$1F, $1F, $1F, $1F
	; $10, $0C, $0C, $0C,	$0B, $1F, $10, $05
	; $1F, $2F, $4F, $2F,	$09, $84, $92, $8E
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $03, $09
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0C, $0C, $10
	smpsVcDecayRate2    $05, $10, $1F, $0B
	smpsVcDecayLevel    $02, $04, $02, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $8E, $92, $84, $09
