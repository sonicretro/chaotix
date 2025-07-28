Sfx4F_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx4F_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02
	smpsHeaderSFXChannel cFM6, Sfx4F_FM6, $00, $00
	smpsHeaderSFXChannel cFM5, Sfx4F_FM5, $00, $04

Sfx4F_FM6:
	smpsFMvoice         $00
	smpsModSet          $01, $01, $27, $02
	dc.b	nF1, $0C, nE1, $0D
	smpsJump            Sfx4F_FM6

Sfx4F_FM5:
	smpsFMvoice         $01
	smpsModSet          $01, $01, $05, $02
	dc.b	nC4, $0C, $0D
	smpsJump            Sfx4F_FM5

Sfx4F_Voices:
	; Voice $00
	; $FD
	; $20, $30, $12, $30,	$13, $1A, $1F, $0F
	; $05, $18, $09, $02,	$0B, $1F, $0D, $05
	; $4F, $3F, $4F, $0F,	$0D, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $03
	smpsVcDetune        $03, $01, $03, $02
	smpsVcCoarseFreq    $00, $02, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0F, $1F, $1A, $13
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $09, $18, $05
	smpsVcDecayRate2    $05, $0D, $1F, $0B
	smpsVcDecayLevel    $00, $04, $03, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $80, $80, $0D

	; Voice $01
	; $60
	; $24, $55, $17, $33,	$5F, $5F, $5F, $0F
	; $05, $04, $04, $0C,	$00, $0F, $04, $09
	; $3F, $3F, $4F, $3F,	$04, $0E, $00, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $01
	smpsVcDetune        $03, $01, $05, $02
	smpsVcCoarseFreq    $03, $07, $05, $04
	smpsVcRateScale     $00, $01, $01, $01
	smpsVcAttackRate    $0F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $04, $04, $05
	smpsVcDecayRate2    $09, $04, $0F, $00
	smpsVcDecayLevel    $03, $04, $03, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $00, $0E, $04
