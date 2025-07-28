# Knuckles' Chaotix Disassembly

**I would like to stress that this is very incomplete**, but I can at least say that I believe all of the 68000/Z80 side is properly disassembled, builds bit-perfect, and can be modified to your hearts content without issue. Music and SFX are also in smps2asm format. The only buildable SH-2 code here is the PWM driver (disclaimer, it does get manually patched to put in the pointer to the PWM sample table, and unfortunately, it's fixed in place as is. Proper integration would be best done with a linker), while the rest is in an IDB file for IDA Pro (for version 7.7).

As for how the 68000 side is mapped out, Chaotix fixes the switchable bank (mapped at 0x900000-0x9FFFFF) is at bank 2 (0x200000-0x2FFFFF in the ROM file), so the disassembly has a fairly simple setup for laying it all out around that.

[This thread](https://forums.sonicretro.org/index.php?threads/chaotixs-32x-graphics-drawing-system.42122/) describes how the (non-special stage) graphics are handled in pretty good detail.

Also, while it may seem there's no checksum check, that's because it's handled by the 32X master SH-2 boot ROM, so keep that in mind.

Hopefully someone finds use in it and perhaps even continue where I left off. You can also find the old disassembly by andlabs in the "old" folder.

Devon  
July 27, 2025