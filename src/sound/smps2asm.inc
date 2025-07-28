; -------------------------------------------------------------------------
; SMPS2ASM macros
; -------------------------------------------------------------------------

SMPS2ASMVer		= 1

; -------------------------------------------------------------------------
; Notes
; -------------------------------------------------------------------------

	rsset NOTES_START
nRst			rs.b 1					; Rest note
nC0			rs.b 1					; C0
nCs0			rs.b 0					; C#0/Db0
nDb0			rs.b 1
nD0			rs.b 1					; D0
nDs0			rs.b 0					; D#0/Eb0
nEb0			rs.b 1
nE0			rs.b 0					; E0
nFb0			rs.b 1
nF0			rs.b 0					; F0
nEs0			rs.b 1
nFs0			rs.b 0					; F#0/Gb0
nGb0			rs.b 1
nG0			rs.b 1					; G0
nGs0			rs.b 0					; G#0/Ab0
nAb0			rs.b 1
nA0			rs.b 1					; A0
nAs0			rs.b 0					; A#0/Bb0
nBb0			rs.b 1
nB0			rs.b 0					; B0/Cb1
nCb1			rs.b 1
nC1			rs.b 0					; C1/B#0
nBs0			rs.b 1
nCs1			rs.b 0					; C#1/Db1
nDb1			rs.b 1
nD1			rs.b 1					; D1
nDs1			rs.b 0					; D#1/Eb1
nEb1			rs.b 1
nE1			rs.b 0					; E1
nFb1			rs.b 1
nF1			rs.b 0					; F1
nEs1			rs.b 1
nFs1			rs.b 0					; F#1/Gb1
nGb1			rs.b 1
nG1			rs.b 1					; G1
nGs1			rs.b 0					; G#1/Ab1
nAb1			rs.b 1
nA1			rs.b 1					; A1
nAs1			rs.b 0					; A#1/Bb1
nBb1			rs.b 1
nB1			rs.b 0					; B1/Cb2
nCb2			rs.b 1
nC2			rs.b 0					; C2/B#1
nBs1			rs.b 1
nCs2			rs.b 0					; C#2/Db2
nDb2			rs.b 1
nD2			rs.b 1					; D2
nDs2			rs.b 0					; D#2/Eb2
nEb2			rs.b 1
nE2			rs.b 0					; E2
nFb2			rs.b 1
nF2			rs.b 0					; F2
nEs2			rs.b 1
nFs2			rs.b 0					; F#2/Gb2
nGb2			rs.b 1
nG2			rs.b 1					; G2
nGs2			rs.b 0					; G#2/Ab2
nAb2			rs.b 1
nA2			rs.b 1					; A2
nAs2			rs.b 0					; A#2/Bb2
nBb2			rs.b 1
nB2			rs.b 0					; B2/Cb3
nCb3			rs.b 1
nC3			rs.b 0					; C3/B#2
nBs2			rs.b 1
nCs3			rs.b 0					; C#3/Db3
nDb3			rs.b 1
nD3			rs.b 1					; D3
nDs3			rs.b 0					; D#3/Eb3
nEb3			rs.b 1
nE3			rs.b 0					; E3
nFb3			rs.b 1
nF3			rs.b 0					; F3
nEs3			rs.b 1
nFs3			rs.b 0					; F#3/Gb3
nGb3			rs.b 1
nG3			rs.b 1					; G3
nGs3			rs.b 0					; G#3/Ab3
nAb3			rs.b 1
nA3			rs.b 1					; A3
nAs3			rs.b 0					; A#3/Bb3
nBb3			rs.b 1
nB3			rs.b 0					; B3/Cb4
nCb4			rs.b 1
nC4			rs.b 0					; C4/B#3
nBs3			rs.b 1
nCs4			rs.b 0					; C#4/Db4
nDb4			rs.b 1
nD4			rs.b 1					; D4
nDs4			rs.b 0					; D#4/Eb4
nEb4			rs.b 1
nE4			rs.b 0					; E4
nFb4			rs.b 1
nF4			rs.b 0					; F4
nEs4			rs.b 1
nFs4			rs.b 0					; F#4/Gb4
nGb4			rs.b 1
nG4			rs.b 1					; G4
nGs4			rs.b 0					; G#4/Ab4
nAb4			rs.b 1
nA4			rs.b 1					; A4
nAs4			rs.b 0					; A#4/Bb4
nBb4			rs.b 1
nB4			rs.b 0					; B4/Cb5
nCb5			rs.b 1
nC5			rs.b 0					; C5/B#4
nBs4			rs.b 1
nCs5			rs.b 0					; C#5/Db5
nDb5			rs.b 1
nD5			rs.b 1					; D5
nDs5			rs.b 0					; D#5/Eb5
nEb5			rs.b 1
nE5			rs.b 0					; E5
nFb5			rs.b 1
nF5			rs.b 0					; F5
nEs5			rs.b 1
nFs5			rs.b 0					; F#5/Gb5
nGb5			rs.b 1
nG5			rs.b 1					; G5
nGs5			rs.b 0					; G#5/Ab5
nAb5			rs.b 1
nA5			rs.b 1					; A5
nAs5			rs.b 0					; A#5/Bb5
nBb5			rs.b 1
nB5			rs.b 0					; B5/Cb6
nCb6			rs.b 1
nC6			rs.b 0					; C6/B#5
nBs5			rs.b 1
nCs6			rs.b 0					; C#6/Db6
nDb6			rs.b 1
nD6			rs.b 1					; D6
nDs6			rs.b 0					; D#6/Eb6
nEb6			rs.b 1
nE6			rs.b 0					; E6
nFb6			rs.b 1
nF6			rs.b 0					; F6
nEs6			rs.b 1
nFs6			rs.b 0					; F#6/Gb6
nGb6			rs.b 1
nG6			rs.b 1					; G6
nGs6			rs.b 0					; G#6/Ab6
nAb6			rs.b 1
nA6			rs.b 1					; A6
nAs6			rs.b 0					; A#6/Bb6
nBb6			rs.b 1
nB6			rs.b 0					; B6/Cb7
nCb7			rs.b 1
nC7			rs.b 0					; C7/B#6
nBs6			rs.b 1
nCs7			rs.b 0					; C#7/Db7
nDb7			rs.b 1
nD7			rs.b 1					; D7
nDs7			rs.b 0					; D#7/Eb7
nEb7			rs.b 1
nE7			rs.b 0					; E7
nFb7			rs.b 1
nF7			rs.b 0					; F7
nEs7			rs.b 1
nFs7			rs.b 0					; F#7/Gb7
nGb7			rs.b 1
nG7			rs.b 1					; G7
nGs7			rs.b 0					; G#7/Ab7
nAb7			rs.b 1
nA7			rs.b 1					; A7
nAs7			rs.b 0					; A#7/Bb7
nBb7			rs.b 1
nB7			rs.b 0					; B7/Cb8
nCb8			rs.b 1

; PSG conversion to S3/S&K/S3D/Chaotix drivers require a tone shift of 12 semi-tones.
psgdelta		equ 12

; SMPS2ASM uses nMaxPSG for songs from S1/S2 drivers.
; nMaxPSG1 and nMaxPSG2 are used only for songs from S3/S&K/S3D drivers.
; The use of psgdelta is intended to undo the effects of PSGPitchConvert
; and ensure that the ending note is indeed the maximum PSG frequency.
nMaxPSG			equ nBb6-psgdelta
nMaxPSG1		equ nBb6
nMaxPSG2		equ nB6

; -------------------------------------------------------------------------
; Volume envelopes
; -------------------------------------------------------------------------

	rsreset
cTone_00		rs.b 1					; No envelope
cTone_01		rs.b 1					; Envelope #1
cTone_02		rs.b 1					; Envelope #2
cTone_03		rs.b 1					; Envelope #3
cTone_04		rs.b 1					; Envelope #4
cTone_05		rs.b 1					; Envelope #5
cTone_06		rs.b 1					; Envelope #6
cTone_07		rs.b 1					; Envelope #7
cTone_08		rs.b 1					; Envelope #8
cTone_09		rs.b 1					; Envelope #9
cTone_0A		rs.b 1					; Envelope #10
cTone_0B		rs.b 1					; Envelope #11
cTone_0C		rs.b 1					; Envelope #12
cTone_0D		rs.b 1					; Envelope #13
cTone_0E		rs.b 1					; Envelope #14

; -------------------------------------------------------------------------
; PWM samples
; -------------------------------------------------------------------------

	rsset $81
pElecKick		rs.b 1					; Electric kick
pElecSnare		rs.b 1					; Electric snare
pSplash			rs.b 1					; Splash cymbal
pRideBell		rs.b 1					; Ride bell
pTomHi			rs.b 1					; Tom (high)
pTomMid			rs.b 1					; Tom (middle)
pTomLo			rs.b 1					; Tom (low)
pElecHiHat		rs.b 1					; Electric hi-hat
pCrash			rs.b 1					; Crash cymbal
pClap			rs.b 1					; Clap
pKick			rs.b 1					; Kick
pSnare			rs.b 1					; Snare
pBell			rs.b 1					; Bell
pSnap			rs.b 1					; Snap
pCowbell		rs.b 1					; Cowbell
pClickHi		rs.b 1					; Click (high)
pClickLo		rs.b 1					; Click (low)
pBongoHi		rs.b 1					; Bongo (high)
pBongoLo		rs.b 1					; Bongo (low)
pTimpaniHi		rs.b 1					; Timpani (high)
pTimpaniLo		rs.b 1					; Timpani (low)

; -------------------------------------------------------------------------
; Channel IDs for SFX
; -------------------------------------------------------------------------

cPSG1			equ $80					; PSG1 (not for use in Chaotix)
cPSG2			equ $A0					; PSG2
cPSG3			equ $C0					; PSG3
cNoise			equ $E0					; Noise (not for use in S3/S&K/S3D/Chaotix)
cFM3			equ $02					; FM3 (not for use in Chaotix)
cFM4			equ $04					; FM4
cFM5			equ $05					; FM5
cFM6			equ $06					; FM6 (only in S3/S&K/S3D, overrides DAC)

; -------------------------------------------------------------------------
; Conversion macros
; -------------------------------------------------------------------------

conv0To256 macro n
	__conv0To256_result: = ((((\n)=0)&1)<<8)|(\n)
	endm

s2TempotoS3 macro n
	__s2TempotoS3_result: = ($100-((((\n)=0)&1)|(\n)))&$FF
	endm

s1TempotoS2 macro n
	conv0To256 \n
	__s1TempotoS2_result: = ((((__conv0To256_result-1)<<8)+(__conv0To256_result>>1))/__conv0To256_result)&$FF
	endm
	
s1TempotoS3 macro n
	s1TempotoS2 \n
	s2TempotoS3 __s1TempotoS2_result
	__s1TempotoS3_result: = __s2TempotoS3_result
	endm
	
convertMainTempoMod macro mod
	if SourceDriver=1
		if (\mod)=1
			inform 3,"Invalid main tempo of 1 in song from Sonic 1"
		endif
		s1TempotoS3 \mod
		dc.b	__s1TempotoS3_result
	elseif SourceDriver=2
		if (\mod)=0
			inform 3,"Invalid main tempo of 0 in song from Sonic 2"
		endif
		s2TempotoS3 \mod
		dc.b	__s2TempotoS3_result
	else;if SourceDriver>=3
		dc.b	\mod
	endif
	endm
	
; PSG conversion requires a tone shift of 12 semi-tones.
PSGPitchConvert macro pitch
	if SourceDriver<3
		dc.b	((\pitch)+psgdelta)&$FF
	else
		dc.b	\pitch
	endif
	endm
	
; -------------------------------------------------------------------------
; Header macros
; -------------------------------------------------------------------------

smpsHeaderStartSong macro ver, sourcesmps2asmver
	SourceDriver: = \ver
	songStart: = *
	
	if narg>1
		SourceSMPS2ASM: = \sourcesmps2asmver
	else
		SourceSMPS2ASM: = SMPS2ASMVer
	endif
	
	if SMPS2ASMVer<SourceSMPS2ASM
		inform 0,"Song at 0x%h was made for a newer version of SMPS2ASM (this is version %i, but song wants at least version %i).", songStart, SMPS2ASMVer, SourceSMPS2ASM
	endif
	endm

smpsHeaderVoiceNull macro
	if (songStart)<>*
		inform 3,"Missing smpsHeaderStartSong"
	endif
	dc.w	0
	endm
	
; Header - Set up Voice Location
; Common to music and SFX
smpsHeaderVoice macro loc
	if (songStart)<>*
		inform 3,"Missing smpsHeaderStartSong"
	endif
	dc.b	(\loc)&$FF, (((\loc)>>8)&$7F)|$80
	endm

; Header - Set up Voice Location as S3's Universal Voice Bank
; Common to music and SFX
smpsHeaderVoiceUVB macro
	if (songStart)<>*
		inform 3,"Missing smpsHeaderStartSong"
	endif
	inform 3,"Universal Voice Bank does not exist in Chaotix"
	endm

; Header macros for music (not for SFX)
; Header - Set up Channel Usage
smpsHeaderChan macro fm,psg
	dc.b	\fm, \psg
	endm

; Header - Set up Tempo
smpsHeaderTempo macro div,mod
	dc.b	\div
	convertMainTempoMod \mod
	endm

; Header - Set up DAC Channel
smpsHeaderDAC macro loc,pitch,vol
	inform 3,"DAC is not supported in Chaotix"
	endm

; Header - Set up FM Channel
smpsHeaderFM macro loc,pitch,vol
	dc.b	(\loc)&$FF, (((\loc)>>8)&$7F)|$80
	dc.b	\pitch, \vol
	endm

; Header - Set up PSG Channel
smpsHeaderPSG macro loc,pitch,vol,mod,voice
	dc.b	(\loc)&$FF, (((\loc)>>8)&$7F)|$80
	PSGPitchConvert \pitch
	dc.b	\vol, \mod, \voice
	endm

; Header - Set up PWM Channel
smpsHeaderPWM macro loc,vol
	dc.b	(\loc)&$FF, (((\loc)>>8)&$7F)|$80
	dc.b	0, \vol
	endm

; Header macros for SFX (not for music)
; Header - Set up Tempo
smpsHeaderTempoSFX macro div
	dc.b	\div
	endm

; Header - Set up Channel Usage
smpsHeaderChanSFX macro chan
	dc.b	\chan
	endm

; Header - Set up FM Channel
smpsHeaderSFXChannel macro chanid,loc,pitch,vol
	if (\chanid)=cFM3
		inform 3,"Using channel ID of cFM3 ($04) in Chaotix driver is unsupported. Change it to another channel."
	elseif (\chanid)=cPSG1
		inform 3,"Using channel ID of cPSG1 ($80) in Chaotix driver is unsupported. Change it to another channel."
	elseif (\chanid)=cNoise
		inform 3,"Using channel ID of cNoise ($E0) in Chaotix driver in Sonic 3 driver is dangerous. Fix the song so that it turns into a noise channel instead."
	endif
	dc.b	$80, \chanid
	dc.b	(\loc)&$FF, (((\loc)>>8)&$7F)|$80
	if ((\chanid)&$80)<>0
		PSGPitchConvert \pitch
	else
		dc.b	\pitch
	endif
	dc.b	\vol
	endm

; -------------------------------------------------------------------------
; Track commands
; -------------------------------------------------------------------------

smpsPan macro direction,amsfms
panNone = $00
panRight = $40
panLeft = $80
panCentre = $C0
panCenter = $C0 ; silly Americans :U
	dc.b	$E0,(\direction)+(\amsfms)
	endm
	
; E1xx - Set pitch slide speed
smpsPitchSlideSpeed macro speed
	dc.b	$E1, \speed
	endm

; E2xx - Useless
smpsNop macro val
	dc.b	$E2, \val
	endm
	
; E3 - Silences FM channel then stops as per smpsStop
smpsStopFM macro
	dc.b	$E3
	endm
	
; E4vvwwxxyyzz - Sets up FM pan envelope
smpsFMPanEnv macro type,id,cursor,length,delay
	dc.b	$E4
	if (\type)<>0
		dc.b	\type, \id, \cursor, \length, \delay
	else
		dc.b	0
	endif
	endm

; E6xxyy - Alter FM volume
smpsFMAlterVol macro val1,val2
	if narg>2
		dc.b	$E5, \val1, \val2
	else
		dc.b	$E6, \val1
	endif
	endm

; E7 - Prevent attack of next note
smpsNoAttack		equ $E7

; E8xx - Set note fill to xx
smpsNoteFill macro val
	if SourceDriver<3
		inform 0,"Note fill will not work as intended unless you divide the fill value by the tempo divider."
	endif
	dc.b	$E8, \val
	endm
	
; E9xxyy - Set up LFO and AMS/FMS
smpsSetLFO macro enable,amsfms
	dc.b	$E9, \enable, \amsfms
	endm
	
; EBxxyyyy - Conditional jump
smpsConditionalJump macro index,loc
	dc.b	$EB
	dc.b	\index
	dc.b	(\loc)&$FF, (((\loc)>>8)&$7F)|$80
	endm

; ECxx - Alter PSG volume
smpsPSGAlterVol macro vol
	dc.b	$EC, \vol
	endm
	
; EDxxyy - Set track FM register
smpsChanFMCommand macro reg,val
	dc.b	$ED, \reg, \val
	endm
	
; EExxyy - Set FM part 1 register
smpsFMICommand macro reg,val
	dc.b	$EE, \reg, \val
	endm

; EFxx[yy] - Set Voice of FM channel to xx; xx < 0 means yy present
smpsFMvoice macro voice,songID
	if narg>1
		dc.b	$EF, (\voice)|$80, (\songID)+$81
	else
		dc.b	$EF, \voice
	endif
	endm
	
; F0wwxxyyzz - Modulation - ww: wait time - xx: modulation speed - yy: change per step - zz: number of steps
smpsModSet macro wait,speed,change,step
	dc.b	$F0
	if SourceDriver<3
		dc.b	(\wait)+1, \speed, \change,(((\step)+1)*(\speed))&$FF
	else
		dc.b	\wait, \speed, \change, \step
	endif
	;dc.b	\speed, \change, \step
	endm
	
; F1xxyy - Set Modulation
smpsModChange2 macro fmmod,psgmod
	dc.b	$F1, \fmmod, \psgmod
	endm

; F2 - End of channel
smpsStop macro
	dc.b	$F2
	endm

; F3xx - PSG waveform to xx
smpsPSGform macro form
	dc.b	$F3, \form
	endm
	
; F4xx - Set Modulation
smpsModChange macro val
	dc.b	$F4, \val
	endm

; F5xx - PSG voice to xx
smpsPSGvoice macro voice
	dc.b	$F5, \voice
	endm

; F6xxxx - Jump to xxxx
smpsJump macro loc
	dc.b	$F6
	dc.b	(\loc)&$FF, (((\loc)>>8)&$7F)|$80
	endm

; F7xxyyzzzz - Loop back to zzzz yy times, xx being the loop index for loop recursion fixing
smpsLoop macro index,loops,loc
	dc.b	$F7
	dc.b	\index, \loops
	dc.b	(\loc)&$FF, (((\loc)>>8)&$7F)|$80
	endm

; F8xxxx - Call pattern at xxxx, saving return point
smpsCall macro loc
	dc.b	$F8
	dc.b	(\loc)&$FF, (((\loc)>>8)&$7F)|$80
	endm

; F9 - Return (used after smpsCall)
smpsReturn macro val
	dc.b	$F9
	endm
	
; FAxx - Set channel tempo divider to xx
smpsChanTempoDiv macro val
	dc.b	$FA, \val
	endm

; FBxx - Add xx to channel pitch
smpsChangeTransposition macro val
	dc.b	$FB, \val
	endm

; FCxx - Pitch slide
smpsPitchSlide macro enable
	dc.b	$FC, \enable
	endm

; FDxx - Set raw frequency mode
smpsAlternateSMPS macro flag
	dc.b	$FD, \flag
	endm

; FEwwxxyyzz - Set FM3 special mode
smpsFM3SpecialMode macro ind1,ind2,ind3,ind4
	dc.b	$FE, \ind1, \ind2, \ind3, \ind4
	endm

; FF00xx - Set music tempo modifier to xx
smpsSetTempoMod macro mod
	dc.b	$FF,$00
	convertMainTempoMod \mod
	endm

; FF01xx - Play sound
smpsPlaySound macro index
	dc.b	$FF, $01, \index
	endm

; FF02 - Halt music
smpsHaltMusic macro flag
	dc.b	$FF, $02, \flag
	endm

; FF03xxxxyy - Copy data
smpsCopyData macro data,len
	inform 3,"Command to copy data should not be used."
	dc.b	$FF, $03
	dc.b	(\data)&$FF, ((\data)>>8)&$FF
	dc.b	\len
	endm
	
; FF04xx - Set music tempo divider to xx
smpsSetTempoDiv macro val
	dc.b	$FF, $04, \val
	endm

; FF05wwxxyyzz - Set SSG-EG
smpsSSGEG macro op1,op2,op3,op4
	dc.b	$FF, $05, \op1, \op3, \op2, \op4
	endm

; FF06xxyy - Set FM volume envelope
smpsFMVolEnv macro tone,mask
	dc.b	$FF, $06, \tone, \mask
	endm

smpsDetune macro val
	inform 1,"Detune is not supported in Chaotix, so it will be ignored."
	endm

smpsAlterVol macro val
	smpsFMAlterVol \val
	endm

smpsModOff macro
	smpsModChange 0
	endm

; -------------------------------------------------------------------------
; Backwards compatibility
; -------------------------------------------------------------------------

smpsAlterNote macro val
	smpsDetune \val
	endm

smpsAlterPitch macro val
	smpsChangeTransposition \val
	endm

smpsFMFlutter macro tone,mask
	smpsFMVolEnv \tone, \mask
	endm

smpsSetvoice macro voice,songID
	if narg>1
		smpsFMvoice \voice,\songID
	else
		smpsFMvoice \voice
	endif
	endm
	
; -------------------------------------------------------------------------
; FM instruments
; -------------------------------------------------------------------------

; Voices - Feedback
smpsVcFeedback macro val
	vcFeedback: = \val
	endm

; Voices - Algorithm
smpsVcAlgorithm macro val
	vcAlgorithm: = \val
	endm

smpsVcUnusedBits macro val,d1r1,d1r2,d1r3,d1r4
	vcUnusedBits: = \val
	if narg>1
		vcD1R1Unk: = (\d1r1)<<5
		vcD1R2Unk: = (\d1r2)<<5
		vcD1R3Unk: = (\d1r3)<<5
		vcD1R4Unk: = (\d1r4)<<5
	else
		vcD1R1Unk: = 0
		vcD1R2Unk: = 0
		vcD1R3Unk: = 0
		vcD1R4Unk: = 0
	endif
	endm

; Voices - Detune
smpsVcDetune macro op1,op2,op3,op4
	vcDT1: = \op1
	vcDT2: = \op2
	vcDT3: = \op3
	vcDT4: = \op4
	endm

; Voices - Coarse-Frequency
smpsVcCoarseFreq macro op1,op2,op3,op4
	vcCF1: = \op1
	vcCF2: = \op2
	vcCF3: = \op3
	vcCF4: = \op4
	endm

; Voices - Rate Scale
smpsVcRateScale macro op1,op2,op3,op4
	vcRS1: = \op1
	vcRS2: = \op2
	vcRS3: = \op3
	vcRS4: = \op4
	endm

; Voices - Attack Rate
smpsVcAttackRate macro op1,op2,op3,op4
	vcAR1: = \op1
	vcAR2: = \op2
	vcAR3: = \op3
	vcAR4: = \op4
	endm

; Voices - Amplitude Modulation
; The original SMPS2ASM erroneously assumed the 6th and 7th bits
; were the Amplitude Modulation.
; According to several docs, however, it's actually the high bit.
smpsVcAmpMod macro op1,op2,op3,op4
	if SourceSMPS2ASM=0
		vcAM1: = (\op1)<<5
		vcAM2: = (\op2)<<5
		vcAM3: = (\op3)<<5
		vcAM4: = (\op4)<<5
	else
		vcAM1: = (\op1)<<7
		vcAM2: = (\op2)<<7
		vcAM3: = (\op3)<<7
		vcAM4: = (\op4)<<7
	endif
	endm

; Voices - First Decay Rate
smpsVcDecayRate1 macro op1,op2,op3,op4
	vcD1R1: = \op1
	vcD1R2: = \op2
	vcD1R3: = \op3
	vcD1R4: = \op4
	endm

; Voices - Second Decay Rate
smpsVcDecayRate2 macro op1,op2,op3,op4
	vcD2R1: = \op1
	vcD2R2: = \op2
	vcD2R3: = \op3
	vcD2R4: = \op4
	endm

; Voices - Decay Level
smpsVcDecayLevel macro op1,op2,op3,op4
	vcDL1: = \op1
	vcDL2: = \op2
	vcDL3: = \op3
	vcDL4: = \op4
	endm

; Voices - Release Rate
smpsVcReleaseRate macro op1,op2,op3,op4
	vcRR1: = \op1
	vcRR2: = \op2
	vcRR3: = \op3
	vcRR4: = \op4
	endm

; Voices - Total Level
; The original SMPS2ASM decides TL high bits automatically,
; but later versions leave it up to the user.
; Alternatively, if we're converting an SMPS 68k song to SMPS Z80,
; then we *want* the TL bits to match the algorithm, because SMPS 68k
; prefers the algorithm over the TL bits, ignoring the latter, while
; SMPS Z80 does the opposite.
; Unfortunately, there's nothing we can do if we're trying to convert
; an SMPS Z80 song to SMPS 68k. It will ignore the bits no matter
; what we do, so we just print a warning.
smpsVcTotalLevel macro op1,op2,op3,op4
	vcTL1: = \op1
	vcTL2: = \op2
	vcTL3: = \op3
	vcTL4: = \op4
	dc.b	(vcUnusedBits<<6)+(vcFeedback<<3)+vcAlgorithm
;   0     1     2     3     4     5     6     7
;%1000,%1000,%1000,%1000,%1010,%1110,%1110,%1111
	if SourceSMPS2ASM=0
		vcTLMask4: = ((vcAlgorithm=7)<<7)
		vcTLMask3: = ((vcAlgorithm>=4)<<7)
		vcTLMask2: = ((vcAlgorithm>=5)<<7)
		vcTLMask1: = 128
	else
		vcTLMask4: = 0
		vcTLMask3: = 0
		vcTLMask2: = 0
		vcTLMask1: = 0
	endif

	if SourceDriver<3
		vcTLMask4: = (((vcAlgorithm=7)&1)<<7)
		vcTLMask3: = (((vcAlgorithm>=4)&1)<<7)
		vcTLMask2: = (((vcAlgorithm>=5)&1)<<7)
		vcTLMask1: = 128
		vcTL1: = vcTL1&127
		vcTL2: = vcTL2&127
		vcTL3: = vcTL3&127
		vcTL4: = vcTL4&127
	endif

	dc.b	(vcDT4<<4)+vcCF4,       (vcDT3<<4)+vcCF3,       (vcDT2<<4)+vcCF2,       (vcDT1<<4)+vcCF1
	dc.b	(vcRS4<<6)+vcAR4,       (vcRS3<<6)+vcAR3,       (vcRS2<<6)+vcAR2,       (vcRS1<<6)+vcAR1
	dc.b	vcAM4|vcD1R4|vcD1R4Unk, vcAM3|vcD1R3|vcD1R3Unk, vcAM2|vcD1R2|vcD1R2Unk, vcAM1|vcD1R1|vcD1R1Unk
	dc.b	vcD2R4,                 vcD2R3,                 vcD2R2,                 vcD2R1
	dc.b	(vcDL4<<4)+vcRR4,       (vcDL3<<4)+vcRR3,       (vcDL2<<4)+vcRR2,       (vcDL1<<4)+vcRR1
	dc.b	vcTL4|vcTLMask4,        vcTL3|vcTLMask3,        vcTL2|vcTLMask2,        vcTL1|vcTLMask1
	endm

; -------------------------------------------------------------------------
