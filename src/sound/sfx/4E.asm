Sfx4E_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx4E_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01
	smpsHeaderSFXChannel cFM6, Sfx4E_FM6, $FB, $05

Sfx4E_FM6:
	smpsFMvoice         $00
	smpsModSet          $01, $01, $03, $00
	dc.b	nA2, $13
	smpsModSet          $01, $01, $0D, $01

Sfx4E_Jump1:
	dc.b	nA2, $08
	smpsJump            Sfx4E_Jump1

Sfx4E_Voices:
	; Voice $00
	; $83
	; $1F, $17, $1F, $1F,	$1F, $13, $18, $16
	; $00, $00, $00, $01,	$02, $02, $02, $00
	; $2F, $2F, $FF, $3F,	$08, $18, $01, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $00
	smpsVcUnusedBits    $02
	smpsVcDetune        $01, $01, $01, $01
	smpsVcCoarseFreq    $0F, $0F, $07, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $16, $18, $13, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $00, $00, $00
	smpsVcDecayRate2    $00, $02, $02, $02
	smpsVcDecayLevel    $03, $0F, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $01, $18, $08
