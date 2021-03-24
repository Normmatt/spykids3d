OUTPUT_ARCH(arm)

gNumMusicPlayers = 4;
gMaxLines = 0;

SECTIONS
{
    . = 0x02000000;
    EWRAM (NOLOAD) :
    ALIGN(4)
    {
        data/ewram.o(ewram_data);
        src/random.o(ewram_data);
        data/ewram_02000394.o(ewram_data);
        src/m4a.o(ewram_data);
        data/ewram_2.o(ewram_data);
    }

    . = 0x03000000;
    IWRAM (NOLOAD) :
    ALIGN(4)
    {
        data/bss_1.o(iwram_data);
        src/m4a.o(iwram_data);
        data/bss_2.o(iwram_data);
    }
    
	. = 0x08000000;
    .text :
	ALIGN(4)
	{
        asm/crt0.o(.text);
        asm/arm_80001CC.o(.text);
        src/input.o(.text);
        src/random.o(.text);
        src/fade.o(.text);
        src/copyright_screens.o(.text);
        src/unk_8000D70.o(.text);
        src/pause_screen.o(.text);
        asm/code.o(.text);
        src/sound.o(.text);
        asm/code_2.o(.text);
        asm/m4a_asm.o(.text);
        src/m4a.o(.text);
        asm/libagbsyscall.o(.text);
        asm/eeprom.o(.text);
        *libgcc.a:_call_via_rX.o(.text);
        *libgcc.a:_divsi3.o(.text);
        *libgcc.a:_dvmd_tls.o(.text);
        *libgcc.a:_modsi3.o(.text);
        *libgcc.a:_udivsi3.o(.text);
        *libgcc.a:_umodsi3.o(.text);
        asm/thunks.o(.text);
	} = 0

    .data :
	ALIGN(4)
    {
        data/data.o(.data);
    } = 0
    
    ROM_END = .;
    
    /* DWARF debug sections.
       Symbols in the DWARF debugging sections are relative to the beginning
       of the section so we begin them at 0.  */

    /* DWARF 1 */
    .debug          0 : { *(.debug) }
    .line           0 : { *(.line) }

    /* GNU DWARF 1 extensions */
    .debug_srcinfo  0 : { *(.debug_srcinfo) }
    .debug_sfnames  0 : { *(.debug_sfnames) }

    /* DWARF 1.1 and DWARF 2 */
    .debug_aranges  0 : { *(.debug_aranges) }
    .debug_pubnames 0 : { *(.debug_pubnames) }

    /* DWARF 2 */
    .debug_info     0 : { *(.debug_info .gnu.linkonce.wi.*) }
    .debug_abbrev   0 : { *(.debug_abbrev) }
    .debug_line     0 : { *(.debug_line) }
    .debug_frame    0 : { *(.debug_frame) }
    .debug_str      0 : { *(.debug_str) }
    .debug_loc      0 : { *(.debug_loc) }
    .debug_macinfo  0 : { *(.debug_macinfo) }

    /* Discard everything not specifically mentioned above. */
    /DISCARD/ :
    {
        *(*);
    }
}
