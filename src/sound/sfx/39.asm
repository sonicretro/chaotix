Sfx39_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx39_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02
	smpsHeaderSFXChannel cPSG2, Sfx39_PSG2, $00, $00
	smpsHeaderSFXChannel cPSG3, Sfx39_PSG3, $00, $02

Sfx39_PSG3:
	dc.b	nRst, $01
	smpsNop             $03

Sfx39_PSG2:
	smpsPSGvoice        cTone_03
	dc.b	nCs5, $03, nRst
	smpsPSGAlterVol     $04
	dc.b	nCs5, nRst
	smpsPSGAlterVol     $FC
	smpsStop

Sfx39_Voices:
