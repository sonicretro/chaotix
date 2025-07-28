Sfx53_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx53_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02
	smpsHeaderSFXChannel cPSG3, Sfx53_PSG3, $00, $00
	smpsHeaderSFXChannel cPSG2, Sfx53_PSG2, $00, $02

Sfx53_PSG2:
	dc.b	nRst, $0F

Sfx53_PSG3:
	smpsPSGvoice        cTone_09
	smpsModSet          $01, $02, $03, $1A
	dc.b	nC4, $28, nB3, $12
	smpsStop

Sfx53_Voices:
