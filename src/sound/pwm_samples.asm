; -------------------------------------------------------------------------
; PWM samples
; -------------------------------------------------------------------------
	
; -------------------------------------------------------------------------
; Define PWM sample entry
; -------------------------------------------------------------------------

PWM_ENTRY macro sample, loop, rate
	dc.l	(\sample\)+($22000000-MARS_ROM_FIXED)
	dc.l	(\sample\_End)-(\sample\)
	dc.l	\loop
	dc.l	\rate
	endm

; -------------------------------------------------------------------------
; Define PWM sample data
; -------------------------------------------------------------------------

PWM_DATA macro sample, file
\sample\:	incbin	\file
\sample\_End:
	endm

; -------------------------------------------------------------------------
; PWM samples
; -------------------------------------------------------------------------

PwmSamples:
	PWM_ENTRY Pwm_ElecKick,		0, $800
	PWM_ENTRY Pwm_ElecSnare,	0, $800
	PWM_ENTRY Pwm_Splash,		0, $800
	PWM_ENTRY Pwm_RideBell,		0, $800
	PWM_ENTRY Pwm_Tom,		0, $800
	PWM_ENTRY Pwm_Tom,		0, $659
	PWM_ENTRY Pwm_Tom,		0, $4C2
	PWM_ENTRY Pwm_ElecHiHat,	0, $800
	PWM_ENTRY Pwm_Crash,		0, $800
	PWM_ENTRY Pwm_Clap,		0, $800
	PWM_ENTRY Pwm_Kick,		0, $800
	PWM_ENTRY Pwm_Snare,		0, $800
	PWM_ENTRY Pwm_Bell,		0, $800
	PWM_ENTRY Pwm_Snap,		0, $800
	PWM_ENTRY Pwm_Cowbell,		0, $800
	PWM_ENTRY Pwm_Click,		0, $800
	PWM_ENTRY Pwm_Click,		0, $5FE
	PWM_ENTRY Pwm_Bongo,		0, $800
	PWM_ENTRY Pwm_Bongo,		0, $5FE
	PWM_ENTRY Pwm_Timpani,		0, $800
	PWM_ENTRY Pwm_Timpani,		0, $5FE
	PWM_ENTRY Pwm_Silence,		0, $800

; -------------------------------------------------------------------------
	
	PWM_DATA Pwm_ElecKick,		"sound/pwm/electric_kick.pwm"
	PWM_DATA Pwm_ElecSnare,		"sound/pwm/electric_snare.pwm"
	PWM_DATA Pwm_Splash,		"sound/pwm/splash_cymbal.pwm"
	PWM_DATA Pwm_RideBell,		"sound/pwm/ride_bell.pwm"
	PWM_DATA Pwm_Tom,		"sound/pwm/tom.pwm"
	PWM_DATA Pwm_ElecHiHat,		"sound/pwm/electric_hi_hat.pwm"
	PWM_DATA Pwm_Crash,		"sound/pwm/crash_cymbal.pwm"
	PWM_DATA Pwm_Clap,		"sound/pwm/clap.pwm"
	PWM_DATA Pwm_Kick,		"sound/pwm/kick.pwm"
	PWM_DATA Pwm_Snare,		"sound/pwm/snare.pwm"
	PWM_DATA Pwm_Bell,		"sound/pwm/bell.pwm"
	PWM_DATA Pwm_Snap,		"sound/pwm/snap.pwm"
	PWM_DATA Pwm_Cowbell,		"sound/pwm/cowbell.pwm"
	PWM_DATA Pwm_Click,		"sound/pwm/click.pwm"
	PWM_DATA Pwm_Bongo,		"sound/pwm/bongo.pwm"
	PWM_DATA Pwm_Timpani,		"sound/pwm/timpani.pwm"
	
Pwm_Silence:
	dcb.b	$40, $80
Pwm_Silence_End:

; -------------------------------------------------------------------------
