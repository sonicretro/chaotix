Sfx59_Header:
	smpsHeaderStartSong 8
	smpsHeaderVoice     Sfx59_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02
	smpsHeaderSFXChannel cPSG3, Sfx59_PSG3, $23, $00
	smpsHeaderSFXChannel cPSG2, Sfx59_PSG2, $07, $00

Sfx59_PSG3:
	smpsPSGvoice        cTone_09
	smpsModSet          $01, $01, $01, $00
	smpsPSGform         $E7

Sfx59_Loop1:
	dc.b	nC4, $08
	smpsPSGAlterVol     $02
	dc.b	smpsNoAttack
	smpsLoop            $00, $04, Sfx59_Loop1
	dc.b	$0C
	smpsStop

Sfx59_PSG2:
	smpsPSGvoice        cTone_04
	smpsModSet          $01, $01, $02, $00

Sfx59_Loop2:
	dc.b	nFs2, $08
	smpsPSGAlterVol     $02
	dc.b	smpsNoAttack
	smpsLoop            $00, $04, Sfx59_Loop2
	dc.b	$0C
	smpsStop

Sfx59_Voices:
