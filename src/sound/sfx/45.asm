Sfx45_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx45_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01
	smpsHeaderSFXChannel cFM6, Sfx45_FM6, $00, $08

Sfx45_FM6:
	smpsFMvoice         $00
	dc.b	nA2, $07, nB2, $09
	smpsStop

Sfx45_Voices:
	; Voice $00
	; $5B
	; $51, $10, $10, $BD,	$35, $53, $42, $33
	; $13, $07, $00, $16,	$26, $05, $00, $00
	; $FF, $6F, $3F, $CF,	$2F, $00, $03, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $03
	smpsVcUnusedBits    $01
	smpsVcDetune        $0B, $01, $01, $05
	smpsVcCoarseFreq    $0D, $00, $00, $01
	smpsVcRateScale     $00, $01, $01, $00
	smpsVcAttackRate    $33, $02, $13, $35
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $16, $00, $07, $13
	smpsVcDecayRate2    $00, $00, $05, $26
	smpsVcDecayLevel    $0C, $03, $06, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $03, $00, $2F
