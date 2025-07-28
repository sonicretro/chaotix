; ------------------------------------------------------------------------------
; 32X definitions
; ------------------------------------------------------------------------------

; ------------------------------------------------------------------------------
; Memory map
; ------------------------------------------------------------------------------

; Cache through
TH			EQU	$20000000			; Cache through

; System registers
SYS_REGS		EQU	$4000+TH			; System registers
ADAPTER			EQU	$00				; Adapter control
	BIT_CART:		EQU	$01
	BIT_ADEN:		EQU	$02
	BIT_FM:			EQU	$80
INT_MASK		EQU	$01				; Interrupt mask
	BIT_PWMIRQ:		EQU	$01
	BIT_CMDIRQ:		EQU	$02
	BIT_HIRQ:		EQU	$04
	BIT_VIRQ:		EQU	$08
STANDBY			EQU	$02				; Standby
HCOUNT			EQU	$05				; H-BLANK interrupt interval
DREQ_CTRL		EQU	$07				; DREQ control
	BIT_RV:			EQU	$01
	BIT_DMA:		EQU	$02
	BIT_D68S:		EQU	$04
DREQ_SRC		EQU	$08				; DREQ source address
DREQ_DEST		EQU	$0C				; DREQ destination address
DREQ_LENGTH		EQU	$10				; DREQ length
DREQ_FIFO		EQU	$12				; DREQ FIFO
VRES_CLEAR		EQU	$14				; VRES interrupt clear
VBLANK_CLEAR		EQU	$16				; V-BLANK interrupt clear
HBLANK_CLEAR		EQU	$18				; H-BLANK interrupt clear
CMD_CLEAR		EQU	$1A				; CMD interrupt clear
PWM_CLEAR		EQU	$1C				; PWM interrupt clear
COMM_0			EQU	$20				; Communication register 0
COMM_1			EQU	$21				; Communication register 1
COMM_2			EQU	$22				; Communication register 2
COMM_3			EQU	$23				; Communication register 3
COMM_4			EQU	$24				; Communication register 4
COMM_5			EQU	$25				; Communication register 5
COMM_6			EQU	$26				; Communication register 6
COMM_7			EQU	$27				; Communication register 7
COMM_8			EQU	$28				; Communication register 8
COMM_9			EQU	$29				; Communication register 9
COMM_10			EQU	$2A				; Communication register 10
COMM_11			EQU	$2B				; Communication register 11
COMM_12			EQU	$2C				; Communication register 12
COMM_13			EQU	$2D				; Communication register 13
COMM_14			EQU	$2E				; Communication register 14
COMM_15			EQU	$2F				; Communication register 15
PWM_TIMER		EQU	$30				; PWM timer interval
PWM_CTRL		EQU	$31				; PWM control
PWM_CYCLE		EQU	$32				; PWM cycle
PWM_LEFT		EQU	$34				; PWM pulse width (left)
PWM_RIGHT		EQU	$36				; PWM pulse width (right)
PWM_MONO		EQU	$38				; PWM pulse width (mono)

; VDP registers
VDP_REGS		EQU	$4100+TH			; VDP registers
TV_MODE			EQU	$00				; TV mode
	BIT_PAL:		EQU	$80
BITMAP_MODE		EQU	$01				; Bitmap mode
	BIT_PRI:		EQU	$80
	BIT_240:		EQU	$40
SCREEN_SHIFT		EQU	$03				; Screen shift
FILL_LENGTH		EQU	$04				; Frame buffer fill length
FILL_START		EQU	$06				; Frame buffer fill start
FILL_DATA		EQU	$08				; Frame buffer fill data
VDP_STATUS		EQU	$0A				; VDP status
	BIT_PEN:		EQU	$20
	BIT_HBLK:		EQU	$40
	BIT_VBLK:		EQU	$80
FRAME_CTRL		EQU	$0B				; Frame buffer control
	BIT_FS:			EQU	$01
	BIT_FEN:		EQU	$02

; CRAM
CRAM			EQU	$4200+TH			; CRAM start
CRAM_SIZE		EQU	$200				; CRAM size
CRAM_END		EQU	CRAM+CRAM_SIZE			; CRAM end

; Cartridge ROM
CARTRIDGE		EQU	$2000000			; Cartridge ROM start
CART_SIZE		EQU	$400000				; Cartridge ROM size
CART_END		EQU	CARTRIDGE+CART_SIZE		; Cartridge ROM end

; Frame buffer
FRAME_BUFFER		EQU	$4000000+TH			; Frame buffer start
FRAME_BUFFER_SIZE	EQU	$20000				; Frame buffer size
FRAME_BUFFER_END	EQU	FRAME_BUFFER+FRAME_BUFFER_END	; Frame buffer end
OVER_WRITE		EQU	$4020000+TH			; Over write start
OVER_WRITE_END		EQU	FRAME_BUFFER+FRAME_END		; Over write end

; SDRAM
SDRAM			EQU	$6000000			; SDRAM start
SDRAM_SIZE		EQU	$40000				; SDRAM size
SDRAM_END		EQU	SDRAM+SDRAM_SIZE		; SDRAM end

; Cache
CACHE			EQU	$C0000000			; Cache memory start

; Peripheral
FRT			EQU	$FFFFFE10			; Free running timer registers
TIER			EQU	$00				; Free running timer enable
TCSR			EQU	$01				; Free running timer control/status
FRCH			EQU	$02				; Free running counter (high)
FRCL			EQU	$03				; Free running counter (low)
OCRH			EQU	$04				; Output compare (high)
OCRL			EQU	$05				; Output compare (low)
TCR			EQU	$06				; Timer control
TOCR			EQU	$07				; Timer output compare control
CCR			EQU	$FFFFFE92			; Cache control register
DIV			EQU	$FFFFFF00			; Division registers
DVSR			EQU	$00				; Divisor
DVDNT			EQU	$04				; Dividend for 32-bit division
DVCR			EQU	$08				; Division control
VCRDIV			EQU	$0C				; Division vector number
DVDNTH			EQU	$10				; Dividend (high)
DVDNTL			EQU	$14				; Dividend (low)
DMA0			EQU	$FFFFFF80			; DMA channel 0 registers
SAR0			EQU	$00				; DMA channel 0 source
DAR0			EQU	$04				; DMA channel 0 destination
TCR0			EQU	$08				; DMA channel 0 count
CHCR0			EQU	$0C				; DMA channel 0 control
VCRDMA0			EQU	$20				; DMA channel 0 vector number
DRCR0			EQU	$FFFFFE71			; DMA channel 0 request/response selection
DMA1			EQU	$FFFFFF90			; DMA channel 1 registers
SAR1			EQU	$00				; DMA channel 1 source
DAR1			EQU	$04				; DMA channel 1 destination
TCR1			EQU	$08				; DMA channel 1 count
CHCR1			EQU	$0C				; DMA channel 1 control
VCRDMA1			EQU	$18				; DMA channel 1 vector number
DRCR1			EQU	$FFFFFE72			; DMA channel 1 request/response selection
DMAOR			EQU	$FFFFFFB0			; DMA operation

; ------------------------------------------------------------------------------
