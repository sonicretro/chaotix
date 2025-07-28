; -------------------------------------------------------------------------
; RAM definitions
; -------------------------------------------------------------------------

; -------------------------------------------------------------------------
; SRAM
; -------------------------------------------------------------------------
	
	rsreset
sram_data		rs.b $100
sram_length		rs.b 0

SRAM_BACKUP		equ SRAM_START+(sram_length*2)
SRAM_END		equ SRAM_START+((sram_length*2)*2)-2

; -------------------------------------------------------------------------
; Object structure
; -------------------------------------------------------------------------

	rsreset
obj.next		rs.w 1
obj.prev		rs.w 1
obj.var_4		rs.b 1
obj.var_5		rs.b 0
obj.sprite_flags	rs.b 1
obj.id			rs.b 1
obj.var_7		rs.b 1
obj.x			rs.l 1
obj.y			rs.l 1
obj.var_10		rs.b 0
oSprite			rs.l 1
obj.screen_x		rs.w 1
obj.screen_y		rs.w 1
obj.x_speed		rs.l 1
obj.y_speed		rs.l 1
obj.var_20		rs.b 1
obj.var_21		rs.b 1
obj.var_22		rs.b 0
obj.width		rs.b 1
obj.var_23		rs.b 0
obj.height		rs.b 1
obj.var_24		rs.b 1
obj.var_25		rs.b 1
obj.var_26		rs.b 1
obj.var_27		rs.b 1
obj.var_28		rs.b 0
obj.subtype		rs.w 1
obj.var_2A		rs.b 1
obj.var_2B		rs.b 1
obj.var_2C		rs.b 1
obj.var_2D		rs.b 1
obj.var_2E		rs.b 1
obj.var_2F		rs.b 1
obj.var_30		rs.b 1
obj.var_31		rs.b 1
obj.var_32		rs.b 1
obj.var_33		rs.b 1
obj.var_34		rs.b 1
obj.var_35		rs.b 1
obj.var_36		rs.b 1
obj.var_37		rs.b 1
obj.var_38		rs.b 1
obj.var_39		rs.b 1
obj.var_3A		rs.b 1
obj.var_3B		rs.b 1
obj.var_3C		rs.b 0
obj.x_scale		rs.w 1
obj.var_3E		rs.b 0
obj.y_scale		rs.w 1
obj.struct_len		rs.b 0

; -------------------------------------------------------------------------
; Player variables
; -------------------------------------------------------------------------

player.routine		equ obj.var_7
player.angle		equ obj.var_2A
player.ground_speed	equ obj.var_2C

; -------------------------------------------------------------------------
; Player physics
; -------------------------------------------------------------------------

	rsreset
physics.var_0		rs.b 1
physics.var_1		rs.b 1
physics.var_2		rs.b 1
physics.var_3		rs.b 1
physics.var_4		rs.b 1
physics.var_5		rs.b 1
physics.accel		rs.w 1
physics.decel		rs.w 1
physics.gravity		rs.l 1
physics.var_E		rs.b 1
physics.var_F		rs.b 1
physics.var_10		rs.b 1
physics.var_11		rs.b 1
physics.var_12		rs.b 1
physics.var_13		rs.b 1
physics.var_14		rs.w 1
physics.var_16		rs.b 1
physics.var_17		rs.b 1
physics.var_18		rs.w 1
physics.var_1A		rs.w 1
physics.var_1C		rs.w 1
physics.var_1E		rs.b 1
physics.var_1F		rs.b 1
physics.jump		rs.w 1
physics.var_22		rs.w 1
physics.var_24		rs.b 1
physics.var_25		rs.b 1
physics.var_26		rs.b 1
physics.var_27		rs.b 1
physics.var_28		rs.b 1
physics.var_29		rs.b 1
physics.var_2A		rs.w 1
physics.var_2C		rs.w 1
physics.var_2E		rs.w 1
physics.var_30		rs.w 1
physics.var_32		rs.b 1
physics.var_33		rs.b 1
physics.var_34		rs.b 1
physics.var_35		rs.b 1
physics.var_36		rs.b 1
physics.var_37		rs.b 1
physics.var_38		rs.b 1
physics.var_39		rs.b 1
physics.var_3A		rs.b 1
physics.var_3B		rs.b 1
physics.var_3C		rs.b 1
physics.var_3D		rs.b 1
physics.var_3E		rs.b 1
physics.var_3F		rs.b 1
physics.var_40		rs.b 1
physics.var_41		rs.b 1
physics.var_42		rs.b 1
physics.var_43		rs.b 1
physics.var_44		rs.b 1
physics.var_45		rs.b 1
physics.var_46		rs.b 1
physics.var_47		rs.b 1
physics.var_48		rs.b 1
physics.var_49		rs.b 1

; -------------------------------------------------------------------------
; Controller data structure
; -------------------------------------------------------------------------

	rsreset
ctrl.type		rs.b 1
			rs.b 2
ctrl.hold_6		rs.b 1
ctrl.hold_3		rs.b 1
ctrl.press_3		rs.b 1
ctrl.press_6		rs.b 1
ctrl.angle		rs.b 1
ctrl.var_8		rs.b 1
ctrl.var_9		rs.b 1
ctrl.var_A		rs.b 1
ctrl.var_B		rs.b 1
ctrl.var_C		rs.w 1
ctrl.var_E		rs.w 1
ctrl.struct_len		rs.b 0

	rsreset
			rs.b 1
mouse.orientation	rs.b 1
mouse.buttons		rs.b 1
mouse.x_high		rs.b 1
mouse.x_low		rs.b 1
mouse.y_high		rs.b 1
mouse.y_low		rs.b 1
			rs.b 9

; -------------------------------------------------------------------------
; RAM memory map
; -------------------------------------------------------------------------

	rsset RAM_START
byte_FF0000		rs.b $200
stack_base		rs.b 0
byte_FF0200		rs.b $180
byte_FF0380		rs.b $40
byte_FF03C0		rs.b $240
byte_FF0600		rs.b $400
word_FF0A00		rs.b 2
byte_FF0A02		rs.b $100
word_FF0B02		rs.b $82
word_FF0B84		rs.b $102
word_FF0C86		rs.b $82
byte_FF0D08		rs.b $72F8
	rsset RAM_START+$FF008000
byte_FF8000		rs.b $2D08
object_pool		rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b obj.struct_len
			rs.b $38
byte_FFC000		rs.b $C
			rs.b 6
line_a_emulator		rs.b 6
line_f_emulator		rs.b 6
trace_exception		rs.b 6
spurious_exception	rs.b 6
external_int		rs.b 6
vblank_int		rs.b 6
hblank_int		rs.b $100
ctrl_1_type		rs.b 1
ctrl_2_type		rs.b 1
ctrl_p1			rs.b ctrl.struct_len
ctrl_p2			rs.b ctrl.struct_len
ctrl_p3			rs.b ctrl.struct_len
ctrl_p4			rs.b ctrl.struct_len
ctrl_p5			rs.b ctrl.struct_len
ctrl_p6			rs.b ctrl.struct_len
ctrl_p7			rs.b ctrl.struct_len
ctrl_p8			rs.b ctrl.struct_len
vdp_reg_80		rs.b 2
vdp_reg_81		rs.b 2
vdp_reg_82		rs.b 2
vdp_reg_83		rs.b 2
vdp_reg_84		rs.b 2
vdp_reg_85		rs.b 2
vdp_reg_86		rs.b 2
vdp_reg_87		rs.b 2
vdp_reg_88		rs.b 2
vdp_reg_89		rs.b 2
vdp_reg_8a		rs.b 2
vdp_reg_8b		rs.b 2
vdp_reg_8c		rs.b 2
vdp_reg_8d		rs.b 2
vdp_reg_8e		rs.b 2
vdp_reg_8f		rs.b 2
vdp_reg_90		rs.b 2
vdp_reg_91		rs.b 2
vdp_reg_92		rs.b 2
camera_x		rs.b 2
word_FFC1E0		rs.b 2
word_FFC1E2		rs.b 2
byte_FFC1E4		rs.b 1
			rs.b 1
right_bound		rs.b 2
left_bound		rs.b 2
bottom_bound		rs.b 2
top_bound		rs.b 2
camera_y		rs.b 2
word_FFC1F0		rs.b 2
word_FFC1F2		rs.b 2
			rs.b 4
word_FFC1F8		rs.b 2
stage_art_fg		rs.b 2
word_FFC1FC		rs.b 2
stage_layout		rs.b 4
stage_chunks_a		rs.b 4
stage_blocks_a		rs.b 4
			rs.b 4
word_FFC20E		rs.b 2
word_FFC210		rs.b 2
			rs.b 8
byte_FFC21A		rs.b 1
			rs.b 1
byte_FFC21C		rs.b 1
byte_FFC21D		rs.b 1
word_FFC21E		rs.b 2
			rs.b 2
			rs.b $C
word_FFC22E		rs.b 2
word_FFC230		rs.b 2
			rs.b 8
stage_art_bg		rs.b 2
			rs.b 2
dword_FFC23E		rs.b 4
stage_chunks_b		rs.b 4
stage_blocks_b		rs.b 4
			rs.b $11
byte_FFC25B		rs.b 1
			rs.b 1
byte_FFC25D		rs.b 1
word_FFC25E		rs.b 2
word_FFC260		rs.b 2
dword_FFC262		rs.b 4
dword_FFC266		rs.b 4
dword_FFC26A		rs.b 4
dword_FFC26E		rs.b 4
dword_FFC272		rs.b 4
dword_FFC276		rs.b 4
dword_FFC27A		rs.b 4
dword_FFC27E		rs.b 4
dword_FFC282		rs.b 4
dword_FFC286		rs.b 4
dword_FFC28A		rs.b 4
dword_FFC28E		rs.b 4
dword_FFC292		rs.b 4
dword_FFC296		rs.b 4
dword_FFC29A		rs.b 4
dword_FFC29E		rs.b 4
dword_FFC2A2		rs.b 4
dword_FFC2A6		rs.b 4
dword_FFC2AA		rs.b 4
dword_FFC2AE		rs.b 4
dword_FFC2B2		rs.b 4
dword_FFC2B6		rs.b 4
dword_FFC2BA		rs.b 4
dword_FFC2BE		rs.b 4
dword_FFC2C2		rs.b 4
dword_FFC2C6		rs.b 4
dword_FFC2CA		rs.b 4
dword_FFC2CE		rs.b 4
dword_FFC2D2		rs.b 4
dword_FFC2D6		rs.b 4
dword_FFC2DA		rs.b 4
dword_FFC2DE		rs.b 4
dword_FFC2E2		rs.b 4
dword_FFC2E6		rs.b 4
dword_FFC2EA		rs.b 4
dword_FFC2EE		rs.b 4
dword_FFC2F2		rs.b 4
dword_FFC2F6		rs.b 4
dword_FFC2FA		rs.b 4
dword_FFC2FE		rs.b 4
dword_FFC302		rs.b 4
dword_FFC306		rs.b 4
dword_FFC30A		rs.b 4
dword_FFC30E		rs.b 4
dword_FFC312		rs.b 4
dword_FFC316		rs.b 4
dword_FFC31A		rs.b 4
dword_FFC31E		rs.b 4
dword_FFC322		rs.b 4
			rs.b 4
dword_FFC32A		rs.b 4
word_FFC32E		rs.b 2
			rs.b 2
word_FFC332		rs.b 2
			rs.b 2
word_FFC336		rs.b 2
			rs.b 2
word_FFC33A		rs.b 2
			rs.b $22
byte_FFC35E		rs.b 2
word_FFC360		rs.b 2
			rs.b $29E
word_FFC600		rs.b 2
			rs.b $11C
word_FFC71E		rs.b 2
word_FFC720		rs.b 2
			rs.b $37C
md_sprites		rs.b $280
			rs.b $200
sprite_layers		rs.b $100
mars_draw_cmd_slot	rs.b 2
mars_draw_cmds		rs.b $43E
mars_draw_cmds_end	rs.b 2
md_palette		rs.b $80
			rs.b $80
stage_palette		rs.b $80
			rs.b $80
word_FFD660		rs.b 2
mars_color_test		rs.b $10
			rs.b $F0
byte_FFD762		rs.b $FE
mars_color_queue	rs.b $400
byte_FFDC60		rs.b 1
byte_FFDC61		rs.b 1
byte_FFDC62		rs.b 1
byte_FFDC63		rs.b 1
byte_FFDC64		rs.b 1
byte_FFDC65		rs.b 1
word_FFDC66		rs.b 2
byte_FFDC68		rs.b 1
byte_FFDC69		rs.b 1
byte_FFDC6A		rs.b 1
			rs.b 1
dword_FFDC6C		rs.b 4
dword_FFDC70		rs.b 4
dma_queue		rs.b $A2
dma_from_rom		rs.b $40
nem_buffer		rs.b $200
plc_buffer		rs.b $60
plc_repeat		rs.b 4
plc_pixel		rs.b 4
plc_row			rs.b 4
plc_read		rs.b 4
plc_shift		rs.b 4
plc_nem_write		rs.b 4
plc_tile_count		rs.b 2
plc_proc_tile_count	rs.b 2
plane_a_addr		rs.b 2
plane_b_addr		rs.b 2
md_sprite_addr		rs.b 2
hscroll_addr		rs.b 2
window_addr		rs.b 2
plane_stride		rs.b 2
scene_id		rs.b 2
scene_sub_id		rs.b 2
byte_FFDFE2		rs.b 1
			rs.b 1
word_FFDFE4		rs.b 2
byte_FFDFE6		rs.b 1
byte_FFDFE7		rs.b 1
cam_x_target		rs.b 2
cam_y_target		rs.b 2
word_FFDFEC		rs.b 2
word_FFDFEE		rs.b 2
word_FFDFF0		rs.b 2
attraction		rs.b 2
level			rs.b 2
time_of_day		rs.b 2
			rs.b 2
word_FFDFFA		rs.b 2
			rs.b 2
dword_FFDFFE		rs.b 4
word_FFE002		rs.b 2
byte_FFE004		rs.b 1
byte_FFE005		rs.b 1
byte_FFE006		rs.b 1
byte_FFE007		rs.b 1
rings			rs.b 2
score			rs.b 4
word_FFE00E		rs.b 2
time			rs.b 2
			rs.b 4
dword_FFE016		rs.b 4
chaos_rings		rs.b 1
byte_FFE01B		rs.b 1
save_slot_id		rs.b 2
obj_pool_count_0	rs.b 2
obj_pool_count_1	rs.b 2
obj_pool_count_2	rs.b 2
obj_pool_count_3	rs.b 2
obj_pool_next_free	rs.b 2
obj_pool_head_0		rs.b 2
obj_pool_head_1		rs.b 2
obj_pool_head_2		rs.b 2
obj_pool_head_3		rs.b 2
			rs.b 2
word_FFE032		rs.b 2
p1_object		rs.b 2
p2_object		rs.b 2
p1_character		rs.b 2
p2_character		rs.b 2
			rs.b $C
bonus_player		rs.b 2
			rs.b 2
p1_ctrl_config		rs.b 1
byte_FFE04D		rs.b 1
byte_FFE04E		rs.b 1
			rs.b 3
word_FFE052		rs.b 2
word_FFE054		rs.b 2
word_FFE056		rs.b 2
			rs.b 4
p2_ctrl_config		rs.b 1
byte_FFE05D		rs.b 1
byte_FFE05E		rs.b 1
			rs.b 3
word_FFE062		rs.b 2
			rs.b $28
obj_spawn_left		rs.b 2
obj_spawn_top		rs.b 2
obj_spawn_right		rs.b 2
obj_spawn_bottom	rs.b 2
word_FFE094		rs.b 2
word_FFE096		rs.b 2
			rs.b 4
object_layout		rs.b 4
obj_layout_first	rs.b 2
object_states		rs.b $100
word_FFE1A2		rs.b 2
get_stage_block		rs.b 6
byte_FFE1AA		rs.b 1
byte_FFE1AB		rs.b 1
byte_FFE1AC		rs.b 1
			rs.b 1
word_FFE1AE		rs.b 2
word_FFE1B0		rs.b 2
word_FFE1B2		rs.b 2
word_FFE1B4		rs.b 2
dword_FFE1B6		rs.b 4
byte_FFE1BA		rs.b 1
			rs.b 7
dword_FFE1C2		rs.b 4
			rs.b $3A
word_FFE200		rs.b 2
word_FFE202		rs.b 2
word_FFE204		rs.b 2
word_FFE206		rs.b 2
word_FFE208		rs.b 2
word_FFE20A		rs.b 2
word_FFE20C		rs.b 2
word_FFE20E		rs.b 2
byte_FFE210		rs.b 1
byte_FFE211		rs.b 1
byte_FFE212		rs.b 1
byte_FFE213		rs.b 1
word_FFE214		rs.b 2
save_slot_1		rs.b 2
word_FFE218		rs.b 2
word_FFE21A		rs.b 2
word_FFE21C		rs.b 2
word_FFE21E		rs.b 2
byte_FFE220		rs.b 1
			rs.b 1
byte_FFE222		rs.b 4
save_slot_2		rs.b $10
save_slot_3		rs.b $14
byte_FFE24A		rs.b $C
byte_FFE256		rs.b 8
byte_FFE25E		rs.b 4
byte_FFE262		rs.b $10
word_FFE272		rs.b 2
word_FFE274		rs.b 2
word_FFE276		rs.b 2
word_FFE278		rs.b 2
byte_FFE27A		rs.b 1
			rs.b 1
byte_FFE27C		rs.b 1
byte_FFE27D		rs.b 1
dword_FFE27E		rs.b 4
dword_FFE282		rs.b 4
dword_FFE286		rs.b 4
dword_FFE28A		rs.b 4
word_FFE28E		rs.b 2
byte_FFE290		rs.b 1
byte_FFE291		rs.b 1
word_FFE292		rs.b 2
word_FFE294		rs.b 2
word_FFE296		rs.b 2
word_FFE298		rs.b 2
word_FFE29A		rs.b 2
word_FFE29C		rs.b 2
word_FFE29E		rs.b 2
			rs.b $62
byte_FFE302		rs.b $E
byte_FFE310		rs.b $1E6
byte_FFE4F6		rs.b $10A
byte_FFE600		rs.b $100
byte_FFE700		rs.b $80
byte_FFE780		rs.b $2E
byte_FFE7AE		rs.b $12
byte_FFE7C0		rs.b $28E
byte_FFEA4E		rs.b $7B2
byte_FFF200		rs.b $40C
word_FFF60C		rs.b 2
bonus_rings		rs.b 2
bonus_cam_x		rs.b 2
bonus_cam_y		rs.b 2
bonus_cam_z		rs.b 2
bonus_speed		rs.b 2
word_FFF618		rs.b 2
dword_FFF61A		rs.b 4
dword_FFF61E		rs.b 4
dword_FFF622		rs.b 4
word_FFF626		rs.b 2
dword_FFF628		rs.b 4
			rs.b $14
dword_FFF640		rs.b 4
			rs.b $14
dword_FFF658		rs.b 4
			rs.b $18
dword_FFF674		rs.b 4
			rs.b $18
byte_FFF690		rs.b 1
byte_FFF691		rs.b 1
dword_FFF692		rs.b 4
byte_FFF696		rs.b 1
byte_FFF697		rs.b 1
word_FFF698		rs.b 2
dword_FFF69A		rs.b 4
byte_FFF69E		rs.b $100
byte_FFF79E		rs.b 4
			rs.b 4
			rs.b $78
byte_FFF81E		rs.b $1E2
save_data		rs.b $1C0
word_FFFBC0		rs.b 2
byte_FFFBC2		rs.b 1
byte_FFFBC3		rs.b 1
word_FFFBC4		rs.b 2
word_FFFBC6		rs.b 2
word_FFFBC8		rs.b 2
word_FFFBCA		rs.b 2
word_FFFBCC		rs.b 2
byte_FFFBCE		rs.b 1
byte_FFFBCF		rs.b 1
word_FFFBD0		rs.b 2
word_FFFBD2		rs.b 2
byte_FFFBD4		rs.b 1
byte_FFFBD5		rs.b 1
word_FFFBD6		rs.b 2
byte_FFFBD8		rs.b 1
byte_FFFBD9		rs.b 1
byte_FFFBDA		rs.b 2
byte_FFFBDC		rs.b 1
byte_FFFBDD		rs.b 1
byte_FFFBDE		rs.b 1
byte_FFFBDF		rs.b 1
byte_FFFBE0		rs.b 1
byte_FFFBE1		rs.b 1
word_FFFBE2		rs.b 2
word_FFFBE4		rs.b 2
word_FFFBE6		rs.b 2
word_FFFBE8		rs.b 2
dword_FFFBEA		rs.b 4
dword_FFFBEE		rs.b 4
			rs.b 4
byte_FFFBF6		rs.b $1C
dword_FFFC12		rs.b 4
word_FFFC16		rs.b 2
word_FFFC18		rs.b 2
word_FFFC1A		rs.b 2
byte_FFFC1C		rs.b 2
word_FFFC1E		rs.b 2
			rs.b 2
word_FFFC22		rs.b 4
word_FFFC26		rs.b 2
word_FFFC28		rs.b 2
word_FFFC2A		rs.b 2
byte_FFFC2C		rs.b 1
byte_FFFC2D		rs.b 1
word_FFFC2E		rs.b 2
word_FFFC30		rs.b 2
word_FFFC32		rs.b 2
			rs.b $8C
word_FFFCC0		rs.b 2
word_FFFCC2		rs.b 2
word_FFFCC4		rs.b 2
word_FFFCC6		rs.b 2
word_FFFCC8		rs.b 2
word_FFFCCA		rs.b 2
byte_FFFCCC		rs.b 1
byte_FFFCCD		rs.b 1
byte_FFFCCE		rs.b 1
byte_FFFCCF		rs.b 1
word_FFFCD0		rs.b 2
dword_FFFCD2		rs.b 4
dword_FFFCD6		rs.b 4
word_FFFCDA		rs.b 2
word_FFFCDC		rs.b 2
word_FFFCDE		rs.b 2
word_FFFCE0		rs.b 2
word_FFFCE2		rs.b 2
word_FFFCE4		rs.b 2
byte_FFFCE6		rs.b 1
byte_FFFCE7		rs.b 1
byte_FFFCE8		rs.b 1
byte_FFFCE9		rs.b 1
rubberband_flags	rs.b 1
			rs.b 1
word_FFFCEC		rs.b 2
word_FFFCEE		rs.b 2
word_FFFCF0		rs.b 2
word_FFFCF2		rs.b 2
word_FFFCF4		rs.b 2
word_FFFCF6		rs.b 2
dword_FFFCF8		rs.b 4
current_song		rs.b 1
byte_FFFCFD		rs.b 1
byte_FFFCFE		rs.b 1
			rs.b 1
byte_FFFD00		rs.b $10
md_sprite_x		rs.b 2
md_sprite_y		rs.b 2
			rs.b 8
dword_FFFD1C		rs.b 4
dword_FFFD20		rs.b 4
word_FFFD24		rs.b 2
word_FFFD26		rs.b 2
demo_button_time	rs.b 1
demo_button		rs.b 1
demo_address		rs.b 4
word_FFFD2E		rs.b 2
byte_FFFD30		rs.b 1
byte_FFFD31		rs.b 1
word_FFFD32		rs.b 2
word_FFFD34		rs.b 2
c_press_count		rs.b 2
save_mode		rs.b 1
byte_FFFD39		rs.b 1
			rs.b $86
byte_FFFDC0		rs.b 1
byte_FFFDC1		rs.b 1
byte_FFFDC2		rs.b 2
byte_FFFDC4		rs.b 1
time_over		rs.b 1
dword_FFFDC6		rs.b 4
word_FFFDCA		rs.b 2
dword_FFFDCC		rs.b 4
word_FFFDD0		rs.b 2
word_FFFDD2		rs.b 2
word_FFFDD4		rs.b 2
byte_FFFDD6		rs.b 1
byte_FFFDD7		rs.b 1
byte_FFFDD8		rs.b 1
byte_FFFDD9		rs.b 1
byte_FFFDDA		rs.b 6
word_FFFDE0		rs.b 2
word_FFFDE2		rs.b 2
word_FFFDE4		rs.b 2
word_FFFDE6		rs.b 2
word_FFFDE8		rs.b 2
			rs.b $28
word_FFFE12		rs.b 2
word_FFFE14		rs.b 2
word_FFFE16		rs.b 2
word_FFFE18		rs.b 2
word_FFFE1A		rs.b 2
word_FFFE1C		rs.b 2
byte_FFFE1E		rs.b 1
			rs.b $A1
word_FFFEC0		rs.b 2
byte_FFFEC2		rs.b 1
byte_FFFEC3		rs.b 1
byte_FFFEC4		rs.b $7C
dword_FFFF40		rs.b 4
			rs.b $3C
word_FFFF80		rs.b 2
word_FFFF82		rs.b 2
word_FFFF84		rs.b 2
word_FFFF86		rs.b 2
			rs.b $38
dword_FFFFC0		rs.b 4
init_flag		rs.b 4
dword_FFFFC8		rs.b 4
version_cache		rs.b 2
byte_FFFFCE		rs.b 1
byte_FFFFCF		rs.b 1
demo_id			rs.b 1
byte_FFFFD1		rs.b 1
			rs.b $1A
debug_enabled		rs.b 1
amy_enabled		rs.b 1
stage_select_enabled	rs.b 1
			rs.b $11

; -------------------------------------------------------------------------
