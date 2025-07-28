Sfx47_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx47_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01
	smpsHeaderSFXChannel cFM6, Sfx47_FM6, $00, $00

Sfx47_FM6:
	smpsModSet          $01, $01, $15, $00
	smpsFMvoice         $00
	dc.b	nEb2, $1A
	smpsFMAlterVol      $03
	dc.b	nE2, $16
	smpsFMAlterVol      $03
	dc.b	nF2, $13
	smpsFMAlterVol      $03
	dc.b	nFs2, $0E
	smpsFMAlterVol      $03
	dc.b	nG2, $0A

Sfx47_Loop1:
	smpsFMAlterVol      $02
	dc.b	nAb2, $08
	smpsAlterPitch      $01
	smpsLoop            $00, $18, Sfx47_Loop1
	smpsStop

Sfx47_Voices:
	; Voice $00
	; $3B
	; $07, $03, $01, $01,	$0F, $5D, $5D, $5E
	; $00, $0E, $03, $09,	$00, $05, $04, $17
	; $0F, $0F, $5F, $AF,	$13, $1A, $19, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $03, $07
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $1E, $1D, $1D, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $03, $0E, $00
	smpsVcDecayRate2    $17, $04, $05, $00
	smpsVcDecayLevel    $0A, $05, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $19, $1A, $13
