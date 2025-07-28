Sfx6E_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx6E_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01
	smpsHeaderSFXChannel cFM6, Sfx6E_FM6, $00, $05

Sfx6E_FM6:
	smpsFMvoice         $00
	smpsModSet          $01, $01, $10, $00
	dc.b	nE4, $12

Sfx6E_Jump1:
	dc.b	nBb4, $06
	smpsJump            Sfx6E_Jump1

Sfx6E_Voices:
	; Voice $00
	; $74
	; $33, $32, $34, $31,	$79, $4B, $8A, $48
	; $00, $04, $00, $0C,	$01, $03, $02, $09
	; $0F, $0F, $0F, $7F,	$0A, $87, $03, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $01
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $04, $02, $03
	smpsVcRateScale     $01, $02, $01, $01
	smpsVcAttackRate    $08, $0A, $0B, $39
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $00, $04, $00
	smpsVcDecayRate2    $09, $02, $03, $01
	smpsVcDecayLevel    $07, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $03, $87, $0A
