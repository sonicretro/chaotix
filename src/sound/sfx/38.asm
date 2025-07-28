Sfx38_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx38_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01
	smpsHeaderSFXChannel cPSG2, Sfx38_PSG2, $00, $00

Sfx38_PSG2:
	smpsPSGvoice        cTone_08
	smpsModSet          $04, $01, $08, $02
	dc.b	nF4, $60

Sfx38_Loop1:
	smpsPSGAlterVol     $01
	dc.b	nF4, $02
	smpsLoop            $00, $0D, Sfx38_Loop1
	smpsStop

Sfx38_Voices:
