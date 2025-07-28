Sfx2A_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx2A_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01
	smpsHeaderSFXChannel cFM6, Sfx2A_FM6, $00, $00

Sfx2A_FM6:
	smpsFMvoice         $00
	dc.b	nA0, $22
	smpsStop

Sfx2A_Voices:
	; Voice $00
	; $FA
	; $21, $30, $10, $32,	$1F, $1F, $1F, $1F
	; $05, $18, $05, $10,	$0B, $1F, $10, $10
	; $1F, $2F, $4F, $2F,	$0D, $07, $04, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $03
	smpsVcDetune        $03, $01, $03, $02
	smpsVcCoarseFreq    $02, $00, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $05, $18, $05
	smpsVcDecayRate2    $10, $10, $1F, $0B
	smpsVcDecayLevel    $02, $04, $02, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $04, $07, $0D
