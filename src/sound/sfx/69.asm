Sfx69_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx2D_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01
	smpsHeaderSFXChannel cFM5, Sfx69_FM5, $00, $05

Sfx69_FM5:
	smpsPan             panRight, $00
	smpsFMvoice         $00
	dc.b	nE5, $05, nG5, $05, nC6, $1B
	smpsStop
	