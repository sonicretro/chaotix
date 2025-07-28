Sfx4A_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx4A_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01
	smpsHeaderSFXChannel cPSG2, Sfx4A_PSG2, $00, $00

Sfx4A_PSG2:
	dc.b	nA5, $02
	smpsStop

Sfx4A_Voices:
