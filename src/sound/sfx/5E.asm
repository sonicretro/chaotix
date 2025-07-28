Sfx5E_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx5C_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02
	smpsHeaderSFXChannel cFM6, Sfx5E_FM6, $0C, $08
	smpsHeaderSFXChannel cFM5, Sfx5E_FM5, $0C, $08

Sfx5E_FM5:
	smpsModSet          $01, $01, $04, $04
	dc.b	nRst, $06
	smpsPan             panLeft, $00

Sfx5E_FM6:
	smpsFMvoice         $00
	dc.b	nC6, $05, nF5, nG5, nB5

Sfx5E_Loop1:
	smpsFMAlterVol      $0A
	dc.b	nB5
	smpsLoop            $00, $04, Sfx5E_Loop1
	smpsStop
