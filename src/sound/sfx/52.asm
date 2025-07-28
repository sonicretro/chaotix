Sfx52_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx52_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02
	smpsHeaderSFXChannel cFM6, Sfx52_FM6, $00, $02
	smpsHeaderSFXChannel cPSG3, Sfx52_PSG3, $00, $00

Sfx52_FM6:
	smpsFMvoice         $00
	smpsModSet          $01, $01, $06, $00
	dc.b	nAb2, $28
	smpsStop

Sfx52_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        cTone_05
	dc.b	nEb5, $08

Sfx52_Loop1:
	dc.b	smpsNoAttack, $04
	smpsPSGAlterVol     $02
	smpsLoop            $00, $0A, Sfx52_Loop1
	smpsStop

Sfx52_Voices:
	; Voice $00
	; $54
	; $00, $32, $31, $14,	$1F, $9F, $1F, $1F
	; $0E, $08, $0B, $0E,	$0D, $0D, $00, $0F
	; $3F, $2F, $2F, $3F,	$00, $80, $06, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $02
	smpsVcUnusedBits    $01
	smpsVcDetune        $01, $03, $03, $00
	smpsVcCoarseFreq    $04, $01, $02, $00
	smpsVcRateScale     $00, $00, $02, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0E, $0B, $08, $0E
	smpsVcDecayRate2    $0F, $00, $0D, $0D
	smpsVcDecayLevel    $03, $02, $02, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $06, $80, $00
