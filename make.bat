@echo off
if not exist out mkdir out
cd src
..\bin\asmsh /p /o psh2,#+,l.,m+ "mars/pwm_driver.asm","../out/pwm_driver.bin",,"../out/pwm_driver.lst"
..\bin\asw -q -xx -n -A -L -U -i . "sound/z80/driver.asm" -o "../out/z80_driver.p" -olist "../out/z80_driver.lst"
..\bin\p2bin "../out/z80_driver.p" "../out/z80_driver.bin"
if exist "../out/z80_driver.p" del "../out/z80_driver.p"
..\bin\asm68k /p /o ae-,l.,ow+,m+ "main.asm","../out/chaotix.32x",,"../out/chaotix.lst"
..\bin\fixheadr ../out/chaotix.32x
pause