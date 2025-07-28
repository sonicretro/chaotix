; -------------------------------------------------------------------------
; Sound driver variables
; -------------------------------------------------------------------------

; -------------------------------------------------------------------------
; Track structure
; -------------------------------------------------------------------------

	rsreset
zsnd.flags		rs.b 1					; Flags
zsnd.type		rs.b 1					; Type
zsnd.tempo_divider	rs.b 1					; Tempo divider
zsnd.track_data_addr	rs.w 1					; Track data address
zsnd.raw_detune		rs.b 0					; Raw frequency detune
zsnd.transpose		rs.b 1					; Transposition
zsnd.volume		rs.b 1					; Volume
zsnd.vibrato_env_id	rs.b 1					; Vibrato envelope ID
zsnd.instrument		rs.b 1					; Instrument
zsnd.call_stack_addr	rs.b 1					; Call stack address
zsnd.fm_pan_ams_fms	rs.b 1					; FM Pan/AMS/FMS
zsnd.duration_timer	rs.b 1					; Note duration timer
zsnd.duration		rs.b 1					; Note duration
zsnd.pwm_sample		rs.b 0					; PWM sample ID
zsnd.frequency		rs.w 1					; Frequency
zsnd.fm_instrument_song	rs.b 1					; External FM instrument song ID
zsnd.porta_speed	rs.b 1					; Portamento speed
zsnd.fm_pan_env_type	rs.b 1					; FM pan envelope type
zsnd.fm_pan_env_id	rs.b 1					; FM pan envelope ID
zsnd.fm_pan_env_cursor	rs.b 1					; FM pan envelope cursor
zsnd.fm_pan_env_length	rs.b 1					; FM pan envelope length
zsnd.fm_pan_env_delay	rs.b 1					; FM pan envelope delay
zsnd.fm_pan_env_timer	rs.b 1					; FM pan envelope delay timer
zsnd.vol_env_cursor	rs.b 1					; Volume envelope cursor
zsnd.vol_env_id		rs.b 1					; Volume envelope ID
zsnd.vol_env_operators	rs.b 0					; Volume envelope operators
zsnd.fm_ssg_eg_values	rs.b 1					; FM SSG-EG values address
zsnd.psg_noise		rs.b 1					; PSG noise value
zsnd.fm_algo_feedback	rs.b 1					; FM algorithm and feedback
zsnd.fm_tl_values	rs.w 1					; FM TL values address
zsnd.staccato_timer	rs.b 1					; Staccato timer
zsnd.staccato		rs.b 1					; Staccato
zsnd.vibrato_params	rs.w 1					; Vibrato parameters address
zsnd.vibrato_env_mult	rs.b 0					; Vibrato envelope multiplier
zsnd.vibrato	 	rs.w 1					; Vibrato value
zsnd.vibrato_wait	rs.b 1					; Vibrato wait
zsnd.vibrato_env_cursor	rs.b 0					; Vibrato envelope cursor
zsnd.vibrato_speed	rs.b 1					; Vibrato speed
zsnd.vibrato_delta	rs.b 1					; Vibrato delta
zsnd.vibrato_steps	rs.b 1					; Vibrato steps
zsnd.loop_counters	rs.b 2					; Loop counters
zsnd.sfx_fm_instruments	rs.w 1					; SFX FM instruments address
			rs.b 4					; Loop counters
zsnd.call_stack_base	rs.b 0					; Call stack base
zsnd.struct_len		rs.b 0					; Length of structure

; -------------------------------------------------------------------------
; RAM layout
; -------------------------------------------------------------------------

z_external_data		equ $1000				; External data

	rsset $1BF7
z_pwm_samples		rs.b 0					; PWM samples
z_pwm_send		rs.b 1					; PWM send flag
z_pwm1_sample		rs.w 1					; PWM1 sample
z_pwm2_sample		rs.w 1					; PWM2 sample
z_pwm3_sample		rs.w 1					; PWM3 sample
z_pwm4_sample		rs.w 1					; PWM4 sample
			rs.b 4
z_music_bank		rs.b 1					; Music bank
			rs.b 1
z_fm_fade_volume	rs.b 1					; FM fade volume
			rs.b 1
			rs.b 1
z_clear_vars		rs.b 0					; Clearable variables start
z_queued_sound		rs.b 1					; Queued sound
z_sound_queue		rs.b 0					; Sound queue
z_sound_queue_0		rs.b 1					; Sound queue slot 0
z_sound_queue_1		rs.b 1					; Sound queue slot 1
z_sound_queue_2		rs.b 1					; Sound queue slot 2
z_fade_timer		rs.b 1					; Fade out timer
z_fade_delay		rs.b 1					; Fade out delay
z_fade_delay_timer	rs.b 1					; Fade out delay timer
z_paused		rs.b 1					; Paused flag
z_pause_command		rs.b 1					; Pause track command flag
z_fm_reg_27		rs.b 1					; FM register 0x27
z_music_tempo_counter	rs.b 1					; Music tempo counter
z_music_tempo		rs.b 1					; Music tempo
z_end_flag		rs.b 1					; End flag
z_communication		rs.b 1					; Communication flag
z_z80_r			rs.b 1					; Z80 R reigster
z_current_priority	rs.b 1					; Current priority
z_current_sound_type	rs.b 1					; Current sound type
z_sfx_fm3_frequencies	rs.w 4					; SFX FM3 frequencies
z_bg_fm3_frequencies	rs.w 4					; Background SFX FM3 frequencies (unused)
z_music_fm3_frequencies	rs.w 4					; Music FM3 frequencies
z_sfx_track_id		rs.b 1					; SFX track ID (for initialization)
z_cur_track_data_init	rs.w 1					; Current track data address (for initialization)
z_cur_track_type_init	rs.w 1					; Current track type address (for initialization)
z_music_fm_instruments	rs.w 1					; Music FM instruments
z_sfx_fm_instruments	rs.w 1					; SFX FM instruments (for initialization)
z_sfx_tempo_divider	rs.b 1					; SFX tempo divider (for initialization)
			rs.b 1
z_updating_pwm		rs.b 1					; Updating PWM flag
			rs.b 2
z_tracks		rs.b 0					; Tracks
z_music_tracks		rs.b 0					; Music tracks
z_music_dac		rs.b 0					; Music DAC track (dummied out, unused)
z_music_fm_tracks	rs.b 0					; Music FM tracks
z_music_fm1		rs.b zsnd.struct_len			; Music FM1 track
z_music_fm2		rs.b zsnd.struct_len			; Music FM2 track
z_music_fm3		rs.b zsnd.struct_len			; Music FM3 track
z_music_fm4		rs.b zsnd.struct_len			; Music FM4 track
z_music_fm5		rs.b zsnd.struct_len			; Music FM5 track
z_music_fm6		rs.b zsnd.struct_len			; Music FM6 track
z_music_psg_tracks	rs.b 0					; Music PSG tracks
z_music_psg1		rs.b zsnd.struct_len			; Music PSG1 track
z_music_psg2		rs.b zsnd.struct_len			; Music PSG2 track
z_music_psg3		rs.b zsnd.struct_len			; Music PSG3/Noise track
z_music_pwm1		rs.b zsnd.struct_len			; Music PWM1 track
z_music_pwm2		rs.b zsnd.struct_len			; Music PWM2 track
z_music_pwm3		rs.b zsnd.struct_len			; Music PWM3 track
z_music_pwm4		rs.b zsnd.struct_len			; Music PWM4 track
z_sfx_tracks		rs.b 0					; SFX tracks
z_sfx_fm_tracks		rs.b 0					; SFX FM tracks
z_sfx_fm4		rs.b zsnd.struct_len			; SFX FM4 track
z_sfx_fm5		rs.b zsnd.struct_len			; SFX FM5 track
z_sfx_fm6		rs.b zsnd.struct_len			; SFX FM6 track
z_sfx_psg_tracks	rs.b 0					; SFX PSG tracks
z_sfx_psg2		rs.b zsnd.struct_len			; SFX PSG2 track
z_sfx_psg3		rs.b zsnd.struct_len			; SFX PSG3/Noise track
z_clear_vars_end	rs.b 0					; Clearable variables start

; -------------------------------------------------------------------------
