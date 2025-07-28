Sfx42_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx42_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $03
	smpsHeaderSFXChannel cFM6, Sfx42_FM6, $00, $06
	smpsHeaderSFXChannel cFM5, Sfx42_FM5, $00, $07
	smpsHeaderSFXChannel cFM4, Sfx42_FM4, $00, $08

Sfx42_FM5:
	smpsModSet          $01, $01, $04, $06
	dc.b	nRst, $05
	smpsPan             panRight, $00

Sfx42_FM6:
	smpsFMvoice         $00
	dc.b	nE6, $05, nA6, nD7, nA6, nD7, nG7

Sfx42_Loop1:
	smpsFMAlterVol      $08
	dc.b	nG7, $0C
	smpsLoop            $00, $04, Sfx42_Loop1
	smpsStop

Sfx42_FM4:
	smpsModSet          $01, $01, $05, $02
	dc.b	nRst, $0C
	smpsPan             panCenter, $00
	smpsJump            Sfx42_FM6

Sfx42_Voices:
	; Voice $00
	; $2D
	; $02, $05, $00, $11,	$1F, $5F, $5F, $5F
	; $05, $05, $0C, $0E,	$17, $12, $12, $18
	; $9F, $FC, $FC, $FC,	$24, $84, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $00, $00
	smpsVcCoarseFreq    $01, $00, $05, $02
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0E, $0C, $05, $05
	smpsVcDecayRate2    $18, $12, $12, $17
	smpsVcDecayLevel    $0F, $0F, $0F, $09
	smpsVcReleaseRate   $0C, $0C, $0C, $0F
	smpsVcTotalLevel    $80, $80, $84, $24
