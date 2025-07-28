Sfx2B_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx2B_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02
	smpsHeaderSFXChannel cPSG2, Sfx2B_PSG2, $00, $00
	smpsHeaderSFXChannel cPSG3, Sfx2B_PSG3, $00, $00

Sfx2B_PSG2:
	smpsPSGvoice        cTone_01
	dc.b	nBb3, $01, nRst, nBb3, nRst, $03

Sfx2B_Loop1:
	dc.b	nBb3, $01, nRst
	smpsLoop            $00, $0B, Sfx2B_Loop1
	smpsStop

Sfx2B_PSG3:
	smpsPSGvoice        cTone_01
	dc.b	nRst, $01, nAb3, nRst, nAb3, nRst, $03

Sfx2B_Loop2:
	dc.b	nAb3, $01, nRst
	smpsLoop            $00, $0B, Sfx2B_Loop2
	smpsStop

Sfx2B_Voices:
