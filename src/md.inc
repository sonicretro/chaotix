; -------------------------------------------------------------------------
; Mega Drive definitions
; -------------------------------------------------------------------------

; -------------------------------------------------------------------------
; Memory map
; -------------------------------------------------------------------------

; 32X header
MARS_HEADER		EQU	$000000				; 32X header area

; Cartridge
CARTRIDGE		EQU	$000000				; Cartridge area start
CART_SIZE		EQU	$400000				; Cartridge area size
CART_END		EQU	CARTRIDGE+CART_SIZE		; Cartridge area end

; SRAM
SRAM_START		EQU	$200001				; SRAM area start

; 32X frame buffer
FRAME_BUFFER		EQU	$840000				; Frame buffer
OVER_WRITE		EQU	$860000				; Over write

; 32X cartridge
MARS_ROM_FIXED		EQU	$880000				; Fixed ROM bank area
MARS_FIXED_SIZE		EQU	$80000				; Fixed ROM bank area size
MARS_FIXED_END		EQU	MARS_ROM_FIXED+MARS_FIXED_SIZE	; Fixed ROM bank area end
MARS_ROM_BANK		EQU	$900000				; Switchable ROM bank area
MARS_BANK_SIZE		EQU	$100000				; Switchable ROM bank area size
MARS_BANK_END		EQU	MARS_ROM_BANK+MARS_BANK_SIZE	; Switchable ROM bank area end

; Z80 RAM
Z80_RAM			EQU	$A00000				; Z80 RAM area start
Z80_SIZE		EQU	$A00000				; Z80 RAM area size
Z80_END			EQU	Z80_RAM+Z80_SIZE		; Z80 RAM area end

; YM2612
YM_ADDR_0		EQU	$A04000				; YM2612 address port 0
YM_DATA_0		EQU	$A04001				; YM2612 data port 0
YM_ADDR_1		EQU	$A04002				; YM2612 address port 1
YM_DATA_1		EQU	$A04003				; YM2612 data port 1

; I/O
IO_BASE			EQU	$A10000				; I/O register base
VERSION			EQU	$A10001				; Hardware version
IO_DATA_1		EQU	$A10003				; I/O port 1 data
IO_DATA_2		EQU	$A10005				; I/O port 2 data
IO_DATA_3		EQU	$A10007				; I/O port 3 data
IO_CTRL_1		EQU	$A10009				; I/O port 1 control
IO_CTRL_2		EQU	$A1000B				; I/O port 2 control
IO_CTRL_3		EQU	$A1000D				; I/O port 3 control

; Z80
Z80_BUS			EQU	$A11100				; Z80 bus request
Z80_RESET		EQU	$A11200				; Z80 reset

; Mapper/SRAM
MAPPER_CTRL		EQU	$A130F1				; Mapper/SRAM control
MAPPER_BANK_1		EQU	$A130F3				; ROM bank 1
MAPPER_BANK_2		EQU	$A130F5				; ROM bank 1
MAPPER_BANK_3		EQU	$A130F7				; ROM bank 1
MAPPER_BANK_4		EQU	$A130F9				; ROM bank 1
MAPPER_BANK_5		EQU	$A130FB				; ROM bank 1
MAPPER_BANK_6		EQU	$A130FD				; ROM bank 1
MAPPER_BANK_7		EQU	$A130FF				; ROM bank 1

; TMSS
TMSS_SEGA		EQU	$A14000				; TMSS write register

; 32X
MARS_ID			EQU	$A130EC				; Identifier
MARS_FM			EQU	$A15100				; SuperVDP access
MARS_ADAPTER		EQU	$A15101				; Adapter control
MARS_INT		EQU	$A15103				; Interrupt control
MARS_BANK		EQU	$A15105				; Cartridge bank
DREQ_CTRL		EQU	$A15107				; DREQ control
DREQ_SRC		EQU	$A15108				; DREQ source address
DREQ_DEST		EQU	$A1510C				; DREQ destination address
DREQ_LENGTH		EQU	$A15110				; DREQ length
DREQ_FIFO		EQU	$A15112				; DREQ FIFO
SEGA_TV			EQU	$A1511A				; Sega TV register
MARS_COMM_0		EQU	$A15120				; Communication register 0
MARS_COMM_2		EQU	$A15122				; Communication register 2
MARS_COMM_4		EQU	$A15124				; Communication register 4
MARS_COMM_6		EQU	$A15126				; Communication register 6
MARS_COMM_8		EQU	$A15128				; Communication register 8
MARS_COMM_10		EQU	$A1512A				; Communication register 10
MARS_COMM_12		EQU	$A1512C				; Communication register 12
MARS_COMM_14		EQU	$A1512E				; Communication register 14
PWM_TIMER		EQU	$A15130				; PWM timer interval
PWM_CTRL		EQU	$A15131				; PWM control
PWM_CYCLE		EQU	$A15132				; PWM cycle
PWM_LEFT		EQU	$A15134				; PWM pulse width (left)
PWM_RIGHT		EQU	$A15136				; PWM pulse width (right)
PWM_MONO		EQU	$A15138				; PWM pulse width (mono)

; 32X SuperVDP
TV_MODE			EQU	$A15180				; TV mode
BITMAP_MODE		EQU	$A15181				; Bitmap mode
SCREEN_SHIFT		EQU	$A15183				; Screen shift
FILL_LENGTH		EQU	$A15184				; Frame buffer fill length
FILL_START		EQU	$A15186				; Frame buffer fill start
FILL_DATA		EQU	$A15188				; Frame buffer fill data
MARS_VDP_STATUS		EQU	$A1518A				; VDP status
FRAME_CTRL		EQU	$A1518B				; Frame buffer control

; 32X palette
MARS_PALETTE		EQU	$A15200				; Palette
MARS_PAL_SIZE		EQU	$200				; Palette size
MARS_PAL_END		EQU	MARS_PALETTE+MARS_PAL_SIZE	; Palette end

; VDP
VDP_DATA		EQU	$C00000				; VDP data port
VDP_CTRL		EQU	$C00004				; VDP control port
VDP_HV			EQU	$C00008				; VDP H/V counter
PSG_CTRL		EQU	$C00011				; PSG control port

; Work RAM
RAM_START		EQU	$FF0000				; Work RAM start
RAM_SIZE		EQU	$10000				; Work RAM size
RAM_END			EQU	RAM_START+RAM_SIZE		; Work RAM end

; -------------------------------------------------------------------------
; Header
; -------------------------------------------------------------------------

BankSet			EQU	MARS_HEADER+$C0			; Set control or ROM bank
BankSetAll		EQU	MARS_HEADER+$D4			; Set all ROM banks and control

; -------------------------------------------------------------------------
