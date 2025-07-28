Sfx4D_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx4D_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02
	smpsHeaderSFXChannel cFM6, Sfx4D_FM6, $00, $00
	smpsHeaderSFXChannel cPSG3, Sfx4D_PSG3, $00, $00

Sfx4D_FM6:
	smpsFMvoice         $00
	smpsModSet          $01, $01, $FA, $00
	dc.b	nFs2, $1F
	smpsStop

Sfx4D_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        cTone_05
	dc.b	nEb5, $08

Sfx4D_Loop1:
	dc.b	smpsNoAttack, $04
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0A, Sfx4D_Loop1
	smpsStop

Sfx4D_Voices:
	; Voice $00
	; $38
	; $01, $32, $33, $10,	$1F, $1F, $1F, $1F
	; $10, $00, $0B, $0D,	$0D, $00, $00, $0F
	; $8F, $0F, $2F, $5F,	$00, $04, $06, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $03, $03, $00
	smpsVcCoarseFreq    $00, $03, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0B, $00, $10
	smpsVcDecayRate2    $0F, $00, $00, $0D
	smpsVcDecayLevel    $05, $02, $00, $08
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $06, $04, $00
