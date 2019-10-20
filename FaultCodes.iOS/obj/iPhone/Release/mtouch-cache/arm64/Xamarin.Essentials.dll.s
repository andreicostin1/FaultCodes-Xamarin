.subsections_via_symbols
.section __DWARF, __debug_line,regular,debug
Ldebug_line_section_start:
Ldebug_line_start:
.section __DWARF, __debug_abbrev,regular,debug

	.byte 1,17,1,37,8,3,8,27,8,19,11,17,1,18,1,16,6,0,0,2,46,1,3,8,135,64,8,58,15,59,15,17
	.byte 1,18,1,64,10,0,0,3,5,0,3,8,73,19,2,10,0,0,15,5,0,3,8,73,19,2,6,0,0,4,36,0
	.byte 11,11,62,11,3,8,0,0,5,2,1,3,8,11,15,0,0,17,2,0,3,8,11,15,0,0,6,13,0,3,8,73
	.byte 19,56,10,0,0,7,22,0,3,8,73,19,0,0,8,4,1,3,8,11,15,73,19,0,0,9,40,0,3,8,28,13
	.byte 0,0,10,57,1,3,8,0,0,11,52,0,3,8,73,19,2,10,0,0,12,52,0,3,8,73,19,2,6,0,0,13
	.byte 15,0,73,19,0,0,14,16,0,73,19,0,0,16,28,0,73,19,56,10,0,0,18,46,0,3,8,17,1,18,1,0
	.byte 0,0
.section __DWARF, __debug_info,regular,debug
Ldebug_info_start:

LDIFF_SYM0=Ldebug_info_end - Ldebug_info_begin
	.long LDIFF_SYM0
Ldebug_info_begin:

	.short 2
	.long 0
	.byte 8,1
	.asciz "Mono AOT Compiler 6.0.0 (2019-02/e6f5369c2d2 Thu Jun 27 17:32:58 EDT 2019)"
	.asciz "Xamarin.Essentials.dll"
	.asciz ""

	.byte 2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
LDIFF_SYM1=Ldebug_line_start - Ldebug_line_section_start
	.long LDIFF_SYM1
LDIE_I1:

	.byte 4,1,5
	.asciz "sbyte"
LDIE_U1:

	.byte 4,1,7
	.asciz "byte"
LDIE_I2:

	.byte 4,2,5
	.asciz "short"
LDIE_U2:

	.byte 4,2,7
	.asciz "ushort"
LDIE_I4:

	.byte 4,4,5
	.asciz "int"
LDIE_U4:

	.byte 4,4,7
	.asciz "uint"
LDIE_I8:

	.byte 4,8,5
	.asciz "long"
LDIE_U8:

	.byte 4,8,7
	.asciz "ulong"
LDIE_I:

	.byte 4,8,5
	.asciz "intptr"
LDIE_U:

	.byte 4,8,7
	.asciz "uintptr"
LDIE_R4:

	.byte 4,4,4
	.asciz "float"
LDIE_R8:

	.byte 4,8,4
	.asciz "double"
LDIE_BOOLEAN:

	.byte 4,1,2
	.asciz "boolean"
LDIE_CHAR:

	.byte 4,2,8
	.asciz "char"
LDIE_STRING:

	.byte 4,8,1
	.asciz "string"
LDIE_OBJECT:

	.byte 4,8,1
	.asciz "object"
LDIE_SZARRAY:

	.byte 4,8,1
	.asciz "object"
.section __DWARF, __debug_loc,regular,debug
Ldebug_loc_start:
.section __DWARF, __debug_frame,regular,debug
	.align 3

LDIFF_SYM2=Lcie0_end - Lcie0_start
	.long LDIFF_SYM2
Lcie0_start:

	.long -1
	.byte 3
	.asciz ""

	.byte 1,120,30
	.align 3
Lcie0_end:
.text
	.align 3
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_AppInfo_get_PackageName
Xamarin_Essentials_AppInfo_get_PackageName:
.file 1 "D:\\a\\1\\s\\Xamarin.Essentials\\AppInfo\\AppInfo.shared.cs"
.loc 1 7 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
bl _p_2
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_0:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_AppInfo_get_VersionString
Xamarin_Essentials_AppInfo_get_VersionString:
.loc 1 11 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
bl _p_3
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_1:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_AppInfo_get_BuildString
Xamarin_Essentials_AppInfo_get_BuildString:
.loc 1 15 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
bl _p_4
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_2:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_AppInfo_PlatformGetPackageName
Xamarin_Essentials_AppInfo_PlatformGetPackageName:
.file 2 "D:\\a\\1\\s\\Xamarin.Essentials\\AppInfo\\AppInfo.ios.cs"
.loc 2 8 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #224]
bl _p_5
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_3:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_AppInfo_PlatformGetVersionString
Xamarin_Essentials_AppInfo_PlatformGetVersionString:
.loc 2 12 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #232]
bl _p_5
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_4:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_AppInfo_PlatformGetBuild
Xamarin_Essentials_AppInfo_PlatformGetBuild:
.loc 2 14 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #240]
bl _p_5
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_5:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_AppInfo_GetBundleValue_string
Xamarin_Essentials_AppInfo_GetBundleValue_string:
.loc 2 17 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
bl _p_6
.word 0xaa0003e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0x3940005e
bl _p_7
.word 0xaa0003fa
.word 0xb5000060
.word 0xd2800000
.word 0x14000005
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9402430
.word 0xd63f0200
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_6:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_Flashlight_TurnOnAsync
Xamarin_Essentials_Flashlight_TurnOnAsync:
.file 3 "D:\\a\\1\\s\\Xamarin.Essentials\\Flashlight\\Flashlight.shared.cs"
.loc 3 8 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
bl _p_8
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_7:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_Flashlight_TurnOffAsync
Xamarin_Essentials_Flashlight_TurnOffAsync:
.loc 3 11 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
bl _p_9
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_8:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_Flashlight_PlatformTurnOnAsync
Xamarin_Essentials_Flashlight_PlatformTurnOnAsync:
.file 4 "D:\\a\\1\\s\\Xamarin.Essentials\\Flashlight\\Flashlight.ios.cs"
.loc 4 10 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xd2800020
bl _p_10
.loc 4 12 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #248]
.word 0x3980b410
.word 0xb5000050
bl _p_11

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #256]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_9:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_Flashlight_PlatformTurnOffAsync
Xamarin_Essentials_Flashlight_PlatformTurnOffAsync:
.loc 4 17 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xd2800000
bl _p_10
.loc 4 19 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #248]
.word 0x3980b410
.word 0xb5000050
bl _p_11

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #256]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_a:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_Flashlight_Toggle_bool
Xamarin_Essentials_Flashlight_Toggle_bool:
.loc 4 24 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf90013bf
.word 0xf90017bf
bl _p_12
bl _p_13
.word 0xaa0003f9
.loc 4 25 0
.word 0xaa1903e0
.word 0xb40008a0
.word 0xaa1903e0
.word 0x3940033e
bl _p_14
.word 0x53001c00
.word 0x350000c0
.word 0xaa1903e0
.word 0x3940033e
bl _p_15
.word 0x53001c00
.word 0x34000760
.loc 4 28 0
.word 0xaa1903e0
.word 0x910083a1
.word 0x3940033e
bl _p_16
.loc 4 30 0
.word 0xf94013a0
.word 0xb5000560
.loc 4 32 0
.word 0x394063a0
.word 0x340002e0
.loc 4 34 0
.word 0xaa1903e0
.word 0x3940033e
bl _p_15
.word 0x53001c00
.word 0x34000100
.loc 4 35 0
bl _p_17
.word 0x1e22c000
.word 0xaa1903e0
.word 0x1e624000
.word 0x9100a3a1
.word 0x3940033e
bl _p_18
.loc 4 36 0
.word 0xaa1903e0
.word 0x3940033e
bl _p_14
.word 0x53001c00
.word 0x34000300
.loc 4 37 0
.word 0xaa1903e0
.word 0xd2800021
.word 0x3940033e
bl _p_19
.loc 4 38 0
.word 0x14000013
.loc 4 41 0
.word 0xaa1903e0
.word 0x3940033e
bl _p_15
.word 0x53001c00
.word 0x340000a0
.loc 4 42 0
.word 0xaa1903e0
.word 0xd2800001
.word 0x3940033e
bl _p_20
.loc 4 43 0
.word 0xaa1903e0
.word 0x3940033e
bl _p_14
.word 0x53001c00
.word 0x340000a0
.loc 4 44 0
.word 0xaa1903e0
.word 0xd2800001
.word 0x3940033e
bl _p_19
.loc 4 48 0
.word 0xaa1903e0
.word 0x3940033e
bl _p_21
.loc 4 49 0
.word 0xaa1903e0
.word 0x3940033e
bl _p_22
.loc 4 51 0
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.loc 4 26 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #264]
.word 0xd2801201
bl _p_23
.word 0xf9001ba0
bl _p_24
.word 0xf9401ba0
bl _p_25

Lme_b:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_Platform_GetCurrentViewController_bool
Xamarin_Essentials_Platform_GetCurrentViewController_bool:
.file 5 "D:\\a\\1\\s\\Xamarin.Essentials\\Platform\\Platform.ios.cs"
.loc 5 45 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xd2800019
.loc 5 47 0
bl _p_26
.word 0xaa0003e1
.word 0xaa0103e0
.word 0x3940003e
bl _p_27
.word 0xaa0003f8
.loc 5 49 0
.word 0xaa1803e1
.word 0xaa0103e0
.word 0x3940003e
bl _p_28
.word 0xfd001ba0
bl _p_29
.word 0x1e604001
.word 0xfd401ba0
.word 0x1e612000
.word 0x9a9f17e0
.word 0x340000a0
.loc 5 50 0
.word 0xaa1803e0
.word 0x3940031e
bl _p_30
.word 0xaa0003f9
.loc 5 52 0
.word 0xb5001359
.loc 5 54 0
bl _p_26
.word 0xaa0003e1
.word 0xaa0103e0
.word 0x3940003e
bl _p_31
.word 0xaa0003e2

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #272]
.word 0xf9400000
.word 0xaa0003e1
.word 0xaa0203f9
.word 0xaa0103f8
.word 0xb5000660

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #280]
.word 0xf9400000
.word 0xf9001fa0
.word 0xeb1f001f
.word 0x10000011
.word 0x540014e0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #288]
.word 0xd2801001
bl _p_23
.word 0xf9401fa1
.word 0xeb1f003f
.word 0x10000011
.word 0x54001360
.word 0xf9001001
.word 0x91008002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #296]
.word 0xf9001401

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #304]
.word 0xf9002001

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #312]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901c01f

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #272]
.word 0xf9000020
.word 0xaa0003f8

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #320]
.word 0xaa1903e0
.word 0xaa1803e1
bl _p_32
.word 0xaa0003e2

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #328]
.word 0xf9400000
.word 0xaa0003e1
.word 0xaa0203f9
.word 0xaa0103f8
.word 0xb5000660

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #280]
.word 0xf9400000
.word 0xf9001fa0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000cc0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #336]
.word 0xd2801001
bl _p_23
.word 0xf9401fa1
.word 0xeb1f003f
.word 0x10000011
.word 0x54000b40
.word 0xf9001001
.word 0x91008002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #344]
.word 0xf9001401

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #352]
.word 0xf9002001

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #360]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901c01f

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #328]
.word 0xf9000020
.word 0xaa0003f8

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #368]
.word 0xaa1903e0
.word 0xaa1803e1
bl _p_33
.word 0xaa0003f8
.loc 5 59 0
.word 0xaa1803e0
.word 0xb4000380
.loc 5 62 0
.word 0xaa1803e0
.word 0x3940031e
bl _p_30
.word 0xaa0003f9
.word 0x1400000b

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.loc 5 66 0
.word 0xaa1903e0
.word 0x3940033e
bl _p_34
.word 0xaa0003f9
.loc 5 65 0
.word 0xaa1903e0
.word 0x3940033e
bl _p_34
.word 0xb5fffe60
.loc 5 68 0
.word 0x394083a0
.word 0x34000040
.word 0xb4000219
.loc 5 71 0
.word 0xaa1903e0
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.loc 5 60 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800fa1
bl _p_35
.word 0xaa0003e1
.word 0xd2801940
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_25
.loc 5 69 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800fa1
bl _p_35
.word 0xaa0003e1
.word 0xd2801940
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_25
.word 0xd2801b80
.word 0xaa1103e1
bl _p_36
.word 0xd2800f60
.word 0xaa1103e1
bl _p_36

Lme_c:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_Platform__c__cctor
Xamarin_Essentials_Platform__c__cctor:
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #376]
.word 0xd2800201
bl _p_23
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #280]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_d:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_Platform__c__ctor
Xamarin_Essentials_Platform__c__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_e:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_Platform__c__GetCurrentViewControllerb__3_0_UIKit_UIWindow
Xamarin_Essentials_Platform__c__GetCurrentViewControllerb__3_0_UIKit_UIWindow:
.loc 5 56 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400fa0
.word 0xf9400fa1
.word 0x3940003e
bl _p_28
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_f:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_Platform__c__GetCurrentViewControllerb__3_1_UIKit_UIWindow
Xamarin_Essentials_Platform__c__GetCurrentViewControllerb__3_1_UIKit_UIWindow:
.loc 5 57 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xaa1a03e0
.word 0x3940035e
bl _p_30
.word 0xb4000160
.word 0xaa1a03e0
.word 0x3940035e
bl _p_28
.word 0xfd0013a0
bl _p_29
.word 0x1e604001
.word 0xfd4013a0
.word 0x1e612000
.word 0x9a9f17e0
.word 0x14000002
.word 0xd2800000
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_10:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_Preferences_GetPrivatePreferencesSharedName_string
Xamarin_Essentials_Preferences_GetPrivatePreferencesSharedName_string:
.file 6 "D:\\a\\1\\s\\Xamarin.Essentials\\Preferences\\Preferences.shared.cs"
.loc 6 8 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
bl _p_37

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #384]
.word 0xf9400ba2
bl _p_38
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_11:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_Preferences_ContainsKey_string_string
Xamarin_Essentials_Preferences_ContainsKey_string_string:
.loc 6 60 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_39
.word 0x53001c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_12:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_Preferences_Get_string_string_string
Xamarin_Essentials_Preferences_Get_string_string_string:
.loc 6 69 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #392]
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf94013a2
bl _p_40
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_13:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_Preferences_Set_string_string_string
Xamarin_Essentials_Preferences_Set_string_string_string:
.loc 6 87 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #400]
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf94013a2
bl _p_41
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_14:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_Preferences_PlatformContainsKey_string_string
Xamarin_Essentials_Preferences_PlatformContainsKey_string_string:
.file 7 "D:\\a\\1\\s\\Xamarin.Essentials\\Preferences\\Preferences.ios.cs"
.loc 7 13 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fba
.word 0xf90013a0
.word 0xf90017a1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9001bbf
.word 0x3900e3bf

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #408]
.word 0xf9400000
.word 0xf9001ba0
.word 0xd2800000
.word 0x3900e3a0
.word 0xf9401bb8
.word 0x9100e3a0
.word 0xf90023a0
.word 0xaa1803e0
.word 0x9100e3a1
bl _mono_monitor_enter_v4_fast
.word 0x35000080
.word 0xaa1803e0
.word 0xf94023a1
bl _p_42
.loc 7 15 0
.word 0xf94017a0
bl _p_43
.word 0xaa0003e2
.word 0xaa0203e0
.word 0xf94013a1
.word 0x3940005e
bl _p_44
.word 0xeb1f001f
.word 0x9a9f97e0
.word 0x53001c1a
.word 0xf90027bf
.word 0x94000005
.word 0xf94027a0
.word 0xb4000040
bl _p_45
.word 0x1400000e
.word 0xf9002bbe

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x3940e3a0
.word 0x34000060
.word 0xf9401ba0
bl _p_46
.word 0xf9402bbe
.word 0xd61f03c0
.loc 7 17 0
.word 0xaa1a03e0
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_15:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_Preferences_PlatformSet_T_REF_string_T_REF_string
Xamarin_Essentials_Preferences_PlatformSet_T_REF_string_T_REF_string:
.loc 7 50 0 prologue_end
.word 0xa9b67bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xf9003baf
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9001fbf
.word 0x390103bf
.word 0xf90027bf

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #408]
.word 0xf9400000
.word 0xf9001fa0
.word 0xd2800000
.word 0x390103a0
.word 0xf9401fb7
.word 0x910103b6
.word 0xaa1703e0
.word 0x910103a1
bl _mono_monitor_enter_v4_fast
.word 0x35000080
.word 0xaa1703e0
.word 0xaa1603e1
bl _p_42
.loc 7 52 0
.word 0xaa1a03e0
bl _p_43
.word 0xf90027a0
.loc 7 54 0
.word 0xb50002f9
.loc 7 56 0
.word 0xf94027a2
.word 0xaa0203e0
.word 0xaa1803e1
.word 0x3940005e
bl _p_44
.word 0xb40000c0
.loc 7 57 0
.word 0xf94027a2
.word 0xaa0203e0
.word 0xaa1803e1
.word 0x3940005e
bl _p_47
.loc 7 58 0
.word 0xf9002bbf
.word 0x94000145
.word 0xf9402ba0
.word 0xb4000040
bl _p_45
.word 0xf9002fbf
.word 0x94000155
.word 0xf9402fa0
.word 0xb4000040
bl _p_45
.word 0x1400015e
.loc 7 61 0
.word 0xaa1903fa
.word 0xb5000199
.word 0xf9002bbf
.word 0x94000138
.word 0xf9402ba0
.word 0xb4000040
bl _p_45
.word 0xf9002fbf
.word 0x94000148
.word 0xf9402fa0
.word 0xb4000040
bl _p_45
.word 0x14000151
.word 0xaa1a03f7
.word 0xeb1f035f
.word 0x54000180
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #416]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800017
.word 0x14000001
.word 0xb5001437
.word 0xaa1a03f7
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000180
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #424]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800016
.word 0x14000001
.word 0xb4000216
.word 0xf94002e0
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54002661
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #424]
.word 0xeb01001f
.word 0x10000011
.word 0x54002561
.word 0xb98012fa
.word 0x14000094
.word 0xaa1a03f7
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000180
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #432]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800016
.word 0x14000001
.word 0xb4000236
.word 0xf94002e0
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54002281
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #432]
.word 0xeb01001f
.word 0x10000011
.word 0x54002181
.word 0x394042e0
.word 0x53001c1a
.word 0x14000086
.word 0xaa1a03f7
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000180
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #440]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800016
.word 0x14000001
.word 0xb4000216
.word 0xf94002e0
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54001e81
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #440]
.word 0xeb01001f
.word 0x10000011
.word 0x54001d81
.word 0xf9400afa
.word 0x14000079
.word 0xaa1a03f7
.word 0xaa1a03f9
.word 0xeb1f035f
.word 0x54000180
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #448]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800019
.word 0x14000001
.word 0xb4000239
.word 0xf94002e0
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54001aa1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #448]
.word 0xeb01001f
.word 0x10000011
.word 0x540019a1
.word 0xfd400ae0
.word 0xfd0037a0
.word 0x14000078
.word 0xaa1a03f7
.word 0xaa1a03f9
.word 0xeb1f035f
.word 0x54000180
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #456]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800019
.word 0x14000001
.word 0xb40010f9
.word 0xf94002e0
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x540016a1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #456]
.word 0xeb01001f
.word 0x10000011
.word 0x540015a1
.word 0xbd4012f0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd0063b0
.word 0x14000069
.word 0xaa1703fa
.loc 7 64 0
.word 0xf94027a3
.word 0xaa0303e0
.word 0xaa1703e1
.word 0xaa1803e2
.word 0x3940007e
bl _p_48
.loc 7 65 0
.word 0xf9002bbf
.word 0x94000077
.word 0xf9402ba0
.word 0xb4000040
bl _p_45
.word 0xf9002fbf
.word 0x94000087
.word 0xf9402fa0
.word 0xb4000040
bl _p_45
.word 0x14000090
.word 0xaa1a03f9
.loc 7 67 0
.word 0xf94027a3
.word 0x93407f41
.word 0xaa0303e0
.word 0xaa1803e2
.word 0x3940007e
bl _p_49
.loc 7 68 0
.word 0xf9002bbf
.word 0x94000065
.word 0xf9402ba0
.word 0xb4000040
bl _p_45
.word 0xf9002fbf
.word 0x94000075
.word 0xf9402fa0
.word 0xb4000040
bl _p_45
.word 0x1400007e
.word 0x53001f59
.loc 7 70 0
.word 0xf94027a3
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1803e2
.word 0x3940007e
bl _p_50
.loc 7 71 0
.word 0xf9002bbf
.word 0x94000053
.word 0xf9402ba0
.word 0xb4000040
bl _p_45
.word 0xf9002fbf
.word 0x94000063
.word 0xf9402fa0
.word 0xb4000040
bl _p_45
.word 0x1400006c
.loc 7 73 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #464]
.word 0x3980b410
.word 0xb5000050
bl _p_11

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #472]
.word 0xf9400001
.word 0xd5033bbf
.word 0xaa1903e0
bl _p_51
.word 0xaa0003fa
.loc 7 74 0
.word 0xf94027a3
.word 0xaa0303e0
.word 0xaa1a03e1
.word 0xaa1803e2
.word 0x3940007e
bl _p_48
.loc 7 75 0
.word 0xf9002bbf
.word 0x94000034
.word 0xf9402ba0
.word 0xb4000040
bl _p_45
.word 0xf9002fbf
.word 0x94000044
.word 0xf9402fa0
.word 0xb4000040
bl _p_45
.word 0x1400004d
.word 0xfd4037a0
.word 0xfd0037a0
.loc 7 77 0
.word 0xf94027a2
.word 0xfd4037a0
.word 0xaa0203e0
.word 0xaa1803e1
.word 0x3940005e
bl _p_52
.loc 7 78 0
.word 0xf9002bbf
.word 0x94000021
.word 0xf9402ba0
.word 0xb4000040
bl _p_45
.word 0xf9002fbf
.word 0x94000031
.word 0xf9402fa0
.word 0xb4000040
bl _p_45
.word 0x1400003a
.word 0xbd4063b0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd0063b0
.loc 7 80 0
.word 0xf94027a2
.word 0xbd4063b0
.word 0x1e22c200
.word 0xaa0203e0
.word 0x1e624000
.word 0xaa1803e1
.word 0x3940005e
bl _p_53
.loc 7 83 0
.word 0xf9002bbf
.word 0x9400000a
.word 0xf9402ba0
.word 0xb4000040
bl _p_45
.word 0xf9002fbf
.word 0x9400001a
.word 0xf9402fa0
.word 0xb4000040
bl _p_45
.word 0x14000023
.word 0xf9003fbe

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf94027a0
.word 0xb4000160
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #480]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9403fbe
.word 0xd61f03c0
.word 0xf90047be

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x394103a0
.word 0x34000060
.word 0xf9401fa0
bl _p_46
.word 0xf94047be
.word 0xd61f03c0
.loc 7 85 0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0
.word 0xd2801920
.word 0xaa1103e1
bl _p_36

Lme_16:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_Preferences_PlatformGet_T_REF_string_T_REF_string
Xamarin_Essentials_Preferences_PlatformGet_T_REF_string_T_REF_string:
.loc 7 89 0 prologue_end
.word 0xa9b47bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xf9001faf
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf90023bf
.word 0x390123bf
.word 0xf9002bbf
.word 0xd2800017
.loc 7 91 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #408]
.word 0xf9400000
.word 0xf90023a0
.word 0xd2800000
.word 0x390123a0
.word 0xf94023b6
.word 0x910123a0
.word 0xf9002fa0
.word 0xaa1603e0
.word 0x910123a1
bl _mono_monitor_enter_v4_fast
.word 0x35000080
.word 0xaa1603e0
.word 0xf9402fa1
bl _p_42
.loc 7 93 0
.word 0xaa1a03e0
bl _p_43
.word 0xf9002ba0
.loc 7 95 0
.word 0xf9402ba2
.word 0xaa0203e0
.word 0xaa1803e1
.word 0x3940005e
bl _p_44
.word 0xb50001a0
.loc 7 96 0
.word 0xaa1903fa
.word 0xf90033bf
.word 0x94000175
.word 0xf94033a0
.word 0xb4000040
bl _p_45
.word 0xf90037bf
.word 0x94000185
.word 0xf94037a0
.word 0xb4000040
bl _p_45
.word 0x14000195
.loc 7 98 0
.word 0xaa1903fa
.word 0xb4002a39
.word 0xaa1a03f9
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000180
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #424]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800016
.word 0x14000001
.word 0xb4000216
.word 0xf9400320
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x540030a1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #424]
.word 0xeb01001f
.word 0x10000011
.word 0x54002fa1
.word 0xb980133a
.word 0x14000093
.word 0xaa1a03f9
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000180
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #432]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800016
.word 0x14000001
.word 0xb4000236
.word 0xf9400320
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54002cc1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #432]
.word 0xeb01001f
.word 0x10000011
.word 0x54002bc1
.word 0x39404320
.word 0x53001c1a
.word 0x1400008d
.word 0xaa1a03f9
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000180
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #440]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800016
.word 0x14000001
.word 0xb4000216
.word 0xf9400320
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x540028c1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #440]
.word 0xeb01001f
.word 0x10000011
.word 0x540027c1
.word 0xf9400b3a
.word 0x14000087
.word 0xaa1a03f9
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000180
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #448]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800016
.word 0x14000001
.word 0xb4000236
.word 0xf9400320
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x540024e1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #448]
.word 0xeb01001f
.word 0x10000011
.word 0x540023e1
.word 0xfd400b20
.word 0xfd003fa0
.word 0x1400008e
.word 0xaa1a03f9
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000180
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #456]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800016
.word 0x14000001
.word 0xb4000276
.word 0xf9400320
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x540020e1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #456]
.word 0xeb01001f
.word 0x10000011
.word 0x54001fe1
.word 0xbd401330
.word 0x1e22c200
.word 0x1e624010
.word 0xbd0073b0
.word 0x14000085
.word 0xaa1a03f9
.word 0xeb1f035f
.word 0x54000180
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #416]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800019
.word 0x14000001
.word 0xaa1903fa
.word 0xb4001439
.word 0x1400008f
.loc 7 101 0
.word 0xf9402ba2
.word 0xaa0203e0
.word 0xaa1803e1
.word 0x3940005e
bl _p_54
.word 0x93407c00
.word 0xf90053a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #488]
.word 0xd2800281
bl _p_23
.word 0xf94053a1
.word 0xb9001001
.word 0xaa0003f7
.loc 7 102 0
.word 0xf90033bf
.word 0x940000a8
.word 0xf94033a0
.word 0xb4000040
bl _p_45
.word 0xf90037bf
.word 0x940000b8
.word 0xf94037a0
.word 0xb4000040
bl _p_45
.word 0x140000c1
.loc 7 104 0
.word 0xf9402ba2
.word 0xaa0203e0
.word 0xaa1803e1
.word 0x3940005e
bl _p_55
.word 0xf90053a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #496]
.word 0xd2800221
bl _p_23
.word 0xf94053a1
.word 0x39004001
.word 0xaa0003f7
.loc 7 105 0
.word 0xf90033bf
.word 0x9400008f
.word 0xf94033a0
.word 0xb4000040
bl _p_45
.word 0xf90037bf
.word 0x9400009f
.word 0xf94037a0
.word 0xb4000040
bl _p_45
.word 0x140000a8
.loc 7 107 0
.word 0xf9402ba2
.word 0xaa0203e0
.word 0xaa1803e1
.word 0x3940005e
bl _p_56
.word 0xf90057a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #464]
.word 0x3980b410
.word 0xb5000050
bl _p_11

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #472]
.word 0xf9400001
.word 0xd5033bbf
.word 0xf94057a0
.loc 7 108 0
bl _p_57
.word 0xf90053a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #504]
.word 0xd2800301
bl _p_23
.word 0xf94053a1
.word 0xf9000801
.word 0xaa0003f7
.loc 7 109 0
.word 0xf90033bf
.word 0x94000068
.word 0xf94033a0
.word 0xb4000040
bl _p_45
.word 0xf90037bf
.word 0x94000078
.word 0xf94037a0
.word 0xb4000040
bl _p_45
.word 0x14000081
.loc 7 111 0
.word 0xf9402ba2
.word 0xaa0203e0
.word 0xaa1803e1
.word 0x3940005e
bl _p_58
.word 0xfd005ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #512]
.word 0xd2800301
bl _p_23
.word 0xfd405ba0
.word 0xfd000800
.word 0xaa0003f7
.loc 7 112 0
.word 0xf90033bf
.word 0x9400004f
.word 0xf94033a0
.word 0xb4000040
bl _p_45
.word 0xf90037bf
.word 0x9400005f
.word 0xf94037a0
.word 0xb4000040
bl _p_45
.word 0x14000068
.loc 7 114 0
.word 0xf9402ba2
.word 0xaa0203e0
.word 0xaa1803e1
.word 0x3940005e
bl _p_59
.word 0x1e22c000
.word 0xfd005ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #520]
.word 0xd2800281
bl _p_23
.word 0xfd405ba0
.word 0x1e624010
.word 0xbd001010
.word 0xaa0003f7
.loc 7 115 0
.word 0xf90033bf
.word 0x94000034
.word 0xf94033a0
.word 0xb4000040
bl _p_45
.word 0xf90037bf
.word 0x94000044
.word 0xf94037a0
.word 0xb4000040
bl _p_45
.word 0x1400004d
.loc 7 118 0
.word 0xf9402ba2
.word 0xaa0203e0
.word 0xaa1803e1
.word 0x3940005e
bl _p_56
.word 0xaa0003f7
.loc 7 119 0
.word 0xf90033bf
.word 0x94000023
.word 0xf94033a0
.word 0xb4000040
bl _p_45
.word 0xf90037bf
.word 0x94000033
.word 0xf94037a0
.word 0xb4000040
bl _p_45
.word 0x1400003c
.loc 7 122 0
.word 0xf9401fa0
bl _p_60

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #528]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x340000e0
.loc 7 123 0
.word 0xf9402ba2
.word 0xaa0203e0
.word 0xaa1803e1
.word 0x3940005e
bl _p_56
.word 0xaa0003f7
.loc 7 126 0
.word 0xf90033bf
.word 0x9400000a
.word 0xf94033a0
.word 0xb4000040
bl _p_45
.word 0xf90037bf
.word 0x9400001a
.word 0xf94037a0
.word 0xb4000040
bl _p_45
.word 0x14000023
.word 0xf90043be

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9402ba0
.word 0xb4000160
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #480]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94043be
.word 0xd61f03c0
.word 0xf9004bbe

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x394123a0
.word 0x34000060
.word 0xf94023a0
bl _p_46
.word 0xf9404bbe
.word 0xd61f03c0
.loc 7 129 0
.word 0xf9401fa0
bl _p_61
.word 0xaa0003e2
.word 0xf9400441
.word 0xaa1703e0
bl _p_62
.word 0x14000002
.loc 7 130 0
.word 0xaa1a03e0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0
.word 0xd2801920
.word 0xaa1103e1
bl _p_36

Lme_17:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_Preferences_GetUserDefaults_string
Xamarin_Essentials_Preferences_GetUserDefaults_string:
.loc 7 134 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
bl _p_63
.word 0x53001c00
.word 0x35000160
.loc 7 135 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #536]
bl _p_64
.word 0xf90013a0
.word 0xf9400ba1
.word 0xd2800022
bl _p_65
.word 0xf94013a0
.word 0x14000002
.loc 7 137 0
bl _p_66
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_18:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_Preferences__cctor
Xamarin_Essentials_Preferences__cctor:
.loc 7 9 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #544]
.word 0xd2800201
bl _p_23
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #408]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_19:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_Share_RequestAsync_Xamarin_Essentials_ShareTextRequest
Xamarin_Essentials_Share_RequestAsync_Xamarin_Essentials_ShareTextRequest:
.file 8 "D:\\a\\1\\s\\Xamarin.Essentials\\Share\\Share.shared.cs"
.loc 8 16 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
bl _p_67
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1a:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_Share_PlatformRequestAsync_Xamarin_Essentials_ShareTextRequest
Xamarin_Essentials_Share_PlatformRequestAsync_Xamarin_Essentials_ShareTextRequest:
.file 9 "D:\\a\\1\\s\\Xamarin.Essentials\\Share\\Share.ios.cs"
.loc 9 12 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #552]
.word 0xd2800501
bl _p_23

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #560]
.word 0xf9400021
.word 0xf9000801
.word 0x91004002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xaa0003f9
.loc 9 13 0
.word 0x3940035e
.word 0xf9401340
bl _p_63
.word 0x53001c00
.word 0x350005e0
.loc 9 15 0
.word 0x3940035e
.word 0xf9401340
.word 0xf9002fa0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #568]
bl _p_64
.word 0xf9402fa1
.word 0xf90027a0
bl _p_68
.word 0x3940035e
.word 0xf9400b40
.word 0xf9002ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #576]
bl _p_64
.word 0xf94027a1
.word 0xf9402ba2
.word 0xf90023a0
bl _p_69
.word 0xf94023a0
.word 0xaa1903f8
.word 0xaa0003f7
.word 0x3940033e
.word 0xb9802720
.word 0x11000400
.word 0xb9002720
.word 0xf9400b36
.word 0xb9802335
.word 0xaa1503e0
.word 0xb9801ac1
.word 0x6b01001f
.word 0x54000142
.word 0x110006a0
.word 0xb9002300
.word 0xaa1603e0
.word 0xaa1503e1
.word 0xaa1703e2
.word 0xf94002c3
.word 0xf9408470
.word 0xd63f0200
.word 0x14000004
.word 0xaa1803e0
.word 0xaa1703e1
bl _p_70
.loc 9 18 0
.word 0x3940035e
.word 0xf9401740
bl _p_63
.word 0x53001c00
.word 0x35000520
.loc 9 20 0
.word 0x3940035e
.word 0xf9401740
bl _p_71
.word 0xf90027a0
.word 0x3940035e
.word 0xf9400b40
.word 0xf9002ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #576]
bl _p_64
.word 0xf94027a1
.word 0xf9402ba2
.word 0xf90023a0
bl _p_69
.word 0xf94023a0
.word 0xaa1903fa
.word 0xaa0003f8
.word 0x3940033e
.word 0xb9802720
.word 0x11000400
.word 0xb9002720
.word 0xf9400b37
.word 0xb9802336
.word 0xaa1603e0
.word 0xb9801ae1
.word 0x6b01001f
.word 0x54000142
.word 0x110006c0
.word 0xb9002340
.word 0xaa1703e0
.word 0xaa1603e1
.word 0xaa1803e2
.word 0xf94002e3
.word 0xf9408470
.word 0xd63f0200
.word 0x14000004
.word 0xaa1a03e0
.word 0xaa1803e1
bl _p_70
.loc 9 23 0
.word 0xaa1903e0
.word 0x3940033e
bl _p_72
.word 0xf90027a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #584]
bl _p_64
.word 0xf94027a1
.word 0xf90023a0
.word 0xd2800002
bl _p_73
.word 0xf94023a0
.word 0xaa0003fa
.loc 9 25 0
.word 0xd2800020
bl _p_74
.word 0xaa0003f9
.loc 9 27 0
.word 0xaa1a03e0
.word 0x3940035e
bl _p_75
.word 0xb40001a0
.loc 9 29 0
.word 0xaa1a03e0
.word 0x3940035e
bl _p_75
.word 0xf90023a0
.word 0xaa1903e0
.word 0x3940033e
bl _p_76
.word 0xaa0003e1
.word 0xf94023a2
.word 0xaa0203e0
.word 0x3940005e
bl _p_77
.loc 9 32 0
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd2800022
.word 0x3940033e
bl _p_78
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_1b:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_ShareTextRequest__ctor
Xamarin_Essentials_ShareTextRequest__ctor:
.loc 8 30 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1c:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_ShareTextRequest_get_Title
Xamarin_Essentials_ShareTextRequest_get_Title:
.loc 8 37 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1d:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_ShareTextRequest_set_Title_string
Xamarin_Essentials_ShareTextRequest_set_Title_string:
.loc 8 37 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1e:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_ShareTextRequest_set_Subject_string
Xamarin_Essentials_ShareTextRequest_set_Subject_string:
.loc 8 39 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9000c20
.word 0x91006021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1f:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_ShareTextRequest_get_Text
Xamarin_Essentials_ShareTextRequest_get_Text:
.loc 8 41 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9401000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_20:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_ShareTextRequest_set_Text_string
Xamarin_Essentials_ShareTextRequest_set_Text_string:
.loc 8 41 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9001020
.word 0x91008021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_21:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_ShareTextRequest_get_Uri
Xamarin_Essentials_ShareTextRequest_get_Uri:
.loc 8 43 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9401400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_22:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_ShareTextRequest_set_Uri_string
Xamarin_Essentials_ShareTextRequest_set_Uri_string:
.loc 8 43 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9001420
.word 0x9100a021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_23:
.text
ut_36:
add x0, x0, 16
b Xamarin_Essentials_DisplayInfo__ctor_double_double_double_Xamarin_Essentials_DisplayOrientation_Xamarin_Essentials_DisplayRotation
ut_end:
.section __TEXT, __const
_unbox_trampoline_p:

	.long 0
LDIFF_SYM3=ut_end - ut_36
	.long LDIFF_SYM3
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_DisplayInfo__ctor_double_double_double_Xamarin_Essentials_DisplayOrientation_Xamarin_Essentials_DisplayRotation
Xamarin_Essentials_DisplayInfo__ctor_double_double_double_Xamarin_Essentials_DisplayOrientation_Xamarin_Essentials_DisplayRotation:
.file 10 "D:\\a\\1\\s\\Xamarin.Essentials\\Types\\DisplayInfo.shared.cs"
.loc 10 10 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xaa0003f8
.word 0xfd000fa0
.word 0xfd0013a1
.word 0xfd0017a2
.word 0xf9001ba1
.word 0xf9001fa2
.word 0xfd400fa0
.word 0xfd000300
.loc 10 11 0
.word 0xfd4013a0
.word 0xfd000700
.loc 10 12 0
.word 0xfd4017a0
.word 0xfd000b00
.loc 10 13 0
.word 0xb98033a0
.word 0xb9001b00
.loc 10 14 0
.word 0xb9803ba0
.word 0xb9001f00
.loc 10 15 0
.word 0xf9400bb8
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_24:
.text
ut_37:
add x0, x0, 16
b Xamarin_Essentials_DisplayInfo_get_Width
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_DisplayInfo_get_Width
Xamarin_Essentials_DisplayInfo_get_Width:
.loc 10 17 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xfd400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_25:
.text
ut_38:
add x0, x0, 16
b Xamarin_Essentials_DisplayInfo_get_Height
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_DisplayInfo_get_Height
Xamarin_Essentials_DisplayInfo_get_Height:
.loc 10 19 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xfd400400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_26:
.text
ut_39:
add x0, x0, 16
b Xamarin_Essentials_DisplayInfo_get_Density
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_DisplayInfo_get_Density
Xamarin_Essentials_DisplayInfo_get_Density:
.loc 10 21 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xfd400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_27:
.text
ut_40:
add x0, x0, 16
b Xamarin_Essentials_DisplayInfo_get_Orientation
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_DisplayInfo_get_Orientation
Xamarin_Essentials_DisplayInfo_get_Orientation:
.loc 10 23 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9801800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_28:
.text
ut_41:
add x0, x0, 16
b Xamarin_Essentials_DisplayInfo_get_Rotation
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_DisplayInfo_get_Rotation
Xamarin_Essentials_DisplayInfo_get_Rotation:
.loc 10 25 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9801c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_29:
.text
ut_42:
add x0, x0, 16
b Xamarin_Essentials_DisplayInfo_op_Equality_Xamarin_Essentials_DisplayInfo_Xamarin_Essentials_DisplayInfo
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_DisplayInfo_op_Equality_Xamarin_Essentials_DisplayInfo_Xamarin_Essentials_DisplayInfo
Xamarin_Essentials_DisplayInfo_op_Equality_Xamarin_Essentials_DisplayInfo_Xamarin_Essentials_DisplayInfo:
.loc 10 28 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #592]
.word 0xd2800601
bl _p_23
.word 0xf9400ba1
.word 0xf90013a0
.word 0x91004000
.word 0xf9400022
.word 0xf9000002
.word 0xf9400422
.word 0xf9000402
.word 0xf9400822
.word 0xf9000802
.word 0xf9400c21
.word 0xf9000c01

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #592]
.word 0xd2800601
bl _p_23
.word 0xaa0003e1
.word 0xf94013a0
.word 0xf9400fa3
.word 0x91004022
.word 0xf9400064
.word 0xf9000044
.word 0xf9400464
.word 0xf9000444
.word 0xf9400864
.word 0xf9000844
.word 0xf9400c63
.word 0xf9000c43
bl _p_79
.word 0x53001c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_2a:
.text
ut_43:
add x0, x0, 16
b Xamarin_Essentials_DisplayInfo_op_Inequality_Xamarin_Essentials_DisplayInfo_Xamarin_Essentials_DisplayInfo
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_DisplayInfo_op_Inequality_Xamarin_Essentials_DisplayInfo_Xamarin_Essentials_DisplayInfo
Xamarin_Essentials_DisplayInfo_op_Inequality_Xamarin_Essentials_DisplayInfo_Xamarin_Essentials_DisplayInfo:
.loc 10 31 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #592]
.word 0xd2800601
bl _p_23
.word 0xf9400ba1
.word 0xf90013a0
.word 0x91004000
.word 0xf9400022
.word 0xf9000002
.word 0xf9400422
.word 0xf9000402
.word 0xf9400822
.word 0xf9000802
.word 0xf9400c21
.word 0xf9000c01

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #592]
.word 0xd2800601
bl _p_23
.word 0xaa0003e1
.word 0xf94013a0
.word 0xf9400fa3
.word 0x91004022
.word 0xf9400064
.word 0xf9000044
.word 0xf9400464
.word 0xf9000444
.word 0xf9400864
.word 0xf9000844
.word 0xf9400c63
.word 0xf9000c43
bl _p_79
.word 0x53001c00
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_2b:
.text
ut_44:
add x0, x0, 16
b Xamarin_Essentials_DisplayInfo_Equals_object
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_DisplayInfo_Equals_object
Xamarin_Essentials_DisplayInfo_Equals_object:
.loc 10 34 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xf90013ba
.word 0xf90017a0
.word 0xaa0103fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xd2800000
.word 0xf9002ba0
.word 0xf9002fa0
.word 0xf90033a0
.word 0xf90037a0
.word 0xaa1a03f8
.word 0xaa1a03f7
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #600]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800017
.word 0xb4000497
.word 0xf9400300
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x540004a1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #600]
.word 0xeb01001f
.word 0x10000011
.word 0x540003a1
.word 0x91004300
.word 0xf9400001
.word 0xf9002ba1
.word 0xf9400401
.word 0xf9002fa1
.word 0xf9400801
.word 0xf90033a1
.word 0xf9400c00
.word 0xf90037a0
.word 0xf94017a0
.word 0x9100c3a1
.word 0xf9402ba2
.word 0xf9001ba2
.word 0xf9402fa2
.word 0xf9001fa2
.word 0xf94033a2
.word 0xf90023a2
.word 0xf94037a2
.word 0xf90027a2
bl _p_80
.word 0x53001c00
.word 0x14000002
.word 0xd2800000
.word 0xa94163b7
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd2801920
.word 0xaa1103e1
bl _p_36

Lme_2c:
.text
ut_45:
add x0, x0, 16
b Xamarin_Essentials_DisplayInfo_Equals_Xamarin_Essentials_DisplayInfo
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_DisplayInfo_Equals_Xamarin_Essentials_DisplayInfo
Xamarin_Essentials_DisplayInfo_Equals_Xamarin_Essentials_DisplayInfo:
.loc 10 37 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa
.word 0xf90013a1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x9e6703e0
.word 0xfd0017a0
.word 0xfd400340
.word 0xfd0017a0
.word 0xf94013a0
.word 0xfd400000
.word 0x9100a3a0
bl _p_81
.word 0x53001c00
.word 0x34000920
.word 0xfd400740
.word 0xfd0017a0
.word 0xf94013a0
.word 0xfd400400
.word 0x9100a3a0
bl _p_81
.word 0x53001c00
.word 0x34000820
.word 0xfd400b40
.word 0xfd0017a0
.word 0xf94013a0
.word 0xfd400800
.word 0x9100a3a0
bl _p_81
.word 0x53001c00
.word 0x34000720
.word 0xb9801b59
.word 0xf94013a0
.word 0xb9801800
.word 0xf90023a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #608]
.word 0xd2800281
bl _p_23
.word 0xf94023a1
.word 0xb9001001
.word 0xf9001fa0
.word 0xaa1903e0
.word 0xf9001ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #608]
.word 0xd2800281
bl _p_23
.word 0xaa0003e2
.word 0xf9401ba0
.word 0xf9401fa1
.word 0xb9001040
.word 0xaa0203e0
.word 0x3940005e
bl _p_82
.word 0x53001c00
.word 0x340003a0
.word 0xb9801f59
.word 0xf94013a0
.word 0xb9801c00
.word 0xf90023a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #616]
.word 0xd2800281
bl _p_23
.word 0xf94023a1
.word 0xb9001001
.word 0xf9001fa0
.word 0xaa1903e0
.word 0xf9001ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #616]
.word 0xd2800281
bl _p_23
.word 0xaa0003e2
.word 0xf9401ba0
.word 0xf9401fa1
.word 0xb9001040
.word 0xaa0203e0
.word 0x3940005e
bl _p_82
.word 0x53001c00
.word 0x14000002
.word 0xd2800000
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_2d:
.text
ut_46:
add x0, x0, 16
b Xamarin_Essentials_DisplayInfo_GetHashCode
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_DisplayInfo_GetHashCode
Xamarin_Essentials_DisplayInfo_GetHashCode:
.loc 10 44 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xd2800000
.word 0xf9001fa0
.word 0xf90023a0
.word 0xf90027a0
.word 0xf9002ba0
.word 0xfd400740
.word 0xfd400341
.word 0xfd400b42
.word 0xb9801b41
.word 0xb9801f42
.word 0xd2800000
.word 0xf9000fa0
.word 0xf90013a0
.word 0xf90017a0
.word 0xf9001ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #624]
.word 0x910063a0
bl _p_83
.word 0xf9400fa0
.word 0xf9001fa0
.word 0xf94013a0
.word 0xf90023a0
.word 0xf94017a0
.word 0xf90027a0
.word 0xf9401ba0
.word 0xf9002ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #624]
.word 0x9100e3a0
bl _p_84
.word 0x93407c00
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_2e:
.text
ut_47:
add x0, x0, 16
b Xamarin_Essentials_DisplayInfo_ToString
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_DisplayInfo_ToString
Xamarin_Essentials_DisplayInfo_ToString:
.loc 10 47 0 prologue_end
.word 0xa9b07bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #632]
.word 0xf9005ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #640]
.word 0xd2800081
bl _p_85
.word 0xaa0003e3
.word 0xaa0303e0
.word 0xf9007ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #648]
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf9407ba0
.word 0xf90073a0
.word 0xf9006fa0
.word 0xfd400740
.word 0xfd0077a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #512]
.word 0xd2800301
bl _p_23
.word 0xaa0003e2
.word 0xf94073a3
.word 0xfd4077a0
.word 0xfd000840
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf9406fa3
.word 0xaa0303e0
.word 0xf9006ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #656]
.word 0xaa0303e0
.word 0xd2800041
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf9406ba0
.word 0xf90063a0
.word 0xf9005fa0
.word 0xfd400340
.word 0xfd0067a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #512]
.word 0xd2800301
bl _p_23
.word 0xaa0003e2
.word 0xf94063a3
.word 0xfd4067a0
.word 0xfd000840
.word 0xaa0303e0
.word 0xd2800061
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf9405ba0
.word 0xf9405fa1
bl _p_86
.word 0xf90023a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #632]
.word 0xf90037a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #640]
.word 0xd2800081
bl _p_85
.word 0xaa0003e3
.word 0xaa0303e0
.word 0xf90057a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #664]
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf94057a0
.word 0xf9004fa0
.word 0xf9004ba0
.word 0xfd400b40
.word 0xfd0053a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #512]
.word 0xd2800301
bl _p_23
.word 0xaa0003e2
.word 0xf9404fa3
.word 0xfd4053a0
.word 0xfd000840
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf9404ba3
.word 0xaa0303e0
.word 0xf90047a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #672]
.word 0xaa0303e0
.word 0xd2800041
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf94047a0
.word 0xf90043a0
.word 0xf9003ba0
.word 0xb9801b40
.word 0xf9003fa0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #608]
.word 0xd2800281
bl _p_23
.word 0xaa0003e2
.word 0xf9403fa0
.word 0xf94043a3
.word 0xb9001040
.word 0xaa0303e0
.word 0xd2800061
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf94037a0
.word 0xf9403ba1
bl _p_86
.word 0xf90027a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #680]
.word 0xf9002ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #688]
.word 0xf9002fa0
.word 0xb9801f40
.word 0xf90033a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #616]
.word 0xd2800281
bl _p_23
.word 0xaa0003e2
.word 0xf9402ba0
.word 0xf9402fa1
.word 0xf94033a3
.word 0xb9001043
bl _p_87
.word 0xaa0003e2
.word 0xf94023a0
.word 0xf94027a1
bl _p_38
.word 0xf9400bba
.word 0x910003bf
.word 0xa8d07bfd
.word 0xd65f03c0

Lme_2f:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_FeatureNotSupportedException__ctor
Xamarin_Essentials_FeatureNotSupportedException__ctor:
.file 11 "D:\\a\\1\\s\\Xamarin.Essentials\\Types\\Shared\\Exceptions.shared.cs"
.loc 11 23 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
bl _p_88
.loc 11 25 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_30:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_VersionTracking__cctor
Xamarin_Essentials_VersionTracking__cctor:
.file 12 "D:\\a\\1\\s\\Xamarin.Essentials\\VersionTracking\\VersionTracking.shared.cs"
.loc 12 14 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #696]
bl _p_89
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #704]
.word 0xf9000001
.loc 12 20 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #712]

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #704]
.word 0xf9400021
bl _p_90
.word 0x53001c00
.word 0x340001a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #720]

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #704]
.word 0xf9400021
bl _p_90
.word 0x53001c00
.word 0x6b1f001f
.word 0x9a9f17fa
.word 0x14000002
.word 0xd280003a
.word 0xaa1a03e0
bl _p_91
.loc 12 21 0
bl _p_92
.word 0x53001c00
.word 0x34000a40
.loc 12 23 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #728]
.word 0xd2800a01
bl _p_23
.word 0xf90033a0
bl _p_93
.word 0xf94033a0
.word 0xf9002fa0
.word 0xf90027a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #712]
.word 0xf9002ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #736]
.word 0xd2800501
bl _p_23
.word 0xaa0003e2
.word 0xf9402ba1
.word 0xf9402fa3

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #744]
.word 0xf9400000
.word 0xf9000840
.word 0x91004044
.word 0xd349fc84
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0084

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x5, [x16, #16]
.word 0x8b050084
.word 0xd280003e
.word 0x3900009e
.word 0xaa0303e0
.word 0x3940007e
bl _p_94
.word 0xf94027a0
.word 0xf90023a0
.word 0xf9001ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #720]
.word 0xf9001fa0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #736]
.word 0xd2800501
bl _p_23
.word 0xaa0003e2
.word 0xf9401fa1
.word 0xf94023a3

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #744]
.word 0xf9400000
.word 0xf9000840
.word 0x91004044
.word 0xd349fc84
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0084

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x5, [x16, #16]
.word 0x8b050084
.word 0xd280003e
.word 0x3900009e
.word 0xaa0303e0
.word 0x3940007e
bl _p_94
.word 0xf9401ba1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #752]
.word 0xf9000001
.loc 12 28 0
.word 0x14000037
.loc 12 31 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #728]
.word 0xd2800a01
bl _p_23
.word 0xf90033a0
bl _p_93
.word 0xf94033a0
.word 0xf9002fa0
.word 0xf90027a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #712]
.word 0xf9002ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #712]
bl _p_95

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #760]
bl _p_96
.word 0xaa0003e2
.word 0xf9402ba1
.word 0xf9402fa3
.word 0xaa0303e0
.word 0x3940007e
bl _p_94
.word 0xf94027a0
.word 0xf90023a0
.word 0xf9001ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #720]
.word 0xf9001fa0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #720]
bl _p_95

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #760]
bl _p_96
.word 0xaa0003e2
.word 0xf9401fa1
.word 0xf94023a3
.word 0xaa0303e0
.word 0x3940007e
bl _p_94
.word 0xf9401ba1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #752]
.word 0xf9000001
.loc 12 38 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #752]
.word 0xf9400002

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #712]
.word 0xaa0203e0
.word 0x3940005e
bl _p_97
.word 0xf9001ba0
bl _p_98
.word 0xaa0003e1
.word 0xf9401ba2
.word 0xaa0203e0
.word 0x3940005e
bl _p_99
.word 0x53001c00
.word 0x6b1f001f
.word 0x9a9f17e0
bl _p_100
.loc 12 39 0
bl _p_101
.word 0x53001c00
.word 0x340004e0
.loc 12 41 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #752]
.word 0xf9400002

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #712]
.word 0xaa0203e0
.word 0x3940005e
bl _p_97
.word 0xf9001ba0
bl _p_98
.word 0xaa0003e1
.word 0xf9401ba0
.word 0xaa0003fa
.word 0xaa0103f9
.word 0x3940035e
.word 0xb9802741
.word 0x11000421
.word 0xb9002401
.word 0xf9400b58
.word 0xb9802357
.word 0xaa1703e0
.word 0xb9801b01
.word 0x6b01001f
.word 0x54000142
.word 0x110006e0
.word 0xb9002340
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xaa1903e2
.word 0xf9400303
.word 0xf9408470
.word 0xd63f0200
.word 0x14000004
.word 0xaa1a03e0
.word 0xaa1903e1
bl _p_102
.loc 12 44 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #752]
.word 0xf9400002

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #720]
.word 0xaa0203e0
.word 0x3940005e
bl _p_97
.word 0xf9001ba0
bl _p_103
.word 0xaa0003e1
.word 0xf9401ba2
.word 0xaa0203e0
.word 0x3940005e
bl _p_99
.word 0x53001c00
.word 0x6b1f001f
.word 0x9a9f17e0
bl _p_104
.loc 12 45 0
bl _p_105
.word 0x53001c00
.word 0x340004e0
.loc 12 47 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #752]
.word 0xf9400002

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #720]
.word 0xaa0203e0
.word 0x3940005e
bl _p_97
.word 0xf9001ba0
bl _p_103
.word 0xaa0003e1
.word 0xf9401ba0
.word 0xaa0003fa
.word 0xaa0103f9
.word 0x3940035e
.word 0xb9802741
.word 0x11000421
.word 0xb9002401
.word 0xf9400b58
.word 0xb9802357
.word 0xaa1703e0
.word 0xb9801b01
.word 0x6b01001f
.word 0x54000142
.word 0x110006e0
.word 0xb9002340
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xaa1903e2
.word 0xf9400303
.word 0xf9408470
.word 0xd63f0200
.word 0x14000004
.word 0xaa1a03e0
.word 0xaa1903e1
bl _p_102
.loc 12 50 0
bl _p_101
.word 0x53001c00
.word 0x35000080
bl _p_105
.word 0x53001c00
.word 0x34000460
.loc 12 52 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #712]
.word 0xf9001fa0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #752]
.word 0xf9400002

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #712]
.word 0xaa0203e0
.word 0x3940005e
bl _p_97
.word 0xaa0003e1
.word 0xf9401fa0
bl _p_106
.loc 12 53 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #720]
.word 0xf9001ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #752]
.word 0xf9400002

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #720]
.word 0xaa0203e0
.word 0x3940005e
bl _p_97
.word 0xaa0003e1
.word 0xf9401ba0
bl _p_106
.loc 12 55 0
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_31:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_VersionTracking_Track
Xamarin_Essentials_VersionTracking_Track:
.loc 12 60 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_32:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_VersionTracking_get_IsFirstLaunchEver
Xamarin_Essentials_VersionTracking_get_IsFirstLaunchEver:
.loc 12 62 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #768]
.word 0x3980b410
.word 0xb5000050
bl _p_11

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #776]
.word 0x39400000
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_33:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_VersionTracking_set_IsFirstLaunchEver_bool
Xamarin_Essentials_VersionTracking_set_IsFirstLaunchEver_bool:
.loc 12 62 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #768]
.word 0x3980b410
.word 0xb5000050
bl _p_11

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #776]
.word 0x394043a1
.word 0x39000001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_34:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_VersionTracking_get_IsFirstLaunchForCurrentVersion
Xamarin_Essentials_VersionTracking_get_IsFirstLaunchForCurrentVersion:
.loc 12 64 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #768]
.word 0x3980b410
.word 0xb5000050
bl _p_11

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #784]
.word 0x39400000
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_35:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_VersionTracking_set_IsFirstLaunchForCurrentVersion_bool
Xamarin_Essentials_VersionTracking_set_IsFirstLaunchForCurrentVersion_bool:
.loc 12 64 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #768]
.word 0x3980b410
.word 0xb5000050
bl _p_11

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #784]
.word 0x394043a1
.word 0x39000001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_36:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_VersionTracking_get_IsFirstLaunchForCurrentBuild
Xamarin_Essentials_VersionTracking_get_IsFirstLaunchForCurrentBuild:
.loc 12 66 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #768]
.word 0x3980b410
.word 0xb5000050
bl _p_11

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #792]
.word 0x39400000
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_37:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_VersionTracking_set_IsFirstLaunchForCurrentBuild_bool
Xamarin_Essentials_VersionTracking_set_IsFirstLaunchForCurrentBuild_bool:
.loc 12 66 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #768]
.word 0x3980b410
.word 0xb5000050
bl _p_11

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #792]
.word 0x394043a1
.word 0x39000001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_38:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_VersionTracking_get_CurrentVersion
Xamarin_Essentials_VersionTracking_get_CurrentVersion:
.loc 12 68 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
bl _p_107
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_39:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_VersionTracking_get_CurrentBuild
Xamarin_Essentials_VersionTracking_get_CurrentBuild:
.loc 12 70 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
bl _p_108
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_3a:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_VersionTracking_ReadHistory_string
Xamarin_Essentials_VersionTracking_ReadHistory_string:
.loc 12 112 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #768]
.word 0x3980b410
.word 0xb5000050
bl _p_11

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #704]
.word 0xf9400002
.word 0xaa1a03e0
.word 0xd2800001
bl _p_109
.word 0xaa0003fa
.word 0xb5000060
.word 0xd280001a
.word 0x14000011

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #800]
.word 0xd2800021
bl _p_85
.word 0xaa0003e1
.word 0xb9801802
.word 0xeb1f005f
.word 0x10000011
.word 0x54000269
.word 0xd2800f9e
.word 0x7900401e
.word 0xaa1a03e0
.word 0xd2800022
bl _p_110
.word 0xaa0003fa
.word 0xb50000fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #808]
.word 0xd2800001
bl _p_85
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2801880
.word 0xaa1103e1
bl _p_36

Lme_3b:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_VersionTracking_WriteHistory_string_System_Collections_Generic_IEnumerable_1_string
Xamarin_Essentials_VersionTracking_WriteHistory_string_System_Collections_Generic_IEnumerable_1_string:
.loc 12 115 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xf9400fa1
bl _p_111
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #768]
.word 0x3980b410
.word 0xb5000050
bl _p_11
.word 0xf94013a1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #704]
.word 0xf9400002
.word 0xf9400ba0
bl _p_112
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3c:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_SingleLocationListener_get_LocationHandler
Xamarin_Essentials_SingleLocationListener_get_LocationHandler:
.file 13 "D:\\a\\1\\s\\Xamarin.Essentials\\Geolocation\\Geolocation.ios.cs"
.loc 13 77 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9401400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3d:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_SingleLocationListener_set_LocationHandler_System_Action_1_CoreLocation_CLLocation
Xamarin_Essentials_SingleLocationListener_set_LocationHandler_System_Action_1_CoreLocation_CLLocation:
.loc 13 77 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9001420
.word 0x9100a021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3e:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_SingleLocationListener_LocationsUpdated_CoreLocation_CLLocationManager_CoreLocation_CLLocation__
Xamarin_Essentials_SingleLocationListener_LocationsUpdated_CoreLocation_CLLocationManager_CoreLocation_CLLocation__:
.loc 13 81 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xf90013a1
.word 0xaa0203fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x3940c320
.word 0x350002c0
.loc 13 84 0
.word 0xd280003e
.word 0x3900c33e
.loc 13 86 0
.word 0xb500007a
.word 0xd280001a
.word 0x14000007

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #824]
.word 0xaa1a03e0
bl _p_113
.word 0xaa0003fa
.word 0xf90017ba
.loc 13 88 0
.word 0xb400013a
.loc 13 91 0
.word 0xf9401720
.word 0xaa0003fa
.word 0xb5000040
.word 0x14000005
.word 0xaa1a03e0
.word 0xf94017a1
.word 0xf9400f50
.word 0xd63f0200
.loc 13 92 0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_3f:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_SingleLocationListener_ShouldDisplayHeadingCalibration_CoreLocation_CLLocationManager
Xamarin_Essentials_SingleLocationListener_ShouldDisplayHeadingCalibration_CoreLocation_CLLocationManager:
.loc 13 94 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xd2800000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_40:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_SingleLocationListener__ctor
Xamarin_Essentials_SingleLocationListener__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
bl _p_114
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_41:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_ShareActivityItemSource__ctor_Foundation_NSObject_string
Xamarin_Essentials_ShareActivityItemSource__ctor_Foundation_NSObject_string:
.loc 9 63 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xaa0003f8
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xaa1803e0
bl _p_115
.loc 9 65 0
.word 0xf9400fa0
.word 0xf9001700
.word 0x9100a301
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 9 66 0
.word 0xf94013a0
.word 0xf9001b00
.word 0x9100c301
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 9 67 0
.word 0xf9400bb8
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_42:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_ShareActivityItemSource_GetItemForActivity_UIKit_UIActivityViewController_Foundation_NSString
Xamarin_Essentials_ShareActivityItemSource_GetItemForActivity_UIKit_UIActivityViewController_Foundation_NSString:
.loc 9 69 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400ba0
.word 0xf9401400
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_43:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_ShareActivityItemSource_GetPlaceholderData_UIKit_UIActivityViewController
Xamarin_Essentials_ShareActivityItemSource_GetPlaceholderData_UIKit_UIActivityViewController:
.loc 9 71 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9401400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_44:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_ShareActivityItemSource_GetSubjectForActivity_UIKit_UIActivityViewController_Foundation_NSString
Xamarin_Essentials_ShareActivityItemSource_GetSubjectForActivity_UIKit_UIActivityViewController_Foundation_NSString:
.loc 9 73 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400ba0
.word 0xf9401800
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_45:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_Preferences_PlatformSet_T_GSHAREDVT_string_T_GSHAREDVT_string
Xamarin_Essentials_Preferences_PlatformSet_T_GSHAREDVT_string_T_GSHAREDVT_string:
.loc 7 50 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xf90023af
.word 0xaa0003f9
.word 0xf9001fa1
.word 0xaa0203fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf94023a0
bl _p_116
.word 0xaa0003f8
.word 0xb9800300
.word 0x91003c10
.word 0x928001f1
.word 0xf2bffff1
.word 0x8a110210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0x8b100230
.word 0xeb10023f
.word 0x54000080
.word 0xa9007e3f
.word 0x91004231
.word 0x17fffffc
.word 0x910003f7
.word 0xf90027bf
.word 0x390143bf
.word 0xf9002fbf
.word 0xb9803300
.word 0x8b0002e0
.word 0xf9400f01
.word 0xf9401302
.word 0xd63f0040
.word 0xb9803b01
.word 0xaa1703e0
.word 0x8b010000
.word 0xf9400f01
.word 0xf9401302
.word 0xd63f0040

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #408]
.word 0xf9400000
.word 0xf90027a0
.word 0xd2800000
.word 0x390143a0
.word 0xf94027b6
.word 0x910143a0
.word 0xf90033a0
.word 0xaa1603e0
.word 0x910143a1
bl _mono_monitor_enter_v4_fast
.word 0x35000080
.word 0xaa1603e0
.word 0xf94033a1
bl _p_42
.loc 7 52 0
.word 0xaa1a03e0
bl _p_43
.word 0xf9002fa0
.loc 7 54 0
.word 0xf9401fa1
.word 0xb9804300
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401703
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000300
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000320
.word 0xf94023a0
bl _p_117
bl _p_118
.word 0xb9804301
.word 0x8b0102e1
.word 0xf90063a1
.word 0xf9005ba0
.word 0x91004000
.word 0xf9005fa0
.word 0xf9400f00
.word 0xf9401700
.word 0xf94023a0
bl _p_119
.word 0xaa0003e2
.word 0xf9405fa0
.word 0xf94063a1
bl _mono_gsharedvt_value_copy
.word 0xf9405ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9804300
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9804300
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xb50002fa
.loc 7 56 0
.word 0xf9402fa2
.word 0xaa0203e0
.word 0xaa1903e1
.word 0x3940005e
bl _p_44
.word 0xb40000c0
.loc 7 57 0
.word 0xf9402fa2
.word 0xaa0203e0
.word 0xaa1903e1
.word 0x3940005e
bl _p_47
.loc 7 58 0
.word 0xf90037bf
.word 0x9400039a
.word 0xf94037a0
.word 0xb4000040
bl _p_45
.word 0xf9003bbf
.word 0x940003aa
.word 0xf9403ba0
.word 0xb4000040
bl _p_45
.word 0x140003b3
.loc 7 61 0
.word 0xf9401fa1
.word 0xb9803300
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401703
.word 0xd63f0060
.word 0xf9401fa1
.word 0xb9804b00
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401703
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000300
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000320
.word 0xf94023a0
bl _p_117
bl _p_118
.word 0xb9804b01
.word 0x8b0102e1
.word 0xf90063a1
.word 0xf9005ba0
.word 0x91004000
.word 0xf9005fa0
.word 0xf9400f00
.word 0xf9401700
.word 0xf94023a0
bl _p_119
.word 0xaa0003e2
.word 0xf9405fa0
.word 0xf94063a1
bl _mono_gsharedvt_value_copy
.word 0xf9405ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9804b00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9804b00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xb500019a
.word 0xf90037bf
.word 0x9400035d
.word 0xf94037a0
.word 0xb4000040
bl _p_45
.word 0xf9003bbf
.word 0x9400036d
.word 0xf9403ba0
.word 0xb4000040
bl _p_45
.word 0x14000376
.word 0xb9803300
.word 0x8b0002e1
.word 0xb9805300
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401703
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000300
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000320
.word 0xf94023a0
bl _p_117
bl _p_118
.word 0xb9805301
.word 0x8b0102e1
.word 0xf90063a1
.word 0xf9005ba0
.word 0x91004000
.word 0xf9005fa0
.word 0xf9400f00
.word 0xf9401700
.word 0xf94023a0
bl _p_119
.word 0xaa0003e2
.word 0xf9405fa0
.word 0xf94063a1
bl _mono_gsharedvt_value_copy
.word 0xf9405ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9805300
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9805300
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000180
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #416]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800016
.word 0x14000001
.word 0xaa1603fa
.word 0xb5004ef6
.word 0xb9803300
.word 0x8b0002e1
.word 0xb9805b00
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401703
.word 0xd63f0060
.word 0xb9803300
.word 0x8b0002e1
.word 0xb9803b00
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401703
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000300
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000320
.word 0xf94023a0
bl _p_117
bl _p_118
.word 0xb9805b01
.word 0x8b0102e1
.word 0xf90063a1
.word 0xf9005ba0
.word 0x91004000
.word 0xf9005fa0
.word 0xf9400f00
.word 0xf9401700
.word 0xf94023a0
bl _p_119
.word 0xaa0003e2
.word 0xf9405fa0
.word 0xf94063a1
bl _mono_gsharedvt_value_copy
.word 0xf9405ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9805b00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9805b00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000180
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #424]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800016
.word 0x14000001
.word 0xb4000796
.word 0xb9803b00
.word 0x8b0002e1
.word 0xb9806300
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401703
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000300
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000320
.word 0xf94023a0
bl _p_117
bl _p_118
.word 0xb9806301
.word 0x8b0102e1
.word 0xf90063a1
.word 0xf9005ba0
.word 0x91004000
.word 0xf9005fa0
.word 0xf9400f00
.word 0xf9401700
.word 0xf94023a0
bl _p_119
.word 0xaa0003e2
.word 0xf9405fa0
.word 0xf94063a1
bl _mono_gsharedvt_value_copy
.word 0xf9405ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9806300
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9806300
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x540059a1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #424]
.word 0xeb01001f
.word 0x10000011
.word 0x540058a1
.word 0xb9801358
.word 0x1400020c
.word 0xb9803300
.word 0x8b0002e1
.word 0xb9806b00
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401703
.word 0xd63f0060
.word 0xb9803300
.word 0x8b0002e1
.word 0xb9803b00
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401703
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000300
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000320
.word 0xf94023a0
bl _p_117
bl _p_118
.word 0xb9806b01
.word 0x8b0102e1
.word 0xf90063a1
.word 0xf9005ba0
.word 0x91004000
.word 0xf9005fa0
.word 0xf9400f00
.word 0xf9401700
.word 0xf94023a0
bl _p_119
.word 0xaa0003e2
.word 0xf9405fa0
.word 0xf94063a1
bl _mono_gsharedvt_value_copy
.word 0xf9405ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9806b00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9806b00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000180
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #432]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800016
.word 0x14000001
.word 0xb40007b6
.word 0xb9803b00
.word 0x8b0002e1
.word 0xb9807300
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401703
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000300
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000320
.word 0xf94023a0
bl _p_117
bl _p_118
.word 0xb9807301
.word 0x8b0102e1
.word 0xf90063a1
.word 0xf9005ba0
.word 0x91004000
.word 0xf9005fa0
.word 0xf9400f00
.word 0xf9401700
.word 0xf94023a0
bl _p_119
.word 0xaa0003e2
.word 0xf9405fa0
.word 0xf94063a1
bl _mono_gsharedvt_value_copy
.word 0xf9405ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9807300
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9807300
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54004a01
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #432]
.word 0xeb01001f
.word 0x10000011
.word 0x54004901
.word 0x39404340
.word 0x53001c1a
.word 0x140001a0
.word 0xb9803300
.word 0x8b0002e1
.word 0xb9807b00
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401703
.word 0xd63f0060
.word 0xb9803300
.word 0x8b0002e1
.word 0xb9803b00
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401703
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000300
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000320
.word 0xf94023a0
bl _p_117
bl _p_118
.word 0xb9807b01
.word 0x8b0102e1
.word 0xf90063a1
.word 0xf9005ba0
.word 0x91004000
.word 0xf9005fa0
.word 0xf9400f00
.word 0xf9401700
.word 0xf94023a0
bl _p_119
.word 0xaa0003e2
.word 0xf9405fa0
.word 0xf94063a1
bl _mono_gsharedvt_value_copy
.word 0xf9405ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9807b00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9807b00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000180
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #440]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800016
.word 0x14000001
.word 0xb4000796
.word 0xb9803b00
.word 0x8b0002e1
.word 0xb9808300
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401703
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000300
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000320
.word 0xf94023a0
bl _p_117
bl _p_118
.word 0xb9808301
.word 0x8b0102e1
.word 0xf90063a1
.word 0xf9005ba0
.word 0x91004000
.word 0xf9005fa0
.word 0xf9400f00
.word 0xf9401700
.word 0xf94023a0
bl _p_119
.word 0xaa0003e2
.word 0xf9405fa0
.word 0xf94063a1
bl _mono_gsharedvt_value_copy
.word 0xf9405ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9808300
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9808300
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54003a41
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #440]
.word 0xeb01001f
.word 0x10000011
.word 0x54003941
.word 0xf9400b56
.word 0x14000135
.word 0xb9803300
.word 0x8b0002e1
.word 0xb9808b00
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401703
.word 0xd63f0060
.word 0xb9803300
.word 0x8b0002e1
.word 0xb9803b00
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401703
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000300
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000320
.word 0xf94023a0
bl _p_117
bl _p_118
.word 0xb9808b01
.word 0x8b0102e1
.word 0xf90063a1
.word 0xf9005ba0
.word 0x91004000
.word 0xf9005fa0
.word 0xf9400f00
.word 0xf9401700
.word 0xf94023a0
bl _p_119
.word 0xaa0003e2
.word 0xf9405fa0
.word 0xf94063a1
bl _mono_gsharedvt_value_copy
.word 0xf9405ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9808b00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9808b00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000180
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #448]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800016
.word 0x14000001
.word 0xb40007b6
.word 0xb9803b00
.word 0x8b0002e1
.word 0xb9809300
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401703
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000300
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000320
.word 0xf94023a0
bl _p_117
bl _p_118
.word 0xb9809301
.word 0x8b0102e1
.word 0xf90063a1
.word 0xf9005ba0
.word 0x91004000
.word 0xf9005fa0
.word 0xf9400f00
.word 0xf9401700
.word 0xf94023a0
bl _p_119
.word 0xaa0003e2
.word 0xf9405fa0
.word 0xf94063a1
bl _mono_gsharedvt_value_copy
.word 0xf9405ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9809300
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9809300
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54002aa1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #448]
.word 0xeb01001f
.word 0x10000011
.word 0x540029a1
.word 0xfd400b40
.word 0xfd0043a0
.word 0x140000f8
.word 0xb9803300
.word 0x8b0002e1
.word 0xb9809b00
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401703
.word 0xd63f0060
.word 0xb9803300
.word 0x8b0002e1
.word 0xb9803b00
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401703
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000300
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000320
.word 0xf94023a0
bl _p_117
bl _p_118
.word 0xb9809b01
.word 0x8b0102e1
.word 0xf90063a1
.word 0xf9005ba0
.word 0x91004000
.word 0xf9005fa0
.word 0xf9400f00
.word 0xf9401700
.word 0xf94023a0
bl _p_119
.word 0xaa0003e2
.word 0xf9405fa0
.word 0xf94063a1
bl _mono_gsharedvt_value_copy
.word 0xf9405ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9809b00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9809b00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000180
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #456]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800016
.word 0x14000001
.word 0xb4001ab6
.word 0xb9803b00
.word 0x8b0002e1
.word 0xb980a300
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401703
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000300
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000320
.word 0xf94023a0
bl _p_117
bl _p_118
.word 0xb980a301
.word 0x8b0102e1
.word 0xf90063a1
.word 0xf9005ba0
.word 0x91004000
.word 0xf9005fa0
.word 0xf9400f00
.word 0xf9401700
.word 0xf94023a0
bl _p_119
.word 0xaa0003e2
.word 0xf9405fa0
.word 0xf94063a1
bl _mono_gsharedvt_value_copy
.word 0xf9405ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb980a300
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb980a300
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54001ae1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #456]
.word 0xeb01001f
.word 0x10000011
.word 0x540019e1
.word 0xbd401350
.word 0x1e22c200
.word 0x1e624010
.word 0xbd007bb0
.word 0x1400008b
.word 0xaa1a03f8
.loc 7 64 0
.word 0xf9402fa3
.word 0xaa0303e0
.word 0xaa1a03e1
.word 0xaa1903e2
.word 0x3940007e
bl _p_48
.loc 7 65 0
.word 0xf90037bf
.word 0x94000099
.word 0xf94037a0
.word 0xb4000040
bl _p_45
.word 0xf9003bbf
.word 0x940000a9
.word 0xf9403ba0
.word 0xb4000040
bl _p_45
.word 0x140000b2
.word 0xaa1803fa
.loc 7 67 0
.word 0xf9402fa3
.word 0x93407f01
.word 0xaa0303e0
.word 0xaa1903e2
.word 0x3940007e
bl _p_49
.loc 7 68 0
.word 0xf90037bf
.word 0x94000087
.word 0xf94037a0
.word 0xb4000040
bl _p_45
.word 0xf9003bbf
.word 0x94000097
.word 0xf9403ba0
.word 0xb4000040
bl _p_45
.word 0x140000a0
.word 0x53001f58
.loc 7 70 0
.word 0xf9402fa3
.word 0xaa0303e0
.word 0xaa1803e1
.word 0xaa1903e2
.word 0x3940007e
bl _p_50
.loc 7 71 0
.word 0xf90037bf
.word 0x94000075
.word 0xf94037a0
.word 0xb4000040
bl _p_45
.word 0xf9003bbf
.word 0x94000085
.word 0xf9403ba0
.word 0xb4000040
bl _p_45
.word 0x1400008e
.loc 7 73 0
.word 0xf9401fa1
.word 0xb980ab00
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401703
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000300
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000320
.word 0xf94023a0
bl _p_117
bl _p_118
.word 0xb980ab01
.word 0x8b0102e1
.word 0xf90063a1
.word 0xf9005ba0
.word 0x91004000
.word 0xf9005fa0
.word 0xf9400f00
.word 0xf9401700
.word 0xf94023a0
bl _p_119
.word 0xaa0003e2
.word 0xf9405fa0
.word 0xf94063a1
bl _mono_gsharedvt_value_copy
.word 0xf9405ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb980ab00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb980ab00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
bl _p_120
.word 0xaa0003e1
.word 0xaa1a03e0
bl _p_51
.word 0xaa0003fa
.loc 7 74 0
.word 0xf9402fa3
.word 0xaa0303e0
.word 0xaa1a03e1
.word 0xaa1903e2
.word 0x3940007e
bl _p_48
.loc 7 75 0
.word 0xf90037bf
.word 0x94000034
.word 0xf94037a0
.word 0xb4000040
bl _p_45
.word 0xf9003bbf
.word 0x94000044
.word 0xf9403ba0
.word 0xb4000040
bl _p_45
.word 0x1400004d
.word 0xfd4043a0
.word 0xfd0043a0
.loc 7 77 0
.word 0xf9402fa2
.word 0xfd4043a0
.word 0xaa0203e0
.word 0xaa1903e1
.word 0x3940005e
bl _p_52
.loc 7 78 0
.word 0xf90037bf
.word 0x94000021
.word 0xf94037a0
.word 0xb4000040
bl _p_45
.word 0xf9003bbf
.word 0x94000031
.word 0xf9403ba0
.word 0xb4000040
bl _p_45
.word 0x1400003a
.word 0xbd407bb0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd007bb0
.loc 7 80 0
.word 0xf9402fa2
.word 0xbd407bb0
.word 0x1e22c200
.word 0xaa0203e0
.word 0x1e624000
.word 0xaa1903e1
.word 0x3940005e
bl _p_53
.loc 7 83 0
.word 0xf90037bf
.word 0x9400000a
.word 0xf94037a0
.word 0xb4000040
bl _p_45
.word 0xf9003bbf
.word 0x9400001a
.word 0xf9403ba0
.word 0xb4000040
bl _p_45
.word 0x14000023
.word 0xf90047be

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9402fa0
.word 0xb4000160
.word 0xf9402fa1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #480]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94047be
.word 0xd61f03c0
.word 0xf9004fbe

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x394143a0
.word 0x34000060
.word 0xf94027a0
bl _p_46
.word 0xf9404fbe
.word 0xd61f03c0
.loc 7 85 0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0
.word 0xd2801920
.word 0xaa1103e1
bl _p_36

Lme_47:
.text
	.align 4
	.no_dead_strip Xamarin_Essentials_Preferences_PlatformGet_T_GSHAREDVT_string_T_GSHAREDVT_string
Xamarin_Essentials_Preferences_PlatformGet_T_GSHAREDVT_string_T_GSHAREDVT_string:
.loc 7 89 0 prologue_end
.word 0xa9b27bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xf90023a8
.word 0xf9002baf
.word 0xaa0003f9
.word 0xf90027a1
.word 0xaa0203fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9402ba0
bl _p_121
.word 0xaa0003f8
.word 0xb9800300
.word 0x91003c10
.word 0x928001f1
.word 0xf2bffff1
.word 0x8a110210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0x8b100230
.word 0xeb10023f
.word 0x54000080
.word 0xa9007e3f
.word 0x91004231
.word 0x17fffffc
.word 0x910003f7
.word 0xf9002fbf
.word 0x390183bf
.word 0xf90037bf
.word 0xb9804300
.word 0x8b0002e0
.word 0xf9401701
.word 0xf9401b02
.word 0xd63f0040
.word 0xb9804b01
.word 0xaa1703e0
.word 0x8b010000
.word 0xf9401701
.word 0xf9401b02
.word 0xd63f0040
.word 0xb9805301
.word 0xaa1703e0
.word 0x8b010000
.word 0xf9401701
.word 0xf9401b02
.word 0xd63f0040
.word 0xd2800016
.loc 7 91 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #408]
.word 0xf9400000
.word 0xf9002fa0
.word 0xd2800000
.word 0x390183a0
.word 0xf9402fb5
.word 0x910183a0
.word 0xf9003ba0
.word 0xaa1503e0
.word 0x910183a1
bl _mono_monitor_enter_v4_fast
.word 0x35000080
.word 0xaa1503e0
.word 0xf9403ba1
bl _p_42
.loc 7 93 0
.word 0xaa1a03e0
bl _p_43
.word 0xf90037a0
.loc 7 95 0
.word 0xf94037a2
.word 0xaa0203e0
.word 0xaa1903e1
.word 0x3940005e
bl _p_44
.word 0xb5000240
.loc 7 96 0
.word 0xf94027a1
.word 0xb9804300
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf9003fbf
.word 0x9400039e
.word 0xf9403fa0
.word 0xb4000040
bl _p_45
.word 0xf90043bf
.word 0x940003ae
.word 0xf94043a0
.word 0xb4000040
bl _p_45
.word 0x140003e3
.loc 7 98 0
.word 0xf94027a1
.word 0xb9804b00
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf94027a1
.word 0xb9805b00
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000300
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000320
.word 0xf9402ba0
bl _p_122
bl _p_118
.word 0xb9805b01
.word 0x8b0102e1
.word 0xf9006ba1
.word 0xf90063a0
.word 0x91004000
.word 0xf90067a0
.word 0xf9401700
.word 0xf9401f00
.word 0xf9402ba0
bl _p_123
.word 0xaa0003e2
.word 0xf94067a0
.word 0xf9406ba1
bl _mono_gsharedvt_value_copy
.word 0xf94063a0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9805b00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9805b00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xb400695a
.word 0xb9804b00
.word 0x8b0002e1
.word 0xb9806300
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xb9804b00
.word 0x8b0002e1
.word 0xb9805300
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000300
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000320
.word 0xf9402ba0
bl _p_122
bl _p_118
.word 0xb9806301
.word 0x8b0102e1
.word 0xf9006ba1
.word 0xf90063a0
.word 0x91004000
.word 0xf90067a0
.word 0xf9401700
.word 0xf9401f00
.word 0xf9402ba0
bl _p_123
.word 0xaa0003e2
.word 0xf94067a0
.word 0xf9406ba1
bl _mono_gsharedvt_value_copy
.word 0xf94063a0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9806300
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9806300
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f5
.word 0xeb1f035f
.word 0x54000180
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #424]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800015
.word 0x14000001
.word 0xb4000795
.word 0xb9805300
.word 0x8b0002e1
.word 0xb9806b00
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000300
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000320
.word 0xf9402ba0
bl _p_122
bl _p_118
.word 0xb9806b01
.word 0x8b0102e1
.word 0xf9006ba1
.word 0xf90063a0
.word 0x91004000
.word 0xf90067a0
.word 0xf9401700
.word 0xf9401f00
.word 0xf9402ba0
bl _p_123
.word 0xaa0003e2
.word 0xf94067a0
.word 0xf9406ba1
bl _mono_gsharedvt_value_copy
.word 0xf94063a0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9806b00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9806b00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54006a21
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #424]
.word 0xeb01001f
.word 0x10000011
.word 0x54006921
.word 0xb9801356
.word 0x14000237
.word 0xb9804b00
.word 0x8b0002e1
.word 0xb9807300
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xb9804b00
.word 0x8b0002e1
.word 0xb9805300
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000300
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000320
.word 0xf9402ba0
bl _p_122
bl _p_118
.word 0xb9807301
.word 0x8b0102e1
.word 0xf9006ba1
.word 0xf90063a0
.word 0x91004000
.word 0xf90067a0
.word 0xf9401700
.word 0xf9401f00
.word 0xf9402ba0
bl _p_123
.word 0xaa0003e2
.word 0xf94067a0
.word 0xf9406ba1
bl _mono_gsharedvt_value_copy
.word 0xf94063a0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9807300
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9807300
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f5
.word 0xeb1f035f
.word 0x54000180
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #432]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800015
.word 0x14000001
.word 0xb40007b5
.word 0xb9805300
.word 0x8b0002e1
.word 0xb9807b00
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000300
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000320
.word 0xf9402ba0
bl _p_122
bl _p_118
.word 0xb9807b01
.word 0x8b0102e1
.word 0xf9006ba1
.word 0xf90063a0
.word 0x91004000
.word 0xf90067a0
.word 0xf9401700
.word 0xf9401f00
.word 0xf9402ba0
bl _p_123
.word 0xaa0003e2
.word 0xf94067a0
.word 0xf9406ba1
bl _mono_gsharedvt_value_copy
.word 0xf94063a0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9807b00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9807b00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54005a81
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #432]
.word 0xeb01001f
.word 0x10000011
.word 0x54005981
.word 0x39404340
.word 0x53001c1a
.word 0x140001d3
.word 0xb9804b00
.word 0x8b0002e1
.word 0xb9808300
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xb9804b00
.word 0x8b0002e1
.word 0xb9805300
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000300
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000320
.word 0xf9402ba0
bl _p_122
bl _p_118
.word 0xb9808301
.word 0x8b0102e1
.word 0xf9006ba1
.word 0xf90063a0
.word 0x91004000
.word 0xf90067a0
.word 0xf9401700
.word 0xf9401f00
.word 0xf9402ba0
bl _p_123
.word 0xaa0003e2
.word 0xf94067a0
.word 0xf9406ba1
bl _mono_gsharedvt_value_copy
.word 0xf94063a0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9808300
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9808300
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f5
.word 0xeb1f035f
.word 0x54000180
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #440]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800015
.word 0x14000001
.word 0xb4000795
.word 0xb9805300
.word 0x8b0002e1
.word 0xb9808b00
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000300
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000320
.word 0xf9402ba0
bl _p_122
bl _p_118
.word 0xb9808b01
.word 0x8b0102e1
.word 0xf9006ba1
.word 0xf90063a0
.word 0x91004000
.word 0xf90067a0
.word 0xf9401700
.word 0xf9401f00
.word 0xf9402ba0
bl _p_123
.word 0xaa0003e2
.word 0xf94067a0
.word 0xf9406ba1
bl _mono_gsharedvt_value_copy
.word 0xf94063a0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9808b00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9808b00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54004ac1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #440]
.word 0xeb01001f
.word 0x10000011
.word 0x540049c1
.word 0xf9400b56
.word 0x1400016f
.word 0xb9804b00
.word 0x8b0002e1
.word 0xb9809300
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xb9804b00
.word 0x8b0002e1
.word 0xb9805300
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000300
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000320
.word 0xf9402ba0
bl _p_122
bl _p_118
.word 0xb9809301
.word 0x8b0102e1
.word 0xf9006ba1
.word 0xf90063a0
.word 0x91004000
.word 0xf90067a0
.word 0xf9401700
.word 0xf9401f00
.word 0xf9402ba0
bl _p_123
.word 0xaa0003e2
.word 0xf94067a0
.word 0xf9406ba1
bl _mono_gsharedvt_value_copy
.word 0xf94063a0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9809300
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9809300
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f5
.word 0xeb1f035f
.word 0x54000180
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #448]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800015
.word 0x14000001
.word 0xb40007b5
.word 0xb9805300
.word 0x8b0002e1
.word 0xb9809b00
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000300
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000320
.word 0xf9402ba0
bl _p_122
bl _p_118
.word 0xb9809b01
.word 0x8b0102e1
.word 0xf9006ba1
.word 0xf90063a0
.word 0x91004000
.word 0xf90067a0
.word 0xf9401700
.word 0xf9401f00
.word 0xf9402ba0
bl _p_123
.word 0xaa0003e2
.word 0xf94067a0
.word 0xf9406ba1
bl _mono_gsharedvt_value_copy
.word 0xf94063a0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9809b00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9809b00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54003b21
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #448]
.word 0xeb01001f
.word 0x10000011
.word 0x54003a21
.word 0xfd400b40
.word 0xfd004ba0
.word 0x1400010f
.word 0xb9804b00
.word 0x8b0002e1
.word 0xb980a300
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xb9804b00
.word 0x8b0002e1
.word 0xb9805300
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000300
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000320
.word 0xf9402ba0
bl _p_122
bl _p_118
.word 0xb980a301
.word 0x8b0102e1
.word 0xf9006ba1
.word 0xf90063a0
.word 0x91004000
.word 0xf90067a0
.word 0xf9401700
.word 0xf9401f00
.word 0xf9402ba0
bl _p_123
.word 0xaa0003e2
.word 0xf94067a0
.word 0xf9406ba1
bl _mono_gsharedvt_value_copy
.word 0xf94063a0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb980a300
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb980a300
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f5
.word 0xeb1f035f
.word 0x54000180
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #456]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800015
.word 0x14000001
.word 0xb40007f5
.word 0xb9805300
.word 0x8b0002e1
.word 0xb980ab00
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000300
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000320
.word 0xf9402ba0
bl _p_122
bl _p_118
.word 0xb980ab01
.word 0x8b0102e1
.word 0xf9006ba1
.word 0xf90063a0
.word 0x91004000
.word 0xf90067a0
.word 0xf9401700
.word 0xf9401f00
.word 0xf9402ba0
bl _p_123
.word 0xaa0003e2
.word 0xf94067a0
.word 0xf9406ba1
bl _mono_gsharedvt_value_copy
.word 0xf94063a0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb980ab00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb980ab00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54002b61
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #456]
.word 0xeb01001f
.word 0x10000011
.word 0x54002a61
.word 0xbd401350
.word 0x1e22c200
.word 0x1e624010
.word 0xbd008bb0
.word 0x140000a8
.word 0xb9804b00
.word 0x8b0002e1
.word 0xb980b300
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000300
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000320
.word 0xf9402ba0
bl _p_122
bl _p_118
.word 0xb980b301
.word 0x8b0102e1
.word 0xf9006ba1
.word 0xf90063a0
.word 0x91004000
.word 0xf90067a0
.word 0xf9401700
.word 0xf9401f00
.word 0xf9402ba0
bl _p_123
.word 0xaa0003e2
.word 0xf94067a0
.word 0xf9406ba1
bl _mono_gsharedvt_value_copy
.word 0xf94063a0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb980b300
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb980b300
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f5
.word 0xeb1f035f
.word 0x54000180
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #416]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800015
.word 0x14000001
.word 0xaa1503fa
.word 0xb4001315
.word 0x14000086
.loc 7 101 0
.word 0xf94037a2
.word 0xaa0203e0
.word 0xaa1903e1
.word 0x3940005e
bl _p_54
.word 0x93407c00
.word 0xf90063a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #488]
.word 0xd2800281
bl _p_23
.word 0xf94063a1
.word 0xb9001001
.word 0xaa0003f6
.loc 7 102 0
.word 0xf9003fbf
.word 0x9400009f
.word 0xf9403fa0
.word 0xb4000040
bl _p_45
.word 0xf90043bf
.word 0x940000af
.word 0xf94043a0
.word 0xb4000040
bl _p_45
.word 0x140000b8
.loc 7 104 0
.word 0xf94037a2
.word 0xaa0203e0
.word 0xaa1903e1
.word 0x3940005e
bl _p_55
.word 0xf90063a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #496]
.word 0xd2800221
bl _p_23
.word 0xf94063a1
.word 0x39004001
.word 0xaa0003f6
.loc 7 105 0
.word 0xf9003fbf
.word 0x94000086
.word 0xf9403fa0
.word 0xb4000040
bl _p_45
.word 0xf90043bf
.word 0x94000096
.word 0xf94043a0
.word 0xb4000040
bl _p_45
.word 0x1400009f
.loc 7 107 0
.word 0xf94037a2
.word 0xaa0203e0
.word 0xaa1903e1
.word 0x3940005e
bl _p_56
.word 0xf90067a0
.loc 7 108 0
bl _p_120
.word 0xaa0003e1
.word 0xf94067a0
bl _p_57
.word 0xf90063a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #504]
.word 0xd2800301
bl _p_23
.word 0xf94063a1
.word 0xf9000801
.word 0xaa0003f6
.loc 7 109 0
.word 0xf9003fbf
.word 0x94000068
.word 0xf9403fa0
.word 0xb4000040
bl _p_45
.word 0xf90043bf
.word 0x94000078
.word 0xf94043a0
.word 0xb4000040
bl _p_45
.word 0x14000081
.loc 7 111 0
.word 0xf94037a2
.word 0xaa0203e0
.word 0xaa1903e1
.word 0x3940005e
bl _p_58
.word 0xfd006fa0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #512]
.word 0xd2800301
bl _p_23
.word 0xfd406fa0
.word 0xfd000800
.word 0xaa0003f6
.loc 7 112 0
.word 0xf9003fbf
.word 0x9400004f
.word 0xf9403fa0
.word 0xb4000040
bl _p_45
.word 0xf90043bf
.word 0x9400005f
.word 0xf94043a0
.word 0xb4000040
bl _p_45
.word 0x14000068
.loc 7 114 0
.word 0xf94037a2
.word 0xaa0203e0
.word 0xaa1903e1
.word 0x3940005e
bl _p_59
.word 0x1e22c000
.word 0xfd006fa0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #520]
.word 0xd2800281
bl _p_23
.word 0xfd406fa0
.word 0x1e624010
.word 0xbd001010
.word 0xaa0003f6
.loc 7 115 0
.word 0xf9003fbf
.word 0x94000034
.word 0xf9403fa0
.word 0xb4000040
bl _p_45
.word 0xf90043bf
.word 0x94000044
.word 0xf94043a0
.word 0xb4000040
bl _p_45
.word 0x1400004d
.loc 7 118 0
.word 0xf94037a2
.word 0xaa0203e0
.word 0xaa1903e1
.word 0x3940005e
bl _p_56
.word 0xaa0003f6
.loc 7 119 0
.word 0xf9003fbf
.word 0x94000023
.word 0xf9403fa0
.word 0xb4000040
bl _p_45
.word 0xf90043bf
.word 0x94000033
.word 0xf94043a0
.word 0xb4000040
bl _p_45
.word 0x1400003c
.loc 7 122 0
.word 0xf9402ba0
bl _p_124

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #832]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x340000e0
.loc 7 123 0
.word 0xf94037a2
.word 0xaa0203e0
.word 0xaa1903e1
.word 0x3940005e
bl _p_56
.word 0xaa0003f6
.loc 7 126 0
.word 0xf9003fbf
.word 0x9400000a
.word 0xf9403fa0
.word 0xb4000040
bl _p_45
.word 0xf90043bf
.word 0x9400001a
.word 0xf94043a0
.word 0xb4000040
bl _p_45
.word 0x14000023
.word 0xf9004fbe

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf94037a0
.word 0xb4000160
.word 0xf94037a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #480]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9404fbe
.word 0xd61f03c0
.word 0xf90057be

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x394183a0
.word 0x34000060
.word 0xf9402fa0
bl _p_46
.word 0xf94057be
.word 0xd61f03c0
.loc 7 129 0
.word 0xf9400f01
.word 0xaa1603e0
bl _p_125
.word 0xaa0003fa
.word 0xf9400719
.word 0xd280005e
.word 0xeb1e033f
.word 0x540000c0
.word 0xd280007e
.word 0xeb1e033f
.word 0x540000e0
.word 0x91004359
.word 0x1400000c
.word 0xb980bb00
.word 0x8b0002f9
.word 0xf900033a
.word 0x14000008
.word 0xf9401301
.word 0xb980c300
.word 0x8b0002e8
.word 0xaa1a03e0
.word 0xd63f0020
.word 0xb980c300
.word 0x8b0002f9
.word 0xb980cb00
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xaa1903e1
.word 0xd63f0060
.word 0xf94023a0
.word 0xb980cb01
.word 0x8b0102e1
.word 0xf90067a1
.word 0xf90063a0
.word 0xf9401700
.word 0xf9401f00
.word 0xf9402ba0
bl _p_123
.word 0xaa0003e2
.word 0xf94063a0
.word 0xf94067a1
bl _mono_gsharedvt_value_copy
.word 0x1400000e
.loc 7 130 0
.word 0xf94023a0
.word 0xb9804301
.word 0x8b0102e1
.word 0xf90067a1
.word 0xf90063a0
.word 0xf9401700
.word 0xf9401f00
.word 0xf9402ba0
bl _p_123
.word 0xaa0003e2
.word 0xf94063a0
.word 0xf94067a1
bl _mono_gsharedvt_value_copy
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8ce7bfd
.word 0xd65f03c0
.word 0xd2801920
.word 0xaa1103e1
bl _p_36

Lme_48:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_UIKit_UIWindow_System_nfloat_invoke_TResult_T_UIKit_UIWindow
wrapper_delegate_invoke_System_Func_2_UIKit_UIWindow_System_nfloat_invoke_TResult_T_UIKit_UIWindow:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x35000780
.word 0x14000001
.word 0xf9403f38
.word 0xaa1803e0
.word 0xb50001e0
.word 0xf9401338
.word 0xaa1803e0
.word 0xb40000e0
.word 0xf9401f20
.word 0xf9400b22
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000024
.word 0xf9401f20
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400001f
.word 0xb9801b19
.word 0xd2800017

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x54000429
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400016
.word 0xaa1603e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a0
.word 0xfd001fa0
.word 0x110006f7
.word 0xaa1703e0
.word 0x6b19001f
.word 0x54fffccb
.word 0xfd401fa0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0x91022300
.word 0xd280003e
.word 0xb900001e
.word 0xaa1803e0
bl _p_126
bl _p_127
.word 0xaa0003f8
.word 0xb5ffff20
.word 0x17ffffc3
.word 0xd2801880
.word 0xaa1103e1
bl _p_36

Lme_4d:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_UIKit_UIWindow_bool_invoke_TResult_T_UIKit_UIWindow
wrapper_delegate_invoke_System_Func_2_UIKit_UIWindow_bool_invoke_TResult_T_UIKit_UIWindow:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350007e0
.word 0x14000001
.word 0xf9403f38
.word 0xaa1803e0
.word 0xb5000220
.word 0xf9401338
.word 0xaa1803e0
.word 0xb4000100
.word 0xf9401f20
.word 0xf9400b22
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x53001c00
.word 0x14000026
.word 0xf9401f20
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x53001c00
.word 0x14000020
.word 0xb9801b19
.word 0xd2800017

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x54000449
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400016
.word 0xaa1603e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a1
.word 0x53001c00
.word 0x53001c16
.word 0x110006f7
.word 0xaa1703e0
.word 0x6b19001f
.word 0x54fffcab
.word 0xaa1603e0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0x91022300
.word 0xd280003e
.word 0xb900001e
.word 0xaa1803e0
bl _p_126
bl _p_127
.word 0xaa0003f8
.word 0xb5ffff20
.word 0x17ffffc0
.word 0xd2801880
.word 0xaa1103e1
bl _p_36

Lme_52:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Predicate_1_Foundation_NSObject_invoke_bool_T_Foundation_NSObject
wrapper_delegate_invoke_System_Predicate_1_Foundation_NSObject_invoke_bool_T_Foundation_NSObject:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350007e0
.word 0x14000001
.word 0xf9403f38
.word 0xaa1803e0
.word 0xb5000220
.word 0xf9401338
.word 0xaa1803e0
.word 0xb4000100
.word 0xf9401f20
.word 0xf9400b22
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x53001c00
.word 0x14000026
.word 0xf9401f20
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x53001c00
.word 0x14000020
.word 0xb9801b19
.word 0xd2800017

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x54000449
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400016
.word 0xaa1603e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a1
.word 0x53001c00
.word 0x53001c16
.word 0x110006f7
.word 0xaa1703e0
.word 0x6b19001f
.word 0x54fffcab
.word 0xaa1603e0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0x91022300
.word 0xd280003e
.word 0xb900001e
.word 0xaa1803e0
bl _p_126
bl _p_127
.word 0xaa0003f8
.word 0xb5ffff20
.word 0x17ffffc0
.word 0xd2801880
.word 0xaa1103e1
bl _p_36

Lme_53:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Action_1_Foundation_NSObject_invoke_void_T_Foundation_NSObject
wrapper_delegate_invoke_System_Action_1_Foundation_NSObject_invoke_void_T_Foundation_NSObject:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x35000740
.word 0x14000001
.word 0xf9403f38
.word 0xaa1803e0
.word 0xb50001e0
.word 0xf9401338
.word 0xaa1803e0
.word 0xb40000e0
.word 0xf9401f20
.word 0xf9400b22
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000022
.word 0xf9401f20
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400001d
.word 0xb9801b19
.word 0xd2800017

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x540003e9
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400016
.word 0xaa1603e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a0
.word 0x110006f7
.word 0xaa1703e0
.word 0x6b19001f
.word 0x54fffceb
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0x91022300
.word 0xd280003e
.word 0xb900001e
.word 0xaa1803e0
bl _p_126
bl _p_127
.word 0xaa0003f8
.word 0xb5ffff20
.word 0x17ffffc5
.word 0xd2801880
.word 0xaa1103e1
bl _p_36

Lme_54:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Comparison_1_Foundation_NSObject_invoke_int_T_T_Foundation_NSObject_Foundation_NSObject
wrapper_delegate_invoke_System_Comparison_1_Foundation_NSObject_invoke_int_T_T_Foundation_NSObject_Foundation_NSObject:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x35000840
.word 0x14000001
.word 0xf9403f17
.word 0xaa1703e0
.word 0xb5000260
.word 0xf9401317
.word 0xaa1703e0
.word 0xb4000120
.word 0xf9401f00
.word 0xf9400b03
.word 0xaa1703e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xd63f0060
.word 0x93407c00
.word 0x14000028
.word 0xf9401f00
.word 0xf9400b02
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x93407c00
.word 0x14000021
.word 0xb9801af8
.word 0xd2800016

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x93407ec0
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54000469
.word 0xd37df000
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400015
.word 0xaa1503e3
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf90023a3
.word 0xf9400c70
.word 0xd63f0200
.word 0x93407c00
.word 0xf94023a1
.word 0xaa0003f5
.word 0x110006d6
.word 0xaa1603e0
.word 0x6b18001f
.word 0x54fffc8b
.word 0xaa1503e0
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0x910222e0
.word 0xd280003e
.word 0xb900001e
.word 0xaa1703e0
bl _p_126
bl _p_127
.word 0xaa0003f7
.word 0xb5ffff20
.word 0x17ffffbd
.word 0xd2801880
.word 0xaa1103e1
bl _p_36

Lme_55:
.text
ut_87:
add x0, x0, 16
b System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT__ctor_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT
.text
	.align 4
	.no_dead_strip System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT__ctor_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT
System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT__ctor_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT:
.file 14 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.14.0.114/src/Xamarin.iOS/external/corefx/src/Common/src/CoreLib/System/ValueTuple.cs"
.loc 14 1164 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf90023af
.word 0xaa0003f8
.word 0xfd000fa0
.word 0xfd0013a1
.word 0xfd0017a2
.word 0xf9001ba1
.word 0xf9001fa2
.word 0xfd400fa0
.word 0xfd000300
.loc 14 1165 0
.word 0xfd4013a0
.word 0xfd000700
.loc 14 1166 0
.word 0xfd4017a0
.word 0xfd000b00
.loc 14 1167 0
.word 0xb98033a0
.word 0xb9001b00
.loc 14 1168 0
.word 0xb9803ba0
.word 0xb9001f00
.loc 14 1169 0
.word 0xf9400bb8
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_57:
.text
ut_88:
add x0, x0, 16
b System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_Equals_object
.text
	.align 4
	.no_dead_strip System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_Equals_object
System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_Equals_object:
.loc 14 1186 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf90033af
.word 0xf9000fa0
.word 0xaa0103fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf94033a0
bl _p_128
.word 0xaa0003e2
.word 0xf9400441
.word 0xaa1a03e0
bl _p_129
.word 0xb40005e0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x540005e1
.word 0xf9400000
.word 0xf9400000
.word 0xf9003fa0
.word 0xf94033a0
bl _p_130
.word 0xaa0003e1
.word 0xf9403fa0
.word 0xeb01001f
.word 0x10000011
.word 0x540004a1
.word 0x91004340
.word 0xf9400001
.word 0xf90023a1
.word 0xf9400401
.word 0xf90027a1
.word 0xf9400801
.word 0xf9002ba1
.word 0xf9400c00
.word 0xf9002fa0
.word 0xf94033a0
bl _p_131
.word 0xf9003ba0
.word 0xf9400fa0
.word 0x3940001e
.word 0xf94033a0
bl _p_132
.word 0xaa0003e2
.word 0xf9403baf
.word 0xf9400fa0
.word 0x910083a1
.word 0xf94023a3
.word 0xf90013a3
.word 0xf94027a3
.word 0xf90017a3
.word 0xf9402ba3
.word 0xf9001ba3
.word 0xf9402fa3
.word 0xf9001fa3
.word 0xd63f0040
.word 0x53001c00
.word 0x14000002
.word 0xd2800000
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.word 0xd2801920
.word 0xaa1103e1
bl _p_36

Lme_58:
.text
ut_89:
add x0, x0, 16
b System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_Equals_System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT
.text
	.align 4
	.no_dead_strip System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_Equals_System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT
System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_Equals_System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT:
.loc 14 1201 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf90013af
.word 0xaa0003fa
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf94013a0
bl _p_133
.word 0xf9001ba0
.word 0xf94013a0
bl _p_134
.word 0xf9401baf
.word 0xd63f0000
.word 0xaa0003e1
.word 0xfd400340
.word 0xf9400fa0
.word 0xfd400001
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9405030
.word 0xd63f0200
.word 0x53001c00
.word 0x340008a0
.word 0xf94013a0
bl _p_135
.word 0xf9001ba0
.word 0xf94013a0
bl _p_136
.word 0xf9401baf
.word 0xd63f0000
.word 0xaa0003e1
.word 0xfd400740
.word 0xf9400fa0
.word 0xfd400401
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9405030
.word 0xd63f0200
.word 0x53001c00
.word 0x34000680
.word 0xf94013a0
bl _p_137
.word 0xf9001ba0
.word 0xf94013a0
bl _p_138
.word 0xf9401baf
.word 0xd63f0000
.word 0xaa0003e1
.word 0xfd400b40
.word 0xf9400fa0
.word 0xfd400801
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9405030
.word 0xd63f0200
.word 0x53001c00
.word 0x34000460
.word 0xf94013a0
bl _p_139
.word 0xf9001ba0
.word 0xf94013a0
bl _p_140
.word 0xf9401baf
.word 0xd63f0000
.word 0xaa0003e3
.word 0xb9801b41
.word 0xf9400fa0
.word 0xb9801802
.word 0xaa0303e0
.word 0xf9400063
.word 0xf9405070
.word 0xd63f0200
.word 0x53001c00
.word 0x34000240
.word 0xf94013a0
bl _p_141
.word 0xf9001ba0
.word 0xf94013a0
bl _p_142
.word 0xf9401baf
.word 0xd63f0000
.word 0xaa0003e3
.word 0xb9801f41
.word 0xf9400fa0
.word 0xb9801c02
.word 0xaa0303e0
.word 0xf9400063
.word 0xf9405070
.word 0xd63f0200
.word 0x53001c00
.word 0x14000002
.word 0xd2800000
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_59:
.text
ut_90:
add x0, x0, 16
b System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Collections_IStructuralEquatable_Equals_object_System_Collections_IEqualityComparer
.text
	.align 4
	.no_dead_strip System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Collections_IStructuralEquatable_Equals_object_System_Collections_IEqualityComparer
System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Collections_IStructuralEquatable_Equals_object_System_Collections_IEqualityComparer:
.loc 14 1210 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90017af
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xd2800000
.word 0xf9001ba0
.word 0xf9001fa0
.word 0xf90023a0
.word 0xf90027a0
.word 0xb4000119
.word 0xf94017a0
bl _p_128
.word 0xaa0003e2
.word 0xf9400441
.word 0xaa1903e0
bl _p_129
.word 0xb5000060
.word 0xd2800000
.word 0x140000b0
.loc 14 1212 0
.word 0xf9400320
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54001601
.word 0xf9400000
.word 0xf9400000
.word 0xf90037a0
.word 0xf94017a0
bl _p_130
.word 0xaa0003e1
.word 0xf94037a0
.word 0xeb01001f
.word 0x10000011
.word 0x540014c1
.word 0x91004320
.word 0xf9400001
.word 0xf9001ba1
.word 0xf9400401
.word 0xf9001fa1
.word 0xf9400801
.word 0xf90023a1
.word 0xf9400c00
.word 0xf90027a0
.loc 14 1214 0
.word 0xfd400300
.word 0xfd0033a0
.word 0xf94017a0
bl _p_143
.word 0xd2800301
bl _p_23
.word 0xfd4033a0
.word 0xfd000800
.word 0xf9002ba0
.word 0xfd401ba0
.word 0xfd002fa0
.word 0xf94017a0
bl _p_143
.word 0xd2800301
bl _p_23
.word 0xaa0003e2
.word 0xf9402ba1
.word 0xfd402fa0
.word 0xfd000840
.word 0xaa1a03e0
.word 0xf9400343

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #840]
.word 0x928002f0
.word 0xf2bffff0
.word 0xf8706870
.word 0xd63f0200
.word 0x53001c00
.word 0x34000f20
.word 0xfd400700
.word 0xfd0033a0
.word 0xf94017a0
bl _p_144
.word 0xd2800301
bl _p_23
.word 0xfd4033a0
.word 0xfd000800
.word 0xf9002ba0
.word 0xfd401fa0
.word 0xfd002fa0
.word 0xf94017a0
bl _p_144
.word 0xd2800301
bl _p_23
.word 0xaa0003e2
.word 0xf9402ba1
.word 0xfd402fa0
.word 0xfd000840
.word 0xaa1a03e0
.word 0xf9400343

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #840]
.word 0x928002f0
.word 0xf2bffff0
.word 0xf8706870
.word 0xd63f0200
.word 0x53001c00
.word 0x34000b60
.word 0xfd400b00
.word 0xfd0033a0
.word 0xf94017a0
bl _p_145
.word 0xd2800301
bl _p_23
.word 0xfd4033a0
.word 0xfd000800
.word 0xf9002ba0
.word 0xfd4023a0
.word 0xfd002fa0
.word 0xf94017a0
bl _p_145
.word 0xd2800301
bl _p_23
.word 0xaa0003e2
.word 0xf9402ba1
.word 0xfd402fa0
.word 0xfd000840
.word 0xaa1a03e0
.word 0xf9400343

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #840]
.word 0x928002f0
.word 0xf2bffff0
.word 0xf8706870
.word 0xd63f0200
.word 0x53001c00
.word 0x340007a0
.word 0xb9801b00
.word 0xf9003fa0
.word 0xf94017a0
bl _p_146
.word 0xd2800301
bl _p_23
.word 0xf9403fa1
.word 0xb9001001
.word 0xf9003ba0
.word 0xb9804ba0
.word 0xf9002ba0
.word 0xf94017a0
bl _p_146
.word 0xd2800301
bl _p_23
.word 0xaa0003e2
.word 0xf9402ba0
.word 0xf9403ba1
.word 0xb9001040
.word 0xaa1a03e0
.word 0xf9400343

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #840]
.word 0x928002f0
.word 0xf2bffff0
.word 0xf8706870
.word 0xd63f0200
.word 0x53001c00
.word 0x340003e0
.word 0xb9801f00
.word 0xf9003fa0
.word 0xf94017a0
bl _p_147
.word 0xd2800301
bl _p_23
.word 0xf9403fa1
.word 0xb9001001
.word 0xf9003ba0
.word 0xb9804fa0
.word 0xf9002ba0
.word 0xf94017a0
bl _p_147
.word 0xd2800301
bl _p_23
.word 0xaa0003e2
.word 0xf9402ba0
.word 0xf9403ba1
.word 0xb9001040
.word 0xaa1a03e0
.word 0xf9400343

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #840]
.word 0x928002f0
.word 0xf2bffff0
.word 0xf8706870
.word 0xd63f0200
.word 0x53001c00
.word 0x14000002
.word 0xd2800000
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.word 0xd2801920
.word 0xaa1103e1
bl _p_36

Lme_5a:
.text
ut_91:
add x0, x0, 16
b System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_IComparable_CompareTo_object
.text
	.align 4
	.no_dead_strip System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_IComparable_CompareTo_object
System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_IComparable_CompareTo_object:
.loc 14 1223 0 prologue_end
.word 0xa9b47bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90043af
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xb500007a
.word 0xd2800020
.word 0x14000034
.loc 14 1225 0
.word 0xf94043a0
bl _p_128
.word 0xaa0003e2
.word 0xf9400441
.word 0xaa1a03e0
bl _p_129
.word 0xb4000620
.loc 14 1230 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54000ac1
.word 0xf9400000
.word 0xf9400000
.word 0xf9005fa0
.word 0xf94043a0
bl _p_130
.word 0xaa0003e1
.word 0xf9405fa0
.word 0xeb01001f
.word 0x10000011
.word 0x54000981
.word 0x91004340
.word 0xf9400001
.word 0xf90033a1
.word 0xf9400401
.word 0xf90037a1
.word 0xf9400801
.word 0xf9003ba1
.word 0xf9400c00
.word 0xf9003fa0
.word 0xf94043a0
bl _p_131
.word 0xf9005ba0
.word 0x3940033e
.word 0xf94043a0
bl _p_148
.word 0xaa0003e2
.word 0xf9405baf
.word 0xaa1903e0
.word 0x910103a1
.word 0xf94033a3
.word 0xf90023a3
.word 0xf94037a3
.word 0xf90027a3
.word 0xf9403ba3
.word 0xf9002ba3
.word 0xf9403fa3
.word 0xf9002fa3
.word 0xd63f0040
.word 0x93407c00
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0
.loc 14 1227 0
.word 0xd28d3da0
bl _p_149
.word 0xf9005fa0
.word 0xf9400320
.word 0xf90013a0
.word 0xf9400720
.word 0xf90017a0
.word 0xf9400b20
.word 0xf9001ba0
.word 0xf9400f20
.word 0xf9001fa0
.word 0xf94043a0
bl _p_131
.word 0xd2800601
bl _p_23
.word 0x91004001
.word 0xf94013a2
.word 0xf9000022
.word 0xf94017a2
.word 0xf9000422
.word 0xf9401ba2
.word 0xf9000822
.word 0xf9401fa2
.word 0xf9000c22
.word 0xf9400000
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9402430
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf9405fa0
bl _p_150
.word 0xf9005ba0
.word 0xd28d4520
bl _p_149
.word 0xaa0003e2
.word 0xf9405ba1
.word 0xd2800f60
.word 0xf2a04000
bl _mono_create_corlib_exception_2
bl _p_25
.word 0xd2801920
.word 0xaa1103e1
bl _p_36

Lme_5b:
.text
ut_92:
add x0, x0, 16
b System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_CompareTo_System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT
.text
	.align 4
	.no_dead_strip System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_CompareTo_System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT
System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_CompareTo_System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT:
.loc 14 1243 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90017af
.word 0xaa0003fa
.word 0xf90013a1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf94017a0
bl _p_151
.word 0xf9001ba0
.word 0xf94017a0
bl _p_152
.word 0xf9401baf
.word 0xd63f0000
.word 0xaa0003e1
.word 0xfd400340
.word 0xf94013a0
.word 0xfd400001
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9403c30
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003f9
.loc 14 1244 0
.word 0xaa1903e0
.word 0x34000060
.word 0xaa1903e0
.word 0x14000050
.loc 14 1246 0
.word 0xf94017a0
bl _p_153
.word 0xf9001ba0
.word 0xf94017a0
bl _p_154
.word 0xf9401baf
.word 0xd63f0000
.word 0xaa0003e1
.word 0xfd400740
.word 0xf94013a0
.word 0xfd400401
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9403c30
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003f9
.loc 14 1247 0
.word 0xaa1903e0
.word 0x34000060
.word 0xaa1903e0
.word 0x1400003b
.loc 14 1249 0
.word 0xf94017a0
bl _p_155
.word 0xf9001ba0
.word 0xf94017a0
bl _p_156
.word 0xf9401baf
.word 0xd63f0000
.word 0xaa0003e1
.word 0xfd400b40
.word 0xf94013a0
.word 0xfd400801
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9403c30
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003f9
.loc 14 1250 0
.word 0xaa1903e0
.word 0x34000060
.word 0xaa1903e0
.word 0x14000026
.loc 14 1252 0
.word 0xf94017a0
bl _p_157
.word 0xf9001ba0
.word 0xf94017a0
bl _p_158
.word 0xf9401baf
.word 0xd63f0000
.word 0xaa0003e3
.word 0xb9801b41
.word 0xf94013a0
.word 0xb9801802
.word 0xaa0303e0
.word 0xf9400063
.word 0xf9403c70
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003f9
.loc 14 1253 0
.word 0xaa1903e0
.word 0x34000060
.word 0xaa1903e0
.word 0x14000011
.loc 14 1255 0
.word 0xf94017a0
bl _p_159
.word 0xf9001ba0
.word 0xf94017a0
bl _p_160
.word 0xf9401baf
.word 0xd63f0000
.word 0xaa0003e3
.word 0xb9801f41
.word 0xf94013a0
.word 0xb9801c02
.word 0xaa0303e0
.word 0xf9400063
.word 0xf9403c70
.word 0xd63f0200
.word 0x93407c00
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_5c:
.text
ut_93:
add x0, x0, 16
b System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Collections_IStructuralComparable_CompareTo_object_System_Collections_IComparer
.text
	.align 4
	.no_dead_strip System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Collections_IStructuralComparable_CompareTo_object_System_Collections_IComparer
System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Collections_IStructuralComparable_CompareTo_object_System_Collections_IComparer:
.loc 14 1260 0 prologue_end
.word 0xa9b67bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90027af
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xd2800000
.word 0xf9002ba0
.word 0xf9002fa0
.word 0xf90033a0
.word 0xf90037a0
.word 0xb5000079
.word 0xd2800020
.word 0x140000c5
.loc 14 1262 0
.word 0xf94027a0
bl _p_128
.word 0xaa0003e2
.word 0xf9400441
.word 0xaa1903e0
bl _p_129
.word 0xb4001860
.loc 14 1267 0
.word 0xf9400320
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54001d01
.word 0xf9400000
.word 0xf9400000
.word 0xf90047a0
.word 0xf94027a0
bl _p_130
.word 0xaa0003e1
.word 0xf94047a0
.word 0xeb01001f
.word 0x10000011
.word 0x54001bc1
.word 0x91004320
.word 0xf9400001
.word 0xf9002ba1
.word 0xf9400401
.word 0xf9002fa1
.word 0xf9400801
.word 0xf90033a1
.word 0xf9400c00
.word 0xf90037a0
.loc 14 1269 0
.word 0xfd400300
.word 0xfd0043a0
.word 0xf94027a0
bl _p_143
.word 0xd2800301
bl _p_23
.word 0xfd4043a0
.word 0xfd000800
.word 0xf9003ba0
.word 0xfd402ba0
.word 0xfd003fa0
.word 0xf94027a0
bl _p_143
.word 0xd2800301
bl _p_23
.word 0xaa0003e2
.word 0xf9403ba1
.word 0xfd403fa0
.word 0xfd000840
.word 0xaa1a03e0
.word 0xf9400343

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #848]
.word 0x928010f0
.word 0xf2bffff0
.word 0xf8706870
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003f9
.loc 14 1270 0
.word 0xaa1903e0
.word 0x34000060
.word 0xaa1903e0
.word 0x14000084
.loc 14 1272 0
.word 0xfd400700
.word 0xfd0043a0
.word 0xf94027a0
bl _p_144
.word 0xd2800301
bl _p_23
.word 0xfd4043a0
.word 0xfd000800
.word 0xf9003ba0
.word 0xfd402fa0
.word 0xfd003fa0
.word 0xf94027a0
bl _p_144
.word 0xd2800301
bl _p_23
.word 0xaa0003e2
.word 0xf9403ba1
.word 0xfd403fa0
.word 0xfd000840
.word 0xaa1a03e0
.word 0xf9400343

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #848]
.word 0x928010f0
.word 0xf2bffff0
.word 0xf8706870
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003f9
.loc 14 1273 0
.word 0xaa1903e0
.word 0x34000060
.word 0xaa1903e0
.word 0x14000062
.loc 14 1275 0
.word 0xfd400b00
.word 0xfd0043a0
.word 0xf94027a0
bl _p_145
.word 0xd2800301
bl _p_23
.word 0xfd4043a0
.word 0xfd000800
.word 0xf9003ba0
.word 0xfd4033a0
.word 0xfd003fa0
.word 0xf94027a0
bl _p_145
.word 0xd2800301
bl _p_23
.word 0xaa0003e2
.word 0xf9403ba1
.word 0xfd403fa0
.word 0xfd000840
.word 0xaa1a03e0
.word 0xf9400343

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #848]
.word 0x928010f0
.word 0xf2bffff0
.word 0xf8706870
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003f9
.loc 14 1276 0
.word 0xaa1903e0
.word 0x34000060
.word 0xaa1903e0
.word 0x14000040
.loc 14 1278 0
.word 0xb9801b00
.word 0xf9004fa0
.word 0xf94027a0
bl _p_146
.word 0xd2800301
bl _p_23
.word 0xf9404fa1
.word 0xb9001001
.word 0xf9004ba0
.word 0xb9806ba0
.word 0xf9003ba0
.word 0xf94027a0
bl _p_146
.word 0xd2800301
bl _p_23
.word 0xaa0003e2
.word 0xf9403ba0
.word 0xf9404ba1
.word 0xb9001040
.word 0xaa1a03e0
.word 0xf9400343

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #848]
.word 0x928010f0
.word 0xf2bffff0
.word 0xf8706870
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003f9
.loc 14 1279 0
.word 0xaa1903e0
.word 0x34000060
.word 0xaa1903e0
.word 0x1400001e
.loc 14 1281 0
.word 0xb9801f00
.word 0xf9004fa0
.word 0xf94027a0
bl _p_147
.word 0xd2800301
bl _p_23
.word 0xf9404fa1
.word 0xb9001001
.word 0xf9004ba0
.word 0xb9806fa0
.word 0xf9003ba0
.word 0xf94027a0
bl _p_147
.word 0xd2800301
bl _p_23
.word 0xaa0003e2
.word 0xf9403ba0
.word 0xf9404ba1
.word 0xb9001040
.word 0xaa1a03e0
.word 0xf9400343

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #848]
.word 0x928010f0
.word 0xf2bffff0
.word 0xf8706870
.word 0xd63f0200
.word 0x93407c00
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0
.loc 14 1264 0
.word 0xd28d3da0
bl _p_149
.word 0xf9004ba0
.word 0xf9400300
.word 0xf90017a0
.word 0xf9400700
.word 0xf9001ba0
.word 0xf9400b00
.word 0xf9001fa0
.word 0xf9400f00
.word 0xf90023a0
.word 0xf94027a0
bl _p_131
.word 0xd2800601
bl _p_23
.word 0x91004001
.word 0xf94017a2
.word 0xf9000022
.word 0xf9401ba2
.word 0xf9000422
.word 0xf9401fa2
.word 0xf9000822
.word 0xf94023a2
.word 0xf9000c22
.word 0xf9400000
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9402430
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf9404ba0
bl _p_150
.word 0xf9003ba0
.word 0xd28d4520
bl _p_149
.word 0xaa0003e2
.word 0xf9403ba1
.word 0xd2800f60
.word 0xf2a04000
bl _mono_create_corlib_exception_2
bl _p_25
.word 0xd2801920
.word 0xaa1103e1
bl _p_36

Lme_5d:
.text
ut_94:
add x0, x0, 16
b System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_GetHashCode
.text
	.align 4
	.no_dead_strip System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_GetHashCode
System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_GetHashCode:
.loc 14 1290 0 prologue_end
.word 0xa9b57bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xf9002baf
.word 0xaa0003fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x9e6703e0
.word 0xfd002fa0
.word 0x9e6703e0
.word 0xfd0033a0
.word 0x9e6703e0
.word 0xfd0037a0
.word 0xb90073bf
.word 0xb9007bbf
.word 0x9e6703e0
.word 0xfd002fa0
.word 0xaa1a03f9
.word 0x14000007
.word 0xfd400320
.word 0xfd002fa0
.word 0x910163b9
.word 0x14000003
.word 0xd2800019
.word 0x1400001b
.word 0xaa1903f8
.word 0xf9402ba0
bl _p_161
.word 0xaa0003f9
.word 0xf9402ba0
bl _p_162
.word 0xd280005e
.word 0xeb1e001f
.word 0x540000c0
.word 0xaa1803e0
.word 0xd63f0320
.word 0x93407c00
.word 0xaa0003f8
.word 0x1400000c
.word 0xfd400300
.word 0xfd0053a0
.word 0xf9402ba0
bl _p_143
.word 0xd2800301
bl _p_23
.word 0xfd4053a0
.word 0xfd000800
.word 0xd63f0320
.word 0x93407c00
.word 0xaa0003f8
.word 0xaa1803f9
.word 0x91002340
.word 0x9e6703e0
.word 0xfd0033a0
.word 0xaa0003f8
.word 0x14000007
.word 0xfd400300
.word 0xfd0033a0
.word 0x910183b8
.word 0x14000003
.word 0xd2800018
.word 0x1400001d
.word 0xaa1903f7
.word 0xaa1803f9
.word 0xf9402ba0
bl _p_163
.word 0xaa0003f8
.word 0xf9402ba0
bl _p_164
.word 0xd280005e
.word 0xeb1e001f
.word 0x540000c0
.word 0xaa1903e0
.word 0xd63f0300
.word 0x93407c00
.word 0xaa0003f6
.word 0x1400000c
.word 0xfd400320
.word 0xfd0053a0
.word 0xf9402ba0
bl _p_144
.word 0xd2800301
bl _p_23
.word 0xfd4053a0
.word 0xfd000800
.word 0xd63f0300
.word 0x93407c00
.word 0xaa0003f6
.word 0xaa1703f9
.word 0xaa1603f8
.word 0x91004340
.word 0x9e6703e0
.word 0xfd0037a0
.word 0xaa0003f7
.word 0x14000007
.word 0xfd4002e0
.word 0xfd0037a0
.word 0x9101a3b7
.word 0x14000003
.word 0xd2800016
.word 0x1400001f
.word 0xaa1903f6
.word 0xaa1803f5
.word 0xaa1703f9
.word 0xf9402ba0
bl _p_165
.word 0xaa0003f8
.word 0xf9402ba0
bl _p_166
.word 0xd280005e
.word 0xeb1e001f
.word 0x540000c0
.word 0xaa1903e0
.word 0xd63f0300
.word 0x93407c00
.word 0xaa0003f7
.word 0x1400000c
.word 0xfd400320
.word 0xfd0053a0
.word 0xf9402ba0
bl _p_145
.word 0xd2800301
bl _p_23
.word 0xfd4053a0
.word 0xfd000800
.word 0xd63f0300
.word 0x93407c00
.word 0xaa0003f7
.word 0xaa1603f9
.word 0xaa1503f8
.word 0xaa1703f6
.word 0x91006340
.word 0xb90073bf
.word 0xaa0003f7
.word 0x14000007
.word 0xb98002e0
.word 0xb90073a0
.word 0x9101c3b7
.word 0x14000003
.word 0xd2800015
.word 0x14000021
.word 0xaa1903f5
.word 0xaa1803f4
.word 0xaa1603f3
.word 0xaa1703f9
.word 0xf9402ba0
bl _p_167
.word 0xaa0003f8
.word 0xf9402ba0
bl _p_168
.word 0xd280005e
.word 0xeb1e001f
.word 0x540000c0
.word 0xaa1903e0
.word 0xd63f0300
.word 0x93407c00
.word 0xaa0003f7
.word 0x1400000c
.word 0xb9800320
.word 0xf90057a0
.word 0xf9402ba0
bl _p_146
.word 0xd2800301
bl _p_23
.word 0xf94057a1
.word 0xb9001001
.word 0xd63f0300
.word 0x93407c00
.word 0xaa0003f7
.word 0xaa1503f9
.word 0xaa1403f8
.word 0xaa1303f6
.word 0xaa1703f5
.word 0x91007340
.word 0xb9007bbf
.word 0xaa0003fa
.word 0x14000007
.word 0xb9800340
.word 0xb9007ba0
.word 0x9101e3ba
.word 0x14000003
.word 0xd280001a
.word 0x14000023
.word 0xf90043b9
.word 0xaa1803f4
.word 0xaa1603f3
.word 0xf90047b5
.word 0xaa1a03f9
.word 0xf9402ba0
bl _p_169
.word 0xaa0003fa
.word 0xf9402ba0
bl _p_170
.word 0xd280005e
.word 0xeb1e001f
.word 0x540000c0
.word 0xaa1903e0
.word 0xd63f0340
.word 0x93407c00
.word 0xf9004ba0
.word 0x1400000c
.word 0xb9800320
.word 0xf90057a0
.word 0xf9402ba0
bl _p_147
.word 0xd2800301
bl _p_23
.word 0xf94057a1
.word 0xb9001001
.word 0xd63f0340
.word 0x93407c00
.word 0xf9004ba0
.word 0xf94043b9
.word 0xaa1403f8
.word 0xaa1303f6
.word 0xf94047b5
.word 0xf9404bba

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #856]
.word 0x3980b410
.word 0xb5000050
bl _p_11

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #864]
.word 0xb9800001
.word 0x531b6820
.word 0x531b7c22
.word 0x2a020000
.word 0xb010000
.word 0x4a190001
.word 0x531b6820
.word 0x531b7c22
.word 0x2a020000
.word 0xb010000
.word 0x4a180001
.word 0x531b6820
.word 0x531b7c22
.word 0x2a020000
.word 0xb010000
.word 0x4a160001
.word 0x531b6820
.word 0x531b7c22
.word 0x2a020000
.word 0xb010000
.word 0x4a150001
.word 0x531b6820
.word 0x531b7c22
.word 0x2a020000
.word 0xb010000
.word 0x4a1a0000
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0

Lme_5e:
.text
ut_95:
add x0, x0, 16
b System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Collections_IStructuralEquatable_GetHashCode_System_Collections_IEqualityComparer
.text
	.align 4
	.no_dead_strip System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Collections_IStructuralEquatable_GetHashCode_System_Collections_IEqualityComparer
System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Collections_IStructuralEquatable_GetHashCode_System_Collections_IEqualityComparer:
.loc 14 1299 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf90013af
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf94013a0
bl _p_131
.word 0xf9001ba0
.word 0xf9400ba0
.word 0x3940001e
.word 0xf94013a0
bl _p_171
.word 0xaa0003e2
.word 0xf9401baf
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xd63f0040
.word 0x93407c00
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_5f:
.text
ut_96:
add x0, x0, 16
b System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_GetHashCodeCore_System_Collections_IEqualityComparer
.text
	.align 4
	.no_dead_strip System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_GetHashCodeCore_System_Collections_IEqualityComparer
System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_GetHashCodeCore_System_Collections_IEqualityComparer:
.loc 14 1304 0 prologue_end
.word 0xa9b67bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013af
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xfd400320
.word 0xfd004fa0
.word 0xf94013a0
bl _p_143
.word 0xd2800301
bl _p_23
.word 0xaa0003e1
.word 0xfd404fa0
.word 0xfd000820
.word 0xaa1a03e0
.word 0xf9400342

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #872]
.word 0x928006f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x93407c00
.word 0xf9003ba0
.word 0xfd400720
.word 0xfd004ba0
.word 0xf94013a0
bl _p_144
.word 0xd2800301
bl _p_23
.word 0xaa0003e1
.word 0xfd404ba0
.word 0xfd000820
.word 0xaa1a03e0
.word 0xf9400342

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #872]
.word 0x928006f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x93407c00
.word 0xf90037a0
.word 0xfd400b20
.word 0xfd0047a0
.word 0xf94013a0
bl _p_145
.word 0xd2800301
bl _p_23
.word 0xaa0003e1
.word 0xfd4047a0
.word 0xfd000820
.word 0xaa1a03e0
.word 0xf9400342

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #872]
.word 0x928006f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x93407c00
.word 0xf90033a0
.word 0xb9801b20
.word 0xf90043a0
.word 0xf94013a0
bl _p_146
.word 0xd2800301
bl _p_23
.word 0xaa0003e1
.word 0xf94043a0
.word 0xb9001020
.word 0xaa1a03e0
.word 0xf9400342

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #872]
.word 0x928006f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x93407c00
.word 0xf9002fa0
.word 0xb9801f20
.word 0xf9003fa0
.word 0xf94013a0
bl _p_147
.word 0xd2800301
bl _p_23
.word 0xaa0003e1
.word 0xf9403fa0
.word 0xb9001020
.word 0xaa1a03e0
.word 0xf9400342

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #872]
.word 0x928006f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003e4
.word 0xf9402fa0
.word 0xf94033a1
.word 0xf94037a2
.word 0xf9403ba3
.word 0xf9001ba4
.word 0xf9002ba3
.word 0xf90027a2
.word 0xf90023a1
.word 0xf9001fa0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #856]
.word 0x3980b410
.word 0xb5000050
bl _p_11
.word 0xf9401ba1
.word 0xf9401fa2
.word 0xf94023a3
.word 0xf94027a4
.word 0xf9402ba5

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #864]
.word 0xb9800006
.word 0x531b68c0
.word 0x531b7cc7
.word 0x2a070000
.word 0xb060000
.word 0x4a050005
.word 0x531b68a0
.word 0x531b7ca6
.word 0x2a060000
.word 0xb050000
.word 0x4a040004
.word 0x531b6880
.word 0x531b7c85
.word 0x2a050000
.word 0xb040000
.word 0x4a030003
.word 0x531b6860
.word 0x531b7c64
.word 0x2a040000
.word 0xb030000
.word 0x4a020002
.word 0x531b6840
.word 0x531b7c43
.word 0x2a030000
.word 0xb020000
.word 0x4a010000
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0

Lme_60:
.text
ut_97:
add x0, x0, 16
b System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_IValueTupleInternal_GetHashCode_System_Collections_IEqualityComparer
.text
	.align 4
	.no_dead_strip System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_IValueTupleInternal_GetHashCode_System_Collections_IEqualityComparer
System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_IValueTupleInternal_GetHashCode_System_Collections_IEqualityComparer:
.loc 14 1313 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf90013af
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf94013a0
bl _p_131
.word 0xf9001ba0
.word 0xf9400ba0
.word 0x3940001e
.word 0xf94013a0
bl _p_171
.word 0xaa0003e2
.word 0xf9401baf
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xd63f0040
.word 0x93407c00
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_61:
.text
ut_98:
add x0, x0, 16
b System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_ToString
.text
	.align 4
	.no_dead_strip System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_ToString
System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_ToString:
.loc 14 1326 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xf9002baf
.word 0xaa0003fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x9e6703e0
.word 0xfd002fa0
.word 0x9e6703e0
.word 0xfd0033a0
.word 0x9e6703e0
.word 0xfd0037a0
.word 0xb90073bf
.word 0xb9007bbf

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #808]
.word 0xd2800161
bl _p_85
.word 0xaa0003e3
.word 0xaa0303e0
.word 0xf90043a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #880]
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf94043a0
.word 0xaa0003e1
.word 0x9e6703e0
.word 0xfd002fa0
.word 0xaa0103f9
.word 0xaa0003f8
.word 0xd2800037
.word 0xaa1a03f6
.word 0x14000007
.word 0xfd4002c0
.word 0xfd002fa0
.word 0x910163b6
.word 0x14000003
.word 0xd2800015
.word 0x1400001f
.word 0xaa1903f5
.word 0xaa1803f4
.word 0xaa1703f3
.word 0xaa1603f9
.word 0xf9402ba0
bl _p_172
.word 0xaa0003f8
.word 0xf9402ba0
bl _p_173
.word 0xd280005e
.word 0xeb1e001f
.word 0x540000a0
.word 0xaa1903e0
.word 0xd63f0300
.word 0xaa0003f6
.word 0x1400000b
.word 0xfd400320
.word 0xfd0047a0
.word 0xf9402ba0
bl _p_143
.word 0xd2800301
bl _p_23
.word 0xfd4047a0
.word 0xfd000800
.word 0xd63f0300
.word 0xaa0003f6
.word 0xaa1503f9
.word 0xaa1403f8
.word 0xaa1303f7
.word 0xaa1603f5
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xaa1503e2
.word 0xf9400303
.word 0xf9408470
.word 0xd63f0200

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #888]
.word 0xaa1903e0
.word 0xd2800041
.word 0xf9400323
.word 0xf9408470
.word 0xd63f0200
.word 0x91002340
.word 0x9e6703e0
.word 0xfd0033a0
.word 0xaa1903f8
.word 0xd2800077
.word 0xaa0003f6
.word 0x14000007
.word 0xfd4002c0
.word 0xfd0033a0
.word 0x910183b6
.word 0x14000003
.word 0xd2800015
.word 0x1400001f
.word 0xaa1903f5
.word 0xaa1803f4
.word 0xaa1703f3
.word 0xaa1603f9
.word 0xf9402ba0
bl _p_174
.word 0xaa0003f8
.word 0xf9402ba0
bl _p_175
.word 0xd280005e
.word 0xeb1e001f
.word 0x540000a0
.word 0xaa1903e0
.word 0xd63f0300
.word 0xaa0003f6
.word 0x1400000b
.word 0xfd400320
.word 0xfd0047a0
.word 0xf9402ba0
bl _p_144
.word 0xd2800301
bl _p_23
.word 0xfd4047a0
.word 0xfd000800
.word 0xd63f0300
.word 0xaa0003f6
.word 0xaa1503f9
.word 0xaa1403f8
.word 0xaa1303f7
.word 0xaa1603f5
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xaa1503e2
.word 0xf9400303
.word 0xf9408470
.word 0xd63f0200

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #888]
.word 0xaa1903e0
.word 0xd2800081
.word 0xf9400323
.word 0xf9408470
.word 0xd63f0200
.word 0x91004340
.word 0x9e6703e0
.word 0xfd0037a0
.word 0xaa1903f8
.word 0xd28000b7
.word 0xaa0003f6
.word 0x14000007
.word 0xfd4002c0
.word 0xfd0037a0
.word 0x9101a3b6
.word 0x14000003
.word 0xd2800015
.word 0x1400001f
.word 0xaa1903f5
.word 0xaa1803f4
.word 0xaa1703f3
.word 0xaa1603f9
.word 0xf9402ba0
bl _p_176
.word 0xaa0003f8
.word 0xf9402ba0
bl _p_177
.word 0xd280005e
.word 0xeb1e001f
.word 0x540000a0
.word 0xaa1903e0
.word 0xd63f0300
.word 0xaa0003f6
.word 0x1400000b
.word 0xfd400320
.word 0xfd0047a0
.word 0xf9402ba0
bl _p_145
.word 0xd2800301
bl _p_23
.word 0xfd4047a0
.word 0xfd000800
.word 0xd63f0300
.word 0xaa0003f6
.word 0xaa1503f9
.word 0xaa1403f8
.word 0xaa1303f7
.word 0xaa1603f5
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xaa1503e2
.word 0xf9400303
.word 0xf9408470
.word 0xd63f0200

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #888]
.word 0xaa1903e0
.word 0xd28000c1
.word 0xf9400323
.word 0xf9408470
.word 0xd63f0200
.word 0x91006340
.word 0xb90073bf
.word 0xaa1903f8
.word 0xd28000f7
.word 0xaa0003f6
.word 0x14000007
.word 0xb98002c0
.word 0xb90073a0
.word 0x9101c3b6
.word 0x14000003
.word 0xd2800015
.word 0x1400001f
.word 0xaa1903f5
.word 0xaa1803f4
.word 0xaa1703f3
.word 0xaa1603f9
.word 0xf9402ba0
bl _p_178
.word 0xaa0003f8
.word 0xf9402ba0
bl _p_179
.word 0xd280005e
.word 0xeb1e001f
.word 0x540000a0
.word 0xaa1903e0
.word 0xd63f0300
.word 0xaa0003f6
.word 0x1400000b
.word 0xb9800320
.word 0xf90043a0
.word 0xf9402ba0
bl _p_146
.word 0xd2800301
bl _p_23
.word 0xf94043a1
.word 0xb9001001
.word 0xd63f0300
.word 0xaa0003f6
.word 0xaa1503f9
.word 0xaa1403f8
.word 0xaa1303f7
.word 0xaa1603f5
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xaa1503e2
.word 0xf9400303
.word 0xf9408470
.word 0xd63f0200

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #888]
.word 0xaa1903e0
.word 0xd2800101
.word 0xf9400323
.word 0xf9408470
.word 0xd63f0200
.word 0x91007340
.word 0xb9007bbf
.word 0xaa1903f8
.word 0xd2800137
.word 0xaa0003f6
.word 0x14000007
.word 0xb98002c0
.word 0xb9007ba0
.word 0x9101e3b6
.word 0x14000003
.word 0xd2800015
.word 0x1400001f
.word 0xaa1903fa
.word 0xaa1803f5
.word 0xaa1703f4
.word 0xaa1603f9
.word 0xf9402ba0
bl _p_180
.word 0xaa0003f8
.word 0xf9402ba0
bl _p_181
.word 0xd280005e
.word 0xeb1e001f
.word 0x540000a0
.word 0xaa1903e0
.word 0xd63f0300
.word 0xaa0003f6
.word 0x1400000b
.word 0xb9800320
.word 0xf90043a0
.word 0xf9402ba0
bl _p_147
.word 0xd2800301
bl _p_23
.word 0xf94043a1
.word 0xb9001001
.word 0xd63f0300
.word 0xaa0003f6
.word 0xaa1a03f9
.word 0xaa1503f8
.word 0xaa1403f7
.word 0xaa1603f5
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xaa1503e2
.word 0xf9400303
.word 0xf9408470
.word 0xd63f0200

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #896]
.word 0xaa1903e0
.word 0xd2800141
.word 0xf9400323
.word 0xf9408470
.word 0xd63f0200
.word 0xaa1903e0
bl _p_182
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_62:
.text
ut_99:
add x0, x0, 16
b System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_IValueTupleInternal_ToStringEnd
.text
	.align 4
	.no_dead_strip System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_IValueTupleInternal_ToStringEnd
System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_IValueTupleInternal_ToStringEnd:
.loc 14 1331 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xf9002baf
.word 0xaa0003fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x9e6703e0
.word 0xfd002fa0
.word 0x9e6703e0
.word 0xfd0033a0
.word 0x9e6703e0
.word 0xfd0037a0
.word 0xb90073bf
.word 0xb9007bbf

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #808]
.word 0xd2800141
bl _p_85
.word 0xaa0003e1
.word 0x9e6703e0
.word 0xfd002fa0
.word 0xaa0103f9
.word 0xaa0003f8
.word 0xd2800017
.word 0xaa1a03f6
.word 0x14000007
.word 0xfd4002c0
.word 0xfd002fa0
.word 0x910163b6
.word 0x14000003
.word 0xd2800015
.word 0x1400001f
.word 0xaa1903f5
.word 0xaa1803f4
.word 0xaa1703f3
.word 0xaa1603f9
.word 0xf9402ba0
bl _p_172
.word 0xaa0003f8
.word 0xf9402ba0
bl _p_173
.word 0xd280005e
.word 0xeb1e001f
.word 0x540000a0
.word 0xaa1903e0
.word 0xd63f0300
.word 0xaa0003f6
.word 0x1400000b
.word 0xfd400320
.word 0xfd0043a0
.word 0xf9402ba0
bl _p_143
.word 0xd2800301
bl _p_23
.word 0xfd4043a0
.word 0xfd000800
.word 0xd63f0300
.word 0xaa0003f6
.word 0xaa1503f9
.word 0xaa1403f8
.word 0xaa1303f7
.word 0xaa1603f5
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xaa1503e2
.word 0xf9400303
.word 0xf9408470
.word 0xd63f0200

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #888]
.word 0xaa1903e0
.word 0xd2800021
.word 0xf9400323
.word 0xf9408470
.word 0xd63f0200
.word 0x91002340
.word 0x9e6703e0
.word 0xfd0033a0
.word 0xaa1903f8
.word 0xd2800057
.word 0xaa0003f6
.word 0x14000007
.word 0xfd4002c0
.word 0xfd0033a0
.word 0x910183b6
.word 0x14000003
.word 0xd2800015
.word 0x1400001f
.word 0xaa1903f5
.word 0xaa1803f4
.word 0xaa1703f3
.word 0xaa1603f9
.word 0xf9402ba0
bl _p_174
.word 0xaa0003f8
.word 0xf9402ba0
bl _p_175
.word 0xd280005e
.word 0xeb1e001f
.word 0x540000a0
.word 0xaa1903e0
.word 0xd63f0300
.word 0xaa0003f6
.word 0x1400000b
.word 0xfd400320
.word 0xfd0043a0
.word 0xf9402ba0
bl _p_144
.word 0xd2800301
bl _p_23
.word 0xfd4043a0
.word 0xfd000800
.word 0xd63f0300
.word 0xaa0003f6
.word 0xaa1503f9
.word 0xaa1403f8
.word 0xaa1303f7
.word 0xaa1603f5
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xaa1503e2
.word 0xf9400303
.word 0xf9408470
.word 0xd63f0200

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #888]
.word 0xaa1903e0
.word 0xd2800061
.word 0xf9400323
.word 0xf9408470
.word 0xd63f0200
.word 0x91004340
.word 0x9e6703e0
.word 0xfd0037a0
.word 0xaa1903f8
.word 0xd2800097
.word 0xaa0003f6
.word 0x14000007
.word 0xfd4002c0
.word 0xfd0037a0
.word 0x9101a3b6
.word 0x14000003
.word 0xd2800015
.word 0x1400001f
.word 0xaa1903f5
.word 0xaa1803f4
.word 0xaa1703f3
.word 0xaa1603f9
.word 0xf9402ba0
bl _p_176
.word 0xaa0003f8
.word 0xf9402ba0
bl _p_177
.word 0xd280005e
.word 0xeb1e001f
.word 0x540000a0
.word 0xaa1903e0
.word 0xd63f0300
.word 0xaa0003f6
.word 0x1400000b
.word 0xfd400320
.word 0xfd0043a0
.word 0xf9402ba0
bl _p_145
.word 0xd2800301
bl _p_23
.word 0xfd4043a0
.word 0xfd000800
.word 0xd63f0300
.word 0xaa0003f6
.word 0xaa1503f9
.word 0xaa1403f8
.word 0xaa1303f7
.word 0xaa1603f5
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xaa1503e2
.word 0xf9400303
.word 0xf9408470
.word 0xd63f0200

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #888]
.word 0xaa1903e0
.word 0xd28000a1
.word 0xf9400323
.word 0xf9408470
.word 0xd63f0200
.word 0x91006340
.word 0xb90073bf
.word 0xaa1903f8
.word 0xd28000d7
.word 0xaa0003f6
.word 0x14000007
.word 0xb98002c0
.word 0xb90073a0
.word 0x9101c3b6
.word 0x14000003
.word 0xd2800015
.word 0x1400001f
.word 0xaa1903f5
.word 0xaa1803f4
.word 0xaa1703f3
.word 0xaa1603f9
.word 0xf9402ba0
bl _p_178
.word 0xaa0003f8
.word 0xf9402ba0
bl _p_179
.word 0xd280005e
.word 0xeb1e001f
.word 0x540000a0
.word 0xaa1903e0
.word 0xd63f0300
.word 0xaa0003f6
.word 0x1400000b
.word 0xb9800320
.word 0xf90047a0
.word 0xf9402ba0
bl _p_146
.word 0xd2800301
bl _p_23
.word 0xf94047a1
.word 0xb9001001
.word 0xd63f0300
.word 0xaa0003f6
.word 0xaa1503f9
.word 0xaa1403f8
.word 0xaa1303f7
.word 0xaa1603f5
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xaa1503e2
.word 0xf9400303
.word 0xf9408470
.word 0xd63f0200

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #888]
.word 0xaa1903e0
.word 0xd28000e1
.word 0xf9400323
.word 0xf9408470
.word 0xd63f0200
.word 0x91007340
.word 0xb9007bbf
.word 0xaa1903f8
.word 0xd2800117
.word 0xaa0003f6
.word 0x14000007
.word 0xb98002c0
.word 0xb9007ba0
.word 0x9101e3b6
.word 0x14000003
.word 0xd2800015
.word 0x1400001f
.word 0xaa1903fa
.word 0xaa1803f5
.word 0xaa1703f4
.word 0xaa1603f9
.word 0xf9402ba0
bl _p_180
.word 0xaa0003f8
.word 0xf9402ba0
bl _p_181
.word 0xd280005e
.word 0xeb1e001f
.word 0x540000a0
.word 0xaa1903e0
.word 0xd63f0300
.word 0xaa0003f6
.word 0x1400000b
.word 0xb9800320
.word 0xf90047a0
.word 0xf9402ba0
bl _p_147
.word 0xd2800301
bl _p_23
.word 0xf94047a1
.word 0xb9001001
.word 0xd63f0300
.word 0xaa0003f6
.word 0xaa1a03f9
.word 0xaa1503f8
.word 0xaa1403f7
.word 0xaa1603f5
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xaa1503e2
.word 0xf9400303
.word 0xf9408470
.word 0xd63f0200

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #896]
.word 0xaa1903e0
.word 0xd2800121
.word 0xf9400323
.word 0xf9408470
.word 0xd63f0200
.word 0xaa1903e0
bl _p_182
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_63:
.text
ut_100:
add x0, x0, 16
b System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Runtime_CompilerServices_ITuple_get_Length
.text
	.align 4
	.no_dead_strip System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Runtime_CompilerServices_ITuple_get_Length
System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Runtime_CompilerServices_ITuple_get_Length:
.loc 14 1337 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000faf
.word 0xf9000ba0
.word 0xd28000a0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_64:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Predicate_1_string_invoke_bool_T_string
wrapper_delegate_invoke_System_Predicate_1_string_invoke_bool_T_string:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350007e0
.word 0x14000001
.word 0xf9403f38
.word 0xaa1803e0
.word 0xb5000220
.word 0xf9401338
.word 0xaa1803e0
.word 0xb4000100
.word 0xf9401f20
.word 0xf9400b22
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x53001c00
.word 0x14000026
.word 0xf9401f20
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x53001c00
.word 0x14000020
.word 0xb9801b19
.word 0xd2800017

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x54000449
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400016
.word 0xaa1603e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a1
.word 0x53001c00
.word 0x53001c16
.word 0x110006f7
.word 0xaa1703e0
.word 0x6b19001f
.word 0x54fffcab
.word 0xaa1603e0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0x91022300
.word 0xd280003e
.word 0xb900001e
.word 0xaa1803e0
bl _p_126
bl _p_127
.word 0xaa0003f8
.word 0xb5ffff20
.word 0x17ffffc0
.word 0xd2801880
.word 0xaa1103e1
bl _p_36

Lme_65:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Action_1_string_invoke_void_T_string
wrapper_delegate_invoke_System_Action_1_string_invoke_void_T_string:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x35000740
.word 0x14000001
.word 0xf9403f38
.word 0xaa1803e0
.word 0xb50001e0
.word 0xf9401338
.word 0xaa1803e0
.word 0xb40000e0
.word 0xf9401f20
.word 0xf9400b22
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000022
.word 0xf9401f20
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400001d
.word 0xb9801b19
.word 0xd2800017

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x540003e9
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400016
.word 0xaa1603e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a0
.word 0x110006f7
.word 0xaa1703e0
.word 0x6b19001f
.word 0x54fffceb
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0x91022300
.word 0xd280003e
.word 0xb900001e
.word 0xaa1803e0
bl _p_126
bl _p_127
.word 0xaa0003f8
.word 0xb5ffff20
.word 0x17ffffc5
.word 0xd2801880
.word 0xaa1103e1
bl _p_36

Lme_66:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Comparison_1_string_invoke_int_T_T_string_string
wrapper_delegate_invoke_System_Comparison_1_string_invoke_int_T_T_string_string:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x35000840
.word 0x14000001
.word 0xf9403f17
.word 0xaa1703e0
.word 0xb5000260
.word 0xf9401317
.word 0xaa1703e0
.word 0xb4000120
.word 0xf9401f00
.word 0xf9400b03
.word 0xaa1703e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xd63f0060
.word 0x93407c00
.word 0x14000028
.word 0xf9401f00
.word 0xf9400b02
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x93407c00
.word 0x14000021
.word 0xb9801af8
.word 0xd2800016

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x93407ec0
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54000469
.word 0xd37df000
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400015
.word 0xaa1503e3
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf90023a3
.word 0xf9400c70
.word 0xd63f0200
.word 0x93407c00
.word 0xf94023a1
.word 0xaa0003f5
.word 0x110006d6
.word 0xaa1603e0
.word 0x6b18001f
.word 0x54fffc8b
.word 0xaa1503e0
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0x910222e0
.word 0xd280003e
.word 0xb900001e
.word 0xaa1703e0
bl _p_126
bl _p_127
.word 0xaa0003f7
.word 0xb5ffff20
.word 0x17ffffbd
.word 0xd2801880
.word 0xaa1103e1
bl _p_36

Lme_67:
.text
ut_105:
add x0, x0, 16
b System_Array_InternalEnumerator_1_T_INST__ctor_System_Array
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_T_INST__ctor_System_Array
System_Array_InternalEnumerator_1_T_INST__ctor_System_Array:
.file 15 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.14.0.114/src/Xamarin.iOS/mcs/class/corlib/System/Array.cs"
.loc 15 236 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf90013af
.word 0xaa0003f9
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9000320
.word 0xd349ff21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 15 237 0
.word 0x9280003e
.word 0xf2bffffe
.word 0xb9000b3e
.loc 15 238 0
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_69:
.text
ut_106:
add x0, x0, 16
b System_Array_InternalEnumerator_1_T_INST_Dispose
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_T_INST_Dispose
System_Array_InternalEnumerator_1_T_INST_Dispose:
.loc 15 242 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000faf
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_6a:
.text
ut_107:
add x0, x0, 16
b System_Array_InternalEnumerator_1_T_INST_MoveNext
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_T_INST_MoveNext
System_Array_InternalEnumerator_1_T_INST_MoveNext:
.loc 15 246 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013af
.word 0xaa0003fa
.word 0xb9800b40
.word 0x9280003e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000081
.loc 15 247 0
.word 0xf9400340
.word 0xb9801800
.word 0xb9000b40
.loc 15 249 0
.word 0xb9800b40
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000180
.word 0xb9800b40
.word 0x51000419
.word 0xaa1903e0
.word 0xb9000b40
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e033f
.word 0x9a9f17e0
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0x14000002
.word 0xd2800000
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_6b:
.text
ut_108:
add x0, x0, 16
b System_Array_InternalEnumerator_1_T_INST_get_Current
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_T_INST_get_Current
System_Array_InternalEnumerator_1_T_INST_get_Current:
.loc 15 254 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf90017af
.word 0xaa0003fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xb9800b40
.word 0x9280003e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000500
.loc 15 256 0
.word 0xb9800b40
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000540
.loc 15 259 0
.word 0xf9400340
.word 0xf9002fa0
.word 0xf9400340
.word 0xb9801800
.word 0x51000400
.word 0xb9800b41
.word 0x4b010000
.word 0xf90027a0
.word 0xf94017a0
bl _p_183
.word 0xaa0003e1
.word 0xf9402fa0
.word 0xf9002ba1
.word 0x3940001e
.word 0x3940001e
.word 0xf90023a0
.word 0xf94017a0
bl _p_184
.word 0xaa0003e2
.word 0xf94023a0
.word 0xf94027a1
.word 0xf9402baf
.word 0x910063a3
.word 0xf9001ba3
.word 0xd63f0040
.word 0xf9401bbe
.word 0xf90003c0
.word 0xf90007c1
.word 0xf9400bba
.word 0xf9400fa0
.word 0xf94013a1
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.loc 15 255 0
.word 0xd2930980
bl _p_149
.word 0xaa0003e1
.word 0xd2801940
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_25
.loc 15 257 0
.word 0xd2931440
bl _p_149
.word 0xaa0003e1
.word 0xd2801940
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_25

Lme_6c:
.text
ut_109:
add x0, x0, 16
b System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_Reset
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_Reset
System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_Reset:
.loc 15 265 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000faf
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900081e
.loc 15 266 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_6d:
.text
ut_110:
add x0, x0, 16
b System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_get_Current
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_get_Current
System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_get_Current:
.loc 15 270 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf90017af
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf94017a0
bl _p_185
.word 0xf90023a0
.word 0xf9400ba0
.word 0x3940001e
.word 0xf94017a0
bl _p_186
.word 0xaa0003e1
.word 0xf94023af
.word 0x910063a0
.word 0xf9001ba0
.word 0xf9400ba0
.word 0xd63f0020
.word 0xf9401bbe
.word 0xf90003c0
.word 0xf90007c1
.word 0xf94017a0
bl _p_187
.word 0xd2800401
bl _p_23
.word 0x91004003
.word 0xaa0303e1
.word 0xf9400fa2
.word 0xf9000062
.word 0xd349fc23
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002022
.word 0xf94013a1
.word 0xf9000041
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_6e:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__IEnumerable_GetEnumerator_T_INST
System_Array_InternalArray__IEnumerable_GetEnumerator_T_INST:
.loc 15 89 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9001faf
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xb9801800
.word 0x35000140
.loc 15 90 0
.word 0xf9401fa0
bl _p_188
.word 0x3980b410
.word 0xb5000050
bl _p_11
.word 0xf9401fa0
bl _p_189
.word 0xf9400000
.word 0x14000027
.loc 15 92 0
.word 0xd2800000
.word 0xf90017a0
.word 0xf9001ba0
.word 0xf9401fa0
bl _p_190
.word 0xf90023a0
.word 0xf9401fa0
bl _p_191
.word 0xaa0003e2
.word 0xf94023af
.word 0x9100a3a0
.word 0xf9400ba1
.word 0xd63f0040
.word 0xf94017a0
.word 0xf9000fa0
.word 0xf9401ba0
.word 0xf90013a0
.word 0xf9401fa0
bl _p_190
.word 0xd2800401
bl _p_23
.word 0x91004003
.word 0xaa0303e1
.word 0xf9400fa2
.word 0xf9000062
.word 0xd349fc23
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002021
.word 0xf94013a2
.word 0xf9000022
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_6f:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Action_1_CoreLocation_CLLocation_invoke_void_T_CoreLocation_CLLocation
wrapper_delegate_invoke_System_Action_1_CoreLocation_CLLocation_invoke_void_T_CoreLocation_CLLocation:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x35000740
.word 0x14000001
.word 0xf9403f38
.word 0xaa1803e0
.word 0xb50001e0
.word 0xf9401338
.word 0xaa1803e0
.word 0xb40000e0
.word 0xf9401f20
.word 0xf9400b22
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000022
.word 0xf9401f20
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400001d
.word 0xb9801b19
.word 0xd2800017

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x540003e9
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400016
.word 0xaa1603e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a0
.word 0x110006f7
.word 0xaa1703e0
.word 0x6b19001f
.word 0x54fffceb
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0x91022300
.word 0xd280003e
.word 0xb900001e
.word 0xaa1803e0
bl _p_126
bl _p_127
.word 0xaa0003f8
.word 0xb5ffff20
.word 0x17ffffc5
.word 0xd2801880
.word 0xaa1103e1
bl _p_36

Lme_70:
.text
ut_113:
add x0, x0, 16
b wrapper_other_Xamarin_Essentials_DisplayInfo_StructureToPtr_object_intptr_bool
.text
	.align 4
	.no_dead_strip wrapper_other_Xamarin_Essentials_DisplayInfo_StructureToPtr_object_intptr_bool
wrapper_other_Xamarin_Essentials_DisplayInfo_StructureToPtr_object_intptr_bool:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa
.word 0xf90013a2
.word 0xf9400fa1
.word 0x91004020
.word 0xf9400821
.word 0xf9000341
.word 0xf9400401
.word 0xf9000741
.word 0xf9400801
.word 0xf9000b41
.word 0xf9400c00
.word 0xf9000f40
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_71:
.text
ut_114:
add x0, x0, 16
b wrapper_other_Xamarin_Essentials_DisplayInfo_PtrToStructure_intptr_object
.text
	.align 4
	.no_dead_strip wrapper_other_Xamarin_Essentials_DisplayInfo_PtrToStructure_intptr_object
wrapper_other_Xamarin_Essentials_DisplayInfo_PtrToStructure_intptr_object:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1
.word 0xf9400fa0
.word 0x91004000
.word 0xf9400321
.word 0xf9000001
.word 0xf9400721
.word 0xf9000401
.word 0xf9400b21
.word 0xf9000801
.word 0xf9400f21
.word 0xf9000c01
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_72:
.text
	.align 4
	.no_dead_strip System_Linq_Enumerable_OrderByDescending_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_System_nfloat
System_Linq_Enumerable_OrderByDescending_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_System_nfloat:
.file 16 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.14.0.114/src/Xamarin.iOS/external/corefx/src/System.Linq/src/System/Linq/OrderBy.cs"
.loc 16 18 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #904]
.word 0xd2800701
bl _p_23
.word 0xf90013a0
.word 0xf9400ba1
.word 0xf9400fa2
.word 0xd2800003
.word 0xd2800024
.word 0xd2800005
bl _p_192
.word 0xf94013a0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_73:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_EqualityComparer_1_T_INT_get_Default
System_Collections_Generic_EqualityComparer_1_T_INT_get_Default:
.file 17 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.14.0.114/src/Xamarin.iOS/mcs/class/referencesource/mscorlib/system/collections/generic/equalitycomparer.cs"
.loc 17 34 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000faf

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400fa0
bl _p_193
.word 0xf9400000
.word 0xf90013a0
.word 0xd5033bbf
.word 0xf94013a0
.word 0xaa0003fa
.loc 17 35 0
.word 0xb5000240
.loc 17 36 0
.word 0xf9400fa0
bl _p_194
.word 0xf9001ba0
.word 0xf9400fa0
bl _p_195
.word 0xf9401baf
.word 0xd63f0000
.word 0xaa0003fa
.loc 17 37 0
.word 0xaa1a03e0
.word 0xf90017a0
.word 0xf9400fa0
bl _p_193
.word 0xf90013a0
.word 0xf94017a1
.word 0xd5033bbf
.word 0xf94013a0
.word 0xf9000001
.loc 17 39 0
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_74:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_EqualityComparer_1_T_DOUBLE_get_Default
System_Collections_Generic_EqualityComparer_1_T_DOUBLE_get_Default:
.loc 17 34 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000faf

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400fa0
bl _p_196
.word 0xf9400000
.word 0xf90013a0
.word 0xd5033bbf
.word 0xf94013a0
.word 0xaa0003fa
.loc 17 35 0
.word 0xb5000240
.loc 17 36 0
.word 0xf9400fa0
bl _p_197
.word 0xf9001ba0
.word 0xf9400fa0
bl _p_198
.word 0xf9401baf
.word 0xd63f0000
.word 0xaa0003fa
.loc 17 37 0
.word 0xaa1a03e0
.word 0xf90017a0
.word 0xf9400fa0
bl _p_196
.word 0xf90013a0
.word 0xf94017a1
.word 0xd5033bbf
.word 0xf94013a0
.word 0xf9000001
.loc 17 39 0
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_75:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Comparer_1_T_INT_get_Default
System_Collections_Generic_Comparer_1_T_INT_get_Default:
.file 18 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.14.0.114/src/Xamarin.iOS/mcs/class/referencesource/mscorlib/system/collections/generic/comparer.cs"
.loc 18 28 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000faf

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400fa0
bl _p_199
.word 0xf9400000
.word 0xf90013a0
.word 0xd5033bbf
.word 0xf94013a0
.word 0xaa0003fa
.loc 18 29 0
.word 0xb5000240
.loc 18 30 0
.word 0xf9400fa0
bl _p_200
.word 0xf9001ba0
.word 0xf9400fa0
bl _p_201
.word 0xf9401baf
.word 0xd63f0000
.word 0xaa0003fa
.loc 18 31 0
.word 0xaa1a03e0
.word 0xf90017a0
.word 0xf9400fa0
bl _p_199
.word 0xf90013a0
.word 0xf94017a1
.word 0xd5033bbf
.word 0xf94013a0
.word 0xf9000001
.loc 18 33 0
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_76:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Comparer_1_T_DOUBLE_get_Default
System_Collections_Generic_Comparer_1_T_DOUBLE_get_Default:
.loc 18 28 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000faf

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400fa0
bl _p_202
.word 0xf9400000
.word 0xf90013a0
.word 0xd5033bbf
.word 0xf94013a0
.word 0xaa0003fa
.loc 18 29 0
.word 0xb5000240
.loc 18 30 0
.word 0xf9400fa0
bl _p_203
.word 0xf9001ba0
.word 0xf9400fa0
bl _p_204
.word 0xf9401baf
.word 0xd63f0000
.word 0xaa0003fa
.loc 18 31 0
.word 0xaa1a03e0
.word 0xf90017a0
.word 0xf9400fa0
bl _p_202
.word 0xf90013a0
.word 0xf94017a1
.word 0xd5033bbf
.word 0xf94013a0
.word 0xf9000001
.loc 18 33 0
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_77:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__get_Item_T_INST_int
System_Array_InternalArray__get_Item_T_INST_int:
.loc 15 194 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9002baf
.word 0xf90013a0
.word 0xf90017a1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xd2800000
.word 0xf90023a0
.word 0xf90027a0
.word 0xf94013a0
.word 0xb9801801
.word 0xb9802ba0
.word 0x6b01001f
.word 0x540005c2
.loc 15 198 0
.word 0x910103a0
.word 0xb9802ba1
.word 0x93407c21
.word 0xd37cec22
.word 0xf94013a1
.word 0x8b020021
.word 0x91008021
.word 0xf9400022
.word 0xf9001ba2
.word 0xf9400421
.word 0xf9001fa1
.word 0xf9401ba1
.word 0xf90023a1
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf9401fa0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 15 199 0
.word 0xf94023a0
.word 0xf9000ba0
.word 0xf94027a0
.word 0xf9000fa0
.word 0xf9400ba0
.word 0xf9400fa1
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.loc 15 195 0
.word 0xd2843a40
bl _p_149
.word 0xaa0003e1
.word 0xd2800fa0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_25

Lme_78:
.text
	.align 4
	.no_dead_strip System_Linq_OrderedEnumerable_2_UIKit_UIWindow_System_nfloat__ctor_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool_System_Linq_OrderedEnumerable_1_UIKit_UIWindow
System_Linq_OrderedEnumerable_2_UIKit_UIWindow_System_nfloat__ctor_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool_System_Linq_OrderedEnumerable_1_UIKit_UIWindow:
.file 19 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.14.0.114/src/Xamarin.iOS/external/corefx/src/System.Linq/src/System/Linq/OrderedEnumerable.cs"
.loc 19 386 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xf90013b5
.word 0xaa0003f5
.word 0xf90017a1
.word 0xf9001ba2
.word 0xf9001fa3
.word 0xf90023a4
.word 0xf90027a5

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xaa1503f4
.word 0xf94017b3
.word 0xf94017a0
.word 0xb40008c0
.word 0xf9000a93
.word 0x91004280
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.loc 19 387 0
.word 0xf94027a0
.word 0xf9000ea0
.word 0x910062a1
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 19 388 0
.word 0xaa1503f4
.word 0xf9401bb3
.word 0xf9401ba0
.word 0xb4000600
.word 0xf9001293
.word 0x91008280
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.loc 19 389 0
.word 0xaa1503f4
.word 0xf9401fb3
.word 0xf9401fa0
.word 0xb50000c0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #912]
bl _p_205
.word 0xaa0003f3
.word 0xf9001693
.word 0x9100a280
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.loc 19 390 0
.word 0x394103a0
.word 0x3900c2a0
.loc 19 391 0
.word 0xa94153b3
.word 0xf94013b5
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.loc 19 386 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #920]
.word 0xd2802761
bl _p_35
bl _p_206
bl _p_25
.loc 19 388 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #920]
.word 0xd2803561
bl _p_35
bl _p_206
bl _p_25

Lme_79:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Predicate_1_UIKit_UIWindow_invoke_bool_T_UIKit_UIWindow
wrapper_delegate_invoke_System_Predicate_1_UIKit_UIWindow_invoke_bool_T_UIKit_UIWindow:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350007e0
.word 0x14000001
.word 0xf9403f38
.word 0xaa1803e0
.word 0xb5000220
.word 0xf9401338
.word 0xaa1803e0
.word 0xb4000100
.word 0xf9401f20
.word 0xf9400b22
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x53001c00
.word 0x14000026
.word 0xf9401f20
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x53001c00
.word 0x14000020
.word 0xb9801b19
.word 0xd2800017

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x54000449
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400016
.word 0xaa1603e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a1
.word 0x53001c00
.word 0x53001c16
.word 0x110006f7
.word 0xaa1703e0
.word 0x6b19001f
.word 0x54fffcab
.word 0xaa1603e0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0x91022300
.word 0xd280003e
.word 0xb900001e
.word 0xaa1803e0
bl _p_126
bl _p_127
.word 0xaa0003f8
.word 0xb5ffff20
.word 0x17ffffc0
.word 0xd2801880
.word 0xaa1103e1
bl _p_36

Lme_7b:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Action_1_UIKit_UIWindow_invoke_void_T_UIKit_UIWindow
wrapper_delegate_invoke_System_Action_1_UIKit_UIWindow_invoke_void_T_UIKit_UIWindow:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x35000740
.word 0x14000001
.word 0xf9403f38
.word 0xaa1803e0
.word 0xb50001e0
.word 0xf9401338
.word 0xaa1803e0
.word 0xb40000e0
.word 0xf9401f20
.word 0xf9400b22
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000022
.word 0xf9401f20
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400001d
.word 0xb9801b19
.word 0xd2800017

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x540003e9
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400016
.word 0xaa1603e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a0
.word 0x110006f7
.word 0xaa1703e0
.word 0x6b19001f
.word 0x54fffceb
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0x91022300
.word 0xd280003e
.word 0xb900001e
.word 0xaa1803e0
bl _p_126
bl _p_127
.word 0xaa0003f8
.word 0xb5ffff20
.word 0x17ffffc5
.word 0xd2801880
.word 0xaa1103e1
bl _p_36

Lme_7c:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Comparison_1_UIKit_UIWindow_invoke_int_T_T_UIKit_UIWindow_UIKit_UIWindow
wrapper_delegate_invoke_System_Comparison_1_UIKit_UIWindow_invoke_int_T_T_UIKit_UIWindow_UIKit_UIWindow:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x35000840
.word 0x14000001
.word 0xf9403f17
.word 0xaa1703e0
.word 0xb5000260
.word 0xf9401317
.word 0xaa1703e0
.word 0xb4000120
.word 0xf9401f00
.word 0xf9400b03
.word 0xaa1703e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xd63f0060
.word 0x93407c00
.word 0x14000028
.word 0xf9401f00
.word 0xf9400b02
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x93407c00
.word 0x14000021
.word 0xb9801af8
.word 0xd2800016

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x93407ec0
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54000469
.word 0xd37df000
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400015
.word 0xaa1503e3
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf90023a3
.word 0xf9400c70
.word 0xd63f0200
.word 0x93407c00
.word 0xf94023a1
.word 0xaa0003f5
.word 0x110006d6
.word 0xaa1603e0
.word 0x6b18001f
.word 0x54fffc8b
.word 0xaa1503e0
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0x910222e0
.word 0xd280003e
.word 0xb900001e
.word 0xaa1703e0
bl _p_126
bl _p_127
.word 0xaa0003f7
.word 0xb5ffff20
.word 0x17ffffbd
.word 0xd2801880
.word 0xaa1103e1
bl _p_36

Lme_7d:
.text
	.align 4
	.no_dead_strip System_Linq_OrderedEnumerable_2_UIKit_UIWindow_System_nfloat_GetEnumerableSorter_System_Linq_EnumerableSorter_1_UIKit_UIWindow
System_Linq_OrderedEnumerable_2_UIKit_UIWindow_System_nfloat_GetEnumerableSorter_System_Linq_EnumerableSorter_1_UIKit_UIWindow:
.loc 19 395 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9401320
.word 0xf90017a0
.word 0xf9401720
.word 0xf9001ba0
.word 0x3940c320
.word 0xf9001fa0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #928]
.word 0xd2800701
bl _p_23
.word 0xf94017a1
.word 0xf9401ba2
.word 0xf9401fa3
.word 0xf90013a0
.word 0xaa1a03e4
bl _p_207
.word 0xf94013a0
.word 0xaa0003fa
.loc 19 396 0
.word 0xf9400f20
.word 0xb4000100
.loc 19 398 0
.word 0xf9400f22
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9400042
.word 0xf9406050
.word 0xd63f0200
.word 0xaa0003fa
.loc 19 401 0
.word 0xaa1a03e0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_7e:
.text
	.align 4
	.no_dead_strip System_Linq_OrderedEnumerable_2_UIKit_UIWindow_System_nfloat_GetComparer_System_Linq_CachingComparer_1_UIKit_UIWindow
System_Linq_OrderedEnumerable_2_UIKit_UIWindow_System_nfloat_GetComparer_System_Linq_CachingComparer_1_UIKit_UIWindow:
.loc 19 406 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xb40002ba
.word 0xf9401320
.word 0xf9001fa0
.word 0xf9401720
.word 0xf90023a0
.word 0x3940c320
.word 0xf90027a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #936]
.word 0xd2800701
bl _p_23
.word 0xf9401fa1
.word 0xf94023a2
.word 0xf94027a3
.word 0xf9001ba0
.word 0xaa1a03e4
bl _p_208
.word 0xf9401ba0
.word 0xaa0003fa
.word 0x14000013
.word 0xf9401320
.word 0xf9001fa0
.word 0xf9401720
.word 0xf90023a0
.word 0x3940c320
.word 0xf90027a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #944]
.word 0xd2800601
bl _p_23
.word 0xf9401fa1
.word 0xf94023a2
.word 0xf94027a3
.word 0xf9001ba0
bl _p_209
.word 0xf9401ba0
.word 0xaa0003fa
.word 0xaa1a03f8
.loc 19 409 0
.word 0xf9400f20
.word 0xb5000060
.word 0xaa1803e0
.word 0x14000007
.word 0xf9400f22
.word 0xaa0203e0
.word 0xaa1803e1
.word 0xf9400042
.word 0xf9405c50
.word 0xd63f0200
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_7f:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_EqualityComparer_1_T_INT_CreateComparer
System_Collections_Generic_EqualityComparer_1_T_INT_CreateComparer:
.loc 17 51 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90017af

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf94017a0
bl _p_210
.word 0xaa0003fa
.word 0xb400017a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #952]
.word 0xeb01001f
.word 0x10000011
.word 0x540023c1
.word 0xaa1a03f9
.loc 17 53 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #960]
.word 0xeb00035f
.word 0x9a9f17e0
.word 0x34000280
.loc 17 54 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #968]
.word 0xd2800201
bl _p_23
.word 0xaa0003fa
.word 0xf94017a0
bl _p_211
.word 0xaa0003f9
.word 0xb400011a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb19001f
.word 0x10000011
.word 0x540020c1
.word 0xaa1a03e0
.word 0x140000ff
.loc 17 63 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #976]
.word 0xeb00033f
.word 0x9a9f17e0
.word 0x34000280
.loc 17 64 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #984]
.word 0xd2800201
bl _p_23
.word 0xaa0003fa
.word 0xf94017a0
bl _p_211
.word 0xaa0003f9
.word 0xb400011a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb19001f
.word 0x10000011
.word 0x54001da1
.word 0xaa1a03e0
.word 0x140000e6
.loc 17 68 0
.word 0xf94017a0
bl _p_212
.word 0xaa0003e2
.word 0xaa0203e0
.word 0xaa1903e1
.word 0xf9400042
.word 0xf9418850
.word 0xd63f0200
.word 0x53001c00
.word 0x34000280
.loc 17 70 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #992]
.word 0xaa1903e1
bl _p_213
.word 0xaa0003fa
.word 0xf94017a0
bl _p_211
.word 0xaa0003f9
.word 0xb400011a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb19001f
.word 0x10000011
.word 0x54001a01
.word 0xaa1a03e0
.word 0x140000c9
.loc 17 76 0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9415030
.word 0xd63f0200
.word 0x53001c00
.word 0x34000a60
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9413430
.word 0xd63f0200

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #1000]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000920
.loc 17 77 0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9412c30
.word 0xd63f0200
.word 0xb9801801
.word 0xeb1f003f
.word 0x10000011
.word 0x54001729
.word 0xf940101a
.word 0xb400017a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #952]
.word 0xeb01001f
.word 0x10000011
.word 0x54001541
.word 0xaa1a03f8
.loc 17 78 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1008]
.word 0xf9001fa0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1016]
.word 0xd2800021
bl _p_85
.word 0xaa0003e3
.word 0xaa0303e0
.word 0xf9001ba0
.word 0xaa0303e0
.word 0xd2800001
.word 0xaa1a03e2
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf9401ba1
.word 0xf9401fa2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9408050
.word 0xd63f0200
.word 0xaa0003e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9400042
.word 0xf9418850
.word 0xd63f0200
.word 0x53001c00
.word 0x34000280
.loc 17 80 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1024]
.word 0xaa1803e1
bl _p_213
.word 0xaa0003fa
.word 0xf94017a0
bl _p_211
.word 0xaa0003f9
.word 0xb400011a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb19001f
.word 0x10000011
.word 0x54000f01
.word 0xaa1a03e0
.word 0x14000071
.loc 17 88 0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9411030
.word 0xd63f0200
.word 0x53001c00
.word 0x34000be0
.loc 17 89 0
.word 0xaa1903e0
bl _p_214
bl _p_215
.word 0x93407c00
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0x5100141a
.word 0xd280011e
.word 0x6b1e035f
.word 0x54000aa2
.word 0xd37df340
.word 0x2a0003e1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1032]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.loc 17 97 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1040]
.word 0xaa1903e1
bl _p_213
.word 0xaa0003fa
.word 0xf94017a0
bl _p_211
.word 0xaa0003f9
.word 0xb400011a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb19001f
.word 0x10000011
.word 0x540009a1
.word 0xaa1a03e0
.word 0x14000046
.loc 17 103 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1048]
.word 0xaa1903e1
bl _p_213
.word 0xaa0003fa
.word 0xf94017a0
bl _p_211
.word 0xaa0003f9
.word 0xb400011a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb19001f
.word 0x10000011
.word 0x54000741
.word 0xaa1a03e0
.word 0x14000033
.loc 17 112 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1056]
.word 0xaa1903e1
bl _p_213
.word 0xaa0003fa
.word 0xf94017a0
bl _p_211
.word 0xaa0003f9
.word 0xb400011a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb19001f
.word 0x10000011
.word 0x540004e1
.word 0xaa1a03e0
.word 0x14000020
.loc 17 119 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1064]
.word 0xaa1903e1
bl _p_213
.word 0xaa0003fa
.word 0xf94017a0
bl _p_211
.word 0xaa0003f9
.word 0xb400011a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb19001f
.word 0x10000011
.word 0x54000281
.word 0xaa1a03e0
.word 0x1400000d
.loc 17 126 0
.word 0xf94017a0
bl _p_216
.word 0xd2800201
bl _p_23
.word 0xf9001fa0
.word 0xf94017a0
bl _p_217
.word 0xaa0003e1
.word 0xf9401fa0
.word 0xf9001ba0
.word 0xd63f0020
.word 0xf9401ba0
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2801920
.word 0xaa1103e1
bl _p_36
.word 0xd2801880
.word 0xaa1103e1
bl _p_36

Lme_80:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_EqualityComparer_1_T_DOUBLE_CreateComparer
System_Collections_Generic_EqualityComparer_1_T_DOUBLE_CreateComparer:
.loc 17 51 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90017af

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf94017a0
bl _p_218
.word 0xaa0003fa
.word 0xb400017a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #952]
.word 0xeb01001f
.word 0x10000011
.word 0x540023c1
.word 0xaa1a03f9
.loc 17 53 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1072]
.word 0xeb00035f
.word 0x9a9f17e0
.word 0x34000280
.loc 17 54 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #968]
.word 0xd2800201
bl _p_23
.word 0xaa0003fa
.word 0xf94017a0
bl _p_219
.word 0xaa0003f9
.word 0xb400011a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb19001f
.word 0x10000011
.word 0x540020c1
.word 0xaa1a03e0
.word 0x140000ff
.loc 17 63 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1080]
.word 0xeb00033f
.word 0x9a9f17e0
.word 0x34000280
.loc 17 64 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #984]
.word 0xd2800201
bl _p_23
.word 0xaa0003fa
.word 0xf94017a0
bl _p_219
.word 0xaa0003f9
.word 0xb400011a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb19001f
.word 0x10000011
.word 0x54001da1
.word 0xaa1a03e0
.word 0x140000e6
.loc 17 68 0
.word 0xf94017a0
bl _p_220
.word 0xaa0003e2
.word 0xaa0203e0
.word 0xaa1903e1
.word 0xf9400042
.word 0xf9418850
.word 0xd63f0200
.word 0x53001c00
.word 0x34000280
.loc 17 70 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1088]
.word 0xaa1903e1
bl _p_213
.word 0xaa0003fa
.word 0xf94017a0
bl _p_219
.word 0xaa0003f9
.word 0xb400011a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb19001f
.word 0x10000011
.word 0x54001a01
.word 0xaa1a03e0
.word 0x140000c9
.loc 17 76 0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9415030
.word 0xd63f0200
.word 0x53001c00
.word 0x34000a60
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9413430
.word 0xd63f0200

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #1096]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000920
.loc 17 77 0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9412c30
.word 0xd63f0200
.word 0xb9801801
.word 0xeb1f003f
.word 0x10000011
.word 0x54001729
.word 0xf940101a
.word 0xb400017a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #952]
.word 0xeb01001f
.word 0x10000011
.word 0x54001541
.word 0xaa1a03f8
.loc 17 78 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1104]
.word 0xf9001fa0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1016]
.word 0xd2800021
bl _p_85
.word 0xaa0003e3
.word 0xaa0303e0
.word 0xf9001ba0
.word 0xaa0303e0
.word 0xd2800001
.word 0xaa1a03e2
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf9401ba1
.word 0xf9401fa2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9408050
.word 0xd63f0200
.word 0xaa0003e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9400042
.word 0xf9418850
.word 0xd63f0200
.word 0x53001c00
.word 0x34000280
.loc 17 80 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1112]
.word 0xaa1803e1
bl _p_213
.word 0xaa0003fa
.word 0xf94017a0
bl _p_219
.word 0xaa0003f9
.word 0xb400011a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb19001f
.word 0x10000011
.word 0x54000f01
.word 0xaa1a03e0
.word 0x14000071
.loc 17 88 0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9411030
.word 0xd63f0200
.word 0x53001c00
.word 0x34000be0
.loc 17 89 0
.word 0xaa1903e0
bl _p_214
bl _p_215
.word 0x93407c00
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0x5100141a
.word 0xd280011e
.word 0x6b1e035f
.word 0x54000aa2
.word 0xd37df340
.word 0x2a0003e1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1120]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.loc 17 97 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1128]
.word 0xaa1903e1
bl _p_213
.word 0xaa0003fa
.word 0xf94017a0
bl _p_219
.word 0xaa0003f9
.word 0xb400011a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb19001f
.word 0x10000011
.word 0x540009a1
.word 0xaa1a03e0
.word 0x14000046
.loc 17 103 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1136]
.word 0xaa1903e1
bl _p_213
.word 0xaa0003fa
.word 0xf94017a0
bl _p_219
.word 0xaa0003f9
.word 0xb400011a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb19001f
.word 0x10000011
.word 0x54000741
.word 0xaa1a03e0
.word 0x14000033
.loc 17 112 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1144]
.word 0xaa1903e1
bl _p_213
.word 0xaa0003fa
.word 0xf94017a0
bl _p_219
.word 0xaa0003f9
.word 0xb400011a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb19001f
.word 0x10000011
.word 0x540004e1
.word 0xaa1a03e0
.word 0x14000020
.loc 17 119 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1152]
.word 0xaa1903e1
bl _p_213
.word 0xaa0003fa
.word 0xf94017a0
bl _p_219
.word 0xaa0003f9
.word 0xb400011a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb19001f
.word 0x10000011
.word 0x54000281
.word 0xaa1a03e0
.word 0x1400000d
.loc 17 126 0
.word 0xf94017a0
bl _p_221
.word 0xd2800201
bl _p_23
.word 0xf9001fa0
.word 0xf94017a0
bl _p_222
.word 0xaa0003e1
.word 0xf9401fa0
.word 0xf9001ba0
.word 0xd63f0020
.word 0xf9401ba0
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2801920
.word 0xaa1103e1
bl _p_36
.word 0xd2801880
.word 0xaa1103e1
bl _p_36

Lme_81:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Comparer_1_T_INT_CreateComparer
System_Collections_Generic_Comparer_1_T_INT_CreateComparer:
.loc 18 53 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013af

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf94013a0
bl _p_223
.word 0xaa0003fa
.word 0xb400017a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #952]
.word 0xeb01001f
.word 0x10000011
.word 0x540010e1
.word 0xaa1a03f9
.loc 18 65 0
.word 0xf94013a0
bl _p_224
.word 0xaa0003e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9400042
.word 0xf9418850
.word 0xd63f0200
.word 0x53001c00
.word 0x34000280
.loc 18 67 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1160]
.word 0xaa1903e1
bl _p_213
.word 0xaa0003fa
.word 0xf94013a0
bl _p_225
.word 0xaa0003f9
.word 0xb400011a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb19001f
.word 0x10000011
.word 0x54000d61
.word 0xaa1a03e0
.word 0x14000065
.loc 18 74 0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9415030
.word 0xd63f0200
.word 0x53001c00
.word 0x34000a60
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9413430
.word 0xd63f0200

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #1168]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000920
.loc 18 75 0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9412c30
.word 0xd63f0200
.word 0xb9801801
.word 0xeb1f003f
.word 0x10000011
.word 0x54000a89
.word 0xf940101a
.word 0xb400017a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #952]
.word 0xeb01001f
.word 0x10000011
.word 0x540008a1
.word 0xaa1a03f9
.loc 18 76 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1176]
.word 0xf9001fa0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1016]
.word 0xd2800021
bl _p_85
.word 0xaa0003e3
.word 0xaa0303e0
.word 0xf9001ba0
.word 0xaa0303e0
.word 0xd2800001
.word 0xaa1a03e2
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf9401ba1
.word 0xf9401fa2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9408050
.word 0xd63f0200
.word 0xaa0003e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9400042
.word 0xf9418850
.word 0xd63f0200
.word 0x53001c00
.word 0x34000280
.loc 18 78 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1184]
.word 0xaa1903e1
bl _p_213
.word 0xaa0003fa
.word 0xf94013a0
bl _p_225
.word 0xaa0003f9
.word 0xb400011a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb19001f
.word 0x10000011
.word 0x54000261
.word 0xaa1a03e0
.word 0x1400000d
.loc 18 85 0
.word 0xf94013a0
bl _p_226
.word 0xd2800201
bl _p_23
.word 0xf9001fa0
.word 0xf94013a0
bl _p_227
.word 0xaa0003e1
.word 0xf9401fa0
.word 0xf9001ba0
.word 0xd63f0020
.word 0xf9401ba0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2801920
.word 0xaa1103e1
bl _p_36
.word 0xd2801880
.word 0xaa1103e1
bl _p_36

Lme_82:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Comparer_1_T_DOUBLE_CreateComparer
System_Collections_Generic_Comparer_1_T_DOUBLE_CreateComparer:
.loc 18 53 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013af

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf94013a0
bl _p_228
.word 0xaa0003fa
.word 0xb400017a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #952]
.word 0xeb01001f
.word 0x10000011
.word 0x540010e1
.word 0xaa1a03f9
.loc 18 65 0
.word 0xf94013a0
bl _p_229
.word 0xaa0003e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9400042
.word 0xf9418850
.word 0xd63f0200
.word 0x53001c00
.word 0x34000280
.loc 18 67 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1192]
.word 0xaa1903e1
bl _p_213
.word 0xaa0003fa
.word 0xf94013a0
bl _p_230
.word 0xaa0003f9
.word 0xb400011a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb19001f
.word 0x10000011
.word 0x54000d61
.word 0xaa1a03e0
.word 0x14000065
.loc 18 74 0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9415030
.word 0xd63f0200
.word 0x53001c00
.word 0x34000a60
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9413430
.word 0xd63f0200

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #1200]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000920
.loc 18 75 0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9412c30
.word 0xd63f0200
.word 0xb9801801
.word 0xeb1f003f
.word 0x10000011
.word 0x54000a89
.word 0xf940101a
.word 0xb400017a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #952]
.word 0xeb01001f
.word 0x10000011
.word 0x540008a1
.word 0xaa1a03f9
.loc 18 76 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1208]
.word 0xf9001fa0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1016]
.word 0xd2800021
bl _p_85
.word 0xaa0003e3
.word 0xaa0303e0
.word 0xf9001ba0
.word 0xaa0303e0
.word 0xd2800001
.word 0xaa1a03e2
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf9401ba1
.word 0xf9401fa2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9408050
.word 0xd63f0200
.word 0xaa0003e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9400042
.word 0xf9418850
.word 0xd63f0200
.word 0x53001c00
.word 0x34000280
.loc 18 78 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1216]
.word 0xaa1903e1
bl _p_213
.word 0xaa0003fa
.word 0xf94013a0
bl _p_230
.word 0xaa0003f9
.word 0xb400011a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb19001f
.word 0x10000011
.word 0x54000261
.word 0xaa1a03e0
.word 0x1400000d
.loc 18 85 0
.word 0xf94013a0
bl _p_231
.word 0xd2800201
bl _p_23
.word 0xf9001fa0
.word 0xf94013a0
bl _p_232
.word 0xaa0003e1
.word 0xf9401fa0
.word 0xf9001ba0
.word 0xd63f0020
.word 0xf9401ba0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2801920
.word 0xaa1103e1
bl _p_36
.word 0xd2801880
.word 0xaa1103e1
bl _p_36

Lme_83:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Comparer_1_System_nfloat_get_Default
System_Collections_Generic_Comparer_1_System_nfloat_get_Default:
.loc 18 28 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1224]
.word 0xf9400000
.word 0xf90013a0
.word 0xd5033bbf
.word 0xf94013a0
.word 0xaa0003fa
.loc 18 29 0
.word 0xb50001c0
.loc 18 30 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #912]
bl _p_233
.word 0xaa0003fa
.loc 18 31 0
.word 0xaa1a03e1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1224]
.word 0xf90013a0
.word 0xd5033bbf
.word 0xf94013a0
.word 0xf9000001
.loc 18 33 0
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_84:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Comparer_1_System_nfloat_Create_System_Comparison_1_System_nfloat
System_Collections_Generic_Comparer_1_System_nfloat_Create_System_Comparison_1_System_nfloat:
.loc 18 41 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xb40002c0
.loc 18 44 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1232]
.word 0xd2800301
bl _p_23
.word 0xf9400ba1
.word 0xf9000801
.word 0x91004002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.loc 18 42 0
.word 0xd2804560
.word 0xf2a00040
bl _p_149
.word 0xaa0003e1
.word 0xd2800f80
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_25

Lme_85:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Comparer_1_System_nfloat_CreateComparer
System_Collections_Generic_Comparer_1_System_nfloat_CreateComparer:
.loc 18 53 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x26, [x16, #1240]
.word 0xb400017a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #952]
.word 0xeb01001f
.word 0x10000011
.word 0x54001001
.word 0xaa1a03f9
.loc 18 65 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #1248]
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9400042
.word 0xf9418850
.word 0xd63f0200
.word 0x53001c00
.word 0x34000280
.loc 18 67 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1256]
.word 0xaa1903e1
bl _p_213
.word 0xaa0003fa
.word 0xb400017a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #1264]
.word 0xeb01001f
.word 0x10000011
.word 0x54000c81
.word 0xaa1a03e0
.word 0x1400005e
.loc 18 74 0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9415030
.word 0xd63f0200
.word 0x53001c00
.word 0x34000a60
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9413430
.word 0xd63f0200

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #1272]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000920
.loc 18 75 0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9412c30
.word 0xd63f0200
.word 0xb9801801
.word 0xeb1f003f
.word 0x10000011
.word 0x540009a9
.word 0xf940101a
.word 0xb400017a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #952]
.word 0xeb01001f
.word 0x10000011
.word 0x540007c1
.word 0xaa1a03f9
.loc 18 76 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1280]
.word 0xf90017a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1016]
.word 0xd2800021
bl _p_85
.word 0xaa0003e3
.word 0xaa0303e0
.word 0xf90013a0
.word 0xaa0303e0
.word 0xd2800001
.word 0xaa1a03e2
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf94013a1
.word 0xf94017a2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9408050
.word 0xd63f0200
.word 0xaa0003e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9400042
.word 0xf9418850
.word 0xd63f0200
.word 0x53001c00
.word 0x34000280
.loc 18 78 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1288]
.word 0xaa1903e1
bl _p_213
.word 0xaa0003fa
.word 0xb400017a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #1264]
.word 0xeb01001f
.word 0x10000011
.word 0x54000181
.word 0xaa1a03e0
.word 0x14000006
.loc 18 85 0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1296]
.word 0xd2800201
bl _p_23
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2801920
.word 0xaa1103e1
bl _p_36
.word 0xd2801880
.word 0xaa1103e1
bl _p_36

Lme_86:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Comparer_1_System_nfloat_System_Collections_IComparer_Compare_object_object
System_Collections_Generic_Comparer_1_System_nfloat_System_Collections_IComparer_Compare_object_object:
.loc 18 91 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb7
.word 0xa901ebb9
.word 0xf90017a0
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xb50000f9
.word 0xb400009a
.word 0x92800000
.word 0xf2bfffe0
.word 0x14000048
.word 0xd2800000
.word 0x14000046
.loc 18 92 0
.word 0xb500007a
.word 0xd2800020
.word 0x14000043
.loc 18 93 0
.word 0xaa1903f7
.word 0xeb1f033f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #1304]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800017
.word 0xb4000657
.word 0xaa1a03f7
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #1304]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800017
.word 0xb4000497
.word 0xf9400320
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x540004e1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #1304]
.word 0xeb01001f
.word 0x10000011
.word 0x540003e1
.word 0xfd400b20
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54000321
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #1304]
.word 0xeb01001f
.word 0x10000011
.word 0x54000221
.word 0xfd400b41
.word 0xf94017a0
.word 0xf94017a1
.word 0xf9400021
.word 0xf9403c30
.word 0xd63f0200
.word 0x93407c00
.word 0x14000004
.loc 18 94 0
.word 0xd2800040
bl _p_234
.loc 18 95 0
.word 0xd2800000
.word 0xf9400bb7
.word 0xa941ebb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2801920
.word 0xaa1103e1
bl _p_36

Lme_88:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Comparer_1_System_nfloat__ctor
System_Collections_Generic_Comparer_1_System_nfloat__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_89:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_GenericComparer_1_System_nfloat_Compare_System_nfloat_System_nfloat
System_Collections_Generic_GenericComparer_1_System_nfloat_Compare_System_nfloat_System_nfloat:
.loc 18 103 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xfd000fa0
.word 0xfd0013a1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x14000001
.loc 18 104 0
.word 0x14000001
.word 0xfd4013a0
.word 0x910063a0
bl _p_235
.word 0x93407c00
.word 0x14000008
.loc 18 105 0
.word 0xd2800020
.word 0x14000006
.loc 18 107 0
.word 0x14000001
.word 0x92800000
.word 0xf2bfffe0
.word 0x14000002
.loc 18 108 0
.word 0xd2800000
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_8a:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_GenericComparer_1_System_nfloat_Equals_object
System_Collections_Generic_GenericComparer_1_System_nfloat_Equals_object:
.loc 18 113 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf94013b9
.word 0xf94013a0
.word 0xeb1f001f
.word 0x54000180
.word 0xf94013a0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #1312]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800019
.loc 18 114 0
.word 0xeb1f033f
.word 0x9a9f97e0
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_8b:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_GenericComparer_1_System_nfloat_GetHashCode
System_Collections_Generic_GenericComparer_1_System_nfloat_GetHashCode:
.loc 18 118 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9406430
.word 0xd63f0200
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9402830
.word 0xd63f0200
.word 0x93407c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_8c:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_GenericComparer_1_System_nfloat__ctor
System_Collections_Generic_GenericComparer_1_System_nfloat__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_8d:
.text
	.align 4
	.no_dead_strip System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat__ctor_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool_System_Linq_EnumerableSorter_1_UIKit_UIWindow
System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat__ctor_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool_System_Linq_EnumerableSorter_1_UIKit_UIWindow:
.loc 19 546 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb6
.word 0xaa0003f6
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001ba4
.word 0xf9400fa0
.word 0xf9000ac0
.word 0x910042c1
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 19 547 0
.word 0xf94013a0
.word 0xf9000ec0
.word 0x910062c1
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 19 548 0
.word 0x3940a3a0
.word 0x3900c2c0
.loc 19 549 0
.word 0xf9401ba0
.word 0xf90012c0
.word 0x910082c1
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 19 550 0
.word 0xf9400bb6
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_8e:
.text
	.align 4
	.no_dead_strip System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_ComputeKeys_UIKit_UIWindow___int
System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_ComputeKeys_UIKit_UIWindow___int:
.loc 19 554 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1320]
.word 0xaa1a03e1
bl _p_85
.word 0xf9001700
.word 0x9100a301
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 19 555 0
.word 0xd2800017
.word 0x14000023

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.loc 19 557 0
.word 0xf9401700
.word 0xf9001ba0
.word 0xf9400b02
.word 0x93407ee0
.word 0xb9801b21
.word 0xeb00003f
.word 0x10000011
.word 0x540004c9
.word 0xd37df000
.word 0x8b000320
.word 0x91008000
.word 0xf9400001
.word 0xaa0203e0
.word 0xf9001fa2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf9401ba0
.word 0xf9401fa1
.word 0x93407ee1
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x540002e9
.word 0xd37df021
.word 0x8b010000
.word 0x91008000
.word 0xfd000000
.loc 19 555 0
.word 0x110006f7
.word 0x6b1a02ff
.word 0x54fffbab
.loc 19 560 0
.word 0xf9401300
.word 0xaa0003f8
.word 0xb5000040
.word 0x14000007
.word 0xaa1803e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf9400303
.word 0xf9404470
.word 0xd63f0200
.loc 19 561 0
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2801880
.word 0xaa1103e1
bl _p_36

Lme_8f:
.text
	.align 4
	.no_dead_strip System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_CompareAnyKeys_int_int
System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_CompareAnyKeys_int_int:
.loc 19 565 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xaa0003f8
.word 0xf90013a1
.word 0xf90017a2

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400f01
.word 0xf9401700
.word 0xb98023a2
.word 0x93407c42
.word 0xb9801803
.word 0xeb02007f
.word 0x10000011
.word 0x54000729
.word 0xd37df042
.word 0x8b020000
.word 0x91008000
.word 0xfd400000
.word 0xf9401700
.word 0xb9802ba2
.word 0x93407c42
.word 0xb9801803
.word 0xeb02007f
.word 0x10000011
.word 0x540005c9
.word 0xd37df042
.word 0x8b020000
.word 0x91008000
.word 0xfd400001
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #1328]
.word 0x92800df0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003f7
.loc 19 566 0
.word 0xaa1703e0
.word 0x35000200
.loc 19 568 0
.word 0xf9401300
.word 0xb50000a0
.loc 19 570 0
.word 0xb98023a0
.word 0xb9802ba1
.word 0x4b010000
.word 0x14000013
.loc 19 573 0
.word 0xf9401303
.word 0xaa0303e0
.word 0xb98023a1
.word 0xb9802ba2
.word 0xf9400063
.word 0xf9404070
.word 0xd63f0200
.word 0x93407c00
.word 0x1400000a
.loc 19 579 0
.word 0x3940c300
.word 0x6b1f02ff
.word 0x9a9fd7e1
.word 0x6b01001f
.word 0x54000081
.word 0x92800000
.word 0xf2bfffe0
.word 0x14000002
.word 0xd2800020
.word 0xa94163b7
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2801880
.word 0xaa1103e1
bl _p_36

Lme_90:
.text
	.align 4
	.no_dead_strip System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_CompareKeys_int_int
System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_CompareKeys_int_int:
.loc 19 583 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xb9801ba0
.word 0xb98023a1
.word 0x6b01001f
.word 0x54000140
.word 0xf9400ba0
.word 0xb9801ba1
.word 0xb98023a2
.word 0xf9400ba3
.word 0xf9400063
.word 0xf9404070
.word 0xd63f0200
.word 0x93407c00
.word 0x14000002
.word 0xd2800000
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_91:
.text
	.align 4
	.no_dead_strip System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_QuickSort_int___int_int
System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_QuickSort_int___int_int:
.loc 19 586 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xb9802ba0
.word 0xb98023a1
.word 0x4b010000
.word 0x11000400
.word 0xf9001ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #1336]
.word 0xf9400ba0
bl _p_236
.word 0xf90023a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1344]
.word 0xd2801001
bl _p_23
.word 0xf94023a2
.word 0xf9001fa0
.word 0xf9400ba1
bl _p_237
.word 0xf9401fa0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #1352]
bl _p_238
.word 0xaa0003e3
.word 0xf9401ba2

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #1360]
.word 0xf9400fa0
.word 0xb98023a1
bl _p_239
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_92:
.text
	.align 4
	.no_dead_strip System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_PartialQuickSort_int___int_int_int_int
System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_PartialQuickSort_int___int_int_int_int:
.loc 19 596 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f5
.word 0xaa0103f6
.word 0xaa0203f7
.word 0xaa0303f8
.word 0xaa0403f9
.word 0xf9002ba5

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xaa1703f4
.loc 19 597 0
.word 0xaa1803f3
.loc 19 598 0
.word 0x4b170300
.word 0x13017c00
.word 0xb0002e0
.word 0x93407c00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54001269
.word 0xd37ef400
.word 0x8b0002c0
.word 0x91008000
.word 0xb9800000
.word 0xb9005ba0
.word 0x14000008

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.loc 19 603 0
.word 0x11000694
.loc 19 601 0
.word 0xb9801ac0
.word 0x6b00029f
.word 0x5400030a
.word 0x93407e80
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000fc9
.word 0xd37ef400
.word 0x8b0002c0
.word 0x91008000
.word 0xb9800002
.word 0xaa1503e0
.word 0xb9805ba1
bl _p_240
.word 0x93407c00
.word 0x6b1f001f
.word 0x54fffd0c
.word 0x14000008

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.loc 19 608 0
.word 0x51000673
.loc 19 606 0
.word 0x6b1f027f
.word 0x5400020b
.word 0x93407e60
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000ca9
.word 0xd37ef400
.word 0x8b0002c0
.word 0x91008000
.word 0xb9800002
.word 0xaa1503e0
.word 0xb9805ba1
bl _p_240
.word 0x93407c00
.word 0x6b1f001f
.word 0x54fffd2b
.loc 19 611 0
.word 0x6b13029f
.word 0x5400056c
.loc 19 616 0
.word 0x6b13029f
.word 0x540004aa
.loc 19 618 0
.word 0x93407e80
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000a49
.word 0xd37ef400
.word 0x8b0002c0
.word 0x91008000
.word 0xb980001a
.loc 19 619 0
.word 0x93407e60
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000929
.word 0xd37ef400
.word 0x8b0002c0
.word 0x91008000
.word 0xb9800001
.word 0x93407e80
.word 0xb9801ac2
.word 0xeb00005f
.word 0x10000011
.word 0x54000809
.word 0xd37ef400
.word 0x8b0002c0
.word 0x91008000
.word 0xb9000001
.loc 19 620 0
.word 0x93407e60
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x540006e9
.word 0xd37ef400
.word 0x8b0002c0
.word 0x91008000
.word 0xb900001a
.loc 19 623 0
.word 0x11000694
.loc 19 624 0
.word 0x51000673
.loc 19 626 0
.word 0x6b13029f
.word 0x54fff54d
.loc 19 628 0
.word 0x6b14033f
.word 0x5400006b
.loc 19 630 0
.word 0x11000697
.loc 19 631 0
.word 0x14000005
.loc 19 632 0
.word 0xb98053a0
.word 0x6b13001f
.word 0x5400004c
.loc 19 634 0
.word 0x51000678
.loc 19 637 0
.word 0x4b170260
.word 0x4b140301
.word 0x6b01001f
.word 0x540001cc
.loc 19 639 0
.word 0x6b1302ff
.word 0x5400014a
.loc 19 641 0
.word 0xaa1503e0
.word 0xaa1603e1
.word 0xaa1703e2
.word 0xaa1303e3
.word 0xaa1903e4
.word 0xb98053a5
.word 0xf94002a6
.word 0xf94038d0
.word 0xd63f0200
.loc 19 644 0
.word 0xaa1403f7
.loc 19 645 0
.word 0x1400000d
.loc 19 648 0
.word 0x6b18029f
.word 0x5400014a
.loc 19 650 0
.word 0xaa1503e0
.word 0xaa1603e1
.word 0xaa1403e2
.word 0xaa1803e3
.word 0xaa1903e4
.word 0xb98053a5
.word 0xf94002a6
.word 0xf94038d0
.word 0xd63f0200
.loc 19 653 0
.word 0xaa1303f8
.loc 19 656 0
.word 0x6b1802ff
.word 0x54ffeccb
.loc 19 657 0
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.word 0xd2801880
.word 0xaa1103e1
bl _p_36

Lme_93:
.text
	.align 4
	.no_dead_strip System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_QuickSelect_int___int_int
System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_QuickSelect_int___int_int:
.loc 19 663 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xf90023b9
.word 0xaa0003f7
.word 0xaa0103f8
.word 0xaa0203f9
.word 0xf90027a3

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xd2800016

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.loc 19 666 0
.word 0xaa1603f5
.loc 19 667 0
.word 0xaa1903f4
.loc 19 668 0
.word 0x4b160320
.word 0x13017c00
.word 0xb0002c0
.word 0x93407c00
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x54001169
.word 0xd37ef400
.word 0x8b000300
.word 0x91008000
.word 0xb9800013
.word 0x14000008

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.loc 19 673 0
.word 0x110006b5
.loc 19 671 0
.word 0xb9801b00
.word 0x6b0002bf
.word 0x5400030a
.word 0x93407ea0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x54000ee9
.word 0xd37ef400
.word 0x8b000300
.word 0x91008000
.word 0xb9800002
.word 0xaa1703e0
.word 0xaa1303e1
bl _p_240
.word 0x93407c00
.word 0x6b1f001f
.word 0x54fffd0c
.word 0x14000008

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.loc 19 678 0
.word 0x51000694
.loc 19 676 0
.word 0x6b1f029f
.word 0x5400020b
.word 0x93407e80
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x54000bc9
.word 0xd37ef400
.word 0x8b000300
.word 0x91008000
.word 0xb9800002
.word 0xaa1703e0
.word 0xaa1303e1
bl _p_240
.word 0x93407c00
.word 0x6b1f001f
.word 0x54fffd2b
.loc 19 681 0
.word 0x6b1402bf
.word 0x5400058c
.loc 19 686 0
.word 0x6b1402bf
.word 0x540004ca
.loc 19 688 0
.word 0x93407ea0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x54000969
.word 0xd37ef400
.word 0x8b000300
.word 0x91008000
.word 0xb9800001
.word 0xb90053a1
.loc 19 689 0
.word 0x93407e80
.word 0xb9801b02
.word 0xeb00005f
.word 0x10000011
.word 0x54000829
.word 0xd37ef400
.word 0x8b000300
.word 0x91008000
.word 0xb9800002
.word 0x93407ea0
.word 0xb9801b03
.word 0xeb00007f
.word 0x10000011
.word 0x54000709
.word 0xd37ef400
.word 0x8b000300
.word 0x91008000
.word 0xb9000002
.loc 19 690 0
.word 0x93407e80
.word 0xb9801b02
.word 0xeb00005f
.word 0x10000011
.word 0x540005e9
.word 0xd37ef400
.word 0x8b000300
.word 0x91008000
.word 0xb9000001
.loc 19 693 0
.word 0x110006b5
.loc 19 694 0
.word 0x51000694
.loc 19 696 0
.word 0x6b1402bf
.word 0x54fff52d
.loc 19 698 0
.word 0xb9804ba0
.word 0x6b0002bf
.word 0x5400006c
.loc 19 700 0
.word 0x110006b6
.loc 19 701 0
.word 0x14000002
.loc 19 704 0
.word 0x51000699
.loc 19 707 0
.word 0x4b160280
.word 0x4b150321
.word 0x6b01001f
.word 0x540000cc
.loc 19 709 0
.word 0x6b1402df
.word 0x5400004a
.loc 19 711 0
.word 0xaa1403f9
.loc 19 714 0
.word 0xaa1503f6
.loc 19 715 0
.word 0x14000005
.loc 19 718 0
.word 0x6b1902bf
.word 0x5400004a
.loc 19 720 0
.word 0xaa1503f6
.loc 19 723 0
.word 0xaa1403f9
.loc 19 726 0
.word 0x6b1902df
.word 0x54ffef0b
.loc 19 728 0
.word 0xb9804ba0
.word 0x93407c00
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x54000189
.word 0xd37ef400
.word 0x8b000300
.word 0x91008000
.word 0xb9800000
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xf94023b9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.word 0xd2801880
.word 0xaa1103e1
bl _p_36

Lme_94:
.text
	.align 4
	.no_dead_strip System_Linq_CachingComparer_2_UIKit_UIWindow_System_nfloat__ctor_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool
System_Linq_CachingComparer_2_UIKit_UIWindow_System_nfloat__ctor_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool:
.loc 19 432 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb7
.word 0xaa0003f7
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9400fa0
.word 0xf9000ae0
.word 0x910042e1
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 19 433 0
.word 0xf94013a0
.word 0xf9000ee0
.word 0x910062e1
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 19 434 0
.word 0x3940a3a0
.word 0x390082e0
.loc 19 435 0
.word 0xf9400bb7
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_95:
.text
	.align 4
	.no_dead_strip System_Linq_CachingComparer_2_UIKit_UIWindow_System_nfloat_Compare_UIKit_UIWindow_bool
System_Linq_CachingComparer_2_UIKit_UIWindow_System_nfloat_Compare_UIKit_UIWindow_bool:
.loc 19 439 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xf90013a2

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400b02
.word 0xaa0203e0
.word 0xaa1903e1
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a0
.word 0xfd0017a0
.loc 19 440 0
.word 0x39408300
.word 0x35000200
.word 0xf9400f01
.word 0xfd4017a0
.word 0xfd401701
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #1328]
.word 0x92800df0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003f9
.word 0x1400000f
.word 0xf9400f01
.word 0xfd401700
.word 0xfd4017a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #1328]
.word 0x92800df0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003f9
.word 0xb90033b9
.loc 19 441 0
.word 0x6b1f033f
.word 0x9a9fa7e1
.word 0x394083a0
.word 0x6b01001f
.word 0x54000061
.loc 19 443 0
.word 0xfd4017a0
.word 0xfd001700
.loc 19 446 0
.word 0xb98033a0
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_96:
.text
	.align 4
	.no_dead_strip System_Linq_CachingComparer_2_UIKit_UIWindow_System_nfloat_SetElement_UIKit_UIWindow
System_Linq_CachingComparer_2_UIKit_UIWindow_System_nfloat_SetElement_UIKit_UIWindow:
.loc 19 451 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400b22
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf90013a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94013a0
.word 0xfd001720
.loc 19 452 0
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_97:
.text
	.align 4
	.no_dead_strip System_Linq_CachingComparerWithChild_2_UIKit_UIWindow_System_nfloat__ctor_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool_System_Linq_CachingComparer_1_UIKit_UIWindow
System_Linq_CachingComparerWithChild_2_UIKit_UIWindow_System_nfloat__ctor_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool_System_Linq_CachingComparer_1_UIKit_UIWindow:
.loc 19 460 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb6
.word 0xaa0003f6
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001ba4

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xaa1603e0
.word 0xf9400fa1
.word 0xf94013a2
.word 0x3940a3a3
bl _p_209
.loc 19 462 0
.word 0xf9401ba0
.word 0xf9001ac0
.word 0x9100c2c1
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 19 463 0
.word 0xf9400bb6
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_98:
.text
	.align 4
	.no_dead_strip System_Linq_CachingComparerWithChild_2_UIKit_UIWindow_System_nfloat_Compare_UIKit_UIWindow_bool
System_Linq_CachingComparerWithChild_2_UIKit_UIWindow_System_nfloat_Compare_UIKit_UIWindow_bool:
.loc 19 467 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xf90013b8
.word 0xaa0003f8
.word 0xf90017a1
.word 0xf9001ba2

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400b02
.word 0xaa0203e0
.word 0xf94017a1
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a0
.word 0xfd001fa0
.loc 19 468 0
.word 0x39408300
.word 0x35000200
.word 0xf9400f01
.word 0xfd401fa0
.word 0xfd401701
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #1328]
.word 0x92800df0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003f7
.word 0x1400000f
.word 0xf9400f01
.word 0xfd401700
.word 0xfd401fa1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x15, [x16, #1328]
.word 0x92800df0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003f7
.word 0xaa1703f6
.loc 19 469 0
.word 0x35000157
.loc 19 471 0
.word 0xf9401b03
.word 0xaa0303e0
.word 0xf94017a1
.word 0x3940c3a2
.word 0xf9400063
.word 0xf9403870
.word 0xd63f0200
.word 0x93407c00
.word 0x1400000f
.loc 19 474 0
.word 0x6b1f02df
.word 0x9a9fa7e1
.word 0x3940c3a0
.word 0x6b01001f
.word 0x54000121
.loc 19 476 0
.word 0xfd401fa0
.word 0xfd001700
.loc 19 477 0
.word 0xf9401b02
.word 0xaa0203e0
.word 0xf94017a1
.word 0xf9400042
.word 0xf9403450
.word 0xd63f0200
.loc 19 480 0
.word 0xaa1603e0
.word 0xa9415fb6
.word 0xf94013b8
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_99:
.text
	.align 4
	.no_dead_strip System_Linq_CachingComparerWithChild_2_UIKit_UIWindow_System_nfloat_SetElement_UIKit_UIWindow
System_Linq_CachingComparerWithChild_2_UIKit_UIWindow_System_nfloat_SetElement_UIKit_UIWindow:
.loc 19 485 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_241
.loc 19 486 0
.word 0xf9400ba0
.word 0xf9401802
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042
.word 0xf9403450
.word 0xd63f0200
.loc 19 487 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_9a:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ObjectEqualityComparer_1_T_INT__ctor
System_Collections_Generic_ObjectEqualityComparer_1_T_INT__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_9b:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ObjectEqualityComparer_1_T_DOUBLE__ctor
System_Collections_Generic_ObjectEqualityComparer_1_T_DOUBLE__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_9c:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ObjectComparer_1_T_INT__ctor
System_Collections_Generic_ObjectComparer_1_T_INT__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_9d:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ObjectComparer_1_T_DOUBLE__ctor
System_Collections_Generic_ObjectComparer_1_T_DOUBLE__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_9e:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ComparisonComparer_1_System_nfloat__ctor_System_Comparison_1_System_nfloat
System_Collections_Generic_ComparisonComparer_1_System_nfloat__ctor_System_Comparison_1_System_nfloat:
.loc 18 170 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 18 171 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_9f:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ComparisonComparer_1_System_nfloat_Compare_System_nfloat_System_nfloat
System_Collections_Generic_ComparisonComparer_1_System_nfloat_Compare_System_nfloat_System_nfloat:
.loc 18 174 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xfd000fa0
.word 0xfd0013a1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400801
.word 0xfd400fa0
.word 0xfd4013a1
.word 0xaa0103e0
.word 0xf9001ba1
.word 0xf9400c30
.word 0xd63f0200
.word 0x93407c00
.word 0xf9401ba1
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_a0:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Comparison_1_System_nfloat_invoke_int_T_T_System_nfloat_System_nfloat
wrapper_delegate_invoke_System_Comparison_1_System_nfloat_invoke_int_T_T_System_nfloat_System_nfloat:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003fa
.word 0xfd001ba0
.word 0xfd001fa1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x35000820
.word 0x14000001
.word 0xf9403f59
.word 0xaa1903e0
.word 0xb5000260
.word 0xf9401359
.word 0xaa1903e0
.word 0xb4000120
.word 0xfd401ba0
.word 0xfd401fa1
.word 0xf9401f40
.word 0xf9400b41
.word 0xaa1903e0
.word 0xd63f0020
.word 0x93407c00
.word 0x14000028
.word 0xfd401ba0
.word 0xfd401fa1
.word 0xf9401f40
.word 0xf9400b40
.word 0xd63f0000
.word 0x93407c00
.word 0x14000021
.word 0xb9801b3a
.word 0xd2800018

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x93407f00
.word 0xb9801b21
.word 0xeb00003f
.word 0x10000011
.word 0x54000449
.word 0xd37df000
.word 0x8b000320
.word 0x91008000
.word 0xf9400017
.word 0xaa1703e1
.word 0xfd401ba0
.word 0xfd401fa1
.word 0xaa0103e0
.word 0xf90023a1
.word 0xf9400c30
.word 0xd63f0200
.word 0x93407c00
.word 0xf94023a1
.word 0xaa0003f7
.word 0x11000718
.word 0xaa1803e0
.word 0x6b1a001f
.word 0x54fffc8b
.word 0xaa1703e0
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0x91022320
.word 0xd280003e
.word 0xb900001e
.word 0xaa1903e0
bl _p_126
bl _p_127
.word 0xaa0003f9
.word 0xb5ffff20
.word 0x17ffffbe
.word 0xd2801880
.word 0xaa1103e1
bl _p_36

Lme_a5:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ObjectComparer_1_System_nfloat_Compare_System_nfloat_System_nfloat
System_Collections_Generic_ObjectComparer_1_System_nfloat_Compare_System_nfloat_System_nfloat:
.loc 18 150 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xfd000fa0
.word 0xfd0013a1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1368]
.word 0xf9400000
.word 0xf9001fa0
.word 0xfd400fa0
.word 0xfd0027a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1376]
.word 0xd2800301
bl _p_23
.word 0xfd4027a0
.word 0xfd000800
.word 0xf9001ba0
.word 0xfd4013a0
.word 0xfd0023a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #1376]
.word 0xd2800301
bl _p_23
.word 0xaa0003e2
.word 0xf9401ba1
.word 0xf9401fa3
.word 0xfd4023a0
.word 0xfd000840
.word 0xaa0303e0
.word 0x3940007e
bl _p_242
.word 0x93407c00
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_a6:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ObjectComparer_1_System_nfloat_Equals_object
System_Collections_Generic_ObjectComparer_1_System_nfloat_Equals_object:
.loc 18 155 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf94013b9
.word 0xf94013a0
.word 0xeb1f001f
.word 0x54000180
.word 0xf94013a0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x1, [x16, #1384]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800019
.loc 18 156 0
.word 0xeb1f033f
.word 0x9a9f97e0
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_a7:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ObjectComparer_1_System_nfloat_GetHashCode
System_Collections_Generic_ObjectComparer_1_System_nfloat_GetHashCode:
.loc 18 160 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9406430
.word 0xd63f0200
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9402830
.word 0xd63f0200
.word 0x93407c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_a8:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ObjectComparer_1_System_nfloat__ctor
System_Collections_Generic_ObjectComparer_1_System_nfloat__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_a9:
.text
	.align 4
	.no_dead_strip System_Array_Sort_T_INT_T_INT___int_int_System_Collections_Generic_IComparer_1_T_INT
System_Array_Sort_T_INT_T_INT___int_int_System_Collections_Generic_IComparer_1_T_INT:
.file 20 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.14.0.114/src/Xamarin.iOS/external/corert/src/System.Private.CoreLib/src/System/Array.cs"
.loc 20 1105 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb7
.word 0xa901ebb9
.word 0xf9001baf
.word 0xaa0003f7
.word 0xf90017a1
.word 0xaa0203f9
.word 0xaa0303fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xb4000877
.loc 20 1107 0
.word 0xb9802ba0
.word 0x6b1f001f
.word 0x5400006b
.word 0x6b1f033f
.word 0x5400026a
.loc 20 1108 0
.word 0x6b1f033f
.word 0x540000ab

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x26, [x16, #1392]
.word 0x14000005

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x26, [x16, #1400]
.word 0x14000001
.word 0xd28c7300
bl _p_149
.word 0xaa0003e2
.word 0xd2800fa0
.word 0xf2a04000
.word 0xaa1a03e1
bl _mono_create_corlib_exception_2
bl _p_25
.loc 20 1109 0
.word 0xb9801ae0
.word 0xb9802ba1
.word 0x4b010000
.word 0x6b19001f
.word 0x540005cb
.loc 20 1112 0
.word 0xd280003e
.word 0x6b1e033f
.word 0x540003ed
.loc 20 1113 0
.word 0xf9401ba0
bl _p_243
.word 0x3980b410
.word 0xb5000050
bl _p_11
.word 0xf9401ba0
bl _p_243
.word 0xf9002ba0
.word 0xf9401ba0
bl _p_244
.word 0xf9402baf
.word 0xd63f0000
.word 0xf90027a0
.word 0xf9401ba0
bl _p_243
.word 0x3980b410
.word 0xb5000050
bl _p_11
.word 0xf94027a0
.word 0x3940001e
.word 0xf90023a0
.word 0xf9401ba0
bl _p_245
.word 0xaa0003e5
.word 0xf94023a0
.word 0xaa1703e1
.word 0xb9802ba2
.word 0xaa1903e3
.word 0xaa1a03e4
.word 0xd63f00a0
.loc 20 1114 0
.word 0xf9400bb7
.word 0xa941ebb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.loc 20 1106 0
.word 0xd28f4e40
bl _p_149
.word 0xaa0003e1
.word 0xd2800f80
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_25
.loc 20 1110 0
.word 0xd28fe2a0
bl _p_149
.word 0xaa0003e1
.word 0xd2800f60
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_25

Lme_aa:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Comparer_1_T_INT_Create_System_Comparison_1_T_INT
System_Collections_Generic_Comparer_1_T_INT_Create_System_Comparison_1_T_INT:
.loc 18 41 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000faf
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xb4000220
.loc 18 44 0
.word 0xf9400fa0
bl _p_246
.word 0xd2800301
bl _p_23
.word 0xf90017a0
.word 0xf9400fa0
bl _p_247
.word 0xaa0003e2
.word 0xf94017a0
.word 0xf90013a0
.word 0xf9400ba1
.word 0xd63f0040
.word 0xf94013a0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.loc 18 42 0
.word 0xd2804560
.word 0xf2a00040
bl _p_149
.word 0xaa0003e1
.word 0xd2800f80
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_25

Lme_ac:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Comparison_1_int_invoke_int_T_T_int_int
wrapper_delegate_invoke_System_Comparison_1_int_invoke_int_T_T_int_int:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x35000840
.word 0x14000001
.word 0xf9403f17
.word 0xaa1703e0
.word 0xb5000260
.word 0xf9401317
.word 0xaa1703e0
.word 0xb4000120
.word 0xf9401f00
.word 0xf9400b03
.word 0xaa1703e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xd63f0060
.word 0x93407c00
.word 0x14000028
.word 0xf9401f00
.word 0xf9400b02
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x93407c00
.word 0x14000021
.word 0xb9801af8
.word 0xd2800016

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x93407ec0
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54000469
.word 0xd37df000
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400015
.word 0xaa1503e3
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf90023a3
.word 0xf9400c70
.word 0xd63f0200
.word 0x93407c00
.word 0xf94023a1
.word 0xaa0003f5
.word 0x110006d6
.word 0xaa1603e0
.word 0x6b18001f
.word 0x54fffc8b
.word 0xaa1503e0
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0x910222e0
.word 0xd280003e
.word 0xb900001e
.word 0xaa1703e0
bl _p_126
bl _p_127
.word 0xaa0003f7
.word 0xb5ffff20
.word 0x17ffffbd
.word 0xd2801880
.word 0xaa1103e1
bl _p_36

Lme_b1:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Comparer_1_T_INT_System_Collections_IComparer_Compare_object_object
System_Collections_Generic_Comparer_1_T_INT_System_Collections_IComparer_Compare_object_object:
.loc 18 91 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xb50000f9
.word 0xb400009a
.word 0x92800000
.word 0xf2bfffe0
.word 0x14000046
.word 0xd2800000
.word 0x14000044
.loc 18 92 0
.word 0xb500007a
.word 0xd2800020
.word 0x14000041
.loc 18 93 0
.word 0xf94013a0
.word 0xf9400000
bl _p_248
.word 0xaa0003e2
.word 0xf9400441
.word 0xaa1903e0
bl _p_129
.word 0xb40006c0
.word 0xf94013a0
.word 0xf9400000
bl _p_248
.word 0xaa0003e2
.word 0xf9400441
.word 0xaa1a03e0
bl _p_129
.word 0xb40005c0
.word 0xf94013a0
.word 0xf90023a0
.word 0xf9400320
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x540005c1
.word 0xf9400000
.word 0xf9400000
.word 0xf90027a0
.word 0xf94013a0
.word 0xf9400000
bl _p_249
.word 0xaa0003e1
.word 0xf94027a0
.word 0xeb01001f
.word 0x10000011
.word 0x54000461
.word 0xb9801320
.word 0xf9001fa0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54000381
.word 0xf9400000
.word 0xf9400000
.word 0xf9001ba0
.word 0xf94013a0
.word 0xf9400000
bl _p_249
.word 0xaa0003e2
.word 0xf9401ba0
.word 0xf9401fa1
.word 0xf94023a3
.word 0xeb02001f
.word 0x10000011
.word 0x540001e1
.word 0xb9801342
.word 0xaa0303e0
.word 0xf9400063
.word 0xf9403c70
.word 0xd63f0200
.word 0x93407c00
.word 0x14000004
.loc 18 94 0
.word 0xd2800040
bl _p_234
.loc 18 95 0
.word 0xd2800000
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xd2801920
.word 0xaa1103e1
bl _p_36

Lme_b3:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Comparer_1_T_INT__ctor
System_Collections_Generic_Comparer_1_T_INT__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_b4:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_GenericComparer_1_T_INT_Compare_T_INT_T_INT
System_Collections_Generic_GenericComparer_1_T_INT_Compare_T_INT_T_INT:
.loc 18 103 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x14000001
.loc 18 104 0
.word 0x14000001
.word 0xf9400ba0
.word 0xf9400000
bl _p_250
.word 0xaa0003e2
.word 0x910063a0
.word 0xb98023a1
.word 0xd63f0040
.word 0x93407c00
.word 0x14000008
.loc 18 105 0
.word 0xd2800020
.word 0x14000006
.loc 18 107 0
.word 0x14000001
.word 0x92800000
.word 0xf2bfffe0
.word 0x14000002
.loc 18 108 0
.word 0xd2800000
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_b5:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_GenericComparer_1_T_INT_Equals_object
System_Collections_Generic_GenericComparer_1_T_INT_Equals_object:
.loc 18 113 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400000
bl _p_251
.word 0xaa0003e2
.word 0xf9400441
.word 0xf9400fa0
bl _p_129
.loc 18 114 0
.word 0xeb1f001f
.word 0x9a9f97e0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_b6:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_GenericComparer_1_T_INT_GetHashCode
System_Collections_Generic_GenericComparer_1_T_INT_GetHashCode:
.loc 18 118 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9406430
.word 0xd63f0200
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9402830
.word 0xd63f0200
.word 0x93407c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_b7:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_GenericComparer_1_T_INT__ctor
System_Collections_Generic_GenericComparer_1_T_INT__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_b8:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ArraySortHelper_1_T_INT_Sort_T_INT___int_int_System_Collections_Generic_IComparer_1_T_INT
System_Collections_Generic_ArraySortHelper_1_T_INT_Sort_T_INT___int_int_System_Collections_Generic_IComparer_1_T_INT:
.file 21 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.14.0.114/src/Xamarin.iOS/external/corert/src/System.Private.CoreLib/shared/System/Collections/Generic/ArraySortHelper.cs"
.loc 21 60 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001ba4

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9001fbf
.word 0xf9401ba0
.word 0xb5000160
.loc 21 62 0
.word 0xf9400ba0
.word 0xf9400000
bl _p_252
.word 0xf90053a0
.word 0xf9400ba0
.word 0xf9400000
bl _p_253
.word 0xf94053af
.word 0xd63f0000
.word 0xf9001ba0
.loc 21 65 0
.word 0xf9401ba0
.word 0xf90067a0
.word 0xf9005fa0
.word 0xf9400ba0
.word 0xf9400000
bl _p_254
.word 0xaa0003e1
.word 0xf94067a0
bl _p_255
.word 0xf90063a0
.word 0xf9400ba0
.word 0xf9400000
bl _p_256
.word 0xd2801001
bl _p_23
.word 0xf9005ba0
.word 0xf9400ba0
.word 0xf9400000
bl _p_257
.word 0xaa0003e3
.word 0xf9405ba0
.word 0xf9405fa1
.word 0xf94063a2
.word 0xf90053a0
.word 0xd63f0060
.word 0xf9400ba0
.word 0xf9400000
bl _p_258
.word 0xf90057a0
.word 0xf9400ba0
.word 0xf9400000
bl _p_259
.word 0xaa0003e4
.word 0xf94053a3
.word 0xf94057af
.word 0xf9400fa0
.word 0xb98023a1
.word 0xb9802ba2
.word 0xd63f0080
.loc 21 66 0
.word 0x14000027
.word 0xf90023a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.loc 21 69 0
.word 0xf9401ba0
bl _p_260
.loc 21 70 0
bl _p_261
.word 0xf9004ba0
.word 0xf9404ba0
.word 0xb4000060
.word 0xf9404ba0
bl _p_25
.word 0x14000017
.word 0xf90027a0

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf94027a0
.loc 21 71 0
.word 0xf9001fa0
.loc 21 73 0
.word 0xd2922a40
bl _p_149
.word 0xf90057a0
.word 0xf9401fa0
.word 0xf9005ba0
.word 0xd2801940
bl _p_262
.word 0xf94057a1
.word 0xf9405ba2
.word 0xf90053a0
bl _p_263
.word 0xf94053a0
bl _p_25
.loc 21 75 0
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0

Lme_b9:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ArraySortHelper_1_T_INT_get_Default
System_Collections_Generic_ArraySortHelper_1_T_INT_get_Default:
.file 22 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.14.0.114/src/Xamarin.iOS/external/corert/src/System.Private.CoreLib/src/System/Collections/Generic/ArraySortHelper.CoreRT.cs"
.loc 22 20 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000baf

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
bl _p_258
.word 0x3980b410
.word 0xb5000050
bl _p_11
.word 0xf9400ba0
bl _p_264
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_ba:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ComparisonComparer_1_T_INT__ctor_System_Comparison_1_T_INT
System_Collections_Generic_ComparisonComparer_1_T_INT__ctor_System_Comparison_1_T_INT:
.loc 18 170 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 18 171 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_bb:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ArraySortHelper_1_T_INT_IntrospectiveSort_T_INT___int_int_System_Comparison_1_T_INT
System_Collections_Generic_ArraySortHelper_1_T_INT_IntrospectiveSort_T_INT___int_int_System_Comparison_1_T_INT:
.loc 21 175 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bb4
.word 0xa901e3b7
.word 0xf90017b9
.word 0xf90023af
.word 0xf9001ba0
.word 0xaa0103f8
.word 0xaa0203f9
.word 0xf9001fa3

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xd280005e
.word 0x6b1e033f
.word 0x5400050b
.loc 21 178 0
.word 0xf9401ba0
.word 0xf90027a0
.word 0xaa1803f7
.word 0xb180320
.word 0x51000418
.word 0xd280005e
.word 0xf9002bbe
.word 0xaa1903f4
.word 0xd2800019
.word 0x1400000b

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x11000739
.word 0x531f7e80
.word 0xb140000
.word 0x13017c14
.word 0xd280003e
.word 0x6b1e029f
.word 0x54fffe8a
.word 0xf9402ba0
.word 0x1b197c00
.word 0xf90033a0
.word 0xf94023a0
bl _p_258
.word 0xf90037a0
.word 0xf94023a0
bl _p_265
.word 0xaa0003e5
.word 0xf94033a3
.word 0xf94037af
.word 0xf94027a0
.word 0xaa1703e1
.word 0xaa1803e2
.word 0xf9401fa4
.word 0xd63f00a0
.loc 21 179 0
.word 0xf9400bb4
.word 0xa941e3b7
.word 0xf94017b9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_bc:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ArraySortHelper_1_T_INT_IntroSort_T_INT___int_int_int_System_Comparison_1_T_INT
System_Collections_Generic_ArraySortHelper_1_T_INT_IntroSort_T_INT___int_int_int_System_Comparison_1_T_INT:
.loc 21 0 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xf90023af
.word 0xaa0003f6
.word 0xaa0103f7
.word 0xaa0203f8
.word 0xaa0303f9
.word 0xaa0403fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x14000086

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.loc 21 190 0
.word 0x4b170300
.word 0x11000415
.loc 21 191 0
.word 0xaa1503e0
.word 0xd280021e
.word 0x6b1e001f
.word 0x540009ac
.loc 21 193 0
.word 0xd280003e
.word 0x6b1e02bf
.word 0x54000f20
.loc 21 197 0
.word 0xd280005e
.word 0x6b1e02bf
.word 0x540001c1
.loc 21 199 0
.word 0xf94023a0
bl _p_258
.word 0xf9002ba0
.word 0xf94023a0
bl _p_266
.word 0xaa0003e4
.word 0xf9402baf
.word 0xaa1603e0
.word 0xaa1a03e1
.word 0xaa1703e2
.word 0xaa1803e3
.word 0xd63f0080
.loc 21 200 0
.word 0x14000069
.loc 21 202 0
.word 0xd280007e
.word 0x6b1e02bf
.word 0x54000541
.loc 21 204 0
.word 0x51000700
.word 0xf90037a0
.word 0xf94023a0
bl _p_258
.word 0xf9003ba0
.word 0xf94023a0
bl _p_266
.word 0xaa0003e4
.word 0xf94037a3
.word 0xf9403baf
.word 0xaa1603e0
.word 0xaa1a03e1
.word 0xaa1703e2
.word 0xd63f0080
.loc 21 205 0
.word 0xf94023a0
bl _p_258
.word 0xf90033a0
.word 0xf94023a0
bl _p_266
.word 0xaa0003e4
.word 0xf94033af
.word 0xaa1603e0
.word 0xaa1a03e1
.word 0xaa1703e2
.word 0xaa1803e3
.word 0xd63f0080
.loc 21 206 0
.word 0x51000700
.word 0xf9002ba0
.word 0xf94023a0
bl _p_258
.word 0xf9002fa0
.word 0xf94023a0
bl _p_266
.word 0xaa0003e4
.word 0xf9402ba2
.word 0xf9402faf
.word 0xaa1603e0
.word 0xaa1a03e1
.word 0xaa1803e3
.word 0xd63f0080
.loc 21 207 0
.word 0x1400003d
.loc 21 210 0
.word 0xf94023a0
bl _p_258
.word 0xf9002ba0
.word 0xf94023a0
bl _p_267
.word 0xaa0003e4
.word 0xf9402baf
.word 0xaa1603e0
.word 0xaa1703e1
.word 0xaa1803e2
.word 0xaa1a03e3
.word 0xd63f0080
.loc 21 211 0
.word 0x14000030
.loc 21 214 0
.word 0x350001d9
.loc 21 216 0
.word 0xf94023a0
bl _p_258
.word 0xf9002ba0
.word 0xf94023a0
bl _p_268
.word 0xaa0003e4
.word 0xf9402baf
.word 0xaa1603e0
.word 0xaa1703e1
.word 0xaa1803e2
.word 0xaa1a03e3
.word 0xd63f0080
.loc 21 217 0
.word 0x14000022
.loc 21 219 0
.word 0x51000739
.loc 21 221 0
.word 0xf94023a0
bl _p_258
.word 0xf90033a0
.word 0xf94023a0
bl _p_269
.word 0xaa0003e4
.word 0xf94033af
.word 0xaa1603e0
.word 0xaa1703e1
.word 0xaa1803e2
.word 0xaa1a03e3
.word 0xd63f0080
.word 0x93407c00
.word 0xaa0003f5
.loc 21 223 0
.word 0x110006a0
.word 0xf9002ba0
.word 0xf94023a0
bl _p_258
.word 0xf9002fa0
.word 0xf94023a0
bl _p_265
.word 0xaa0003e5
.word 0xf9402ba1
.word 0xf9402faf
.word 0xaa1603e0
.word 0xaa1803e2
.word 0xaa1903e3
.word 0xaa1a03e4
.word 0xd63f00a0
.loc 21 224 0
.word 0x510006b8
.loc 21 188 0
.word 0x6b17031f
.word 0x54ffef4c
.loc 21 226 0
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_bd:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ArraySortHelper_1_T_INT_PickPivotAndPartition_T_INT___int_int_System_Comparison_1_T_INT
System_Collections_Generic_ArraySortHelper_1_T_INT_PickPivotAndPartition_T_INT___int_int_System_Comparison_1_T_INT:
.loc 21 237 0 prologue_end
.word 0xa9b67bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xf90023af
.word 0xaa0003f7
.word 0xaa0103f8
.word 0xaa0203f9
.word 0xaa0303fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x4b180321
.word 0x531f7c20
.word 0xb010000
.word 0x13017c00
.word 0xb000300
.word 0xf90047a0
.loc 21 240 0
.word 0xf94023a0
bl _p_258
.word 0xf9004ba0
.word 0xf94023a0
bl _p_266
.word 0xaa0003e4
.word 0xf94047a3
.word 0xf9404baf
.word 0xaa1703e0
.word 0xaa1a03e1
.word 0xaa1803e2
.word 0xf9003ba3
.word 0xd63f0080
.loc 21 241 0
.word 0xf94023a0
bl _p_258
.word 0xf90043a0
.word 0xf94023a0
bl _p_266
.word 0xaa0003e4
.word 0xf94043af
.word 0xaa1703e0
.word 0xaa1a03e1
.word 0xaa1803e2
.word 0xaa1903e3
.word 0xd63f0080
.loc 21 242 0
.word 0xf94023a0
bl _p_258
.word 0xf9003fa0
.word 0xf94023a0
bl _p_266
.word 0xaa0003e4
.word 0xf9403ba2
.word 0xf9403faf
.word 0xaa1703e0
.word 0xaa1a03e1
.word 0xf90037a2
.word 0xaa1903e3
.word 0xd63f0080
.word 0xf94037a0
.loc 21 244 0
.word 0xf9002ba0
.word 0x93407c00
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54000d49
.word 0xd37ef400
.word 0x8b0002e0
.word 0x91008000
.word 0xb9800016
.loc 21 245 0
.word 0x51000720
.word 0xf9002fa0
.word 0xf94023a0
bl _p_258
.word 0xf90033a0
.word 0xf94023a0
bl _p_270
.word 0xaa0003e3
.word 0xf9402ba1
.word 0xf9402fa2
.word 0xf94033af
.word 0xaa1703e0
.word 0xd63f0060
.loc 21 246 0
.word 0xaa1803f5
.word 0x51000738
.word 0x14000040

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.loc 21 250 0
.word 0x110006a1
.word 0xaa0103e0
.word 0xaa0103f5
.word 0x93407c00
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54000909
.word 0xd37ef400
.word 0x8b0002e0
.word 0x91008000
.word 0xb9800001
.word 0xaa1a03e0
.word 0xaa1603e2
.word 0xf9400f50
.word 0xd63f0200
.word 0x93407c00
.word 0x6b1f001f
.word 0x54fffd0b

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.loc 21 251 0
.word 0x51000701
.word 0xaa0103e0
.word 0xaa0103f8
.word 0x93407c00
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x540005e9
.word 0xd37ef400
.word 0x8b0002e0
.word 0x91008000
.word 0xb9800002
.word 0xaa1a03e0
.word 0xaa1603e1
.word 0xf9400f50
.word 0xd63f0200
.word 0x93407c00
.word 0x6b1f001f
.word 0x54fffd0b
.loc 21 253 0
.word 0x6b1802bf
.word 0x540001ca
.loc 21 256 0
.word 0xf94023a0
bl _p_258
.word 0xf9002ba0
.word 0xf94023a0
bl _p_270
.word 0xaa0003e3
.word 0xf9402baf
.word 0xaa1703e0
.word 0xaa1503e1
.word 0xaa1803e2
.word 0xd63f0060
.loc 21 248 0
.word 0x6b1802bf
.word 0x54fff80b
.loc 21 260 0
.word 0x51000720
.word 0xf9002ba0
.word 0xf94023a0
bl _p_258
.word 0xf9002fa0
.word 0xf94023a0
bl _p_270
.word 0xaa0003e3
.word 0xf9402ba2
.word 0xf9402faf
.word 0xaa1703e0
.word 0xaa1503e1
.word 0xd63f0060
.loc 21 261 0
.word 0xaa1503e0
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0
.word 0xd2801880
.word 0xaa1103e1
bl _p_36

Lme_be:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ArraySortHelper_1_T_INT_Heapsort_T_INT___int_int_System_Comparison_1_T_INT
System_Collections_Generic_ArraySortHelper_1_T_INT_Heapsort_T_INT___int_int_System_Comparison_1_T_INT:
.loc 21 272 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xf9001faf
.word 0xaa0003f7
.word 0xaa0103f8
.word 0xaa0203f9
.word 0xaa0303fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x4b180320
.word 0x11000419
.loc 21 273 0
.word 0xaa1903e1
.word 0x531f7c20
.word 0xb010000
.word 0x13017c16
.word 0x14000015

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.loc 21 275 0
.word 0xf9401fa0
bl _p_258
.word 0xf90023a0
.word 0xf9401fa0
bl _p_271
.word 0xaa0003e5
.word 0xf94023af
.word 0xaa1703e0
.word 0xaa1603e1
.word 0xaa1903e2
.word 0xaa1803e3
.word 0xaa1a03e4
.word 0xd63f00a0
.loc 21 273 0
.word 0x510006d6
.word 0xd280003e
.word 0x6b1e02df
.word 0x54fffd4a
.loc 21 277 0
.word 0xaa1903f6
.word 0x14000025

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.loc 21 279 0
.word 0xb160300
.word 0x51000400
.word 0xf9002ba0
.word 0xf9401fa0
bl _p_258
.word 0xf9002fa0
.word 0xf9401fa0
bl _p_270
.word 0xaa0003e3
.word 0xf9402ba2
.word 0xf9402faf
.word 0xaa1703e0
.word 0xaa1803e1
.word 0xd63f0060
.loc 21 280 0
.word 0x510006c0
.word 0xf90023a0
.word 0xf9401fa0
bl _p_258
.word 0xf90027a0
.word 0xf9401fa0
bl _p_271
.word 0xaa0003e5
.word 0xf94023a2
.word 0xf94027af
.word 0xaa1703e0
.word 0xd2800021
.word 0xaa1803e3
.word 0xaa1a03e4
.word 0xd63f00a0
.loc 21 277 0
.word 0x510006d6
.word 0xd280003e
.word 0x6b1e02df
.word 0x54fffb4c
.loc 21 282 0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_bf:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ArraySortHelper_1_T_INT_InsertionSort_T_INT___int_int_System_Comparison_1_T_INT
System_Collections_Generic_ArraySortHelper_1_T_INT_InsertionSort_T_INT___int_int_System_Comparison_1_T_INT:
.loc 21 317 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa9025fb6
.word 0xa90367b8
.word 0xf90023ba
.word 0xf90027af
.word 0xaa0003f7
.word 0xaa0103f8
.word 0xaa0203f9
.word 0xaa0303fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xaa1803f6
.word 0x1400004a

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.loc 21 319 0
.word 0xaa1603f5
.loc 21 320 0
.word 0x110006c0
.word 0x93407c00
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x540008c9
.word 0xd37ef400
.word 0x8b0002e0
.word 0x91008000
.word 0xb9800014
.word 0x1400001b

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.loc 21 323 0
.word 0x110006a0
.word 0x93407ea1
.word 0xb9801ae2
.word 0xeb01005f
.word 0x10000011
.word 0x540006a9
.word 0xd37ef421
.word 0x8b0102e1
.word 0x91008021
.word 0xb9800021
.word 0x93407c00
.word 0xb9801ae2
.word 0xeb00005f
.word 0x10000011
.word 0x54000589
.word 0xd37ef400
.word 0x8b0002e0
.word 0x91008000
.word 0xb9000001
.loc 21 324 0
.word 0x510006b5
.loc 21 321 0
.word 0x6b1802bf
.word 0x5400022b
.word 0x93407ea0
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54000409
.word 0xd37ef400
.word 0x8b0002e0
.word 0x91008000
.word 0xb9800002
.word 0xaa1a03e0
.word 0xaa1403e1
.word 0xf9400f50
.word 0xd63f0200
.word 0x93407c00
.word 0x6b1f001f
.word 0x54fffaab
.loc 21 326 0
.word 0x110006a0
.word 0x93407c00
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x540001e9
.word 0xd37ef400
.word 0x8b0002e0
.word 0x91008000
.word 0xb9000014
.loc 21 317 0
.word 0x110006d6
.word 0x6b1902df
.word 0x54fff6cb
.loc 21 328 0
.word 0xa94157b4
.word 0xa9425fb6
.word 0xa94367b8
.word 0xf94023ba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xd2801880
.word 0xaa1103e1
bl _p_36

Lme_c0:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ArraySortHelper_1_T_INT_SwapIfGreater_T_INT___System_Comparison_1_T_INT_int_int
System_Collections_Generic_ArraySortHelper_1_T_INT_SwapIfGreater_T_INT___System_Comparison_1_T_INT_int_int:
.loc 21 145 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xf9001baf
.word 0xaa0003f7
.word 0xaa0103f8
.word 0xaa0203f9
.word 0xaa0303fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x6b1a033f
.word 0x540007a0
.loc 21 147 0
.word 0x93407f20
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x540007a9
.word 0xd37ef400
.word 0x8b0002e0
.word 0x91008000
.word 0xb9800001
.word 0x93407f40
.word 0xb9801ae2
.word 0xeb00005f
.word 0x10000011
.word 0x54000689
.word 0xd37ef400
.word 0x8b0002e0
.word 0x91008000
.word 0xb9800002
.word 0xaa1803e0
.word 0xf9400f10
.word 0xd63f0200
.word 0x93407c00
.word 0x6b1f001f
.word 0x540004ad
.loc 21 149 0
.word 0x93407f20
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x540004a9
.word 0xd37ef400
.word 0x8b0002e0
.word 0x91008000
.word 0xb9800018
.loc 21 150 0
.word 0x93407f40
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54000389
.word 0xd37ef400
.word 0x8b0002e0
.word 0x91008000
.word 0xb9800001
.word 0x93407f20
.word 0xb9801ae2
.word 0xeb00005f
.word 0x10000011
.word 0x54000269
.word 0xd37ef400
.word 0x8b0002e0
.word 0x91008000
.word 0xb9000001
.loc 21 151 0
.word 0x93407f40
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54000149
.word 0xd37ef400
.word 0x8b0002e0
.word 0x91008000
.word 0xb9000018
.loc 21 154 0
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2801880
.word 0xaa1103e1
bl _p_36

Lme_c1:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ArraySortHelper_1_T_INT_Swap_T_INT___int_int
System_Collections_Generic_ArraySortHelper_1_T_INT_Swap_T_INT___int_int:
.loc 21 158 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9001baf
.word 0xaa0003f8
.word 0xf9000fa1
.word 0xf90013a2
.word 0xb9801ba0
.word 0xb98023a1
.word 0x6b01001f
.word 0x54000500
.loc 21 160 0
.word 0xb9801ba2
.word 0x93407c40
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x540004c9
.word 0xd37ef400
.word 0x8b000300
.word 0x91008000
.word 0xb9800001
.word 0xb9002ba1
.loc 21 161 0
.word 0xb98023a0
.word 0x93407c03
.word 0xb9801b04
.word 0xeb03009f
.word 0x10000011
.word 0x54000369
.word 0xd37ef463
.word 0x8b030303
.word 0x91008063
.word 0xb9800063
.word 0x93407c42
.word 0xb9801b04
.word 0xeb02009f
.word 0x10000011
.word 0x54000249
.word 0xd37ef442
.word 0x8b020302
.word 0x91008042
.word 0xb9000043
.loc 21 162 0
.word 0x93407c00
.word 0xb9801b02
.word 0xeb00005f
.word 0x10000011
.word 0x54000129
.word 0xd37ef400
.word 0x8b000300
.word 0x91008000
.word 0xb9000001
.loc 21 164 0
.word 0xf9400bb8
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2801880
.word 0xaa1103e1
bl _p_36

Lme_c2:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ArraySortHelper_1_T_INT_DownHeap_T_INT___int_int_int_System_Comparison_1_T_INT
System_Collections_Generic_ArraySortHelper_1_T_INT_DownHeap_T_INT___int_int_int_System_Comparison_1_T_INT:
.loc 21 291 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa9025fb6
.word 0xa90367b8
.word 0xf90023ba
.word 0xf90027af
.word 0xaa0003f6
.word 0xaa0103f7
.word 0xaa0203f8
.word 0xaa0303f9
.word 0xaa0403fa

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xb170320
.word 0x51000400
.word 0x93407c00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000d89
.word 0xd37ef400
.word 0x8b0002c0
.word 0x91008000
.word 0xb9800015
.word 0x14000050

adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.loc 21 295 0
.word 0x531f7af4
.loc 21 296 0
.word 0xaa1403e0
.word 0x6b18001f
.word 0x540003aa
.word 0xb140320
.word 0x51000400
.word 0x93407c00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000ac9
.word 0xd37ef400
.word 0x8b0002c0
.word 0x91008000
.word 0xb9800001
.word 0xb140320
.word 0x93407c00
.word 0xb9801ac2
.word 0xeb00005f
.word 0x10000011
.word 0x54000989
.word 0xd37ef400
.word 0x8b0002c0
.word 0x91008000
.word 0xb9800002
.word 0xaa1a03e0
.word 0xf9400f50
.word 0xd63f0200
.word 0x93407c00
.word 0x6b1f001f
.word 0x5400004a
.loc 21 298 0
.word 0x11000694
.loc 21 300 0
.word 0xb140320
.word 0x51000400
.word 0x93407c00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000749
.word 0xd37ef400
.word 0x8b0002c0
.word 0x91008000
.word 0xb9800002
.word 0xaa1a03e0
.word 0xaa1503e1
.word 0xf9400f50
.word 0xd63f0200
.word 0x93407c00
.word 0x6b1f001f
.word 0x540003aa
.loc 21 302 0
.word 0xb170320
.word 0x51000400
.word 0xb140321
.word 0x51000421
.word 0x93407c21
.word 0xb9801ac2
.word 0xeb01005f
.word 0x10000011
.word 0x540004c9
.word 0xd37ef421
.word 0x8b0102c1
.word 0x91008021
.word 0xb9800021
.word 0x93407c00
.word 0xb9801ac2
.word 0xeb00005f
.word 0x10000011
.word 0x540003a9
.word 0xd37ef400
.word 0x8b0002c0
.word 0x91008000
.word 0xb9000001
.loc 21 303 0
.word 0xaa1403f7
.loc 21 293 0
.word 0x531f7f00
.word 0xb180000
.word 0x13017c00
.word 0x6b0002ff
.word 0x54fff5ad
.loc 21 305 0
.word 0xb170320
.word 0x51000400
.word 0x93407c00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000189
.word 0xd37ef400
.word 0x8b0002c0
.word 0x91008000
.word 0xb9000015
.loc 21 306 0
.word 0xa94157b4
.word 0xa9425fb6
.word 0xa94367b8
.word 0xf94023ba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xd2801880
.word 0xaa1103e1
bl _p_36

Lme_c3:
.text
	.align 3
jit_code_end:

	.byte 0,0,0,0
.text
	.align 3
method_addresses:
	.no_dead_strip method_addresses
bl Xamarin_Essentials_AppInfo_get_PackageName
bl Xamarin_Essentials_AppInfo_get_VersionString
bl Xamarin_Essentials_AppInfo_get_BuildString
bl Xamarin_Essentials_AppInfo_PlatformGetPackageName
bl Xamarin_Essentials_AppInfo_PlatformGetVersionString
bl Xamarin_Essentials_AppInfo_PlatformGetBuild
bl Xamarin_Essentials_AppInfo_GetBundleValue_string
bl Xamarin_Essentials_Flashlight_TurnOnAsync
bl Xamarin_Essentials_Flashlight_TurnOffAsync
bl Xamarin_Essentials_Flashlight_PlatformTurnOnAsync
bl Xamarin_Essentials_Flashlight_PlatformTurnOffAsync
bl Xamarin_Essentials_Flashlight_Toggle_bool
bl Xamarin_Essentials_Platform_GetCurrentViewController_bool
bl Xamarin_Essentials_Platform__c__cctor
bl Xamarin_Essentials_Platform__c__ctor
bl Xamarin_Essentials_Platform__c__GetCurrentViewControllerb__3_0_UIKit_UIWindow
bl Xamarin_Essentials_Platform__c__GetCurrentViewControllerb__3_1_UIKit_UIWindow
bl Xamarin_Essentials_Preferences_GetPrivatePreferencesSharedName_string
bl Xamarin_Essentials_Preferences_ContainsKey_string_string
bl Xamarin_Essentials_Preferences_Get_string_string_string
bl Xamarin_Essentials_Preferences_Set_string_string_string
bl Xamarin_Essentials_Preferences_PlatformContainsKey_string_string
bl Xamarin_Essentials_Preferences_PlatformSet_T_REF_string_T_REF_string
bl Xamarin_Essentials_Preferences_PlatformGet_T_REF_string_T_REF_string
bl Xamarin_Essentials_Preferences_GetUserDefaults_string
bl Xamarin_Essentials_Preferences__cctor
bl Xamarin_Essentials_Share_RequestAsync_Xamarin_Essentials_ShareTextRequest
bl Xamarin_Essentials_Share_PlatformRequestAsync_Xamarin_Essentials_ShareTextRequest
bl Xamarin_Essentials_ShareTextRequest__ctor
bl Xamarin_Essentials_ShareTextRequest_get_Title
bl Xamarin_Essentials_ShareTextRequest_set_Title_string
bl Xamarin_Essentials_ShareTextRequest_set_Subject_string
bl Xamarin_Essentials_ShareTextRequest_get_Text
bl Xamarin_Essentials_ShareTextRequest_set_Text_string
bl Xamarin_Essentials_ShareTextRequest_get_Uri
bl Xamarin_Essentials_ShareTextRequest_set_Uri_string
bl Xamarin_Essentials_DisplayInfo__ctor_double_double_double_Xamarin_Essentials_DisplayOrientation_Xamarin_Essentials_DisplayRotation
bl Xamarin_Essentials_DisplayInfo_get_Width
bl Xamarin_Essentials_DisplayInfo_get_Height
bl Xamarin_Essentials_DisplayInfo_get_Density
bl Xamarin_Essentials_DisplayInfo_get_Orientation
bl Xamarin_Essentials_DisplayInfo_get_Rotation
bl Xamarin_Essentials_DisplayInfo_op_Equality_Xamarin_Essentials_DisplayInfo_Xamarin_Essentials_DisplayInfo
bl Xamarin_Essentials_DisplayInfo_op_Inequality_Xamarin_Essentials_DisplayInfo_Xamarin_Essentials_DisplayInfo
bl Xamarin_Essentials_DisplayInfo_Equals_object
bl Xamarin_Essentials_DisplayInfo_Equals_Xamarin_Essentials_DisplayInfo
bl Xamarin_Essentials_DisplayInfo_GetHashCode
bl Xamarin_Essentials_DisplayInfo_ToString
bl Xamarin_Essentials_FeatureNotSupportedException__ctor
bl Xamarin_Essentials_VersionTracking__cctor
bl Xamarin_Essentials_VersionTracking_Track
bl Xamarin_Essentials_VersionTracking_get_IsFirstLaunchEver
bl Xamarin_Essentials_VersionTracking_set_IsFirstLaunchEver_bool
bl Xamarin_Essentials_VersionTracking_get_IsFirstLaunchForCurrentVersion
bl Xamarin_Essentials_VersionTracking_set_IsFirstLaunchForCurrentVersion_bool
bl Xamarin_Essentials_VersionTracking_get_IsFirstLaunchForCurrentBuild
bl Xamarin_Essentials_VersionTracking_set_IsFirstLaunchForCurrentBuild_bool
bl Xamarin_Essentials_VersionTracking_get_CurrentVersion
bl Xamarin_Essentials_VersionTracking_get_CurrentBuild
bl Xamarin_Essentials_VersionTracking_ReadHistory_string
bl Xamarin_Essentials_VersionTracking_WriteHistory_string_System_Collections_Generic_IEnumerable_1_string
bl Xamarin_Essentials_SingleLocationListener_get_LocationHandler
bl Xamarin_Essentials_SingleLocationListener_set_LocationHandler_System_Action_1_CoreLocation_CLLocation
bl Xamarin_Essentials_SingleLocationListener_LocationsUpdated_CoreLocation_CLLocationManager_CoreLocation_CLLocation__
bl Xamarin_Essentials_SingleLocationListener_ShouldDisplayHeadingCalibration_CoreLocation_CLLocationManager
bl Xamarin_Essentials_SingleLocationListener__ctor
bl Xamarin_Essentials_ShareActivityItemSource__ctor_Foundation_NSObject_string
bl Xamarin_Essentials_ShareActivityItemSource_GetItemForActivity_UIKit_UIActivityViewController_Foundation_NSString
bl Xamarin_Essentials_ShareActivityItemSource_GetPlaceholderData_UIKit_UIActivityViewController
bl Xamarin_Essentials_ShareActivityItemSource_GetSubjectForActivity_UIKit_UIActivityViewController_Foundation_NSString
bl method_addresses
bl Xamarin_Essentials_Preferences_PlatformSet_T_GSHAREDVT_string_T_GSHAREDVT_string
bl Xamarin_Essentials_Preferences_PlatformGet_T_GSHAREDVT_string_T_GSHAREDVT_string
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl wrapper_delegate_invoke_System_Func_2_UIKit_UIWindow_System_nfloat_invoke_TResult_T_UIKit_UIWindow
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl wrapper_delegate_invoke_System_Func_2_UIKit_UIWindow_bool_invoke_TResult_T_UIKit_UIWindow
bl wrapper_delegate_invoke_System_Predicate_1_Foundation_NSObject_invoke_bool_T_Foundation_NSObject
bl wrapper_delegate_invoke_System_Action_1_Foundation_NSObject_invoke_void_T_Foundation_NSObject
bl wrapper_delegate_invoke_System_Comparison_1_Foundation_NSObject_invoke_int_T_T_Foundation_NSObject_Foundation_NSObject
bl method_addresses
bl System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT__ctor_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT
bl System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_Equals_object
bl System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_Equals_System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT
bl System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Collections_IStructuralEquatable_Equals_object_System_Collections_IEqualityComparer
bl System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_IComparable_CompareTo_object
bl System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_CompareTo_System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT
bl System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Collections_IStructuralComparable_CompareTo_object_System_Collections_IComparer
bl System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_GetHashCode
bl System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Collections_IStructuralEquatable_GetHashCode_System_Collections_IEqualityComparer
bl System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_GetHashCodeCore_System_Collections_IEqualityComparer
bl System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_IValueTupleInternal_GetHashCode_System_Collections_IEqualityComparer
bl System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_ToString
bl System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_IValueTupleInternal_ToStringEnd
bl System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Runtime_CompilerServices_ITuple_get_Length
bl wrapper_delegate_invoke_System_Predicate_1_string_invoke_bool_T_string
bl wrapper_delegate_invoke_System_Action_1_string_invoke_void_T_string
bl wrapper_delegate_invoke_System_Comparison_1_string_invoke_int_T_T_string_string
bl method_addresses
bl System_Array_InternalEnumerator_1_T_INST__ctor_System_Array
bl System_Array_InternalEnumerator_1_T_INST_Dispose
bl System_Array_InternalEnumerator_1_T_INST_MoveNext
bl System_Array_InternalEnumerator_1_T_INST_get_Current
bl System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_Reset
bl System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_get_Current
bl System_Array_InternalArray__IEnumerable_GetEnumerator_T_INST
bl wrapper_delegate_invoke_System_Action_1_CoreLocation_CLLocation_invoke_void_T_CoreLocation_CLLocation
bl wrapper_other_Xamarin_Essentials_DisplayInfo_StructureToPtr_object_intptr_bool
bl wrapper_other_Xamarin_Essentials_DisplayInfo_PtrToStructure_intptr_object
bl System_Linq_Enumerable_OrderByDescending_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_System_nfloat
bl System_Collections_Generic_EqualityComparer_1_T_INT_get_Default
bl System_Collections_Generic_EqualityComparer_1_T_DOUBLE_get_Default
bl System_Collections_Generic_Comparer_1_T_INT_get_Default
bl System_Collections_Generic_Comparer_1_T_DOUBLE_get_Default
bl System_Array_InternalArray__get_Item_T_INST_int
bl System_Linq_OrderedEnumerable_2_UIKit_UIWindow_System_nfloat__ctor_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool_System_Linq_OrderedEnumerable_1_UIKit_UIWindow
bl method_addresses
bl wrapper_delegate_invoke_System_Predicate_1_UIKit_UIWindow_invoke_bool_T_UIKit_UIWindow
bl wrapper_delegate_invoke_System_Action_1_UIKit_UIWindow_invoke_void_T_UIKit_UIWindow
bl wrapper_delegate_invoke_System_Comparison_1_UIKit_UIWindow_invoke_int_T_T_UIKit_UIWindow_UIKit_UIWindow
bl System_Linq_OrderedEnumerable_2_UIKit_UIWindow_System_nfloat_GetEnumerableSorter_System_Linq_EnumerableSorter_1_UIKit_UIWindow
bl System_Linq_OrderedEnumerable_2_UIKit_UIWindow_System_nfloat_GetComparer_System_Linq_CachingComparer_1_UIKit_UIWindow
bl System_Collections_Generic_EqualityComparer_1_T_INT_CreateComparer
bl System_Collections_Generic_EqualityComparer_1_T_DOUBLE_CreateComparer
bl System_Collections_Generic_Comparer_1_T_INT_CreateComparer
bl System_Collections_Generic_Comparer_1_T_DOUBLE_CreateComparer
bl System_Collections_Generic_Comparer_1_System_nfloat_get_Default
bl System_Collections_Generic_Comparer_1_System_nfloat_Create_System_Comparison_1_System_nfloat
bl System_Collections_Generic_Comparer_1_System_nfloat_CreateComparer
bl method_addresses
bl System_Collections_Generic_Comparer_1_System_nfloat_System_Collections_IComparer_Compare_object_object
bl System_Collections_Generic_Comparer_1_System_nfloat__ctor
bl System_Collections_Generic_GenericComparer_1_System_nfloat_Compare_System_nfloat_System_nfloat
bl System_Collections_Generic_GenericComparer_1_System_nfloat_Equals_object
bl System_Collections_Generic_GenericComparer_1_System_nfloat_GetHashCode
bl System_Collections_Generic_GenericComparer_1_System_nfloat__ctor
bl System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat__ctor_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool_System_Linq_EnumerableSorter_1_UIKit_UIWindow
bl System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_ComputeKeys_UIKit_UIWindow___int
bl System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_CompareAnyKeys_int_int
bl System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_CompareKeys_int_int
bl System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_QuickSort_int___int_int
bl System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_PartialQuickSort_int___int_int_int_int
bl System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_QuickSelect_int___int_int
bl System_Linq_CachingComparer_2_UIKit_UIWindow_System_nfloat__ctor_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool
bl System_Linq_CachingComparer_2_UIKit_UIWindow_System_nfloat_Compare_UIKit_UIWindow_bool
bl System_Linq_CachingComparer_2_UIKit_UIWindow_System_nfloat_SetElement_UIKit_UIWindow
bl System_Linq_CachingComparerWithChild_2_UIKit_UIWindow_System_nfloat__ctor_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool_System_Linq_CachingComparer_1_UIKit_UIWindow
bl System_Linq_CachingComparerWithChild_2_UIKit_UIWindow_System_nfloat_Compare_UIKit_UIWindow_bool
bl System_Linq_CachingComparerWithChild_2_UIKit_UIWindow_System_nfloat_SetElement_UIKit_UIWindow
bl System_Collections_Generic_ObjectEqualityComparer_1_T_INT__ctor
bl System_Collections_Generic_ObjectEqualityComparer_1_T_DOUBLE__ctor
bl System_Collections_Generic_ObjectComparer_1_T_INT__ctor
bl System_Collections_Generic_ObjectComparer_1_T_DOUBLE__ctor
bl System_Collections_Generic_ComparisonComparer_1_System_nfloat__ctor_System_Comparison_1_System_nfloat
bl System_Collections_Generic_ComparisonComparer_1_System_nfloat_Compare_System_nfloat_System_nfloat
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl wrapper_delegate_invoke_System_Comparison_1_System_nfloat_invoke_int_T_T_System_nfloat_System_nfloat
bl System_Collections_Generic_ObjectComparer_1_System_nfloat_Compare_System_nfloat_System_nfloat
bl System_Collections_Generic_ObjectComparer_1_System_nfloat_Equals_object
bl System_Collections_Generic_ObjectComparer_1_System_nfloat_GetHashCode
bl System_Collections_Generic_ObjectComparer_1_System_nfloat__ctor
bl System_Array_Sort_T_INT_T_INT___int_int_System_Collections_Generic_IComparer_1_T_INT
bl method_addresses
bl System_Collections_Generic_Comparer_1_T_INT_Create_System_Comparison_1_T_INT
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl wrapper_delegate_invoke_System_Comparison_1_int_invoke_int_T_T_int_int
bl method_addresses
bl System_Collections_Generic_Comparer_1_T_INT_System_Collections_IComparer_Compare_object_object
bl System_Collections_Generic_Comparer_1_T_INT__ctor
bl System_Collections_Generic_GenericComparer_1_T_INT_Compare_T_INT_T_INT
bl System_Collections_Generic_GenericComparer_1_T_INT_Equals_object
bl System_Collections_Generic_GenericComparer_1_T_INT_GetHashCode
bl System_Collections_Generic_GenericComparer_1_T_INT__ctor
bl System_Collections_Generic_ArraySortHelper_1_T_INT_Sort_T_INT___int_int_System_Collections_Generic_IComparer_1_T_INT
bl System_Collections_Generic_ArraySortHelper_1_T_INT_get_Default
bl System_Collections_Generic_ComparisonComparer_1_T_INT__ctor_System_Comparison_1_T_INT
bl System_Collections_Generic_ArraySortHelper_1_T_INT_IntrospectiveSort_T_INT___int_int_System_Comparison_1_T_INT
bl System_Collections_Generic_ArraySortHelper_1_T_INT_IntroSort_T_INT___int_int_int_System_Comparison_1_T_INT
bl System_Collections_Generic_ArraySortHelper_1_T_INT_PickPivotAndPartition_T_INT___int_int_System_Comparison_1_T_INT
bl System_Collections_Generic_ArraySortHelper_1_T_INT_Heapsort_T_INT___int_int_System_Comparison_1_T_INT
bl System_Collections_Generic_ArraySortHelper_1_T_INT_InsertionSort_T_INT___int_int_System_Comparison_1_T_INT
bl System_Collections_Generic_ArraySortHelper_1_T_INT_SwapIfGreater_T_INT___System_Comparison_1_T_INT_int_int
bl System_Collections_Generic_ArraySortHelper_1_T_INT_Swap_T_INT___int_int
bl System_Collections_Generic_ArraySortHelper_1_T_INT_DownHeap_T_INT___int_int_int_System_Comparison_1_T_INT
method_addresses_end:

.section __TEXT, __const
	.align 3
unbox_trampolines:

	.long 36,37,38,39,40,41,42,43
	.long 44,45,46,47,87,88,89,90
	.long 91,92,93,94,95,96,97,98
	.long 99,100,105,106,107,108,109,110
	.long 113,114
unbox_trampolines_end:

	.long 0
.text
	.align 3
unbox_trampoline_addresses:
bl ut_36
bl ut_37
bl ut_38
bl ut_39
bl ut_40
bl ut_41
bl ut_42
bl ut_43
bl ut_44
bl ut_45
bl ut_46
bl ut_47
bl ut_87
bl ut_88
bl ut_89
bl ut_90
bl ut_91
bl ut_92
bl ut_93
bl ut_94
bl ut_95
bl ut_96
bl ut_97
bl ut_98
bl ut_99
bl ut_100
bl ut_105
bl ut_106
bl ut_107
bl ut_108
bl ut_109
bl ut_110
bl ut_113
bl ut_114

	.long 0
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 0,13,12,31,0,68,14,16,157,2,158,1,68,13,29,16,12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.byte 16,12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6,18,12,31,0,68,14,64,157,8,158,7,68,13,29,68
	.byte 152,6,153,5,13,12,31,0,68,14,32,157,4,158,3,68,13,29,16,12,31,0,68,14,48,157,6,158,5,68,13,29
	.byte 68,154,4,13,12,31,0,68,14,48,157,6,158,5,68,13,29,19,12,31,0,68,14,96,157,12,158,11,68,13,29,68
	.byte 152,10,68,154,9,27,12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,150,18,151,17,68,152,16,153,15,68,154
	.byte 14,27,12,31,0,68,14,192,1,157,24,158,23,68,13,29,68,150,22,151,21,68,152,20,153,19,68,154,18,28,12,31
	.byte 0,68,14,96,157,12,158,11,68,13,29,68,149,10,150,9,68,151,8,152,7,68,153,6,154,5,16,12,31,0,68,14
	.byte 64,157,8,158,7,68,13,29,68,152,6,21,12,31,0,68,14,112,157,14,158,13,68,13,29,68,151,12,152,11,68,154
	.byte 10,18,12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8,154,7,16,12,31,0,68,14,96,157,12,158,11,68
	.byte 13,29,68,154,10,17,12,31,0,68,14,128,2,157,32,158,31,68,13,29,68,154,30,23,12,31,0,68,14,112,157,14
	.byte 158,13,68,13,29,68,151,12,152,11,68,153,10,154,9,18,12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6
	.byte 154,5,16,12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,27,12,31,0,68,14,208,1,157,26,158,25,68
	.byte 13,29,68,150,24,151,23,68,152,22,153,21,68,154,20,29,12,31,0,68,14,224,1,157,28,158,27,68,13,29,68,149
	.byte 26,150,25,68,151,24,152,23,68,153,22,154,21,26,12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7
	.byte 68,152,6,153,5,68,154,4,28,12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8,150,7,68,151,6,152,5
	.byte 68,153,4,154,3,16,12,31,0,68,14,80,157,10,158,9,68,13,29,68,152,8,17,12,31,0,68,14,128,1,157,16
	.byte 158,15,68,13,29,68,154,14,16,12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6,22,12,31,0,68,14,128
	.byte 1,157,16,158,15,68,13,29,68,152,14,153,13,68,154,12,19,12,31,0,68,14,192,1,157,24,158,23,68,13,29,68
	.byte 153,22,154,21,22,12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,152,18,153,17,68,154,16,34,12,31,0,68
	.byte 14,176,1,157,22,158,21,68,13,29,68,147,20,148,19,68,149,18,150,17,68,151,16,152,15,68,153,14,154,13,13,12
	.byte 31,0,68,14,64,157,8,158,7,68,13,29,19,12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,153,18,154,17
	.byte 34,12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,147,16,148,15,68,149,14,150,13,68,151,12,152,11,68,153
	.byte 10,154,9,16,12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4,18,12,31,0,68,14,48,157,6,158,5,68
	.byte 13,29,68,153,4,154,3,13,12,31,0,68,14,80,157,10,158,9,68,13,29,16,12,31,0,68,14,32,157,4,158,3
	.byte 68,13,29,68,153,2,13,12,31,0,68,14,96,157,12,158,11,68,13,29,21,12,31,0,68,14,80,157,10,158,9,68
	.byte 13,29,68,147,8,148,7,68,149,6,21,12,31,0,68,14,80,157,10,158,9,68,13,29,68,152,8,153,7,68,154,6
	.byte 21,12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6,153,5,68,154,4,21,12,31,0,68,14,48,157,6,158
	.byte 5,68,13,29,68,151,4,68,153,3,154,2,16,12,31,0,68,14,64,157,8,158,7,68,13,29,68,150,6,23,12,31
	.byte 0,68,14,64,157,8,158,7,68,13,29,68,151,6,152,5,68,153,4,154,3,18,12,31,0,68,14,48,157,6,158,5
	.byte 68,13,29,68,151,4,152,3,33,12,31,0,68,14,96,157,12,158,11,68,13,29,68,147,10,148,9,68,149,8,150,7
	.byte 68,151,6,152,5,68,153,4,154,3,31,12,31,0,68,14,96,157,12,158,11,68,13,29,68,147,10,148,9,68,149,8
	.byte 150,7,68,151,6,152,5,68,153,4,16,12,31,0,68,14,48,157,6,158,5,68,13,29,68,151,4,18,12,31,0,68
	.byte 14,80,157,10,158,9,68,13,29,68,152,8,153,7,21,12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151
	.byte 7,68,152,6,23,12,31,0,68,14,80,157,10,158,9,68,13,29,68,151,8,152,7,68,153,6,154,5,21,12,31,0
	.byte 68,14,96,157,12,158,11,68,13,29,68,151,10,68,153,9,154,8,14,12,31,0,68,14,208,1,157,26,158,25,68,13
	.byte 29,24,12,31,0,68,14,112,157,14,158,13,68,13,29,68,148,12,68,151,11,152,10,68,153,9,29,12,31,0,68,14
	.byte 128,1,157,16,158,15,68,13,29,68,149,14,150,13,68,151,12,152,11,68,153,10,154,9,29,12,31,0,68,14,160,1
	.byte 157,20,158,19,68,13,29,68,149,18,150,17,68,151,16,152,15,68,153,14,154,13,26,12,31,0,68,14,96,157,12,158
	.byte 11,68,13,29,68,150,10,151,9,68,152,8,153,7,68,154,6,31,12,31,0,68,14,80,157,10,158,9,68,13,29,68
	.byte 148,8,149,7,68,150,6,151,5,68,152,4,153,3,68,154,2

.text
	.align 4
plt:
mono_aot_Xamarin_Essentials_plt:
	.no_dead_strip plt__jit_icall_mono_threads_state_poll
plt__jit_icall_mono_threads_state_poll:
_p_1:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1416]
br x16
.word 4165
	.no_dead_strip plt_Xamarin_Essentials_AppInfo_PlatformGetPackageName
plt_Xamarin_Essentials_AppInfo_PlatformGetPackageName:
_p_2:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1424]
br x16
.word 4191
	.no_dead_strip plt_Xamarin_Essentials_AppInfo_PlatformGetVersionString
plt_Xamarin_Essentials_AppInfo_PlatformGetVersionString:
_p_3:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1432]
br x16
.word 4193
	.no_dead_strip plt_Xamarin_Essentials_AppInfo_PlatformGetBuild
plt_Xamarin_Essentials_AppInfo_PlatformGetBuild:
_p_4:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1440]
br x16
.word 4195
	.no_dead_strip plt_Xamarin_Essentials_AppInfo_GetBundleValue_string
plt_Xamarin_Essentials_AppInfo_GetBundleValue_string:
_p_5:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1448]
br x16
.word 4197
	.no_dead_strip plt_Foundation_NSBundle_get_MainBundle
plt_Foundation_NSBundle_get_MainBundle:
_p_6:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1456]
br x16
.word 4199
	.no_dead_strip plt_Foundation_NSBundle_ObjectForInfoDictionary_string
plt_Foundation_NSBundle_ObjectForInfoDictionary_string:
_p_7:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1464]
br x16
.word 4204
	.no_dead_strip plt_Xamarin_Essentials_Flashlight_PlatformTurnOnAsync
plt_Xamarin_Essentials_Flashlight_PlatformTurnOnAsync:
_p_8:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1472]
br x16
.word 4209
	.no_dead_strip plt_Xamarin_Essentials_Flashlight_PlatformTurnOffAsync
plt_Xamarin_Essentials_Flashlight_PlatformTurnOffAsync:
_p_9:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1480]
br x16
.word 4211
	.no_dead_strip plt_Xamarin_Essentials_Flashlight_Toggle_bool
plt_Xamarin_Essentials_Flashlight_Toggle_bool:
_p_10:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1488]
br x16
.word 4213
	.no_dead_strip plt__jit_icall_mono_generic_class_init
plt__jit_icall_mono_generic_class_init:
_p_11:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1496]
br x16
.word 4215
	.no_dead_strip plt_AVFoundation_AVMediaType_get_Video
plt_AVFoundation_AVMediaType_get_Video:
_p_12:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1504]
br x16
.word 4241
	.no_dead_strip plt_AVFoundation_AVCaptureDevice_GetDefaultDevice_Foundation_NSString
plt_AVFoundation_AVCaptureDevice_GetDefaultDevice_Foundation_NSString:
_p_13:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1512]
br x16
.word 4246
	.no_dead_strip plt_AVFoundation_AVCaptureDevice_get_HasFlash
plt_AVFoundation_AVCaptureDevice_get_HasFlash:
_p_14:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1520]
br x16
.word 4251
	.no_dead_strip plt_AVFoundation_AVCaptureDevice_get_HasTorch
plt_AVFoundation_AVCaptureDevice_get_HasTorch:
_p_15:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1528]
br x16
.word 4256
	.no_dead_strip plt_AVFoundation_AVCaptureDevice_LockForConfiguration_Foundation_NSError_
plt_AVFoundation_AVCaptureDevice_LockForConfiguration_Foundation_NSError_:
_p_16:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1536]
br x16
.word 4261
	.no_dead_strip plt_AVFoundation_AVCaptureDevice_get_MaxAvailableTorchLevel
plt_AVFoundation_AVCaptureDevice_get_MaxAvailableTorchLevel:
_p_17:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1544]
br x16
.word 4266
	.no_dead_strip plt_AVFoundation_AVCaptureDevice_SetTorchModeLevel_single_Foundation_NSError_
plt_AVFoundation_AVCaptureDevice_SetTorchModeLevel_single_Foundation_NSError_:
_p_18:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1552]
br x16
.word 4271
	.no_dead_strip plt_AVFoundation_AVCaptureDevice_set_FlashMode_AVFoundation_AVCaptureFlashMode
plt_AVFoundation_AVCaptureDevice_set_FlashMode_AVFoundation_AVCaptureFlashMode:
_p_19:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1560]
br x16
.word 4276
	.no_dead_strip plt_AVFoundation_AVCaptureDevice_set_TorchMode_AVFoundation_AVCaptureTorchMode
plt_AVFoundation_AVCaptureDevice_set_TorchMode_AVFoundation_AVCaptureTorchMode:
_p_20:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1568]
br x16
.word 4281
	.no_dead_strip plt_AVFoundation_AVCaptureDevice_UnlockForConfiguration
plt_AVFoundation_AVCaptureDevice_UnlockForConfiguration:
_p_21:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1576]
br x16
.word 4286
	.no_dead_strip plt_Foundation_NSObject_Dispose
plt_Foundation_NSObject_Dispose:
_p_22:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1584]
br x16
.word 4291
	.no_dead_strip plt_wrapper_alloc_object_AllocSmall_intptr_intptr
plt_wrapper_alloc_object_AllocSmall_intptr_intptr:
_p_23:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1592]
br x16
.word 4296
	.no_dead_strip plt_Xamarin_Essentials_FeatureNotSupportedException__ctor
plt_Xamarin_Essentials_FeatureNotSupportedException__ctor:
_p_24:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1600]
br x16
.word 4304
	.no_dead_strip plt__jit_icall_mono_arch_throw_exception
plt__jit_icall_mono_arch_throw_exception:
_p_25:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1608]
br x16
.word 4306
	.no_dead_strip plt_UIKit_UIApplication_get_SharedApplication
plt_UIKit_UIApplication_get_SharedApplication:
_p_26:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1616]
br x16
.word 4334
	.no_dead_strip plt_UIKit_UIApplication_get_KeyWindow
plt_UIKit_UIApplication_get_KeyWindow:
_p_27:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1624]
br x16
.word 4339
	.no_dead_strip plt_UIKit_UIWindow_get_WindowLevel
plt_UIKit_UIWindow_get_WindowLevel:
_p_28:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1632]
br x16
.word 4344
	.no_dead_strip plt_UIKit_UIWindowLevel_get_Normal
plt_UIKit_UIWindowLevel_get_Normal:
_p_29:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1640]
br x16
.word 4349
	.no_dead_strip plt_UIKit_UIWindow_get_RootViewController
plt_UIKit_UIWindow_get_RootViewController:
_p_30:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1648]
br x16
.word 4354
	.no_dead_strip plt_UIKit_UIApplication_get_Windows
plt_UIKit_UIApplication_get_Windows:
_p_31:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1656]
br x16
.word 4359
	.no_dead_strip plt_System_Linq_Enumerable_OrderByDescending_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_System_nfloat
plt_System_Linq_Enumerable_OrderByDescending_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_System_nfloat:
_p_32:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1664]
br x16
.word 4364
	.no_dead_strip plt_System_Linq_Enumerable_FirstOrDefault_UIKit_UIWindow_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_bool
plt_System_Linq_Enumerable_FirstOrDefault_UIKit_UIWindow_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_bool:
_p_33:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1672]
br x16
.word 4376
	.no_dead_strip plt_UIKit_UIViewController_get_PresentedViewController
plt_UIKit_UIViewController_get_PresentedViewController:
_p_34:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1680]
br x16
.word 4388
	.no_dead_strip plt__jit_icall_mono_helper_ldstr
plt__jit_icall_mono_helper_ldstr:
_p_35:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1688]
br x16
.word 4393
	.no_dead_strip plt__jit_icall_mono_arch_throw_corlib_exception
plt__jit_icall_mono_arch_throw_corlib_exception:
_p_36:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1696]
br x16
.word 4413
	.no_dead_strip plt_Xamarin_Essentials_AppInfo_get_PackageName
plt_Xamarin_Essentials_AppInfo_get_PackageName:
_p_37:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1704]
br x16
.word 4448
	.no_dead_strip plt_string_Concat_string_string_string
plt_string_Concat_string_string_string:
_p_38:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1712]
br x16
.word 4450
	.no_dead_strip plt_Xamarin_Essentials_Preferences_PlatformContainsKey_string_string
plt_Xamarin_Essentials_Preferences_PlatformContainsKey_string_string:
_p_39:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1720]
br x16
.word 4455
	.no_dead_strip plt_Xamarin_Essentials_Preferences_PlatformGet_string_string_string_string
plt_Xamarin_Essentials_Preferences_PlatformGet_string_string_string_string:
_p_40:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1728]
br x16
.word 4457
	.no_dead_strip plt_Xamarin_Essentials_Preferences_PlatformSet_string_string_string_string
plt_Xamarin_Essentials_Preferences_PlatformSet_string_string_string_string:
_p_41:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1736]
br x16
.word 4469
	.no_dead_strip plt__jit_icall_mono_monitor_enter_v4_internal
plt__jit_icall_mono_monitor_enter_v4_internal:
_p_42:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1744]
br x16
.word 4481
	.no_dead_strip plt_Xamarin_Essentials_Preferences_GetUserDefaults_string
plt_Xamarin_Essentials_Preferences_GetUserDefaults_string:
_p_43:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1752]
br x16
.word 4514
	.no_dead_strip plt_Foundation_NSUserDefaults_get_Item_string
plt_Foundation_NSUserDefaults_get_Item_string:
_p_44:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1760]
br x16
.word 4516
	.no_dead_strip plt__jit_icall_ves_icall_thread_finish_async_abort
plt__jit_icall_ves_icall_thread_finish_async_abort:
_p_45:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1768]
br x16
.word 4521
	.no_dead_strip plt_System_Threading_Monitor_Exit_object
plt_System_Threading_Monitor_Exit_object:
_p_46:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1776]
br x16
.word 4559
	.no_dead_strip plt_Foundation_NSUserDefaults_RemoveObject_string
plt_Foundation_NSUserDefaults_RemoveObject_string:
_p_47:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1784]
br x16
.word 4564
	.no_dead_strip plt_Foundation_NSUserDefaults_SetString_string_string
plt_Foundation_NSUserDefaults_SetString_string_string:
_p_48:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1792]
br x16
.word 4569
	.no_dead_strip plt_Foundation_NSUserDefaults_SetInt_System_nint_string
plt_Foundation_NSUserDefaults_SetInt_System_nint_string:
_p_49:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1800]
br x16
.word 4574
	.no_dead_strip plt_Foundation_NSUserDefaults_SetBool_bool_string
plt_Foundation_NSUserDefaults_SetBool_bool_string:
_p_50:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1808]
br x16
.word 4579
	.no_dead_strip plt_System_Convert_ToString_object_System_IFormatProvider
plt_System_Convert_ToString_object_System_IFormatProvider:
_p_51:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1816]
br x16
.word 4584
	.no_dead_strip plt_Foundation_NSUserDefaults_SetDouble_double_string
plt_Foundation_NSUserDefaults_SetDouble_double_string:
_p_52:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1824]
br x16
.word 4589
	.no_dead_strip plt_Foundation_NSUserDefaults_SetFloat_single_string
plt_Foundation_NSUserDefaults_SetFloat_single_string:
_p_53:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1832]
br x16
.word 4594
	.no_dead_strip plt_Foundation_NSUserDefaults_IntForKey_string
plt_Foundation_NSUserDefaults_IntForKey_string:
_p_54:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1840]
br x16
.word 4599
	.no_dead_strip plt_Foundation_NSUserDefaults_BoolForKey_string
plt_Foundation_NSUserDefaults_BoolForKey_string:
_p_55:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1848]
br x16
.word 4604
	.no_dead_strip plt_Foundation_NSUserDefaults_StringForKey_string
plt_Foundation_NSUserDefaults_StringForKey_string:
_p_56:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1856]
br x16
.word 4609
	.no_dead_strip plt_System_Convert_ToInt64_string_System_IFormatProvider
plt_System_Convert_ToInt64_string_System_IFormatProvider:
_p_57:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1864]
br x16
.word 4614
	.no_dead_strip plt_Foundation_NSUserDefaults_DoubleForKey_string
plt_Foundation_NSUserDefaults_DoubleForKey_string:
_p_58:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1872]
br x16
.word 4619
	.no_dead_strip plt_Foundation_NSUserDefaults_FloatForKey_string
plt_Foundation_NSUserDefaults_FloatForKey_string:
_p_59:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1880]
br x16
.word 4624
	.no_dead_strip plt__rgctx_fetch_0
plt__rgctx_fetch_0:
_p_60:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1888]
br x16
.word 4641
	.no_dead_strip plt__rgctx_fetch_1
plt__rgctx_fetch_1:
_p_61:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1896]
br x16
.word 4649
	.no_dead_strip plt_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr
plt_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr:
_p_62:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1904]
br x16
.word 4657
	.no_dead_strip plt_string_IsNullOrWhiteSpace_string
plt_string_IsNullOrWhiteSpace_string:
_p_63:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1912]
br x16
.word 4665
	.no_dead_strip plt__jit_icall_ves_icall_object_new_specific
plt__jit_icall_ves_icall_object_new_specific:
_p_64:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1920]
br x16
.word 4670
	.no_dead_strip plt_Foundation_NSUserDefaults__ctor_string_Foundation_NSUserDefaultsType
plt_Foundation_NSUserDefaults__ctor_string_Foundation_NSUserDefaultsType:
_p_65:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1928]
br x16
.word 4702
	.no_dead_strip plt_Foundation_NSUserDefaults_get_StandardUserDefaults
plt_Foundation_NSUserDefaults_get_StandardUserDefaults:
_p_66:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1936]
br x16
.word 4707
	.no_dead_strip plt_Xamarin_Essentials_Share_PlatformRequestAsync_Xamarin_Essentials_ShareTextRequest
plt_Xamarin_Essentials_Share_PlatformRequestAsync_Xamarin_Essentials_ShareTextRequest:
_p_67:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1944]
br x16
.word 4712
	.no_dead_strip plt_Foundation_NSString__ctor_string
plt_Foundation_NSString__ctor_string:
_p_68:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1952]
br x16
.word 4714
	.no_dead_strip plt_Xamarin_Essentials_ShareActivityItemSource__ctor_Foundation_NSObject_string
plt_Xamarin_Essentials_ShareActivityItemSource__ctor_Foundation_NSObject_string:
_p_69:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1960]
br x16
.word 4719
	.no_dead_strip plt_System_Collections_Generic_List_1_Foundation_NSObject_AddWithResize_Foundation_NSObject
plt_System_Collections_Generic_List_1_Foundation_NSObject_AddWithResize_Foundation_NSObject:
_p_70:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1968]
br x16
.word 4721
	.no_dead_strip plt_Foundation_NSUrl_FromString_string
plt_Foundation_NSUrl_FromString_string:
_p_71:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1976]
br x16
.word 4738
	.no_dead_strip plt_System_Collections_Generic_List_1_Foundation_NSObject_ToArray
plt_System_Collections_Generic_List_1_Foundation_NSObject_ToArray:
_p_72:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1984]
br x16
.word 4743
	.no_dead_strip plt_UIKit_UIActivityViewController__ctor_Foundation_NSObject___UIKit_UIActivity__
plt_UIKit_UIActivityViewController__ctor_Foundation_NSObject___UIKit_UIActivity__:
_p_73:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #1992]
br x16
.word 4754
	.no_dead_strip plt_Xamarin_Essentials_Platform_GetCurrentViewController_bool
plt_Xamarin_Essentials_Platform_GetCurrentViewController_bool:
_p_74:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2000]
br x16
.word 4759
	.no_dead_strip plt_UIKit_UIViewController_get_PopoverPresentationController
plt_UIKit_UIViewController_get_PopoverPresentationController:
_p_75:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2008]
br x16
.word 4761
	.no_dead_strip plt_UIKit_UIViewController_get_View
plt_UIKit_UIViewController_get_View:
_p_76:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2016]
br x16
.word 4766
	.no_dead_strip plt_UIKit_UIPopoverPresentationController_set_SourceView_UIKit_UIView
plt_UIKit_UIPopoverPresentationController_set_SourceView_UIKit_UIView:
_p_77:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2024]
br x16
.word 4771
	.no_dead_strip plt_UIKit_UIViewController_PresentViewControllerAsync_UIKit_UIViewController_bool
plt_UIKit_UIViewController_PresentViewControllerAsync_UIKit_UIViewController_bool:
_p_78:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2032]
br x16
.word 4776
	.no_dead_strip plt_object_Equals_object_object
plt_object_Equals_object_object:
_p_79:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2040]
br x16
.word 4781
	.no_dead_strip plt_Xamarin_Essentials_DisplayInfo_Equals_Xamarin_Essentials_DisplayInfo
plt_Xamarin_Essentials_DisplayInfo_Equals_Xamarin_Essentials_DisplayInfo:
_p_80:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2048]
br x16
.word 4786
	.no_dead_strip plt_double_Equals_double
plt_double_Equals_double:
_p_81:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2056]
br x16
.word 4788
	.no_dead_strip plt_System_Enum_Equals_object
plt_System_Enum_Equals_object:
_p_82:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2064]
br x16
.word 4793
	.no_dead_strip plt_System_ValueTuple_5_double_double_double_Xamarin_Essentials_DisplayOrientation_Xamarin_Essentials_DisplayRotation__ctor_double_double_double_Xamarin_Essentials_DisplayOrientation_Xamarin_Essentials_DisplayRotation
plt_System_ValueTuple_5_double_double_double_Xamarin_Essentials_DisplayOrientation_Xamarin_Essentials_DisplayRotation__ctor_double_double_double_Xamarin_Essentials_DisplayOrientation_Xamarin_Essentials_DisplayRotation:
_p_83:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2072]
br x16
.word 4798
	.no_dead_strip plt_System_ValueTuple_5_double_double_double_Xamarin_Essentials_DisplayOrientation_Xamarin_Essentials_DisplayRotation_GetHashCode
plt_System_ValueTuple_5_double_double_double_Xamarin_Essentials_DisplayOrientation_Xamarin_Essentials_DisplayRotation_GetHashCode:
_p_84:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2080]
br x16
.word 4826
	.no_dead_strip plt_wrapper_alloc_object_AllocVector_intptr_intptr
plt_wrapper_alloc_object_AllocVector_intptr_intptr:
_p_85:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2088]
br x16
.word 4843
	.no_dead_strip plt_string_Format_string_object__
plt_string_Format_string_object__:
_p_86:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2096]
br x16
.word 4851
	.no_dead_strip plt_string_Format_string_object_object
plt_string_Format_string_object_object:
_p_87:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2104]
br x16
.word 4856
	.no_dead_strip plt_System_NotSupportedException__ctor
plt_System_NotSupportedException__ctor:
_p_88:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2112]
br x16
.word 4861
	.no_dead_strip plt_Xamarin_Essentials_Preferences_GetPrivatePreferencesSharedName_string
plt_Xamarin_Essentials_Preferences_GetPrivatePreferencesSharedName_string:
_p_89:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2120]
br x16
.word 4866
	.no_dead_strip plt_Xamarin_Essentials_Preferences_ContainsKey_string_string
plt_Xamarin_Essentials_Preferences_ContainsKey_string_string:
_p_90:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2128]
br x16
.word 4868
	.no_dead_strip plt_Xamarin_Essentials_VersionTracking_set_IsFirstLaunchEver_bool
plt_Xamarin_Essentials_VersionTracking_set_IsFirstLaunchEver_bool:
_p_91:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2136]
br x16
.word 4870
	.no_dead_strip plt_Xamarin_Essentials_VersionTracking_get_IsFirstLaunchEver
plt_Xamarin_Essentials_VersionTracking_get_IsFirstLaunchEver:
_p_92:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2144]
br x16
.word 4872
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_string_System_Collections_Generic_List_1_string__ctor
plt_System_Collections_Generic_Dictionary_2_string_System_Collections_Generic_List_1_string__ctor:
_p_93:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2152]
br x16
.word 4874
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_string_System_Collections_Generic_List_1_string_Add_string_System_Collections_Generic_List_1_string
plt_System_Collections_Generic_Dictionary_2_string_System_Collections_Generic_List_1_string_Add_string_System_Collections_Generic_List_1_string:
_p_94:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2160]
br x16
.word 4885
	.no_dead_strip plt_Xamarin_Essentials_VersionTracking_ReadHistory_string
plt_Xamarin_Essentials_VersionTracking_ReadHistory_string:
_p_95:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2168]
br x16
.word 4896
	.no_dead_strip plt_System_Linq_Enumerable_ToList_string_System_Collections_Generic_IEnumerable_1_string
plt_System_Linq_Enumerable_ToList_string_System_Collections_Generic_IEnumerable_1_string:
_p_96:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2176]
br x16
.word 4898
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_string_System_Collections_Generic_List_1_string_get_Item_string
plt_System_Collections_Generic_Dictionary_2_string_System_Collections_Generic_List_1_string_get_Item_string:
_p_97:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2184]
br x16
.word 4910
	.no_dead_strip plt_Xamarin_Essentials_VersionTracking_get_CurrentVersion
plt_Xamarin_Essentials_VersionTracking_get_CurrentVersion:
_p_98:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2192]
br x16
.word 4921
	.no_dead_strip plt_System_Collections_Generic_List_1_string_Contains_string
plt_System_Collections_Generic_List_1_string_Contains_string:
_p_99:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2200]
br x16
.word 4923
	.no_dead_strip plt_Xamarin_Essentials_VersionTracking_set_IsFirstLaunchForCurrentVersion_bool
plt_Xamarin_Essentials_VersionTracking_set_IsFirstLaunchForCurrentVersion_bool:
_p_100:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2208]
br x16
.word 4934
	.no_dead_strip plt_Xamarin_Essentials_VersionTracking_get_IsFirstLaunchForCurrentVersion
plt_Xamarin_Essentials_VersionTracking_get_IsFirstLaunchForCurrentVersion:
_p_101:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2216]
br x16
.word 4936
	.no_dead_strip plt_System_Collections_Generic_List_1_string_AddWithResize_string
plt_System_Collections_Generic_List_1_string_AddWithResize_string:
_p_102:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2224]
br x16
.word 4938
	.no_dead_strip plt_Xamarin_Essentials_VersionTracking_get_CurrentBuild
plt_Xamarin_Essentials_VersionTracking_get_CurrentBuild:
_p_103:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2232]
br x16
.word 4955
	.no_dead_strip plt_Xamarin_Essentials_VersionTracking_set_IsFirstLaunchForCurrentBuild_bool
plt_Xamarin_Essentials_VersionTracking_set_IsFirstLaunchForCurrentBuild_bool:
_p_104:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2240]
br x16
.word 4957
	.no_dead_strip plt_Xamarin_Essentials_VersionTracking_get_IsFirstLaunchForCurrentBuild
plt_Xamarin_Essentials_VersionTracking_get_IsFirstLaunchForCurrentBuild:
_p_105:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2248]
br x16
.word 4959
	.no_dead_strip plt_Xamarin_Essentials_VersionTracking_WriteHistory_string_System_Collections_Generic_IEnumerable_1_string
plt_Xamarin_Essentials_VersionTracking_WriteHistory_string_System_Collections_Generic_IEnumerable_1_string:
_p_106:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2256]
br x16
.word 4961
	.no_dead_strip plt_Xamarin_Essentials_AppInfo_get_VersionString
plt_Xamarin_Essentials_AppInfo_get_VersionString:
_p_107:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2264]
br x16
.word 4963
	.no_dead_strip plt_Xamarin_Essentials_AppInfo_get_BuildString
plt_Xamarin_Essentials_AppInfo_get_BuildString:
_p_108:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2272]
br x16
.word 4965
	.no_dead_strip plt_Xamarin_Essentials_Preferences_Get_string_string_string
plt_Xamarin_Essentials_Preferences_Get_string_string_string:
_p_109:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2280]
br x16
.word 4967
	.no_dead_strip plt_string_Split_char___System_StringSplitOptions
plt_string_Split_char___System_StringSplitOptions:
_p_110:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2288]
br x16
.word 4969
	.no_dead_strip plt_string_Join_string_System_Collections_Generic_IEnumerable_1_string
plt_string_Join_string_System_Collections_Generic_IEnumerable_1_string:
_p_111:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2296]
br x16
.word 4974
	.no_dead_strip plt_Xamarin_Essentials_Preferences_Set_string_string_string
plt_Xamarin_Essentials_Preferences_Set_string_string_string:
_p_112:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2304]
br x16
.word 4979
	.no_dead_strip plt_System_Linq_Enumerable_LastOrDefault_CoreLocation_CLLocation_System_Collections_Generic_IEnumerable_1_CoreLocation_CLLocation
plt_System_Linq_Enumerable_LastOrDefault_CoreLocation_CLLocation_System_Collections_Generic_IEnumerable_1_CoreLocation_CLLocation:
_p_113:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2312]
br x16
.word 4981
	.no_dead_strip plt_CoreLocation_CLLocationManagerDelegate__ctor
plt_CoreLocation_CLLocationManagerDelegate__ctor:
_p_114:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2320]
br x16
.word 4993
	.no_dead_strip plt_UIKit_UIActivityItemSource__ctor
plt_UIKit_UIActivityItemSource__ctor:
_p_115:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2328]
br x16
.word 4998
	.no_dead_strip plt__rgctx_fetch_2
plt__rgctx_fetch_2:
_p_116:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2336]
br x16
.word 5015
	.no_dead_strip plt__rgctx_fetch_3
plt__rgctx_fetch_3:
_p_117:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2344]
br x16
.word 5114
	.no_dead_strip plt_wrapper_alloc_object_Alloc_intptr
plt_wrapper_alloc_object_Alloc_intptr:
_p_118:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2352]
br x16
.word 5122
	.no_dead_strip plt__rgctx_fetch_4
plt__rgctx_fetch_4:
_p_119:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2360]
br x16
.word 5130
	.no_dead_strip plt_System_Globalization_CultureInfo_get_InvariantCulture
plt_System_Globalization_CultureInfo_get_InvariantCulture:
_p_120:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2368]
br x16
.word 5138
	.no_dead_strip plt__rgctx_fetch_5
plt__rgctx_fetch_5:
_p_121:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2376]
br x16
.word 5155
	.no_dead_strip plt__rgctx_fetch_6
plt__rgctx_fetch_6:
_p_122:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2384]
br x16
.word 5270
	.no_dead_strip plt__rgctx_fetch_7
plt__rgctx_fetch_7:
_p_123:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2392]
br x16
.word 5278
	.no_dead_strip plt__rgctx_fetch_8
plt__rgctx_fetch_8:
_p_124:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2400]
br x16
.word 5286
	.no_dead_strip plt__jit_icall_mono_object_castclass_unbox
plt__jit_icall_mono_object_castclass_unbox:
_p_125:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2408]
br x16
.word 5294
	.no_dead_strip plt__jit_icall_mono_arch_rethrow_exception
plt__jit_icall_mono_arch_rethrow_exception:
_p_126:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2416]
br x16
.word 5324
	.no_dead_strip plt__jit_icall_mono_thread_interruption_checkpoint
plt__jit_icall_mono_thread_interruption_checkpoint:
_p_127:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2424]
br x16
.word 5354
	.no_dead_strip plt__rgctx_fetch_9
plt__rgctx_fetch_9:
_p_128:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2432]
br x16
.word 5392
	.no_dead_strip plt_wrapper_castclass_object___isinst_with_cache_object_intptr_intptr
plt_wrapper_castclass_object___isinst_with_cache_object_intptr_intptr:
_p_129:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2440]
br x16
.word 5400
	.no_dead_strip plt__rgctx_fetch_10
plt__rgctx_fetch_10:
_p_130:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2448]
br x16
.word 5408
	.no_dead_strip plt__rgctx_fetch_11
plt__rgctx_fetch_11:
_p_131:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2456]
br x16
.word 5416
	.no_dead_strip plt__rgctx_fetch_12
plt__rgctx_fetch_12:
_p_132:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2464]
br x16
.word 5424
	.no_dead_strip plt__rgctx_fetch_13
plt__rgctx_fetch_13:
_p_133:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2472]
br x16
.word 5454
	.no_dead_strip plt__rgctx_fetch_14
plt__rgctx_fetch_14:
_p_134:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2480]
br x16
.word 5462
	.no_dead_strip plt__rgctx_fetch_15
plt__rgctx_fetch_15:
_p_135:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2488]
br x16
.word 5492
	.no_dead_strip plt__rgctx_fetch_16
plt__rgctx_fetch_16:
_p_136:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2496]
br x16
.word 5500
	.no_dead_strip plt__rgctx_fetch_17
plt__rgctx_fetch_17:
_p_137:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2504]
br x16
.word 5530
	.no_dead_strip plt__rgctx_fetch_18
plt__rgctx_fetch_18:
_p_138:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2512]
br x16
.word 5538
	.no_dead_strip plt__rgctx_fetch_19
plt__rgctx_fetch_19:
_p_139:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2520]
br x16
.word 5568
	.no_dead_strip plt__rgctx_fetch_20
plt__rgctx_fetch_20:
_p_140:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2528]
br x16
.word 5576
	.no_dead_strip plt__rgctx_fetch_21
plt__rgctx_fetch_21:
_p_141:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2536]
br x16
.word 5606
	.no_dead_strip plt__rgctx_fetch_22
plt__rgctx_fetch_22:
_p_142:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2544]
br x16
.word 5614
	.no_dead_strip plt__rgctx_fetch_23
plt__rgctx_fetch_23:
_p_143:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2552]
br x16
.word 5633
	.no_dead_strip plt__rgctx_fetch_24
plt__rgctx_fetch_24:
_p_144:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2560]
br x16
.word 5641
	.no_dead_strip plt__rgctx_fetch_25
plt__rgctx_fetch_25:
_p_145:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2568]
br x16
.word 5649
	.no_dead_strip plt__rgctx_fetch_26
plt__rgctx_fetch_26:
_p_146:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2576]
br x16
.word 5657
	.no_dead_strip plt__rgctx_fetch_27
plt__rgctx_fetch_27:
_p_147:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2584]
br x16
.word 5665
	.no_dead_strip plt__rgctx_fetch_28
plt__rgctx_fetch_28:
_p_148:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2592]
br x16
.word 5673
	.no_dead_strip plt__jit_icall_mono_helper_ldstr_mscorlib
plt__jit_icall_mono_helper_ldstr_mscorlib:
_p_149:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2600]
br x16
.word 5692
	.no_dead_strip plt_SR_Format_string_object
plt_SR_Format_string_object:
_p_150:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2608]
br x16
.word 5721
	.no_dead_strip plt__rgctx_fetch_29
plt__rgctx_fetch_29:
_p_151:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2616]
br x16
.word 5733
	.no_dead_strip plt__rgctx_fetch_30
plt__rgctx_fetch_30:
_p_152:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2624]
br x16
.word 5741
	.no_dead_strip plt__rgctx_fetch_31
plt__rgctx_fetch_31:
_p_153:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2632]
br x16
.word 5767
	.no_dead_strip plt__rgctx_fetch_32
plt__rgctx_fetch_32:
_p_154:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2640]
br x16
.word 5775
	.no_dead_strip plt__rgctx_fetch_33
plt__rgctx_fetch_33:
_p_155:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2648]
br x16
.word 5801
	.no_dead_strip plt__rgctx_fetch_34
plt__rgctx_fetch_34:
_p_156:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2656]
br x16
.word 5809
	.no_dead_strip plt__rgctx_fetch_35
plt__rgctx_fetch_35:
_p_157:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2664]
br x16
.word 5835
	.no_dead_strip plt__rgctx_fetch_36
plt__rgctx_fetch_36:
_p_158:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2672]
br x16
.word 5843
	.no_dead_strip plt__rgctx_fetch_37
plt__rgctx_fetch_37:
_p_159:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2680]
br x16
.word 5869
	.no_dead_strip plt__rgctx_fetch_38
plt__rgctx_fetch_38:
_p_160:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2688]
br x16
.word 5877
	.no_dead_strip plt__rgctx_fetch_39
plt__rgctx_fetch_39:
_p_161:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2696]
br x16
.word 5896
	.no_dead_strip plt__rgctx_fetch_40
plt__rgctx_fetch_40:
_p_162:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2704]
br x16
.word 5910
	.no_dead_strip plt__rgctx_fetch_41
plt__rgctx_fetch_41:
_p_163:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2712]
br x16
.word 5924
	.no_dead_strip plt__rgctx_fetch_42
plt__rgctx_fetch_42:
_p_164:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2720]
br x16
.word 5938
	.no_dead_strip plt__rgctx_fetch_43
plt__rgctx_fetch_43:
_p_165:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2728]
br x16
.word 5952
	.no_dead_strip plt__rgctx_fetch_44
plt__rgctx_fetch_44:
_p_166:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2736]
br x16
.word 5966
	.no_dead_strip plt__rgctx_fetch_45
plt__rgctx_fetch_45:
_p_167:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2744]
br x16
.word 5980
	.no_dead_strip plt__rgctx_fetch_46
plt__rgctx_fetch_46:
_p_168:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2752]
br x16
.word 5994
	.no_dead_strip plt__rgctx_fetch_47
plt__rgctx_fetch_47:
_p_169:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2760]
br x16
.word 6008
	.no_dead_strip plt__rgctx_fetch_48
plt__rgctx_fetch_48:
_p_170:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2768]
br x16
.word 6022
	.no_dead_strip plt__rgctx_fetch_49
plt__rgctx_fetch_49:
_p_171:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2776]
br x16
.word 6036
	.no_dead_strip plt__rgctx_fetch_50
plt__rgctx_fetch_50:
_p_172:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2784]
br x16
.word 6055
	.no_dead_strip plt__rgctx_fetch_51
plt__rgctx_fetch_51:
_p_173:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2792]
br x16
.word 6069
	.no_dead_strip plt__rgctx_fetch_52
plt__rgctx_fetch_52:
_p_174:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2800]
br x16
.word 6083
	.no_dead_strip plt__rgctx_fetch_53
plt__rgctx_fetch_53:
_p_175:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2808]
br x16
.word 6097
	.no_dead_strip plt__rgctx_fetch_54
plt__rgctx_fetch_54:
_p_176:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2816]
br x16
.word 6111
	.no_dead_strip plt__rgctx_fetch_55
plt__rgctx_fetch_55:
_p_177:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2824]
br x16
.word 6125
	.no_dead_strip plt__rgctx_fetch_56
plt__rgctx_fetch_56:
_p_178:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2832]
br x16
.word 6139
	.no_dead_strip plt__rgctx_fetch_57
plt__rgctx_fetch_57:
_p_179:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2840]
br x16
.word 6153
	.no_dead_strip plt__rgctx_fetch_58
plt__rgctx_fetch_58:
_p_180:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2848]
br x16
.word 6167
	.no_dead_strip plt__rgctx_fetch_59
plt__rgctx_fetch_59:
_p_181:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2856]
br x16
.word 6181
	.no_dead_strip plt_string_Concat_string__
plt_string_Concat_string__:
_p_182:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2864]
br x16
.word 6195
	.no_dead_strip plt__rgctx_fetch_60
plt__rgctx_fetch_60:
_p_183:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2872]
br x16
.word 6200
	.no_dead_strip plt__rgctx_fetch_61
plt__rgctx_fetch_61:
_p_184:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2880]
br x16
.word 6220
	.no_dead_strip plt__rgctx_fetch_62
plt__rgctx_fetch_62:
_p_185:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2888]
br x16
.word 6240
	.no_dead_strip plt__rgctx_fetch_63
plt__rgctx_fetch_63:
_p_186:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2896]
br x16
.word 6248
	.no_dead_strip plt__rgctx_fetch_64
plt__rgctx_fetch_64:
_p_187:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2904]
br x16
.word 6267
	.no_dead_strip plt__rgctx_fetch_65
plt__rgctx_fetch_65:
_p_188:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2912]
br x16
.word 6297
	.no_dead_strip plt__rgctx_fetch_66
plt__rgctx_fetch_66:
_p_189:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2920]
br x16
.word 6305
	.no_dead_strip plt__rgctx_fetch_67
plt__rgctx_fetch_67:
_p_190:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2928]
br x16
.word 6320
	.no_dead_strip plt__rgctx_fetch_68
plt__rgctx_fetch_68:
_p_191:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2936]
br x16
.word 6328
	.no_dead_strip plt_System_Linq_OrderedEnumerable_2_UIKit_UIWindow_System_nfloat__ctor_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool_System_Linq_OrderedEnumerable_1_UIKit_UIWindow
plt_System_Linq_OrderedEnumerable_2_UIKit_UIWindow_System_nfloat__ctor_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool_System_Linq_OrderedEnumerable_1_UIKit_UIWindow:
_p_192:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2944]
br x16
.word 6347
	.no_dead_strip plt__rgctx_fetch_69
plt__rgctx_fetch_69:
_p_193:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2952]
br x16
.word 6362
	.no_dead_strip plt__rgctx_fetch_70
plt__rgctx_fetch_70:
_p_194:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2960]
br x16
.word 6370
	.no_dead_strip plt__rgctx_fetch_71
plt__rgctx_fetch_71:
_p_195:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2968]
br x16
.word 6378
	.no_dead_strip plt__rgctx_fetch_72
plt__rgctx_fetch_72:
_p_196:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2976]
br x16
.word 6397
	.no_dead_strip plt__rgctx_fetch_73
plt__rgctx_fetch_73:
_p_197:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2984]
br x16
.word 6405
	.no_dead_strip plt__rgctx_fetch_74
plt__rgctx_fetch_74:
_p_198:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #2992]
br x16
.word 6413
	.no_dead_strip plt__rgctx_fetch_75
plt__rgctx_fetch_75:
_p_199:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3000]
br x16
.word 6432
	.no_dead_strip plt__rgctx_fetch_76
plt__rgctx_fetch_76:
_p_200:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3008]
br x16
.word 6440
	.no_dead_strip plt__rgctx_fetch_77
plt__rgctx_fetch_77:
_p_201:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3016]
br x16
.word 6448
	.no_dead_strip plt__rgctx_fetch_78
plt__rgctx_fetch_78:
_p_202:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3024]
br x16
.word 6467
	.no_dead_strip plt__rgctx_fetch_79
plt__rgctx_fetch_79:
_p_203:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3032]
br x16
.word 6475
	.no_dead_strip plt__rgctx_fetch_80
plt__rgctx_fetch_80:
_p_204:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3040]
br x16
.word 6483
	.no_dead_strip plt_System_Collections_Generic_Comparer_1_System_nfloat_get_Default
plt_System_Collections_Generic_Comparer_1_System_nfloat_get_Default:
_p_205:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3048]
br x16
.word 6502
	.no_dead_strip plt_System_Linq_Error_ArgumentNull_string
plt_System_Linq_Error_ArgumentNull_string:
_p_206:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3056]
br x16
.word 6517
	.no_dead_strip plt_System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat__ctor_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool_System_Linq_EnumerableSorter_1_UIKit_UIWindow
plt_System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat__ctor_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool_System_Linq_EnumerableSorter_1_UIKit_UIWindow:
_p_207:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3064]
br x16
.word 6522
	.no_dead_strip plt_System_Linq_CachingComparerWithChild_2_UIKit_UIWindow_System_nfloat__ctor_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool_System_Linq_CachingComparer_1_UIKit_UIWindow
plt_System_Linq_CachingComparerWithChild_2_UIKit_UIWindow_System_nfloat__ctor_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool_System_Linq_CachingComparer_1_UIKit_UIWindow:
_p_208:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3072]
br x16
.word 6537
	.no_dead_strip plt_System_Linq_CachingComparer_2_UIKit_UIWindow_System_nfloat__ctor_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool
plt_System_Linq_CachingComparer_2_UIKit_UIWindow_System_nfloat__ctor_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool:
_p_209:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3080]
br x16
.word 6552
	.no_dead_strip plt__rgctx_fetch_81
plt__rgctx_fetch_81:
_p_210:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3088]
br x16
.word 6567
	.no_dead_strip plt__rgctx_fetch_82
plt__rgctx_fetch_82:
_p_211:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3096]
br x16
.word 6575
	.no_dead_strip plt__rgctx_fetch_83
plt__rgctx_fetch_83:
_p_212:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3104]
br x16
.word 6590
	.no_dead_strip plt_System_RuntimeType_CreateInstanceForAnotherGenericParameter_System_Type_System_RuntimeType
plt_System_RuntimeType_CreateInstanceForAnotherGenericParameter_System_Type_System_RuntimeType:
_p_213:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3112]
br x16
.word 6598
	.no_dead_strip plt_System_Enum_GetUnderlyingType_System_Type
plt_System_Enum_GetUnderlyingType_System_Type:
_p_214:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3120]
br x16
.word 6603
	.no_dead_strip plt_System_Type_GetTypeCode_System_Type
plt_System_Type_GetTypeCode_System_Type:
_p_215:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3128]
br x16
.word 6608
	.no_dead_strip plt__rgctx_fetch_84
plt__rgctx_fetch_84:
_p_216:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3136]
br x16
.word 6620
	.no_dead_strip plt__rgctx_fetch_85
plt__rgctx_fetch_85:
_p_217:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3144]
br x16
.word 6628
	.no_dead_strip plt__rgctx_fetch_86
plt__rgctx_fetch_86:
_p_218:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3152]
br x16
.word 6647
	.no_dead_strip plt__rgctx_fetch_87
plt__rgctx_fetch_87:
_p_219:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3160]
br x16
.word 6655
	.no_dead_strip plt__rgctx_fetch_88
plt__rgctx_fetch_88:
_p_220:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3168]
br x16
.word 6670
	.no_dead_strip plt__rgctx_fetch_89
plt__rgctx_fetch_89:
_p_221:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3176]
br x16
.word 6685
	.no_dead_strip plt__rgctx_fetch_90
plt__rgctx_fetch_90:
_p_222:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3184]
br x16
.word 6693
	.no_dead_strip plt__rgctx_fetch_91
plt__rgctx_fetch_91:
_p_223:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3192]
br x16
.word 6712
	.no_dead_strip plt__rgctx_fetch_92
plt__rgctx_fetch_92:
_p_224:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3200]
br x16
.word 6727
	.no_dead_strip plt__rgctx_fetch_93
plt__rgctx_fetch_93:
_p_225:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3208]
br x16
.word 6735
	.no_dead_strip plt__rgctx_fetch_94
plt__rgctx_fetch_94:
_p_226:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3216]
br x16
.word 6750
	.no_dead_strip plt__rgctx_fetch_95
plt__rgctx_fetch_95:
_p_227:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3224]
br x16
.word 6758
	.no_dead_strip plt__rgctx_fetch_96
plt__rgctx_fetch_96:
_p_228:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3232]
br x16
.word 6777
	.no_dead_strip plt__rgctx_fetch_97
plt__rgctx_fetch_97:
_p_229:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3240]
br x16
.word 6792
	.no_dead_strip plt__rgctx_fetch_98
plt__rgctx_fetch_98:
_p_230:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3248]
br x16
.word 6800
	.no_dead_strip plt__rgctx_fetch_99
plt__rgctx_fetch_99:
_p_231:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3256]
br x16
.word 6815
	.no_dead_strip plt__rgctx_fetch_100
plt__rgctx_fetch_100:
_p_232:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3264]
br x16
.word 6823
	.no_dead_strip plt_System_Collections_Generic_Comparer_1_System_nfloat_CreateComparer
plt_System_Collections_Generic_Comparer_1_System_nfloat_CreateComparer:
_p_233:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3272]
br x16
.word 6842
	.no_dead_strip plt_System_ThrowHelper_ThrowArgumentException_System_ExceptionResource
plt_System_ThrowHelper_ThrowArgumentException_System_ExceptionResource:
_p_234:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3280]
br x16
.word 6857
	.no_dead_strip plt_System_nfloat_CompareTo_System_nfloat
plt_System_nfloat_CompareTo_System_nfloat:
_p_235:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3288]
br x16
.word 6862
	.no_dead_strip plt__jit_icall_mono_ldvirtfn
plt__jit_icall_mono_ldvirtfn:
_p_236:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3296]
br x16
.word 6867
	.no_dead_strip plt_System_Comparison_1_int__ctor_object_intptr
plt_System_Comparison_1_int__ctor_object_intptr:
_p_237:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3304]
br x16
.word 6883
	.no_dead_strip plt_System_Collections_Generic_Comparer_1_int_Create_System_Comparison_1_int
plt_System_Collections_Generic_Comparer_1_int_Create_System_Comparison_1_int:
_p_238:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3312]
br x16
.word 6898
	.no_dead_strip plt_System_Array_Sort_int_int___int_int_System_Collections_Generic_IComparer_1_int
plt_System_Array_Sort_int_int___int_int_System_Collections_Generic_IComparer_1_int:
_p_239:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3320]
br x16
.word 6913
	.no_dead_strip plt_System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_CompareKeys_int_int
plt_System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_CompareKeys_int_int:
_p_240:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3328]
br x16
.word 6929
	.no_dead_strip plt_System_Linq_CachingComparer_2_UIKit_UIWindow_System_nfloat_SetElement_UIKit_UIWindow
plt_System_Linq_CachingComparer_2_UIKit_UIWindow_System_nfloat_SetElement_UIKit_UIWindow:
_p_241:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3336]
br x16
.word 6944
	.no_dead_strip plt_System_Collections_Comparer_Compare_object_object
plt_System_Collections_Comparer_Compare_object_object:
_p_242:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3344]
br x16
.word 6959
	.no_dead_strip plt__rgctx_fetch_101
plt__rgctx_fetch_101:
_p_243:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3352]
br x16
.word 6986
	.no_dead_strip plt__rgctx_fetch_102
plt__rgctx_fetch_102:
_p_244:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3360]
br x16
.word 6994
	.no_dead_strip plt__rgctx_fetch_103
plt__rgctx_fetch_103:
_p_245:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3368]
br x16
.word 7013
	.no_dead_strip plt__rgctx_fetch_104
plt__rgctx_fetch_104:
_p_246:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3376]
br x16
.word 7039
	.no_dead_strip plt__rgctx_fetch_105
plt__rgctx_fetch_105:
_p_247:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3384]
br x16
.word 7047
	.no_dead_strip plt__rgctx_fetch_106
plt__rgctx_fetch_106:
_p_248:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3392]
br x16
.word 7066
	.no_dead_strip plt__rgctx_fetch_107
plt__rgctx_fetch_107:
_p_249:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3400]
br x16
.word 7074
	.no_dead_strip plt__rgctx_fetch_108
plt__rgctx_fetch_108:
_p_250:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3408]
br x16
.word 7089
	.no_dead_strip plt__rgctx_fetch_109
plt__rgctx_fetch_109:
_p_251:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3416]
br x16
.word 7113
	.no_dead_strip plt__rgctx_fetch_110
plt__rgctx_fetch_110:
_p_252:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3424]
br x16
.word 7128
	.no_dead_strip plt__rgctx_fetch_111
plt__rgctx_fetch_111:
_p_253:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3432]
br x16
.word 7136
	.no_dead_strip plt__rgctx_fetch_112
plt__rgctx_fetch_112:
_p_254:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3440]
br x16
.word 7162
	.no_dead_strip plt__jit_icall_mono_ldvirtfn_gshared
plt__jit_icall_mono_ldvirtfn_gshared:
_p_255:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3448]
br x16
.word 7181
	.no_dead_strip plt__rgctx_fetch_113
plt__rgctx_fetch_113:
_p_256:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3456]
br x16
.word 7211
	.no_dead_strip plt__rgctx_fetch_114
plt__rgctx_fetch_114:
_p_257:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3464]
br x16
.word 7219
	.no_dead_strip plt__rgctx_fetch_115
plt__rgctx_fetch_115:
_p_258:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3472]
br x16
.word 7238
	.no_dead_strip plt__rgctx_fetch_116
plt__rgctx_fetch_116:
_p_259:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3480]
br x16
.word 7246
	.no_dead_strip plt_System_Collections_Generic_IntrospectiveSortUtilities_ThrowOrIgnoreBadComparer_object
plt_System_Collections_Generic_IntrospectiveSortUtilities_ThrowOrIgnoreBadComparer_object:
_p_260:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3488]
br x16
.word 7265
	.no_dead_strip plt__jit_icall_mono_thread_get_undeniable_exception
plt__jit_icall_mono_thread_get_undeniable_exception:
_p_261:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3496]
br x16
.word 7270
	.no_dead_strip plt__jit_icall_mono_helper_newobj_mscorlib
plt__jit_icall_mono_helper_newobj_mscorlib:
_p_262:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3504]
br x16
.word 7309
	.no_dead_strip plt_System_InvalidOperationException__ctor_string_System_Exception
plt_System_InvalidOperationException__ctor_string_System_Exception:
_p_263:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3512]
br x16
.word 7339
	.no_dead_strip plt__rgctx_fetch_117
plt__rgctx_fetch_117:
_p_264:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3520]
br x16
.word 7344
	.no_dead_strip plt__rgctx_fetch_118
plt__rgctx_fetch_118:
_p_265:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3528]
br x16
.word 7352
	.no_dead_strip plt__rgctx_fetch_119
plt__rgctx_fetch_119:
_p_266:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3536]
br x16
.word 7371
	.no_dead_strip plt__rgctx_fetch_120
plt__rgctx_fetch_120:
_p_267:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3544]
br x16
.word 7390
	.no_dead_strip plt__rgctx_fetch_121
plt__rgctx_fetch_121:
_p_268:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3552]
br x16
.word 7409
	.no_dead_strip plt__rgctx_fetch_122
plt__rgctx_fetch_122:
_p_269:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3560]
br x16
.word 7428
	.no_dead_strip plt__rgctx_fetch_123
plt__rgctx_fetch_123:
_p_270:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3568]
br x16
.word 7447
	.no_dead_strip plt__rgctx_fetch_124
plt__rgctx_fetch_124:
_p_271:
adrp x16, mono_aot_Xamarin_Essentials_got@PAGE+0
add x16, x16, mono_aot_Xamarin_Essentials_got@PAGEOFF
ldr x16, [x16, #3576]
br x16
.word 7466
plt_end:
.section __DATA, __bss
	.align 3
.lcomm mono_aot_Xamarin_Essentials_got, 3584
got_end:
.section __TEXT, __const
	.align 3
Lglobals_hash:

	.short 11, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 1, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0
.section __TEXT, __const
	.align 2
name_0:
	.asciz "_unbox_trampoline_p"
.data
	.align 3
globals:
	.align 3
	.quad Lglobals_hash
	.align 3
	.quad name_0
	.align 3
	.quad _unbox_trampoline_p

	.long 0,0
.section __TEXT, __const
	.align 2
runtime_version:
	.asciz ""
.section __TEXT, __const
	.align 2
assembly_guid:
	.asciz "6161CCED-7006-4A27-A0E1-3BA167ADD0C5"
.section __TEXT, __const
	.align 2
assembly_name:
	.asciz "Xamarin.Essentials"
.data
	.align 3
_mono_aot_file_info:

	.long 156,0
	.align 3
	.quad mono_aot_Xamarin_Essentials_got
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad jit_code_start
	.align 3
	.quad jit_code_end
	.align 3
	.quad method_addresses
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad mem_end
	.align 3
	.quad assembly_guid
	.align 3
	.quad runtime_version
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad globals
	.align 3
	.quad assembly_name
	.align 3
	.quad plt
	.align 3
	.quad plt_end
	.align 3
	.quad unwind_info
	.align 3
	.quad unbox_trampolines
	.align 3
	.quad unbox_trampolines_end
	.align 3
	.quad unbox_trampoline_addresses

	.long 176,3584,272,196,16,98,387000831,0
	.long 11162,128,8,8,8,9,8388607,0
	.long 28,15928,0,0,4760,4400,3616,0
	.long 4032,4360,3784,0,2608,320,4752,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0
	.byte 104,167,66,73,22,220,159,128,50,16,40,24,153,72,7,148
	.globl _mono_aot_module_Xamarin_Essentials_info
	.align 3
_mono_aot_module_Xamarin_Essentials_info:
	.align 3
	.quad _mono_aot_file_info
.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.AppInfo:get_PackageName"
	.asciz "Xamarin_Essentials_AppInfo_get_PackageName"

	.byte 1,7
	.quad Xamarin_Essentials_AppInfo_get_PackageName
	.quad Lme_0

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM4=Lfde0_end - Lfde0_start
	.long LDIFF_SYM4
Lfde0_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_AppInfo_get_PackageName

LDIFF_SYM5=Lme_0 - Xamarin_Essentials_AppInfo_get_PackageName
	.long LDIFF_SYM5
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde0_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.AppInfo:get_VersionString"
	.asciz "Xamarin_Essentials_AppInfo_get_VersionString"

	.byte 1,11
	.quad Xamarin_Essentials_AppInfo_get_VersionString
	.quad Lme_1

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM6=Lfde1_end - Lfde1_start
	.long LDIFF_SYM6
Lfde1_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_AppInfo_get_VersionString

LDIFF_SYM7=Lme_1 - Xamarin_Essentials_AppInfo_get_VersionString
	.long LDIFF_SYM7
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde1_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.AppInfo:get_BuildString"
	.asciz "Xamarin_Essentials_AppInfo_get_BuildString"

	.byte 1,15
	.quad Xamarin_Essentials_AppInfo_get_BuildString
	.quad Lme_2

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM8=Lfde2_end - Lfde2_start
	.long LDIFF_SYM8
Lfde2_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_AppInfo_get_BuildString

LDIFF_SYM9=Lme_2 - Xamarin_Essentials_AppInfo_get_BuildString
	.long LDIFF_SYM9
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde2_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.AppInfo:PlatformGetPackageName"
	.asciz "Xamarin_Essentials_AppInfo_PlatformGetPackageName"

	.byte 2,8
	.quad Xamarin_Essentials_AppInfo_PlatformGetPackageName
	.quad Lme_3

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM10=Lfde3_end - Lfde3_start
	.long LDIFF_SYM10
Lfde3_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_AppInfo_PlatformGetPackageName

LDIFF_SYM11=Lme_3 - Xamarin_Essentials_AppInfo_PlatformGetPackageName
	.long LDIFF_SYM11
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde3_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.AppInfo:PlatformGetVersionString"
	.asciz "Xamarin_Essentials_AppInfo_PlatformGetVersionString"

	.byte 2,12
	.quad Xamarin_Essentials_AppInfo_PlatformGetVersionString
	.quad Lme_4

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM12=Lfde4_end - Lfde4_start
	.long LDIFF_SYM12
Lfde4_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_AppInfo_PlatformGetVersionString

LDIFF_SYM13=Lme_4 - Xamarin_Essentials_AppInfo_PlatformGetVersionString
	.long LDIFF_SYM13
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde4_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.AppInfo:PlatformGetBuild"
	.asciz "Xamarin_Essentials_AppInfo_PlatformGetBuild"

	.byte 2,14
	.quad Xamarin_Essentials_AppInfo_PlatformGetBuild
	.quad Lme_5

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM14=Lfde5_end - Lfde5_start
	.long LDIFF_SYM14
Lfde5_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_AppInfo_PlatformGetBuild

LDIFF_SYM15=Lme_5 - Xamarin_Essentials_AppInfo_PlatformGetBuild
	.long LDIFF_SYM15
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde5_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.AppInfo:GetBundleValue"
	.asciz "Xamarin_Essentials_AppInfo_GetBundleValue_string"

	.byte 2,17
	.quad Xamarin_Essentials_AppInfo_GetBundleValue_string
	.quad Lme_6

	.byte 2,118,16,3
	.asciz "key"

LDIFF_SYM16=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM16
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM17=Lfde6_end - Lfde6_start
	.long LDIFF_SYM17
Lfde6_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_AppInfo_GetBundleValue_string

LDIFF_SYM18=Lme_6 - Xamarin_Essentials_AppInfo_GetBundleValue_string
	.long LDIFF_SYM18
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde6_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.Flashlight:TurnOnAsync"
	.asciz "Xamarin_Essentials_Flashlight_TurnOnAsync"

	.byte 3,8
	.quad Xamarin_Essentials_Flashlight_TurnOnAsync
	.quad Lme_7

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM19=Lfde7_end - Lfde7_start
	.long LDIFF_SYM19
Lfde7_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_Flashlight_TurnOnAsync

LDIFF_SYM20=Lme_7 - Xamarin_Essentials_Flashlight_TurnOnAsync
	.long LDIFF_SYM20
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde7_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.Flashlight:TurnOffAsync"
	.asciz "Xamarin_Essentials_Flashlight_TurnOffAsync"

	.byte 3,11
	.quad Xamarin_Essentials_Flashlight_TurnOffAsync
	.quad Lme_8

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM21=Lfde8_end - Lfde8_start
	.long LDIFF_SYM21
Lfde8_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_Flashlight_TurnOffAsync

LDIFF_SYM22=Lme_8 - Xamarin_Essentials_Flashlight_TurnOffAsync
	.long LDIFF_SYM22
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde8_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.Flashlight:PlatformTurnOnAsync"
	.asciz "Xamarin_Essentials_Flashlight_PlatformTurnOnAsync"

	.byte 4,10
	.quad Xamarin_Essentials_Flashlight_PlatformTurnOnAsync
	.quad Lme_9

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM23=Lfde9_end - Lfde9_start
	.long LDIFF_SYM23
Lfde9_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_Flashlight_PlatformTurnOnAsync

LDIFF_SYM24=Lme_9 - Xamarin_Essentials_Flashlight_PlatformTurnOnAsync
	.long LDIFF_SYM24
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde9_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.Flashlight:PlatformTurnOffAsync"
	.asciz "Xamarin_Essentials_Flashlight_PlatformTurnOffAsync"

	.byte 4,17
	.quad Xamarin_Essentials_Flashlight_PlatformTurnOffAsync
	.quad Lme_a

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM25=Lfde10_end - Lfde10_start
	.long LDIFF_SYM25
Lfde10_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_Flashlight_PlatformTurnOffAsync

LDIFF_SYM26=Lme_a - Xamarin_Essentials_Flashlight_PlatformTurnOffAsync
	.long LDIFF_SYM26
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde10_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_2:

	.byte 17
	.asciz "System_Object"

	.byte 16,7
	.asciz "System_Object"

LDIFF_SYM27=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM27
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM28=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM28
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM29=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM29
LTDIE_1:

	.byte 5
	.asciz "System_ValueType"

	.byte 16,16
LDIFF_SYM30=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM30
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM31=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM31
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM32=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM32
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM33=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM33
LTDIE_0:

	.byte 5
	.asciz "System_Boolean"

	.byte 17,16
LDIFF_SYM34=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM34
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM35=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM35
	.byte 2,35,16,0,7
	.asciz "System_Boolean"

LDIFF_SYM36=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM36
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM37=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM37
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM38=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM38
LTDIE_5:

	.byte 8
	.asciz "_Flags"

	.byte 1
LDIFF_SYM39=LDIE_U1 - Ldebug_info_start
	.long LDIFF_SYM39
	.byte 9
	.asciz "Disposed"

	.byte 1,9
	.asciz "NativeRef"

	.byte 2,9
	.asciz "IsDirectBinding"

	.byte 4,9
	.asciz "RegisteredToggleRef"

	.byte 8,9
	.asciz "InFinalizerQueue"

	.byte 16,9
	.asciz "HasManagedRef"

	.byte 32,9
	.asciz "IsCustomType"

	.byte 128,127,0,7
	.asciz "_Flags"

LDIFF_SYM40=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM40
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM41=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM41
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM42=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM42
LTDIE_4:

	.byte 5
	.asciz "Foundation_NSObject"

	.byte 40,16
LDIFF_SYM43=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM43
	.byte 2,35,0,6
	.asciz "handle"

LDIFF_SYM44=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM44
	.byte 2,35,16,6
	.asciz "class_handle"

LDIFF_SYM45=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM45
	.byte 2,35,24,6
	.asciz "flags"

LDIFF_SYM46=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM46
	.byte 2,35,32,0,7
	.asciz "Foundation_NSObject"

LDIFF_SYM47=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM47
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM48=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM48
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM49=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM49
LTDIE_3:

	.byte 5
	.asciz "AVFoundation_AVCaptureDevice"

	.byte 40,16
LDIFF_SYM50=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM50
	.byte 2,35,0,0,7
	.asciz "AVFoundation_AVCaptureDevice"

LDIFF_SYM51=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM51
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM52=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM52
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM53=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM53
LTDIE_6:

	.byte 5
	.asciz "Foundation_NSError"

	.byte 40,16
LDIFF_SYM54=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM54
	.byte 2,35,0,0,7
	.asciz "Foundation_NSError"

LDIFF_SYM55=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM55
LTDIE_6_POINTER:

	.byte 13
LDIFF_SYM56=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM56
LTDIE_6_REFERENCE:

	.byte 14
LDIFF_SYM57=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM57
	.byte 2
	.asciz "Xamarin.Essentials.Flashlight:Toggle"
	.asciz "Xamarin_Essentials_Flashlight_Toggle_bool"

	.byte 4,24
	.quad Xamarin_Essentials_Flashlight_Toggle_bool
	.quad Lme_b

	.byte 2,118,16,3
	.asciz "on"

LDIFF_SYM58=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM58
	.byte 2,141,24,11
	.asciz "captureDevice"

LDIFF_SYM59=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM59
	.byte 1,105,11
	.asciz "error"

LDIFF_SYM60=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM60
	.byte 2,141,32,11
	.asciz "torchErr"

LDIFF_SYM61=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM61
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM62=Lfde11_end - Lfde11_start
	.long LDIFF_SYM62
Lfde11_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_Flashlight_Toggle_bool

LDIFF_SYM63=Lme_b - Xamarin_Essentials_Flashlight_Toggle_bool
	.long LDIFF_SYM63
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6
	.align 3
Lfde11_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_8:

	.byte 5
	.asciz "UIKit_UIResponder"

	.byte 40,16
LDIFF_SYM64=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM64
	.byte 2,35,0,0,7
	.asciz "UIKit_UIResponder"

LDIFF_SYM65=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM65
LTDIE_8_POINTER:

	.byte 13
LDIFF_SYM66=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM66
LTDIE_8_REFERENCE:

	.byte 14
LDIFF_SYM67=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM67
LTDIE_7:

	.byte 5
	.asciz "UIKit_UIViewController"

	.byte 48,16
LDIFF_SYM68=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM68
	.byte 2,35,0,6
	.asciz "__mt_WeakTransitioningDelegate_var"

LDIFF_SYM69=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM69
	.byte 2,35,40,0,7
	.asciz "UIKit_UIViewController"

LDIFF_SYM70=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM70
LTDIE_7_POINTER:

	.byte 13
LDIFF_SYM71=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM71
LTDIE_7_REFERENCE:

	.byte 14
LDIFF_SYM72=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM72
LTDIE_10:

	.byte 5
	.asciz "UIKit_UIView"

	.byte 40,16
LDIFF_SYM73=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM73
	.byte 2,35,0,0,7
	.asciz "UIKit_UIView"

LDIFF_SYM74=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM74
LTDIE_10_POINTER:

	.byte 13
LDIFF_SYM75=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM75
LTDIE_10_REFERENCE:

	.byte 14
LDIFF_SYM76=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM76
LTDIE_9:

	.byte 5
	.asciz "UIKit_UIWindow"

	.byte 40,16
LDIFF_SYM77=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM77
	.byte 2,35,0,0,7
	.asciz "UIKit_UIWindow"

LDIFF_SYM78=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM78
LTDIE_9_POINTER:

	.byte 13
LDIFF_SYM79=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM79
LTDIE_9_REFERENCE:

	.byte 14
LDIFF_SYM80=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM80
	.byte 2
	.asciz "Xamarin.Essentials.Platform:GetCurrentViewController"
	.asciz "Xamarin_Essentials_Platform_GetCurrentViewController_bool"

	.byte 5,45
	.quad Xamarin_Essentials_Platform_GetCurrentViewController_bool
	.quad Lme_c

	.byte 2,118,16,3
	.asciz "throwIfNull"

LDIFF_SYM81=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM81
	.byte 2,141,32,11
	.asciz "viewController"

LDIFF_SYM82=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM82
	.byte 1,105,11
	.asciz "window"

LDIFF_SYM83=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM83
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM84=Lfde12_end - Lfde12_start
	.long LDIFF_SYM84
Lfde12_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_Platform_GetCurrentViewController_bool

LDIFF_SYM85=Lme_c - Xamarin_Essentials_Platform_GetCurrentViewController_bool
	.long LDIFF_SYM85
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6,153,5
	.align 3
Lfde12_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.Platform/<>c:.cctor"
	.asciz "Xamarin_Essentials_Platform__c__cctor"

	.byte 0,0
	.quad Xamarin_Essentials_Platform__c__cctor
	.quad Lme_d

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM86=Lfde13_end - Lfde13_start
	.long LDIFF_SYM86
Lfde13_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_Platform__c__cctor

LDIFF_SYM87=Lme_d - Xamarin_Essentials_Platform__c__cctor
	.long LDIFF_SYM87
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde13_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_11:

	.byte 5
	.asciz "_<>c"

	.byte 16,16
LDIFF_SYM88=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM88
	.byte 2,35,0,0,7
	.asciz "_<>c"

LDIFF_SYM89=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM89
LTDIE_11_POINTER:

	.byte 13
LDIFF_SYM90=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM90
LTDIE_11_REFERENCE:

	.byte 14
LDIFF_SYM91=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM91
	.byte 2
	.asciz "Xamarin.Essentials.Platform/<>c:.ctor"
	.asciz "Xamarin_Essentials_Platform__c__ctor"

	.byte 0,0
	.quad Xamarin_Essentials_Platform__c__ctor
	.quad Lme_e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM92=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM92
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM93=Lfde14_end - Lfde14_start
	.long LDIFF_SYM93
Lfde14_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_Platform__c__ctor

LDIFF_SYM94=Lme_e - Xamarin_Essentials_Platform__c__ctor
	.long LDIFF_SYM94
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde14_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.Platform/<>c:<GetCurrentViewController>b__3_0"
	.asciz "Xamarin_Essentials_Platform__c__GetCurrentViewControllerb__3_0_UIKit_UIWindow"

	.byte 5,56
	.quad Xamarin_Essentials_Platform__c__GetCurrentViewControllerb__3_0_UIKit_UIWindow
	.quad Lme_f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM95=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM95
	.byte 0,3
	.asciz "w"

LDIFF_SYM96=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM96
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM97=Lfde15_end - Lfde15_start
	.long LDIFF_SYM97
Lfde15_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_Platform__c__GetCurrentViewControllerb__3_0_UIKit_UIWindow

LDIFF_SYM98=Lme_f - Xamarin_Essentials_Platform__c__GetCurrentViewControllerb__3_0_UIKit_UIWindow
	.long LDIFF_SYM98
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde15_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.Platform/<>c:<GetCurrentViewController>b__3_1"
	.asciz "Xamarin_Essentials_Platform__c__GetCurrentViewControllerb__3_1_UIKit_UIWindow"

	.byte 5,57
	.quad Xamarin_Essentials_Platform__c__GetCurrentViewControllerb__3_1_UIKit_UIWindow
	.quad Lme_10

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM99=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM99
	.byte 0,3
	.asciz "w"

LDIFF_SYM100=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM100
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM101=Lfde16_end - Lfde16_start
	.long LDIFF_SYM101
Lfde16_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_Platform__c__GetCurrentViewControllerb__3_1_UIKit_UIWindow

LDIFF_SYM102=Lme_10 - Xamarin_Essentials_Platform__c__GetCurrentViewControllerb__3_1_UIKit_UIWindow
	.long LDIFF_SYM102
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde16_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.Preferences:GetPrivatePreferencesSharedName"
	.asciz "Xamarin_Essentials_Preferences_GetPrivatePreferencesSharedName_string"

	.byte 6,8
	.quad Xamarin_Essentials_Preferences_GetPrivatePreferencesSharedName_string
	.quad Lme_11

	.byte 2,118,16,3
	.asciz "feature"

LDIFF_SYM103=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM103
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM104=Lfde17_end - Lfde17_start
	.long LDIFF_SYM104
Lfde17_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_Preferences_GetPrivatePreferencesSharedName_string

LDIFF_SYM105=Lme_11 - Xamarin_Essentials_Preferences_GetPrivatePreferencesSharedName_string
	.long LDIFF_SYM105
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde17_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.Preferences:ContainsKey"
	.asciz "Xamarin_Essentials_Preferences_ContainsKey_string_string"

	.byte 6,60
	.quad Xamarin_Essentials_Preferences_ContainsKey_string_string
	.quad Lme_12

	.byte 2,118,16,3
	.asciz "key"

LDIFF_SYM106=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM106
	.byte 2,141,16,3
	.asciz "sharedName"

LDIFF_SYM107=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM107
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM108=Lfde18_end - Lfde18_start
	.long LDIFF_SYM108
Lfde18_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_Preferences_ContainsKey_string_string

LDIFF_SYM109=Lme_12 - Xamarin_Essentials_Preferences_ContainsKey_string_string
	.long LDIFF_SYM109
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde18_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.Preferences:Get"
	.asciz "Xamarin_Essentials_Preferences_Get_string_string_string"

	.byte 6,69
	.quad Xamarin_Essentials_Preferences_Get_string_string_string
	.quad Lme_13

	.byte 2,118,16,3
	.asciz "key"

LDIFF_SYM110=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM110
	.byte 2,141,16,3
	.asciz "defaultValue"

LDIFF_SYM111=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM111
	.byte 2,141,24,3
	.asciz "sharedName"

LDIFF_SYM112=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM112
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM113=Lfde19_end - Lfde19_start
	.long LDIFF_SYM113
Lfde19_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_Preferences_Get_string_string_string

LDIFF_SYM114=Lme_13 - Xamarin_Essentials_Preferences_Get_string_string_string
	.long LDIFF_SYM114
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde19_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.Preferences:Set"
	.asciz "Xamarin_Essentials_Preferences_Set_string_string_string"

	.byte 6,87
	.quad Xamarin_Essentials_Preferences_Set_string_string_string
	.quad Lme_14

	.byte 2,118,16,3
	.asciz "key"

LDIFF_SYM115=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM115
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM116=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM116
	.byte 2,141,24,3
	.asciz "sharedName"

LDIFF_SYM117=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM117
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM118=Lfde20_end - Lfde20_start
	.long LDIFF_SYM118
Lfde20_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_Preferences_Set_string_string_string

LDIFF_SYM119=Lme_14 - Xamarin_Essentials_Preferences_Set_string_string_string
	.long LDIFF_SYM119
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde20_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.Preferences:PlatformContainsKey"
	.asciz "Xamarin_Essentials_Preferences_PlatformContainsKey_string_string"

	.byte 7,13
	.quad Xamarin_Essentials_Preferences_PlatformContainsKey_string_string
	.quad Lme_15

	.byte 2,118,16,3
	.asciz "key"

LDIFF_SYM120=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM120
	.byte 2,141,32,3
	.asciz "sharedName"

LDIFF_SYM121=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM121
	.byte 2,141,40,11
	.asciz "V_0"

LDIFF_SYM122=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM122
	.byte 2,141,48,11
	.asciz "V_1"

LDIFF_SYM123=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM123
	.byte 2,141,56,11
	.asciz "V_2"

LDIFF_SYM124=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM124
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM125=Lfde21_end - Lfde21_start
	.long LDIFF_SYM125
Lfde21_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_Preferences_PlatformContainsKey_string_string

LDIFF_SYM126=Lme_15 - Xamarin_Essentials_Preferences_PlatformContainsKey_string_string
	.long LDIFF_SYM126
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,152,10,68,154,9
	.align 3
Lfde21_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_12:

	.byte 5
	.asciz "Foundation_NSUserDefaults"

	.byte 40,16
LDIFF_SYM127=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM127
	.byte 2,35,0,0,7
	.asciz "Foundation_NSUserDefaults"

LDIFF_SYM128=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM128
LTDIE_12_POINTER:

	.byte 13
LDIFF_SYM129=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM129
LTDIE_12_REFERENCE:

	.byte 14
LDIFF_SYM130=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM130
LTDIE_13:

	.byte 5
	.asciz "System_Int32"

	.byte 20,16
LDIFF_SYM131=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM131
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM132=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM132
	.byte 2,35,16,0,7
	.asciz "System_Int32"

LDIFF_SYM133=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM133
LTDIE_13_POINTER:

	.byte 13
LDIFF_SYM134=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM134
LTDIE_13_REFERENCE:

	.byte 14
LDIFF_SYM135=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM135
LTDIE_14:

	.byte 5
	.asciz "System_Int64"

	.byte 24,16
LDIFF_SYM136=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM136
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM137=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM137
	.byte 2,35,16,0,7
	.asciz "System_Int64"

LDIFF_SYM138=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM138
LTDIE_14_POINTER:

	.byte 13
LDIFF_SYM139=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM139
LTDIE_14_REFERENCE:

	.byte 14
LDIFF_SYM140=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM140
LTDIE_15:

	.byte 5
	.asciz "System_Double"

	.byte 24,16
LDIFF_SYM141=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM141
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM142=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM142
	.byte 2,35,16,0,7
	.asciz "System_Double"

LDIFF_SYM143=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM143
LTDIE_15_POINTER:

	.byte 13
LDIFF_SYM144=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM144
LTDIE_15_REFERENCE:

	.byte 14
LDIFF_SYM145=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM145
LTDIE_16:

	.byte 5
	.asciz "System_Single"

	.byte 20,16
LDIFF_SYM146=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM146
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM147=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM147
	.byte 2,35,16,0,7
	.asciz "System_Single"

LDIFF_SYM148=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM148
LTDIE_16_POINTER:

	.byte 13
LDIFF_SYM149=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM149
LTDIE_16_REFERENCE:

	.byte 14
LDIFF_SYM150=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM150
	.byte 2
	.asciz "Xamarin.Essentials.Preferences:PlatformSet<T_REF>"
	.asciz "Xamarin_Essentials_Preferences_PlatformSet_T_REF_string_T_REF_string"

	.byte 7,50
	.quad Xamarin_Essentials_Preferences_PlatformSet_T_REF_string_T_REF_string
	.quad Lme_16

	.byte 2,118,16,3
	.asciz "key"

LDIFF_SYM151=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM151
	.byte 1,104,3
	.asciz "value"

LDIFF_SYM152=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM152
	.byte 1,105,3
	.asciz "sharedName"

LDIFF_SYM153=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM153
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM154=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM154
	.byte 2,141,56,11
	.asciz "V_1"

LDIFF_SYM155=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM155
	.byte 3,141,192,0,11
	.asciz "userDefaults"

LDIFF_SYM156=LTDIE_12_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM156
	.byte 3,141,200,0,11
	.asciz "V_3"

LDIFF_SYM157=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM157
	.byte 1,106,11
	.asciz "V_4"

LDIFF_SYM158=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM158
	.byte 1,103,11
	.asciz "V_5"

LDIFF_SYM159=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM159
	.byte 1,106,11
	.asciz "V_6"

LDIFF_SYM160=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM160
	.byte 1,106,11
	.asciz "V_7"

LDIFF_SYM161=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM161
	.byte 1,106,11
	.asciz "V_8"

LDIFF_SYM162=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM162
	.byte 3,141,232,0,11
	.asciz "V_9"

LDIFF_SYM163=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM163
	.byte 3,141,224,0,11
	.asciz "valueString"

LDIFF_SYM164=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM164
	.byte 1,106,11
	.asciz "s"

LDIFF_SYM165=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM165
	.byte 1,106,11
	.asciz "i"

LDIFF_SYM166=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM166
	.byte 1,105,11
	.asciz "b"

LDIFF_SYM167=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM167
	.byte 1,105,11
	.asciz "d"

LDIFF_SYM168=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM168
	.byte 3,141,232,0,11
	.asciz "f"

LDIFF_SYM169=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM169
	.byte 3,141,224,0,11
	.asciz "V_16"

LDIFF_SYM170=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM170
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM171=Lfde22_end - Lfde22_start
	.long LDIFF_SYM171
Lfde22_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_Preferences_PlatformSet_T_REF_string_T_REF_string

LDIFF_SYM172=Lme_16 - Xamarin_Essentials_Preferences_PlatformSet_T_REF_string_T_REF_string
	.long LDIFF_SYM172
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,150,18,151,17,68,152,16,153,15,68,154,14
	.align 3
Lfde22_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.Preferences:PlatformGet<T_REF>"
	.asciz "Xamarin_Essentials_Preferences_PlatformGet_T_REF_string_T_REF_string"

	.byte 7,89
	.quad Xamarin_Essentials_Preferences_PlatformGet_T_REF_string_T_REF_string
	.quad Lme_17

	.byte 2,118,16,3
	.asciz "key"

LDIFF_SYM173=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM173
	.byte 1,104,3
	.asciz "defaultValue"

LDIFF_SYM174=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM174
	.byte 1,105,3
	.asciz "sharedName"

LDIFF_SYM175=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM175
	.byte 1,106,11
	.asciz "value"

LDIFF_SYM176=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM176
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM177=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM177
	.byte 3,141,192,0,11
	.asciz "V_2"

LDIFF_SYM178=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM178
	.byte 3,141,200,0,11
	.asciz "userDefaults"

LDIFF_SYM179=LTDIE_12_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM179
	.byte 3,141,208,0,11
	.asciz "V_4"

LDIFF_SYM180=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM180
	.byte 1,106,11
	.asciz "V_5"

LDIFF_SYM181=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM181
	.byte 1,106,11
	.asciz "V_6"

LDIFF_SYM182=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM182
	.byte 1,106,11
	.asciz "V_7"

LDIFF_SYM183=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM183
	.byte 1,106,11
	.asciz "V_8"

LDIFF_SYM184=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM184
	.byte 1,106,11
	.asciz "V_9"

LDIFF_SYM185=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM185
	.byte 3,141,248,0,11
	.asciz "V_10"

LDIFF_SYM186=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM186
	.byte 3,141,240,0,11
	.asciz "V_11"

LDIFF_SYM187=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM187
	.byte 1,106,11
	.asciz "V_12"

LDIFF_SYM188=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM188
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM189=Lfde23_end - Lfde23_start
	.long LDIFF_SYM189
Lfde23_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_Preferences_PlatformGet_T_REF_string_T_REF_string

LDIFF_SYM190=Lme_17 - Xamarin_Essentials_Preferences_PlatformGet_T_REF_string_T_REF_string
	.long LDIFF_SYM190
	.long 0
	.byte 12,31,0,68,14,192,1,157,24,158,23,68,13,29,68,150,22,151,21,68,152,20,153,19,68,154,18
	.align 3
Lfde23_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.Preferences:GetUserDefaults"
	.asciz "Xamarin_Essentials_Preferences_GetUserDefaults_string"

	.byte 7,134,1
	.quad Xamarin_Essentials_Preferences_GetUserDefaults_string
	.quad Lme_18

	.byte 2,118,16,3
	.asciz "sharedName"

LDIFF_SYM191=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM191
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM192=Lfde24_end - Lfde24_start
	.long LDIFF_SYM192
Lfde24_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_Preferences_GetUserDefaults_string

LDIFF_SYM193=Lme_18 - Xamarin_Essentials_Preferences_GetUserDefaults_string
	.long LDIFF_SYM193
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde24_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.Preferences:.cctor"
	.asciz "Xamarin_Essentials_Preferences__cctor"

	.byte 7,9
	.quad Xamarin_Essentials_Preferences__cctor
	.quad Lme_19

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM194=Lfde25_end - Lfde25_start
	.long LDIFF_SYM194
Lfde25_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_Preferences__cctor

LDIFF_SYM195=Lme_19 - Xamarin_Essentials_Preferences__cctor
	.long LDIFF_SYM195
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde25_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_17:

	.byte 5
	.asciz "Xamarin_Essentials_ShareTextRequest"

	.byte 48,16
LDIFF_SYM196=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM196
	.byte 2,35,0,6
	.asciz "<Title>k__BackingField"

LDIFF_SYM197=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM197
	.byte 2,35,16,6
	.asciz "<Subject>k__BackingField"

LDIFF_SYM198=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM198
	.byte 2,35,24,6
	.asciz "<Text>k__BackingField"

LDIFF_SYM199=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM199
	.byte 2,35,32,6
	.asciz "<Uri>k__BackingField"

LDIFF_SYM200=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM200
	.byte 2,35,40,0,7
	.asciz "Xamarin_Essentials_ShareTextRequest"

LDIFF_SYM201=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM201
LTDIE_17_POINTER:

	.byte 13
LDIFF_SYM202=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM202
LTDIE_17_REFERENCE:

	.byte 14
LDIFF_SYM203=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM203
	.byte 2
	.asciz "Xamarin.Essentials.Share:RequestAsync"
	.asciz "Xamarin_Essentials_Share_RequestAsync_Xamarin_Essentials_ShareTextRequest"

	.byte 8,16
	.quad Xamarin_Essentials_Share_RequestAsync_Xamarin_Essentials_ShareTextRequest
	.quad Lme_1a

	.byte 2,118,16,3
	.asciz "request"

LDIFF_SYM204=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM204
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM205=Lfde26_end - Lfde26_start
	.long LDIFF_SYM205
Lfde26_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_Share_RequestAsync_Xamarin_Essentials_ShareTextRequest

LDIFF_SYM206=Lme_1a - Xamarin_Essentials_Share_RequestAsync_Xamarin_Essentials_ShareTextRequest
	.long LDIFF_SYM206
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde26_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_18:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM207=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM207
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM208=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM208
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM209=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM209
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM210=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM210
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM211=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM211
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM212=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM212
LTDIE_18_POINTER:

	.byte 13
LDIFF_SYM213=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM213
LTDIE_18_REFERENCE:

	.byte 14
LDIFF_SYM214=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM214
LTDIE_19:

	.byte 5
	.asciz "UIKit_UIActivityViewController"

	.byte 48,16
LDIFF_SYM215=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM215
	.byte 2,35,0,0,7
	.asciz "UIKit_UIActivityViewController"

LDIFF_SYM216=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM216
LTDIE_19_POINTER:

	.byte 13
LDIFF_SYM217=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM217
LTDIE_19_REFERENCE:

	.byte 14
LDIFF_SYM218=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM218
	.byte 2
	.asciz "Xamarin.Essentials.Share:PlatformRequestAsync"
	.asciz "Xamarin_Essentials_Share_PlatformRequestAsync_Xamarin_Essentials_ShareTextRequest"

	.byte 9,12
	.quad Xamarin_Essentials_Share_PlatformRequestAsync_Xamarin_Essentials_ShareTextRequest
	.quad Lme_1b

	.byte 2,118,16,3
	.asciz "request"

LDIFF_SYM219=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM219
	.byte 1,106,11
	.asciz "items"

LDIFF_SYM220=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM220
	.byte 1,105,11
	.asciz "activityController"

LDIFF_SYM221=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM221
	.byte 1,106,11
	.asciz "vc"

LDIFF_SYM222=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM222
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM223=Lfde27_end - Lfde27_start
	.long LDIFF_SYM223
Lfde27_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_Share_PlatformRequestAsync_Xamarin_Essentials_ShareTextRequest

LDIFF_SYM224=Lme_1b - Xamarin_Essentials_Share_PlatformRequestAsync_Xamarin_Essentials_ShareTextRequest
	.long LDIFF_SYM224
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,149,10,150,9,68,151,8,152,7,68,153,6,154,5
	.align 3
Lfde27_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.ShareTextRequest:.ctor"
	.asciz "Xamarin_Essentials_ShareTextRequest__ctor"

	.byte 8,28
	.quad Xamarin_Essentials_ShareTextRequest__ctor
	.quad Lme_1c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM225=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM225
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM226=Lfde28_end - Lfde28_start
	.long LDIFF_SYM226
Lfde28_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_ShareTextRequest__ctor

LDIFF_SYM227=Lme_1c - Xamarin_Essentials_ShareTextRequest__ctor
	.long LDIFF_SYM227
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde28_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.ShareTextRequest:get_Title"
	.asciz "Xamarin_Essentials_ShareTextRequest_get_Title"

	.byte 8,37
	.quad Xamarin_Essentials_ShareTextRequest_get_Title
	.quad Lme_1d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM228=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM228
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM229=Lfde29_end - Lfde29_start
	.long LDIFF_SYM229
Lfde29_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_ShareTextRequest_get_Title

LDIFF_SYM230=Lme_1d - Xamarin_Essentials_ShareTextRequest_get_Title
	.long LDIFF_SYM230
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde29_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.ShareTextRequest:set_Title"
	.asciz "Xamarin_Essentials_ShareTextRequest_set_Title_string"

	.byte 8,37
	.quad Xamarin_Essentials_ShareTextRequest_set_Title_string
	.quad Lme_1e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM231=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM231
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM232=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM232
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM233=Lfde30_end - Lfde30_start
	.long LDIFF_SYM233
Lfde30_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_ShareTextRequest_set_Title_string

LDIFF_SYM234=Lme_1e - Xamarin_Essentials_ShareTextRequest_set_Title_string
	.long LDIFF_SYM234
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde30_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.ShareTextRequest:set_Subject"
	.asciz "Xamarin_Essentials_ShareTextRequest_set_Subject_string"

	.byte 8,39
	.quad Xamarin_Essentials_ShareTextRequest_set_Subject_string
	.quad Lme_1f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM235=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM235
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM236=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM236
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM237=Lfde31_end - Lfde31_start
	.long LDIFF_SYM237
Lfde31_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_ShareTextRequest_set_Subject_string

LDIFF_SYM238=Lme_1f - Xamarin_Essentials_ShareTextRequest_set_Subject_string
	.long LDIFF_SYM238
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde31_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.ShareTextRequest:get_Text"
	.asciz "Xamarin_Essentials_ShareTextRequest_get_Text"

	.byte 8,41
	.quad Xamarin_Essentials_ShareTextRequest_get_Text
	.quad Lme_20

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM239=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM239
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM240=Lfde32_end - Lfde32_start
	.long LDIFF_SYM240
Lfde32_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_ShareTextRequest_get_Text

LDIFF_SYM241=Lme_20 - Xamarin_Essentials_ShareTextRequest_get_Text
	.long LDIFF_SYM241
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde32_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.ShareTextRequest:set_Text"
	.asciz "Xamarin_Essentials_ShareTextRequest_set_Text_string"

	.byte 8,41
	.quad Xamarin_Essentials_ShareTextRequest_set_Text_string
	.quad Lme_21

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM242=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM242
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM243=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM243
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM244=Lfde33_end - Lfde33_start
	.long LDIFF_SYM244
Lfde33_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_ShareTextRequest_set_Text_string

LDIFF_SYM245=Lme_21 - Xamarin_Essentials_ShareTextRequest_set_Text_string
	.long LDIFF_SYM245
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde33_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.ShareTextRequest:get_Uri"
	.asciz "Xamarin_Essentials_ShareTextRequest_get_Uri"

	.byte 8,43
	.quad Xamarin_Essentials_ShareTextRequest_get_Uri
	.quad Lme_22

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM246=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM246
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM247=Lfde34_end - Lfde34_start
	.long LDIFF_SYM247
Lfde34_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_ShareTextRequest_get_Uri

LDIFF_SYM248=Lme_22 - Xamarin_Essentials_ShareTextRequest_get_Uri
	.long LDIFF_SYM248
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde34_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.ShareTextRequest:set_Uri"
	.asciz "Xamarin_Essentials_ShareTextRequest_set_Uri_string"

	.byte 8,43
	.quad Xamarin_Essentials_ShareTextRequest_set_Uri_string
	.quad Lme_23

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM249=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM249
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM250=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM250
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM251=Lfde35_end - Lfde35_start
	.long LDIFF_SYM251
Lfde35_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_ShareTextRequest_set_Uri_string

LDIFF_SYM252=Lme_23 - Xamarin_Essentials_ShareTextRequest_set_Uri_string
	.long LDIFF_SYM252
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde35_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_21:

	.byte 8
	.asciz "Xamarin_Essentials_DisplayOrientation"

	.byte 4
LDIFF_SYM253=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM253
	.byte 9
	.asciz "Unknown"

	.byte 0,9
	.asciz "Portrait"

	.byte 1,9
	.asciz "Landscape"

	.byte 2,0,7
	.asciz "Xamarin_Essentials_DisplayOrientation"

LDIFF_SYM254=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM254
LTDIE_21_POINTER:

	.byte 13
LDIFF_SYM255=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM255
LTDIE_21_REFERENCE:

	.byte 14
LDIFF_SYM256=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM256
LTDIE_22:

	.byte 8
	.asciz "Xamarin_Essentials_DisplayRotation"

	.byte 4
LDIFF_SYM257=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM257
	.byte 9
	.asciz "Unknown"

	.byte 0,9
	.asciz "Rotation0"

	.byte 1,9
	.asciz "Rotation90"

	.byte 2,9
	.asciz "Rotation180"

	.byte 3,9
	.asciz "Rotation270"

	.byte 4,0,7
	.asciz "Xamarin_Essentials_DisplayRotation"

LDIFF_SYM258=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM258
LTDIE_22_POINTER:

	.byte 13
LDIFF_SYM259=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM259
LTDIE_22_REFERENCE:

	.byte 14
LDIFF_SYM260=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM260
LTDIE_20:

	.byte 5
	.asciz "Xamarin_Essentials_DisplayInfo"

	.byte 48,16
LDIFF_SYM261=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM261
	.byte 2,35,0,6
	.asciz "<Width>k__BackingField"

LDIFF_SYM262=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM262
	.byte 2,35,0,6
	.asciz "<Height>k__BackingField"

LDIFF_SYM263=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM263
	.byte 2,35,8,6
	.asciz "<Density>k__BackingField"

LDIFF_SYM264=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM264
	.byte 2,35,16,6
	.asciz "<Orientation>k__BackingField"

LDIFF_SYM265=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM265
	.byte 2,35,24,6
	.asciz "<Rotation>k__BackingField"

LDIFF_SYM266=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM266
	.byte 2,35,28,0,7
	.asciz "Xamarin_Essentials_DisplayInfo"

LDIFF_SYM267=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM267
LTDIE_20_POINTER:

	.byte 13
LDIFF_SYM268=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM268
LTDIE_20_REFERENCE:

	.byte 14
LDIFF_SYM269=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM269
	.byte 2
	.asciz "Xamarin.Essentials.DisplayInfo:.ctor"
	.asciz "Xamarin_Essentials_DisplayInfo__ctor_double_double_double_Xamarin_Essentials_DisplayOrientation_Xamarin_Essentials_DisplayRotation"

	.byte 10,10
	.quad Xamarin_Essentials_DisplayInfo__ctor_double_double_double_Xamarin_Essentials_DisplayOrientation_Xamarin_Essentials_DisplayRotation
	.quad Lme_24

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM270=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM270
	.byte 1,104,3
	.asciz "width"

LDIFF_SYM271=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM271
	.byte 2,141,24,3
	.asciz "height"

LDIFF_SYM272=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM272
	.byte 2,141,32,3
	.asciz "density"

LDIFF_SYM273=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM273
	.byte 2,141,40,3
	.asciz "orientation"

LDIFF_SYM274=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM274
	.byte 2,141,48,3
	.asciz "rotation"

LDIFF_SYM275=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM275
	.byte 2,141,56,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM276=Lfde36_end - Lfde36_start
	.long LDIFF_SYM276
Lfde36_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_DisplayInfo__ctor_double_double_double_Xamarin_Essentials_DisplayOrientation_Xamarin_Essentials_DisplayRotation

LDIFF_SYM277=Lme_24 - Xamarin_Essentials_DisplayInfo__ctor_double_double_double_Xamarin_Essentials_DisplayOrientation_Xamarin_Essentials_DisplayRotation
	.long LDIFF_SYM277
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6
	.align 3
Lfde36_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.DisplayInfo:get_Width"
	.asciz "Xamarin_Essentials_DisplayInfo_get_Width"

	.byte 10,17
	.quad Xamarin_Essentials_DisplayInfo_get_Width
	.quad Lme_25

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM278=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM278
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM279=Lfde37_end - Lfde37_start
	.long LDIFF_SYM279
Lfde37_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_DisplayInfo_get_Width

LDIFF_SYM280=Lme_25 - Xamarin_Essentials_DisplayInfo_get_Width
	.long LDIFF_SYM280
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde37_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.DisplayInfo:get_Height"
	.asciz "Xamarin_Essentials_DisplayInfo_get_Height"

	.byte 10,19
	.quad Xamarin_Essentials_DisplayInfo_get_Height
	.quad Lme_26

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM281=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM281
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM282=Lfde38_end - Lfde38_start
	.long LDIFF_SYM282
Lfde38_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_DisplayInfo_get_Height

LDIFF_SYM283=Lme_26 - Xamarin_Essentials_DisplayInfo_get_Height
	.long LDIFF_SYM283
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde38_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.DisplayInfo:get_Density"
	.asciz "Xamarin_Essentials_DisplayInfo_get_Density"

	.byte 10,21
	.quad Xamarin_Essentials_DisplayInfo_get_Density
	.quad Lme_27

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM284=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM284
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM285=Lfde39_end - Lfde39_start
	.long LDIFF_SYM285
Lfde39_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_DisplayInfo_get_Density

LDIFF_SYM286=Lme_27 - Xamarin_Essentials_DisplayInfo_get_Density
	.long LDIFF_SYM286
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde39_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.DisplayInfo:get_Orientation"
	.asciz "Xamarin_Essentials_DisplayInfo_get_Orientation"

	.byte 10,23
	.quad Xamarin_Essentials_DisplayInfo_get_Orientation
	.quad Lme_28

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM287=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM287
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM288=Lfde40_end - Lfde40_start
	.long LDIFF_SYM288
Lfde40_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_DisplayInfo_get_Orientation

LDIFF_SYM289=Lme_28 - Xamarin_Essentials_DisplayInfo_get_Orientation
	.long LDIFF_SYM289
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde40_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.DisplayInfo:get_Rotation"
	.asciz "Xamarin_Essentials_DisplayInfo_get_Rotation"

	.byte 10,25
	.quad Xamarin_Essentials_DisplayInfo_get_Rotation
	.quad Lme_29

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM290=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM290
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM291=Lfde41_end - Lfde41_start
	.long LDIFF_SYM291
Lfde41_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_DisplayInfo_get_Rotation

LDIFF_SYM292=Lme_29 - Xamarin_Essentials_DisplayInfo_get_Rotation
	.long LDIFF_SYM292
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde41_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.DisplayInfo:op_Equality"
	.asciz "Xamarin_Essentials_DisplayInfo_op_Equality_Xamarin_Essentials_DisplayInfo_Xamarin_Essentials_DisplayInfo"

	.byte 10,28
	.quad Xamarin_Essentials_DisplayInfo_op_Equality_Xamarin_Essentials_DisplayInfo_Xamarin_Essentials_DisplayInfo
	.quad Lme_2a

	.byte 2,118,16,3
	.asciz "left"

LDIFF_SYM293=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM293
	.byte 1,80,3
	.asciz "right"

LDIFF_SYM294=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM294
	.byte 1,80,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM295=Lfde42_end - Lfde42_start
	.long LDIFF_SYM295
Lfde42_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_DisplayInfo_op_Equality_Xamarin_Essentials_DisplayInfo_Xamarin_Essentials_DisplayInfo

LDIFF_SYM296=Lme_2a - Xamarin_Essentials_DisplayInfo_op_Equality_Xamarin_Essentials_DisplayInfo_Xamarin_Essentials_DisplayInfo
	.long LDIFF_SYM296
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde42_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.DisplayInfo:op_Inequality"
	.asciz "Xamarin_Essentials_DisplayInfo_op_Inequality_Xamarin_Essentials_DisplayInfo_Xamarin_Essentials_DisplayInfo"

	.byte 10,31
	.quad Xamarin_Essentials_DisplayInfo_op_Inequality_Xamarin_Essentials_DisplayInfo_Xamarin_Essentials_DisplayInfo
	.quad Lme_2b

	.byte 2,118,16,3
	.asciz "left"

LDIFF_SYM297=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM297
	.byte 1,80,3
	.asciz "right"

LDIFF_SYM298=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM298
	.byte 1,80,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM299=Lfde43_end - Lfde43_start
	.long LDIFF_SYM299
Lfde43_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_DisplayInfo_op_Inequality_Xamarin_Essentials_DisplayInfo_Xamarin_Essentials_DisplayInfo

LDIFF_SYM300=Lme_2b - Xamarin_Essentials_DisplayInfo_op_Inequality_Xamarin_Essentials_DisplayInfo_Xamarin_Essentials_DisplayInfo
	.long LDIFF_SYM300
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde43_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.DisplayInfo:Equals"
	.asciz "Xamarin_Essentials_DisplayInfo_Equals_object"

	.byte 10,34
	.quad Xamarin_Essentials_DisplayInfo_Equals_object
	.quad Lme_2c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM301=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM301
	.byte 2,141,40,3
	.asciz "obj"

LDIFF_SYM302=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM302
	.byte 1,106,11
	.asciz "metrics"

LDIFF_SYM303=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM303
	.byte 3,141,208,0,11
	.asciz "V_1"

LDIFF_SYM304=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM304
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM305=Lfde44_end - Lfde44_start
	.long LDIFF_SYM305
Lfde44_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_DisplayInfo_Equals_object

LDIFF_SYM306=Lme_2c - Xamarin_Essentials_DisplayInfo_Equals_object
	.long LDIFF_SYM306
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,151,12,152,11,68,154,10
	.align 3
Lfde44_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.DisplayInfo:Equals"
	.asciz "Xamarin_Essentials_DisplayInfo_Equals_Xamarin_Essentials_DisplayInfo"

	.byte 10,37
	.quad Xamarin_Essentials_DisplayInfo_Equals_Xamarin_Essentials_DisplayInfo
	.quad Lme_2d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM307=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM307
	.byte 1,106,3
	.asciz "other"

LDIFF_SYM308=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM308
	.byte 1,80,11
	.asciz "V_0"

LDIFF_SYM309=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM309
	.byte 2,141,40,11
	.asciz "V_1"

LDIFF_SYM310=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM310
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM311=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM311
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM312=Lfde45_end - Lfde45_start
	.long LDIFF_SYM312
Lfde45_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_DisplayInfo_Equals_Xamarin_Essentials_DisplayInfo

LDIFF_SYM313=Lme_2d - Xamarin_Essentials_DisplayInfo_Equals_Xamarin_Essentials_DisplayInfo
	.long LDIFF_SYM313
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8,154,7
	.align 3
Lfde45_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.DisplayInfo:GetHashCode"
	.asciz "Xamarin_Essentials_DisplayInfo_GetHashCode"

	.byte 10,44
	.quad Xamarin_Essentials_DisplayInfo_GetHashCode
	.quad Lme_2e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM314=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM314
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM315=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM315
	.byte 2,141,56,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM316=Lfde46_end - Lfde46_start
	.long LDIFF_SYM316
Lfde46_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_DisplayInfo_GetHashCode

LDIFF_SYM317=Lme_2e - Xamarin_Essentials_DisplayInfo_GetHashCode
	.long LDIFF_SYM317
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,154,10
	.align 3
Lfde46_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.DisplayInfo:ToString"
	.asciz "Xamarin_Essentials_DisplayInfo_ToString"

	.byte 10,47
	.quad Xamarin_Essentials_DisplayInfo_ToString
	.quad Lme_2f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM318=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM318
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM319=Lfde47_end - Lfde47_start
	.long LDIFF_SYM319
Lfde47_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_DisplayInfo_ToString

LDIFF_SYM320=Lme_2f - Xamarin_Essentials_DisplayInfo_ToString
	.long LDIFF_SYM320
	.long 0
	.byte 12,31,0,68,14,128,2,157,32,158,31,68,13,29,68,154,30
	.align 3
Lfde47_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_27:

	.byte 17
	.asciz "System_Collections_IDictionary"

	.byte 16,7
	.asciz "System_Collections_IDictionary"

LDIFF_SYM321=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM321
LTDIE_27_POINTER:

	.byte 13
LDIFF_SYM322=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM322
LTDIE_27_REFERENCE:

	.byte 14
LDIFF_SYM323=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM323
LTDIE_29:

	.byte 17
	.asciz "System_Collections_Generic_IList`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IList`1"

LDIFF_SYM324=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM324
LTDIE_29_POINTER:

	.byte 13
LDIFF_SYM325=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM325
LTDIE_29_REFERENCE:

	.byte 14
LDIFF_SYM326=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM326
LTDIE_32:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM327=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM327
LTDIE_32_POINTER:

	.byte 13
LDIFF_SYM328=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM328
LTDIE_32_REFERENCE:

	.byte 14
LDIFF_SYM329=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM329
LTDIE_33:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM330=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM330
	.byte 2,35,0,6
	.asciz "_dictionary"

LDIFF_SYM331=LTDIE_31_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM331
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM332=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM332
LTDIE_33_POINTER:

	.byte 13
LDIFF_SYM333=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM333
LTDIE_33_REFERENCE:

	.byte 14
LDIFF_SYM334=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM334
LTDIE_34:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM335=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM335
	.byte 2,35,0,6
	.asciz "_dictionary"

LDIFF_SYM336=LTDIE_31_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM336
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM337=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM337
LTDIE_34_POINTER:

	.byte 13
LDIFF_SYM338=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM338
LTDIE_34_REFERENCE:

	.byte 14
LDIFF_SYM339=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM339
LTDIE_31:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM340=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM340
	.byte 2,35,0,6
	.asciz "_buckets"

LDIFF_SYM341=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM341
	.byte 2,35,16,6
	.asciz "_entries"

LDIFF_SYM342=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM342
	.byte 2,35,24,6
	.asciz "_count"

LDIFF_SYM343=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM343
	.byte 2,35,64,6
	.asciz "_freeList"

LDIFF_SYM344=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM344
	.byte 2,35,68,6
	.asciz "_freeCount"

LDIFF_SYM345=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM345
	.byte 2,35,72,6
	.asciz "_version"

LDIFF_SYM346=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM346
	.byte 2,35,76,6
	.asciz "_comparer"

LDIFF_SYM347=LTDIE_32_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM347
	.byte 2,35,32,6
	.asciz "_keys"

LDIFF_SYM348=LTDIE_33_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM348
	.byte 2,35,40,6
	.asciz "_values"

LDIFF_SYM349=LTDIE_34_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM349
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM350=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM350
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM351=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM351
LTDIE_31_POINTER:

	.byte 13
LDIFF_SYM352=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM352
LTDIE_31_REFERENCE:

	.byte 14
LDIFF_SYM353=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM353
LTDIE_35:

	.byte 17
	.asciz "System_Runtime_Serialization_IFormatterConverter"

	.byte 16,7
	.asciz "System_Runtime_Serialization_IFormatterConverter"

LDIFF_SYM354=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM354
LTDIE_35_POINTER:

	.byte 13
LDIFF_SYM355=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM355
LTDIE_35_REFERENCE:

	.byte 14
LDIFF_SYM356=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM356
LTDIE_37:

	.byte 5
	.asciz "System_Reflection_MemberInfo"

	.byte 16,16
LDIFF_SYM357=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM357
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MemberInfo"

LDIFF_SYM358=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM358
LTDIE_37_POINTER:

	.byte 13
LDIFF_SYM359=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM359
LTDIE_37_REFERENCE:

	.byte 14
LDIFF_SYM360=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM360
LTDIE_36:

	.byte 5
	.asciz "System_Type"

	.byte 24,16
LDIFF_SYM361=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM361
	.byte 2,35,0,6
	.asciz "_impl"

LDIFF_SYM362=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM362
	.byte 2,35,16,0,7
	.asciz "System_Type"

LDIFF_SYM363=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM363
LTDIE_36_POINTER:

	.byte 13
LDIFF_SYM364=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM364
LTDIE_36_REFERENCE:

	.byte 14
LDIFF_SYM365=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM365
LTDIE_30:

	.byte 5
	.asciz "System_Runtime_Serialization_SerializationInfo"

	.byte 88,16
LDIFF_SYM366=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM366
	.byte 2,35,0,6
	.asciz "m_members"

LDIFF_SYM367=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM367
	.byte 2,35,16,6
	.asciz "m_data"

LDIFF_SYM368=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM368
	.byte 2,35,24,6
	.asciz "m_types"

LDIFF_SYM369=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM369
	.byte 2,35,32,6
	.asciz "m_nameToIndex"

LDIFF_SYM370=LTDIE_31_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM370
	.byte 2,35,40,6
	.asciz "m_currMember"

LDIFF_SYM371=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM371
	.byte 2,35,80,6
	.asciz "m_converter"

LDIFF_SYM372=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM372
	.byte 2,35,48,6
	.asciz "m_fullTypeName"

LDIFF_SYM373=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM373
	.byte 2,35,56,6
	.asciz "m_assemName"

LDIFF_SYM374=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM374
	.byte 2,35,64,6
	.asciz "objectType"

LDIFF_SYM375=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM375
	.byte 2,35,72,6
	.asciz "isFullTypeNameSetExplicit"

LDIFF_SYM376=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM376
	.byte 2,35,84,6
	.asciz "isAssemblyNameSetExplicit"

LDIFF_SYM377=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM377
	.byte 2,35,85,6
	.asciz "requireSameTokenInPartialTrust"

LDIFF_SYM378=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM378
	.byte 2,35,86,0,7
	.asciz "System_Runtime_Serialization_SerializationInfo"

LDIFF_SYM379=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM379
LTDIE_30_POINTER:

	.byte 13
LDIFF_SYM380=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM380
LTDIE_30_REFERENCE:

	.byte 14
LDIFF_SYM381=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM381
LTDIE_39:

	.byte 5
	.asciz "System_Reflection_TypeInfo"

	.byte 24,16
LDIFF_SYM382=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM382
	.byte 2,35,0,0,7
	.asciz "System_Reflection_TypeInfo"

LDIFF_SYM383=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM383
LTDIE_39_POINTER:

	.byte 13
LDIFF_SYM384=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM384
LTDIE_39_REFERENCE:

	.byte 14
LDIFF_SYM385=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM385
LTDIE_43:

	.byte 5
	.asciz "System_Reflection_MethodBase"

	.byte 16,16
LDIFF_SYM386=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM386
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodBase"

LDIFF_SYM387=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM387
LTDIE_43_POINTER:

	.byte 13
LDIFF_SYM388=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM388
LTDIE_43_REFERENCE:

	.byte 14
LDIFF_SYM389=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM389
LTDIE_42:

	.byte 5
	.asciz "System_Reflection_ConstructorInfo"

	.byte 16,16
LDIFF_SYM390=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM390
	.byte 2,35,0,0,7
	.asciz "System_Reflection_ConstructorInfo"

LDIFF_SYM391=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM391
LTDIE_42_POINTER:

	.byte 13
LDIFF_SYM392=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM392
LTDIE_42_REFERENCE:

	.byte 14
LDIFF_SYM393=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM393
LTDIE_41:

	.byte 5
	.asciz "System_Reflection_RuntimeConstructorInfo"

	.byte 40,16
LDIFF_SYM394=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM394
	.byte 2,35,0,6
	.asciz "mhandle"

LDIFF_SYM395=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM395
	.byte 2,35,16,6
	.asciz "name"

LDIFF_SYM396=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM396
	.byte 2,35,24,6
	.asciz "reftype"

LDIFF_SYM397=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM397
	.byte 2,35,32,0,7
	.asciz "System_Reflection_RuntimeConstructorInfo"

LDIFF_SYM398=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM398
LTDIE_41_POINTER:

	.byte 13
LDIFF_SYM399=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM399
LTDIE_41_REFERENCE:

	.byte 14
LDIFF_SYM400=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM400
LTDIE_40:

	.byte 5
	.asciz "System_MonoTypeInfo"

	.byte 32,16
LDIFF_SYM401=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM401
	.byte 2,35,0,6
	.asciz "full_name"

LDIFF_SYM402=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM402
	.byte 2,35,16,6
	.asciz "default_ctor"

LDIFF_SYM403=LTDIE_41_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM403
	.byte 2,35,24,0,7
	.asciz "System_MonoTypeInfo"

LDIFF_SYM404=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM404
LTDIE_40_POINTER:

	.byte 13
LDIFF_SYM405=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM405
LTDIE_40_REFERENCE:

	.byte 14
LDIFF_SYM406=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM406
LTDIE_38:

	.byte 5
	.asciz "System_RuntimeType"

	.byte 48,16
LDIFF_SYM407=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM407
	.byte 2,35,0,6
	.asciz "type_info"

LDIFF_SYM408=LTDIE_40_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM408
	.byte 2,35,24,6
	.asciz "GenericCache"

LDIFF_SYM409=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM409
	.byte 2,35,32,6
	.asciz "m_serializationCtor"

LDIFF_SYM410=LTDIE_41_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM410
	.byte 2,35,40,0,7
	.asciz "System_RuntimeType"

LDIFF_SYM411=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM411
LTDIE_38_POINTER:

	.byte 13
LDIFF_SYM412=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM412
LTDIE_38_REFERENCE:

	.byte 14
LDIFF_SYM413=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM413
LTDIE_47:

	.byte 5
	.asciz "System_Reflection_MethodInfo"

	.byte 16,16
LDIFF_SYM414=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM414
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodInfo"

LDIFF_SYM415=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM415
LTDIE_47_POINTER:

	.byte 13
LDIFF_SYM416=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM416
LTDIE_47_REFERENCE:

	.byte 14
LDIFF_SYM417=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM417
LTDIE_48:

	.byte 5
	.asciz "System_DelegateData"

	.byte 40,16
LDIFF_SYM418=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM418
	.byte 2,35,0,6
	.asciz "target_type"

LDIFF_SYM419=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM419
	.byte 2,35,16,6
	.asciz "method_name"

LDIFF_SYM420=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM420
	.byte 2,35,24,6
	.asciz "curried_first_arg"

LDIFF_SYM421=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM421
	.byte 2,35,32,0,7
	.asciz "System_DelegateData"

LDIFF_SYM422=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM422
LTDIE_48_POINTER:

	.byte 13
LDIFF_SYM423=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM423
LTDIE_48_REFERENCE:

	.byte 14
LDIFF_SYM424=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM424
LTDIE_46:

	.byte 5
	.asciz "System_Delegate"

	.byte 120,16
LDIFF_SYM425=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM425
	.byte 2,35,0,6
	.asciz "method_ptr"

LDIFF_SYM426=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM426
	.byte 2,35,16,6
	.asciz "invoke_impl"

LDIFF_SYM427=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM427
	.byte 2,35,24,6
	.asciz "m_target"

LDIFF_SYM428=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM428
	.byte 2,35,32,6
	.asciz "method"

LDIFF_SYM429=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM429
	.byte 2,35,40,6
	.asciz "delegate_trampoline"

LDIFF_SYM430=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM430
	.byte 2,35,48,6
	.asciz "extra_arg"

LDIFF_SYM431=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM431
	.byte 2,35,56,6
	.asciz "method_code"

LDIFF_SYM432=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM432
	.byte 2,35,64,6
	.asciz "interp_method"

LDIFF_SYM433=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM433
	.byte 2,35,72,6
	.asciz "interp_invoke_impl"

LDIFF_SYM434=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM434
	.byte 2,35,80,6
	.asciz "method_info"

LDIFF_SYM435=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM435
	.byte 2,35,88,6
	.asciz "original_method_info"

LDIFF_SYM436=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM436
	.byte 2,35,96,6
	.asciz "data"

LDIFF_SYM437=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM437
	.byte 2,35,104,6
	.asciz "method_is_virtual"

LDIFF_SYM438=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM438
	.byte 2,35,112,0,7
	.asciz "System_Delegate"

LDIFF_SYM439=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM439
LTDIE_46_POINTER:

	.byte 13
LDIFF_SYM440=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM440
LTDIE_46_REFERENCE:

	.byte 14
LDIFF_SYM441=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM441
LTDIE_45:

	.byte 5
	.asciz "System_MulticastDelegate"

	.byte 128,1,16
LDIFF_SYM442=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM442
	.byte 2,35,0,6
	.asciz "delegates"

LDIFF_SYM443=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM443
	.byte 2,35,120,0,7
	.asciz "System_MulticastDelegate"

LDIFF_SYM444=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM444
LTDIE_45_POINTER:

	.byte 13
LDIFF_SYM445=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM445
LTDIE_45_REFERENCE:

	.byte 14
LDIFF_SYM446=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM446
LTDIE_44:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 128,1,16
LDIFF_SYM447=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM447
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM448=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM448
LTDIE_44_POINTER:

	.byte 13
LDIFF_SYM449=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM449
LTDIE_44_REFERENCE:

	.byte 14
LDIFF_SYM450=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM450
LTDIE_28:

	.byte 5
	.asciz "System_Runtime_Serialization_SafeSerializationManager"

	.byte 56,16
LDIFF_SYM451=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM451
	.byte 2,35,0,6
	.asciz "m_serializedStates"

LDIFF_SYM452=LTDIE_29_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM452
	.byte 2,35,16,6
	.asciz "m_savedSerializationInfo"

LDIFF_SYM453=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM453
	.byte 2,35,24,6
	.asciz "m_realObject"

LDIFF_SYM454=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM454
	.byte 2,35,32,6
	.asciz "m_realType"

LDIFF_SYM455=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM455
	.byte 2,35,40,6
	.asciz "SerializeObjectState"

LDIFF_SYM456=LTDIE_44_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM456
	.byte 2,35,48,0,7
	.asciz "System_Runtime_Serialization_SafeSerializationManager"

LDIFF_SYM457=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM457
LTDIE_28_POINTER:

	.byte 13
LDIFF_SYM458=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM458
LTDIE_28_REFERENCE:

	.byte 14
LDIFF_SYM459=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM459
LTDIE_26:

	.byte 5
	.asciz "System_Exception"

	.byte 144,1,16
LDIFF_SYM460=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM460
	.byte 2,35,0,6
	.asciz "_className"

LDIFF_SYM461=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM461
	.byte 2,35,16,6
	.asciz "_message"

LDIFF_SYM462=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM462
	.byte 2,35,24,6
	.asciz "_data"

LDIFF_SYM463=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM463
	.byte 2,35,32,6
	.asciz "_innerException"

LDIFF_SYM464=LTDIE_26_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM464
	.byte 2,35,40,6
	.asciz "_helpURL"

LDIFF_SYM465=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM465
	.byte 2,35,48,6
	.asciz "_stackTrace"

LDIFF_SYM466=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM466
	.byte 2,35,56,6
	.asciz "_stackTraceString"

LDIFF_SYM467=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM467
	.byte 2,35,64,6
	.asciz "_remoteStackTraceString"

LDIFF_SYM468=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM468
	.byte 2,35,72,6
	.asciz "_remoteStackIndex"

LDIFF_SYM469=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM469
	.byte 2,35,80,6
	.asciz "_dynamicMethods"

LDIFF_SYM470=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM470
	.byte 2,35,88,6
	.asciz "_HResult"

LDIFF_SYM471=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM471
	.byte 2,35,96,6
	.asciz "_source"

LDIFF_SYM472=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM472
	.byte 2,35,104,6
	.asciz "_safeSerializationManager"

LDIFF_SYM473=LTDIE_28_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM473
	.byte 2,35,112,6
	.asciz "captured_traces"

LDIFF_SYM474=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM474
	.byte 2,35,120,6
	.asciz "native_trace_ips"

LDIFF_SYM475=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM475
	.byte 3,35,128,1,6
	.asciz "caught_in_unmanaged"

LDIFF_SYM476=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM476
	.byte 3,35,136,1,0,7
	.asciz "System_Exception"

LDIFF_SYM477=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM477
LTDIE_26_POINTER:

	.byte 13
LDIFF_SYM478=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM478
LTDIE_26_REFERENCE:

	.byte 14
LDIFF_SYM479=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM479
LTDIE_25:

	.byte 5
	.asciz "System_SystemException"

	.byte 144,1,16
LDIFF_SYM480=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM480
	.byte 2,35,0,0,7
	.asciz "System_SystemException"

LDIFF_SYM481=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM481
LTDIE_25_POINTER:

	.byte 13
LDIFF_SYM482=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM482
LTDIE_25_REFERENCE:

	.byte 14
LDIFF_SYM483=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM483
LTDIE_24:

	.byte 5
	.asciz "System_NotSupportedException"

	.byte 144,1,16
LDIFF_SYM484=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM484
	.byte 2,35,0,0,7
	.asciz "System_NotSupportedException"

LDIFF_SYM485=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM485
LTDIE_24_POINTER:

	.byte 13
LDIFF_SYM486=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM486
LTDIE_24_REFERENCE:

	.byte 14
LDIFF_SYM487=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM487
LTDIE_23:

	.byte 5
	.asciz "Xamarin_Essentials_FeatureNotSupportedException"

	.byte 144,1,16
LDIFF_SYM488=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM488
	.byte 2,35,0,0,7
	.asciz "Xamarin_Essentials_FeatureNotSupportedException"

LDIFF_SYM489=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM489
LTDIE_23_POINTER:

	.byte 13
LDIFF_SYM490=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM490
LTDIE_23_REFERENCE:

	.byte 14
LDIFF_SYM491=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM491
	.byte 2
	.asciz "Xamarin.Essentials.FeatureNotSupportedException:.ctor"
	.asciz "Xamarin_Essentials_FeatureNotSupportedException__ctor"

	.byte 11,23
	.quad Xamarin_Essentials_FeatureNotSupportedException__ctor
	.quad Lme_30

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM492=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM492
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM493=Lfde48_end - Lfde48_start
	.long LDIFF_SYM493
Lfde48_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_FeatureNotSupportedException__ctor

LDIFF_SYM494=Lme_30 - Xamarin_Essentials_FeatureNotSupportedException__ctor
	.long LDIFF_SYM494
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde48_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.VersionTracking:.cctor"
	.asciz "Xamarin_Essentials_VersionTracking__cctor"

	.byte 12,14
	.quad Xamarin_Essentials_VersionTracking__cctor
	.quad Lme_31

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM495=Lfde49_end - Lfde49_start
	.long LDIFF_SYM495
Lfde49_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_VersionTracking__cctor

LDIFF_SYM496=Lme_31 - Xamarin_Essentials_VersionTracking__cctor
	.long LDIFF_SYM496
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,151,12,152,11,68,153,10,154,9
	.align 3
Lfde49_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.VersionTracking:Track"
	.asciz "Xamarin_Essentials_VersionTracking_Track"

	.byte 12,60
	.quad Xamarin_Essentials_VersionTracking_Track
	.quad Lme_32

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM497=Lfde50_end - Lfde50_start
	.long LDIFF_SYM497
Lfde50_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_VersionTracking_Track

LDIFF_SYM498=Lme_32 - Xamarin_Essentials_VersionTracking_Track
	.long LDIFF_SYM498
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde50_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.VersionTracking:get_IsFirstLaunchEver"
	.asciz "Xamarin_Essentials_VersionTracking_get_IsFirstLaunchEver"

	.byte 12,62
	.quad Xamarin_Essentials_VersionTracking_get_IsFirstLaunchEver
	.quad Lme_33

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM499=Lfde51_end - Lfde51_start
	.long LDIFF_SYM499
Lfde51_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_VersionTracking_get_IsFirstLaunchEver

LDIFF_SYM500=Lme_33 - Xamarin_Essentials_VersionTracking_get_IsFirstLaunchEver
	.long LDIFF_SYM500
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde51_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.VersionTracking:set_IsFirstLaunchEver"
	.asciz "Xamarin_Essentials_VersionTracking_set_IsFirstLaunchEver_bool"

	.byte 12,62
	.quad Xamarin_Essentials_VersionTracking_set_IsFirstLaunchEver_bool
	.quad Lme_34

	.byte 2,118,16,3
	.asciz "value"

LDIFF_SYM501=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM501
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM502=Lfde52_end - Lfde52_start
	.long LDIFF_SYM502
Lfde52_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_VersionTracking_set_IsFirstLaunchEver_bool

LDIFF_SYM503=Lme_34 - Xamarin_Essentials_VersionTracking_set_IsFirstLaunchEver_bool
	.long LDIFF_SYM503
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde52_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.VersionTracking:get_IsFirstLaunchForCurrentVersion"
	.asciz "Xamarin_Essentials_VersionTracking_get_IsFirstLaunchForCurrentVersion"

	.byte 12,64
	.quad Xamarin_Essentials_VersionTracking_get_IsFirstLaunchForCurrentVersion
	.quad Lme_35

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM504=Lfde53_end - Lfde53_start
	.long LDIFF_SYM504
Lfde53_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_VersionTracking_get_IsFirstLaunchForCurrentVersion

LDIFF_SYM505=Lme_35 - Xamarin_Essentials_VersionTracking_get_IsFirstLaunchForCurrentVersion
	.long LDIFF_SYM505
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde53_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.VersionTracking:set_IsFirstLaunchForCurrentVersion"
	.asciz "Xamarin_Essentials_VersionTracking_set_IsFirstLaunchForCurrentVersion_bool"

	.byte 12,64
	.quad Xamarin_Essentials_VersionTracking_set_IsFirstLaunchForCurrentVersion_bool
	.quad Lme_36

	.byte 2,118,16,3
	.asciz "value"

LDIFF_SYM506=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM506
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM507=Lfde54_end - Lfde54_start
	.long LDIFF_SYM507
Lfde54_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_VersionTracking_set_IsFirstLaunchForCurrentVersion_bool

LDIFF_SYM508=Lme_36 - Xamarin_Essentials_VersionTracking_set_IsFirstLaunchForCurrentVersion_bool
	.long LDIFF_SYM508
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde54_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.VersionTracking:get_IsFirstLaunchForCurrentBuild"
	.asciz "Xamarin_Essentials_VersionTracking_get_IsFirstLaunchForCurrentBuild"

	.byte 12,66
	.quad Xamarin_Essentials_VersionTracking_get_IsFirstLaunchForCurrentBuild
	.quad Lme_37

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM509=Lfde55_end - Lfde55_start
	.long LDIFF_SYM509
Lfde55_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_VersionTracking_get_IsFirstLaunchForCurrentBuild

LDIFF_SYM510=Lme_37 - Xamarin_Essentials_VersionTracking_get_IsFirstLaunchForCurrentBuild
	.long LDIFF_SYM510
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde55_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.VersionTracking:set_IsFirstLaunchForCurrentBuild"
	.asciz "Xamarin_Essentials_VersionTracking_set_IsFirstLaunchForCurrentBuild_bool"

	.byte 12,66
	.quad Xamarin_Essentials_VersionTracking_set_IsFirstLaunchForCurrentBuild_bool
	.quad Lme_38

	.byte 2,118,16,3
	.asciz "value"

LDIFF_SYM511=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM511
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM512=Lfde56_end - Lfde56_start
	.long LDIFF_SYM512
Lfde56_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_VersionTracking_set_IsFirstLaunchForCurrentBuild_bool

LDIFF_SYM513=Lme_38 - Xamarin_Essentials_VersionTracking_set_IsFirstLaunchForCurrentBuild_bool
	.long LDIFF_SYM513
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde56_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.VersionTracking:get_CurrentVersion"
	.asciz "Xamarin_Essentials_VersionTracking_get_CurrentVersion"

	.byte 12,68
	.quad Xamarin_Essentials_VersionTracking_get_CurrentVersion
	.quad Lme_39

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM514=Lfde57_end - Lfde57_start
	.long LDIFF_SYM514
Lfde57_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_VersionTracking_get_CurrentVersion

LDIFF_SYM515=Lme_39 - Xamarin_Essentials_VersionTracking_get_CurrentVersion
	.long LDIFF_SYM515
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde57_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.VersionTracking:get_CurrentBuild"
	.asciz "Xamarin_Essentials_VersionTracking_get_CurrentBuild"

	.byte 12,70
	.quad Xamarin_Essentials_VersionTracking_get_CurrentBuild
	.quad Lme_3a

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM516=Lfde58_end - Lfde58_start
	.long LDIFF_SYM516
Lfde58_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_VersionTracking_get_CurrentBuild

LDIFF_SYM517=Lme_3a - Xamarin_Essentials_VersionTracking_get_CurrentBuild
	.long LDIFF_SYM517
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde58_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.VersionTracking:ReadHistory"
	.asciz "Xamarin_Essentials_VersionTracking_ReadHistory_string"

	.byte 12,112
	.quad Xamarin_Essentials_VersionTracking_ReadHistory_string
	.quad Lme_3b

	.byte 2,118,16,3
	.asciz "key"

LDIFF_SYM518=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM518
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM519=Lfde59_end - Lfde59_start
	.long LDIFF_SYM519
Lfde59_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_VersionTracking_ReadHistory_string

LDIFF_SYM520=Lme_3b - Xamarin_Essentials_VersionTracking_ReadHistory_string
	.long LDIFF_SYM520
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde59_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_49:

	.byte 17
	.asciz "System_Collections_Generic_IEnumerable`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEnumerable`1"

LDIFF_SYM521=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM521
LTDIE_49_POINTER:

	.byte 13
LDIFF_SYM522=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM522
LTDIE_49_REFERENCE:

	.byte 14
LDIFF_SYM523=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM523
	.byte 2
	.asciz "Xamarin.Essentials.VersionTracking:WriteHistory"
	.asciz "Xamarin_Essentials_VersionTracking_WriteHistory_string_System_Collections_Generic_IEnumerable_1_string"

	.byte 12,115
	.quad Xamarin_Essentials_VersionTracking_WriteHistory_string_System_Collections_Generic_IEnumerable_1_string
	.quad Lme_3c

	.byte 2,118,16,3
	.asciz "key"

LDIFF_SYM524=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM524
	.byte 2,141,16,3
	.asciz "history"

LDIFF_SYM525=LTDIE_49_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM525
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM526=Lfde60_end - Lfde60_start
	.long LDIFF_SYM526
Lfde60_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_VersionTracking_WriteHistory_string_System_Collections_Generic_IEnumerable_1_string

LDIFF_SYM527=Lme_3c - Xamarin_Essentials_VersionTracking_WriteHistory_string_System_Collections_Generic_IEnumerable_1_string
	.long LDIFF_SYM527
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde60_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_51:

	.byte 5
	.asciz "CoreLocation_CLLocationManagerDelegate"

	.byte 40,16
LDIFF_SYM528=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM528
	.byte 2,35,0,0,7
	.asciz "CoreLocation_CLLocationManagerDelegate"

LDIFF_SYM529=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM529
LTDIE_51_POINTER:

	.byte 13
LDIFF_SYM530=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM530
LTDIE_51_REFERENCE:

	.byte 14
LDIFF_SYM531=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM531
LTDIE_52:

	.byte 5
	.asciz "System_Action`1"

	.byte 128,1,16
LDIFF_SYM532=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM532
	.byte 2,35,0,0,7
	.asciz "System_Action`1"

LDIFF_SYM533=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM533
LTDIE_52_POINTER:

	.byte 13
LDIFF_SYM534=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM534
LTDIE_52_REFERENCE:

	.byte 14
LDIFF_SYM535=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM535
LTDIE_50:

	.byte 5
	.asciz "Xamarin_Essentials_SingleLocationListener"

	.byte 56,16
LDIFF_SYM536=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM536
	.byte 2,35,0,6
	.asciz "wasRaised"

LDIFF_SYM537=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM537
	.byte 2,35,48,6
	.asciz "<LocationHandler>k__BackingField"

LDIFF_SYM538=LTDIE_52_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM538
	.byte 2,35,40,0,7
	.asciz "Xamarin_Essentials_SingleLocationListener"

LDIFF_SYM539=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM539
LTDIE_50_POINTER:

	.byte 13
LDIFF_SYM540=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM540
LTDIE_50_REFERENCE:

	.byte 14
LDIFF_SYM541=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM541
	.byte 2
	.asciz "Xamarin.Essentials.SingleLocationListener:get_LocationHandler"
	.asciz "Xamarin_Essentials_SingleLocationListener_get_LocationHandler"

	.byte 13,77
	.quad Xamarin_Essentials_SingleLocationListener_get_LocationHandler
	.quad Lme_3d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM542=LTDIE_50_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM542
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM543=Lfde61_end - Lfde61_start
	.long LDIFF_SYM543
Lfde61_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_SingleLocationListener_get_LocationHandler

LDIFF_SYM544=Lme_3d - Xamarin_Essentials_SingleLocationListener_get_LocationHandler
	.long LDIFF_SYM544
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde61_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.SingleLocationListener:set_LocationHandler"
	.asciz "Xamarin_Essentials_SingleLocationListener_set_LocationHandler_System_Action_1_CoreLocation_CLLocation"

	.byte 13,77
	.quad Xamarin_Essentials_SingleLocationListener_set_LocationHandler_System_Action_1_CoreLocation_CLLocation
	.quad Lme_3e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM545=LTDIE_50_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM545
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM546=LTDIE_52_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM546
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM547=Lfde62_end - Lfde62_start
	.long LDIFF_SYM547
Lfde62_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_SingleLocationListener_set_LocationHandler_System_Action_1_CoreLocation_CLLocation

LDIFF_SYM548=Lme_3e - Xamarin_Essentials_SingleLocationListener_set_LocationHandler_System_Action_1_CoreLocation_CLLocation
	.long LDIFF_SYM548
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde62_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_53:

	.byte 5
	.asciz "CoreLocation_CLLocationManager"

	.byte 40,16
LDIFF_SYM549=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM549
	.byte 2,35,0,0,7
	.asciz "CoreLocation_CLLocationManager"

LDIFF_SYM550=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM550
LTDIE_53_POINTER:

	.byte 13
LDIFF_SYM551=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM551
LTDIE_53_REFERENCE:

	.byte 14
LDIFF_SYM552=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM552
LTDIE_54:

	.byte 5
	.asciz "CoreLocation_CLLocation"

	.byte 40,16
LDIFF_SYM553=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM553
	.byte 2,35,0,0,7
	.asciz "CoreLocation_CLLocation"

LDIFF_SYM554=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM554
LTDIE_54_POINTER:

	.byte 13
LDIFF_SYM555=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM555
LTDIE_54_REFERENCE:

	.byte 14
LDIFF_SYM556=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM556
	.byte 2
	.asciz "Xamarin.Essentials.SingleLocationListener:LocationsUpdated"
	.asciz "Xamarin_Essentials_SingleLocationListener_LocationsUpdated_CoreLocation_CLLocationManager_CoreLocation_CLLocation__"

	.byte 13,81
	.quad Xamarin_Essentials_SingleLocationListener_LocationsUpdated_CoreLocation_CLLocationManager_CoreLocation_CLLocation__
	.quad Lme_3f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM557=LTDIE_50_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM557
	.byte 1,105,3
	.asciz "manager"

LDIFF_SYM558=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM558
	.byte 0,3
	.asciz "locations"

LDIFF_SYM559=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM559
	.byte 1,106,11
	.asciz "location"

LDIFF_SYM560=LTDIE_54_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM560
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM561=Lfde63_end - Lfde63_start
	.long LDIFF_SYM561
Lfde63_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_SingleLocationListener_LocationsUpdated_CoreLocation_CLLocationManager_CoreLocation_CLLocation__

LDIFF_SYM562=Lme_3f - Xamarin_Essentials_SingleLocationListener_LocationsUpdated_CoreLocation_CLLocationManager_CoreLocation_CLLocation__
	.long LDIFF_SYM562
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6,154,5
	.align 3
Lfde63_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.SingleLocationListener:ShouldDisplayHeadingCalibration"
	.asciz "Xamarin_Essentials_SingleLocationListener_ShouldDisplayHeadingCalibration_CoreLocation_CLLocationManager"

	.byte 13,94
	.quad Xamarin_Essentials_SingleLocationListener_ShouldDisplayHeadingCalibration_CoreLocation_CLLocationManager
	.quad Lme_40

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM563=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM563
	.byte 0,3
	.asciz "manager"

LDIFF_SYM564=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM564
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM565=Lfde64_end - Lfde64_start
	.long LDIFF_SYM565
Lfde64_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_SingleLocationListener_ShouldDisplayHeadingCalibration_CoreLocation_CLLocationManager

LDIFF_SYM566=Lme_40 - Xamarin_Essentials_SingleLocationListener_ShouldDisplayHeadingCalibration_CoreLocation_CLLocationManager
	.long LDIFF_SYM566
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde64_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.SingleLocationListener:.ctor"
	.asciz "Xamarin_Essentials_SingleLocationListener__ctor"

	.byte 0,0
	.quad Xamarin_Essentials_SingleLocationListener__ctor
	.quad Lme_41

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM567=LTDIE_50_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM567
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM568=Lfde65_end - Lfde65_start
	.long LDIFF_SYM568
Lfde65_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_SingleLocationListener__ctor

LDIFF_SYM569=Lme_41 - Xamarin_Essentials_SingleLocationListener__ctor
	.long LDIFF_SYM569
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde65_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_56:

	.byte 5
	.asciz "UIKit_UIActivityItemSource"

	.byte 40,16
LDIFF_SYM570=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM570
	.byte 2,35,0,0,7
	.asciz "UIKit_UIActivityItemSource"

LDIFF_SYM571=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM571
LTDIE_56_POINTER:

	.byte 13
LDIFF_SYM572=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM572
LTDIE_56_REFERENCE:

	.byte 14
LDIFF_SYM573=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM573
LTDIE_55:

	.byte 5
	.asciz "Xamarin_Essentials_ShareActivityItemSource"

	.byte 56,16
LDIFF_SYM574=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM574
	.byte 2,35,0,6
	.asciz "item"

LDIFF_SYM575=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM575
	.byte 2,35,40,6
	.asciz "subject"

LDIFF_SYM576=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM576
	.byte 2,35,48,0,7
	.asciz "Xamarin_Essentials_ShareActivityItemSource"

LDIFF_SYM577=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM577
LTDIE_55_POINTER:

	.byte 13
LDIFF_SYM578=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM578
LTDIE_55_REFERENCE:

	.byte 14
LDIFF_SYM579=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM579
	.byte 2
	.asciz "Xamarin.Essentials.ShareActivityItemSource:.ctor"
	.asciz "Xamarin_Essentials_ShareActivityItemSource__ctor_Foundation_NSObject_string"

	.byte 9,63
	.quad Xamarin_Essentials_ShareActivityItemSource__ctor_Foundation_NSObject_string
	.quad Lme_42

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM580=LTDIE_55_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM580
	.byte 1,104,3
	.asciz "item"

LDIFF_SYM581=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM581
	.byte 2,141,24,3
	.asciz "subject"

LDIFF_SYM582=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM582
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM583=Lfde66_end - Lfde66_start
	.long LDIFF_SYM583
Lfde66_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_ShareActivityItemSource__ctor_Foundation_NSObject_string

LDIFF_SYM584=Lme_42 - Xamarin_Essentials_ShareActivityItemSource__ctor_Foundation_NSObject_string
	.long LDIFF_SYM584
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4
	.align 3
Lfde66_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_57:

	.byte 5
	.asciz "Foundation_NSString"

	.byte 40,16
LDIFF_SYM585=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM585
	.byte 2,35,0,0,7
	.asciz "Foundation_NSString"

LDIFF_SYM586=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM586
LTDIE_57_POINTER:

	.byte 13
LDIFF_SYM587=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM587
LTDIE_57_REFERENCE:

	.byte 14
LDIFF_SYM588=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM588
	.byte 2
	.asciz "Xamarin.Essentials.ShareActivityItemSource:GetItemForActivity"
	.asciz "Xamarin_Essentials_ShareActivityItemSource_GetItemForActivity_UIKit_UIActivityViewController_Foundation_NSString"

	.byte 9,69
	.quad Xamarin_Essentials_ShareActivityItemSource_GetItemForActivity_UIKit_UIActivityViewController_Foundation_NSString
	.quad Lme_43

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM589=LTDIE_55_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM589
	.byte 2,141,16,3
	.asciz "activityViewController"

LDIFF_SYM590=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM590
	.byte 0,3
	.asciz "activityType"

LDIFF_SYM591=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM591
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM592=Lfde67_end - Lfde67_start
	.long LDIFF_SYM592
Lfde67_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_ShareActivityItemSource_GetItemForActivity_UIKit_UIActivityViewController_Foundation_NSString

LDIFF_SYM593=Lme_43 - Xamarin_Essentials_ShareActivityItemSource_GetItemForActivity_UIKit_UIActivityViewController_Foundation_NSString
	.long LDIFF_SYM593
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde67_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.ShareActivityItemSource:GetPlaceholderData"
	.asciz "Xamarin_Essentials_ShareActivityItemSource_GetPlaceholderData_UIKit_UIActivityViewController"

	.byte 9,71
	.quad Xamarin_Essentials_ShareActivityItemSource_GetPlaceholderData_UIKit_UIActivityViewController
	.quad Lme_44

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM594=LTDIE_55_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM594
	.byte 2,141,16,3
	.asciz "activityViewController"

LDIFF_SYM595=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM595
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM596=Lfde68_end - Lfde68_start
	.long LDIFF_SYM596
Lfde68_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_ShareActivityItemSource_GetPlaceholderData_UIKit_UIActivityViewController

LDIFF_SYM597=Lme_44 - Xamarin_Essentials_ShareActivityItemSource_GetPlaceholderData_UIKit_UIActivityViewController
	.long LDIFF_SYM597
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde68_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.ShareActivityItemSource:GetSubjectForActivity"
	.asciz "Xamarin_Essentials_ShareActivityItemSource_GetSubjectForActivity_UIKit_UIActivityViewController_Foundation_NSString"

	.byte 9,73
	.quad Xamarin_Essentials_ShareActivityItemSource_GetSubjectForActivity_UIKit_UIActivityViewController_Foundation_NSString
	.quad Lme_45

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM598=LTDIE_55_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM598
	.byte 2,141,16,3
	.asciz "activityViewController"

LDIFF_SYM599=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM599
	.byte 0,3
	.asciz "activityType"

LDIFF_SYM600=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM600
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM601=Lfde69_end - Lfde69_start
	.long LDIFF_SYM601
Lfde69_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_ShareActivityItemSource_GetSubjectForActivity_UIKit_UIActivityViewController_Foundation_NSString

LDIFF_SYM602=Lme_45 - Xamarin_Essentials_ShareActivityItemSource_GetSubjectForActivity_UIKit_UIActivityViewController_Foundation_NSString
	.long LDIFF_SYM602
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde69_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.Preferences:PlatformSet<T_GSHAREDVT>"
	.asciz "Xamarin_Essentials_Preferences_PlatformSet_T_GSHAREDVT_string_T_GSHAREDVT_string"

	.byte 7,50
	.quad Xamarin_Essentials_Preferences_PlatformSet_T_GSHAREDVT_string_T_GSHAREDVT_string
	.quad Lme_47

	.byte 2,118,16,3
	.asciz "key"

LDIFF_SYM603=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM603
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM604=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM604
	.byte 1,80,3
	.asciz "sharedName"

LDIFF_SYM605=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM605
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM606=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM606
	.byte 3,141,200,0,11
	.asciz "V_1"

LDIFF_SYM607=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM607
	.byte 3,141,208,0,11
	.asciz "userDefaults"

LDIFF_SYM608=LTDIE_12_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM608
	.byte 3,141,216,0,11
	.asciz "V_3"

LDIFF_SYM609=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM609
	.byte 1,80,11
	.asciz "V_4"

LDIFF_SYM610=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM610
	.byte 1,106,11
	.asciz "V_5"

LDIFF_SYM611=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM611
	.byte 1,104,11
	.asciz "V_6"

LDIFF_SYM612=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM612
	.byte 1,106,11
	.asciz "V_7"

LDIFF_SYM613=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM613
	.byte 1,102,11
	.asciz "V_8"

LDIFF_SYM614=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM614
	.byte 3,141,128,1,11
	.asciz "V_9"

LDIFF_SYM615=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM615
	.byte 3,141,248,0,11
	.asciz "valueString"

LDIFF_SYM616=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM616
	.byte 1,106,11
	.asciz "s"

LDIFF_SYM617=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM617
	.byte 1,104,11
	.asciz "i"

LDIFF_SYM618=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM618
	.byte 1,106,11
	.asciz "b"

LDIFF_SYM619=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM619
	.byte 1,104,11
	.asciz "d"

LDIFF_SYM620=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM620
	.byte 3,141,128,1,11
	.asciz "f"

LDIFF_SYM621=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM621
	.byte 3,141,248,0,11
	.asciz "V_16"

LDIFF_SYM622=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM622
	.byte 1,80,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM623=Lfde70_end - Lfde70_start
	.long LDIFF_SYM623
Lfde70_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_Preferences_PlatformSet_T_GSHAREDVT_string_T_GSHAREDVT_string

LDIFF_SYM624=Lme_47 - Xamarin_Essentials_Preferences_PlatformSet_T_GSHAREDVT_string_T_GSHAREDVT_string
	.long LDIFF_SYM624
	.long 0
	.byte 12,31,0,68,14,208,1,157,26,158,25,68,13,29,68,150,24,151,23,68,152,22,153,21,68,154,20
	.align 3
Lfde70_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Xamarin.Essentials.Preferences:PlatformGet<T_GSHAREDVT>"
	.asciz "Xamarin_Essentials_Preferences_PlatformGet_T_GSHAREDVT_string_T_GSHAREDVT_string"

	.byte 7,89
	.quad Xamarin_Essentials_Preferences_PlatformGet_T_GSHAREDVT_string_T_GSHAREDVT_string
	.quad Lme_48

	.byte 2,118,16,3
	.asciz "key"

LDIFF_SYM625=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM625
	.byte 1,105,3
	.asciz "defaultValue"

LDIFF_SYM626=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM626
	.byte 1,80,3
	.asciz "sharedName"

LDIFF_SYM627=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM627
	.byte 1,106,11
	.asciz "value"

LDIFF_SYM628=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM628
	.byte 1,102,11
	.asciz "V_1"

LDIFF_SYM629=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM629
	.byte 3,141,216,0,11
	.asciz "V_2"

LDIFF_SYM630=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM630
	.byte 3,141,224,0,11
	.asciz "userDefaults"

LDIFF_SYM631=LTDIE_12_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM631
	.byte 3,141,232,0,11
	.asciz "V_4"

LDIFF_SYM632=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM632
	.byte 1,80,11
	.asciz "V_5"

LDIFF_SYM633=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM633
	.byte 1,80,11
	.asciz "V_6"

LDIFF_SYM634=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM634
	.byte 1,102,11
	.asciz "V_7"

LDIFF_SYM635=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM635
	.byte 1,106,11
	.asciz "V_8"

LDIFF_SYM636=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM636
	.byte 1,102,11
	.asciz "V_9"

LDIFF_SYM637=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM637
	.byte 3,141,144,1,11
	.asciz "V_10"

LDIFF_SYM638=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM638
	.byte 3,141,136,1,11
	.asciz "V_11"

LDIFF_SYM639=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM639
	.byte 1,106,11
	.asciz "V_12"

LDIFF_SYM640=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM640
	.byte 1,80,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM641=Lfde71_end - Lfde71_start
	.long LDIFF_SYM641
Lfde71_start:

	.long 0
	.align 3
	.quad Xamarin_Essentials_Preferences_PlatformGet_T_GSHAREDVT_string_T_GSHAREDVT_string

LDIFF_SYM642=Lme_48 - Xamarin_Essentials_Preferences_PlatformGet_T_GSHAREDVT_string_T_GSHAREDVT_string
	.long LDIFF_SYM642
	.long 0
	.byte 12,31,0,68,14,224,1,157,28,158,27,68,13,29,68,149,26,150,25,68,151,24,152,23,68,153,22,154,21
	.align 3
Lfde71_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_58:

	.byte 5
	.asciz "System_Func`2"

	.byte 128,1,16
LDIFF_SYM643=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM643
	.byte 2,35,0,0,7
	.asciz "System_Func`2"

LDIFF_SYM644=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM644
LTDIE_58_POINTER:

	.byte 13
LDIFF_SYM645=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM645
LTDIE_58_REFERENCE:

	.byte 14
LDIFF_SYM646=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM646
LTDIE_59:

	.byte 5
	.asciz "System_Array"

	.byte 16,16
LDIFF_SYM647=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM647
	.byte 2,35,0,0,7
	.asciz "System_Array"

LDIFF_SYM648=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM648
LTDIE_59_POINTER:

	.byte 13
LDIFF_SYM649=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM649
LTDIE_59_REFERENCE:

	.byte 14
LDIFF_SYM650=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM650
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Func`2<UIKit.UIWindow,_System.nfloat>:invoke_TResult_T"
	.asciz "wrapper_delegate_invoke_System_Func_2_UIKit_UIWindow_System_nfloat_invoke_TResult_T_UIKit_UIWindow"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_2_UIKit_UIWindow_System_nfloat_invoke_TResult_T_UIKit_UIWindow
	.quad Lme_4d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM651=LTDIE_58_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM651
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM652=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM652
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM653=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM653
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM654=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM654
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM655=LTDIE_59_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM655
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM656=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM656
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM657=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM657
	.byte 1,104,11
	.asciz "V_5"

LDIFF_SYM658=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM658
	.byte 2,141,56,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM659=Lfde72_end - Lfde72_start
	.long LDIFF_SYM659
Lfde72_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_2_UIKit_UIWindow_System_nfloat_invoke_TResult_T_UIKit_UIWindow

LDIFF_SYM660=Lme_4d - wrapper_delegate_invoke_System_Func_2_UIKit_UIWindow_System_nfloat_invoke_TResult_T_UIKit_UIWindow
	.long LDIFF_SYM660
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,152,6,153,5,68,154,4
	.align 3
Lfde72_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_60:

	.byte 5
	.asciz "System_Func`2"

	.byte 128,1,16
LDIFF_SYM661=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM661
	.byte 2,35,0,0,7
	.asciz "System_Func`2"

LDIFF_SYM662=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM662
LTDIE_60_POINTER:

	.byte 13
LDIFF_SYM663=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM663
LTDIE_60_REFERENCE:

	.byte 14
LDIFF_SYM664=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM664
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Func`2<UIKit.UIWindow,_bool>:invoke_TResult_T"
	.asciz "wrapper_delegate_invoke_System_Func_2_UIKit_UIWindow_bool_invoke_TResult_T_UIKit_UIWindow"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_2_UIKit_UIWindow_bool_invoke_TResult_T_UIKit_UIWindow
	.quad Lme_52

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM665=LTDIE_60_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM665
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM666=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM666
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM667=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM667
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM668=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM668
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM669=LTDIE_59_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM669
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM670=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM670
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM671=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM671
	.byte 1,104,11
	.asciz "V_5"

LDIFF_SYM672=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM672
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM673=Lfde73_end - Lfde73_start
	.long LDIFF_SYM673
Lfde73_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_2_UIKit_UIWindow_bool_invoke_TResult_T_UIKit_UIWindow

LDIFF_SYM674=Lme_52 - wrapper_delegate_invoke_System_Func_2_UIKit_UIWindow_bool_invoke_TResult_T_UIKit_UIWindow
	.long LDIFF_SYM674
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,152,6,153,5,68,154,4
	.align 3
Lfde73_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_61:

	.byte 5
	.asciz "System_Predicate`1"

	.byte 128,1,16
LDIFF_SYM675=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM675
	.byte 2,35,0,0,7
	.asciz "System_Predicate`1"

LDIFF_SYM676=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM676
LTDIE_61_POINTER:

	.byte 13
LDIFF_SYM677=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM677
LTDIE_61_REFERENCE:

	.byte 14
LDIFF_SYM678=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM678
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Predicate`1<Foundation.NSObject>:invoke_bool_T"
	.asciz "wrapper_delegate_invoke_System_Predicate_1_Foundation_NSObject_invoke_bool_T_Foundation_NSObject"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Predicate_1_Foundation_NSObject_invoke_bool_T_Foundation_NSObject
	.quad Lme_53

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM679=LTDIE_61_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM679
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM680=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM680
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM681=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM681
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM682=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM682
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM683=LTDIE_59_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM683
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM684=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM684
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM685=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM685
	.byte 1,104,11
	.asciz "V_5"

LDIFF_SYM686=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM686
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM687=Lfde74_end - Lfde74_start
	.long LDIFF_SYM687
Lfde74_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Predicate_1_Foundation_NSObject_invoke_bool_T_Foundation_NSObject

LDIFF_SYM688=Lme_53 - wrapper_delegate_invoke_System_Predicate_1_Foundation_NSObject_invoke_bool_T_Foundation_NSObject
	.long LDIFF_SYM688
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,152,6,153,5,68,154,4
	.align 3
Lfde74_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_62:

	.byte 5
	.asciz "System_Action`1"

	.byte 128,1,16
LDIFF_SYM689=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM689
	.byte 2,35,0,0,7
	.asciz "System_Action`1"

LDIFF_SYM690=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM690
LTDIE_62_POINTER:

	.byte 13
LDIFF_SYM691=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM691
LTDIE_62_REFERENCE:

	.byte 14
LDIFF_SYM692=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM692
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Action`1<Foundation.NSObject>:invoke_void_T"
	.asciz "wrapper_delegate_invoke_System_Action_1_Foundation_NSObject_invoke_void_T_Foundation_NSObject"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Action_1_Foundation_NSObject_invoke_void_T_Foundation_NSObject
	.quad Lme_54

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM693=LTDIE_62_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM693
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM694=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM694
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM695=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM695
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM696=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM696
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM697=LTDIE_59_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM697
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM698=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM698
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM699=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM699
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM700=Lfde75_end - Lfde75_start
	.long LDIFF_SYM700
Lfde75_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Action_1_Foundation_NSObject_invoke_void_T_Foundation_NSObject

LDIFF_SYM701=Lme_54 - wrapper_delegate_invoke_System_Action_1_Foundation_NSObject_invoke_void_T_Foundation_NSObject
	.long LDIFF_SYM701
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,152,6,153,5,68,154,4
	.align 3
Lfde75_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_63:

	.byte 5
	.asciz "System_Comparison`1"

	.byte 128,1,16
LDIFF_SYM702=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM702
	.byte 2,35,0,0,7
	.asciz "System_Comparison`1"

LDIFF_SYM703=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM703
LTDIE_63_POINTER:

	.byte 13
LDIFF_SYM704=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM704
LTDIE_63_REFERENCE:

	.byte 14
LDIFF_SYM705=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM705
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Comparison`1<Foundation.NSObject>:invoke_int_T_T"
	.asciz "wrapper_delegate_invoke_System_Comparison_1_Foundation_NSObject_invoke_int_T_T_Foundation_NSObject_Foundation_NSObject"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Comparison_1_Foundation_NSObject_invoke_int_T_T_Foundation_NSObject_Foundation_NSObject
	.quad Lme_55

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM706=LTDIE_63_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM706
	.byte 1,104,3
	.asciz "param0"

LDIFF_SYM707=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM707
	.byte 1,105,3
	.asciz "param1"

LDIFF_SYM708=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM708
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM709=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM709
	.byte 1,102,11
	.asciz "V_1"

LDIFF_SYM710=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM710
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM711=LTDIE_59_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM711
	.byte 1,103,11
	.asciz "V_3"

LDIFF_SYM712=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM712
	.byte 1,101,11
	.asciz "V_4"

LDIFF_SYM713=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM713
	.byte 1,103,11
	.asciz "V_5"

LDIFF_SYM714=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM714
	.byte 1,101,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM715=Lfde76_end - Lfde76_start
	.long LDIFF_SYM715
Lfde76_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Comparison_1_Foundation_NSObject_invoke_int_T_T_Foundation_NSObject_Foundation_NSObject

LDIFF_SYM716=Lme_55 - wrapper_delegate_invoke_System_Comparison_1_Foundation_NSObject_invoke_int_T_T_Foundation_NSObject_Foundation_NSObject
	.long LDIFF_SYM716
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8,150,7,68,151,6,152,5,68,153,4,154,3
	.align 3
Lfde76_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_64:

	.byte 5
	.asciz "System_ValueTuple`5"

	.byte 48,16
LDIFF_SYM717=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM717
	.byte 2,35,0,6
	.asciz "Item1"

LDIFF_SYM718=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM718
	.byte 2,35,16,6
	.asciz "Item2"

LDIFF_SYM719=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM719
	.byte 2,35,24,6
	.asciz "Item3"

LDIFF_SYM720=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM720
	.byte 2,35,32,6
	.asciz "Item4"

LDIFF_SYM721=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM721
	.byte 2,35,40,6
	.asciz "Item5"

LDIFF_SYM722=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM722
	.byte 2,35,44,0,7
	.asciz "System_ValueTuple`5"

LDIFF_SYM723=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM723
LTDIE_64_POINTER:

	.byte 13
LDIFF_SYM724=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM724
LTDIE_64_REFERENCE:

	.byte 14
LDIFF_SYM725=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM725
	.byte 2
	.asciz "System.ValueTuple`5<T1_DOUBLE,_T2_DOUBLE,_T3_DOUBLE,_T4_INT,_T5_INT>:.ctor"
	.asciz "System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT__ctor_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT"

	.byte 14,140,9
	.quad System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT__ctor_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT
	.quad Lme_57

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM726=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM726
	.byte 1,104,3
	.asciz "item1"

LDIFF_SYM727=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM727
	.byte 2,141,24,3
	.asciz "item2"

LDIFF_SYM728=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM728
	.byte 2,141,32,3
	.asciz "item3"

LDIFF_SYM729=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM729
	.byte 2,141,40,3
	.asciz "item4"

LDIFF_SYM730=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM730
	.byte 2,141,48,3
	.asciz "item5"

LDIFF_SYM731=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM731
	.byte 2,141,56,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM732=Lfde77_end - Lfde77_start
	.long LDIFF_SYM732
Lfde77_start:

	.long 0
	.align 3
	.quad System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT__ctor_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT

LDIFF_SYM733=Lme_57 - System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT__ctor_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT
	.long LDIFF_SYM733
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,152,8
	.align 3
Lfde77_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.ValueTuple`5<T1_DOUBLE,_T2_DOUBLE,_T3_DOUBLE,_T4_INT,_T5_INT>:Equals"
	.asciz "System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_Equals_object"

	.byte 14,162,9
	.quad System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_Equals_object
	.quad Lme_58

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM734=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM734
	.byte 2,141,24,3
	.asciz "obj"

LDIFF_SYM735=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM735
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM736=Lfde78_end - Lfde78_start
	.long LDIFF_SYM736
Lfde78_start:

	.long 0
	.align 3
	.quad System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_Equals_object

LDIFF_SYM737=Lme_58 - System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_Equals_object
	.long LDIFF_SYM737
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,154,14
	.align 3
Lfde78_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.ValueTuple`5<T1_DOUBLE,_T2_DOUBLE,_T3_DOUBLE,_T4_INT,_T5_INT>:Equals"
	.asciz "System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_Equals_System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT"

	.byte 14,177,9
	.quad System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_Equals_System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT
	.quad Lme_59

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM738=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM738
	.byte 1,106,3
	.asciz "other"

LDIFF_SYM739=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM739
	.byte 1,80,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM740=Lfde79_end - Lfde79_start
	.long LDIFF_SYM740
Lfde79_start:

	.long 0
	.align 3
	.quad System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_Equals_System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT

LDIFF_SYM741=Lme_59 - System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_Equals_System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT
	.long LDIFF_SYM741
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde79_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_65:

	.byte 17
	.asciz "System_Collections_IEqualityComparer"

	.byte 16,7
	.asciz "System_Collections_IEqualityComparer"

LDIFF_SYM742=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM742
LTDIE_65_POINTER:

	.byte 13
LDIFF_SYM743=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM743
LTDIE_65_REFERENCE:

	.byte 14
LDIFF_SYM744=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM744
	.byte 2
	.asciz "System.ValueTuple`5<T1_DOUBLE,_T2_DOUBLE,_T3_DOUBLE,_T4_INT,_T5_INT>:System.Collections.IStructuralEquatable.Equals"
	.asciz "System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Collections_IStructuralEquatable_Equals_object_System_Collections_IEqualityComparer"

	.byte 14,186,9
	.quad System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Collections_IStructuralEquatable_Equals_object_System_Collections_IEqualityComparer
	.quad Lme_5a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM745=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM745
	.byte 1,104,3
	.asciz "other"

LDIFF_SYM746=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM746
	.byte 1,105,3
	.asciz "comparer"

LDIFF_SYM747=LTDIE_65_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM747
	.byte 1,106,11
	.asciz "objTuple"

LDIFF_SYM748=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM748
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM749=Lfde80_end - Lfde80_start
	.long LDIFF_SYM749
Lfde80_start:

	.long 0
	.align 3
	.quad System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Collections_IStructuralEquatable_Equals_object_System_Collections_IEqualityComparer

LDIFF_SYM750=Lme_5a - System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Collections_IStructuralEquatable_Equals_object_System_Collections_IEqualityComparer
	.long LDIFF_SYM750
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,152,14,153,13,68,154,12
	.align 3
Lfde80_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.ValueTuple`5<T1_DOUBLE,_T2_DOUBLE,_T3_DOUBLE,_T4_INT,_T5_INT>:System.IComparable.CompareTo"
	.asciz "System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_IComparable_CompareTo_object"

	.byte 14,199,9
	.quad System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_IComparable_CompareTo_object
	.quad Lme_5b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM751=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM751
	.byte 1,105,3
	.asciz "other"

LDIFF_SYM752=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM752
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM753=Lfde81_end - Lfde81_start
	.long LDIFF_SYM753
Lfde81_start:

	.long 0
	.align 3
	.quad System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_IComparable_CompareTo_object

LDIFF_SYM754=Lme_5b - System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_IComparable_CompareTo_object
	.long LDIFF_SYM754
	.long 0
	.byte 12,31,0,68,14,192,1,157,24,158,23,68,13,29,68,153,22,154,21
	.align 3
Lfde81_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.ValueTuple`5<T1_DOUBLE,_T2_DOUBLE,_T3_DOUBLE,_T4_INT,_T5_INT>:CompareTo"
	.asciz "System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_CompareTo_System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT"

	.byte 14,219,9
	.quad System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_CompareTo_System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT
	.quad Lme_5c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM755=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM755
	.byte 1,106,3
	.asciz "other"

LDIFF_SYM756=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM756
	.byte 1,80,11
	.asciz "c"

LDIFF_SYM757=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM757
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM758=Lfde82_end - Lfde82_start
	.long LDIFF_SYM758
Lfde82_start:

	.long 0
	.align 3
	.quad System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_CompareTo_System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT

LDIFF_SYM759=Lme_5c - System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_CompareTo_System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT
	.long LDIFF_SYM759
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6,154,5
	.align 3
Lfde82_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_66:

	.byte 17
	.asciz "System_Collections_IComparer"

	.byte 16,7
	.asciz "System_Collections_IComparer"

LDIFF_SYM760=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM760
LTDIE_66_POINTER:

	.byte 13
LDIFF_SYM761=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM761
LTDIE_66_REFERENCE:

	.byte 14
LDIFF_SYM762=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM762
	.byte 2
	.asciz "System.ValueTuple`5<T1_DOUBLE,_T2_DOUBLE,_T3_DOUBLE,_T4_INT,_T5_INT>:System.Collections.IStructuralComparable.CompareTo"
	.asciz "System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Collections_IStructuralComparable_CompareTo_object_System_Collections_IComparer"

	.byte 14,236,9
	.quad System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Collections_IStructuralComparable_CompareTo_object_System_Collections_IComparer
	.quad Lme_5d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM763=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM763
	.byte 1,104,3
	.asciz "other"

LDIFF_SYM764=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM764
	.byte 1,105,3
	.asciz "comparer"

LDIFF_SYM765=LTDIE_66_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM765
	.byte 1,106,11
	.asciz "objTuple"

LDIFF_SYM766=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM766
	.byte 3,141,208,0,11
	.asciz "c"

LDIFF_SYM767=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM767
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM768=Lfde83_end - Lfde83_start
	.long LDIFF_SYM768
Lfde83_start:

	.long 0
	.align 3
	.quad System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Collections_IStructuralComparable_CompareTo_object_System_Collections_IComparer

LDIFF_SYM769=Lme_5d - System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Collections_IStructuralComparable_CompareTo_object_System_Collections_IComparer
	.long LDIFF_SYM769
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,152,18,153,17,68,154,16
	.align 3
Lfde83_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.ValueTuple`5<T1_DOUBLE,_T2_DOUBLE,_T3_DOUBLE,_T4_INT,_T5_INT>:GetHashCode"
	.asciz "System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_GetHashCode"

	.byte 14,138,10
	.quad System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_GetHashCode
	.quad Lme_5e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM770=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM770
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM771=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM771
	.byte 3,141,216,0,11
	.asciz "V_1"

LDIFF_SYM772=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM772
	.byte 3,141,224,0,11
	.asciz "V_2"

LDIFF_SYM773=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM773
	.byte 3,141,232,0,11
	.asciz "V_3"

LDIFF_SYM774=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM774
	.byte 3,141,240,0,11
	.asciz "V_4"

LDIFF_SYM775=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM775
	.byte 3,141,248,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM776=Lfde84_end - Lfde84_start
	.long LDIFF_SYM776
Lfde84_start:

	.long 0
	.align 3
	.quad System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_GetHashCode

LDIFF_SYM777=Lme_5e - System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_GetHashCode
	.long LDIFF_SYM777
	.long 0
	.byte 12,31,0,68,14,176,1,157,22,158,21,68,13,29,68,147,20,148,19,68,149,18,150,17,68,151,16,152,15,68,153,14
	.byte 154,13
	.align 3
Lfde84_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.ValueTuple`5<T1_DOUBLE,_T2_DOUBLE,_T3_DOUBLE,_T4_INT,_T5_INT>:System.Collections.IStructuralEquatable.GetHashCode"
	.asciz "System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Collections_IStructuralEquatable_GetHashCode_System_Collections_IEqualityComparer"

	.byte 14,147,10
	.quad System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Collections_IStructuralEquatable_GetHashCode_System_Collections_IEqualityComparer
	.quad Lme_5f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM778=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM778
	.byte 2,141,16,3
	.asciz "comparer"

LDIFF_SYM779=LTDIE_65_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM779
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM780=Lfde85_end - Lfde85_start
	.long LDIFF_SYM780
Lfde85_start:

	.long 0
	.align 3
	.quad System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Collections_IStructuralEquatable_GetHashCode_System_Collections_IEqualityComparer

LDIFF_SYM781=Lme_5f - System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Collections_IStructuralEquatable_GetHashCode_System_Collections_IEqualityComparer
	.long LDIFF_SYM781
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde85_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.ValueTuple`5<T1_DOUBLE,_T2_DOUBLE,_T3_DOUBLE,_T4_INT,_T5_INT>:GetHashCodeCore"
	.asciz "System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_GetHashCodeCore_System_Collections_IEqualityComparer"

	.byte 14,152,10
	.quad System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_GetHashCodeCore_System_Collections_IEqualityComparer
	.quad Lme_60

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM782=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM782
	.byte 1,105,3
	.asciz "comparer"

LDIFF_SYM783=LTDIE_65_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM783
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM784=Lfde86_end - Lfde86_start
	.long LDIFF_SYM784
Lfde86_start:

	.long 0
	.align 3
	.quad System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_GetHashCodeCore_System_Collections_IEqualityComparer

LDIFF_SYM785=Lme_60 - System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_GetHashCodeCore_System_Collections_IEqualityComparer
	.long LDIFF_SYM785
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,153,18,154,17
	.align 3
Lfde86_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.ValueTuple`5<T1_DOUBLE,_T2_DOUBLE,_T3_DOUBLE,_T4_INT,_T5_INT>:System.IValueTupleInternal.GetHashCode"
	.asciz "System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_IValueTupleInternal_GetHashCode_System_Collections_IEqualityComparer"

	.byte 14,161,10
	.quad System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_IValueTupleInternal_GetHashCode_System_Collections_IEqualityComparer
	.quad Lme_61

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM786=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM786
	.byte 2,141,16,3
	.asciz "comparer"

LDIFF_SYM787=LTDIE_65_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM787
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM788=Lfde87_end - Lfde87_start
	.long LDIFF_SYM788
Lfde87_start:

	.long 0
	.align 3
	.quad System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_IValueTupleInternal_GetHashCode_System_Collections_IEqualityComparer

LDIFF_SYM789=Lme_61 - System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_IValueTupleInternal_GetHashCode_System_Collections_IEqualityComparer
	.long LDIFF_SYM789
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde87_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.ValueTuple`5<T1_DOUBLE,_T2_DOUBLE,_T3_DOUBLE,_T4_INT,_T5_INT>:ToString"
	.asciz "System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_ToString"

	.byte 14,174,10
	.quad System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_ToString
	.quad Lme_62

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM790=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM790
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM791=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM791
	.byte 3,141,216,0,11
	.asciz "V_1"

LDIFF_SYM792=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM792
	.byte 3,141,224,0,11
	.asciz "V_2"

LDIFF_SYM793=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM793
	.byte 3,141,232,0,11
	.asciz "V_3"

LDIFF_SYM794=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM794
	.byte 3,141,240,0,11
	.asciz "V_4"

LDIFF_SYM795=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM795
	.byte 3,141,248,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM796=Lfde88_end - Lfde88_start
	.long LDIFF_SYM796
Lfde88_start:

	.long 0
	.align 3
	.quad System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_ToString

LDIFF_SYM797=Lme_62 - System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_ToString
	.long LDIFF_SYM797
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,147,16,148,15,68,149,14,150,13,68,151,12,152,11,68,153,10
	.byte 154,9
	.align 3
Lfde88_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.ValueTuple`5<T1_DOUBLE,_T2_DOUBLE,_T3_DOUBLE,_T4_INT,_T5_INT>:System.IValueTupleInternal.ToStringEnd"
	.asciz "System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_IValueTupleInternal_ToStringEnd"

	.byte 14,179,10
	.quad System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_IValueTupleInternal_ToStringEnd
	.quad Lme_63

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM798=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM798
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM799=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM799
	.byte 3,141,216,0,11
	.asciz "V_1"

LDIFF_SYM800=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM800
	.byte 3,141,224,0,11
	.asciz "V_2"

LDIFF_SYM801=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM801
	.byte 3,141,232,0,11
	.asciz "V_3"

LDIFF_SYM802=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM802
	.byte 3,141,240,0,11
	.asciz "V_4"

LDIFF_SYM803=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM803
	.byte 3,141,248,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM804=Lfde89_end - Lfde89_start
	.long LDIFF_SYM804
Lfde89_start:

	.long 0
	.align 3
	.quad System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_IValueTupleInternal_ToStringEnd

LDIFF_SYM805=Lme_63 - System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_IValueTupleInternal_ToStringEnd
	.long LDIFF_SYM805
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,147,16,148,15,68,149,14,150,13,68,151,12,152,11,68,153,10
	.byte 154,9
	.align 3
Lfde89_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.ValueTuple`5<T1_DOUBLE,_T2_DOUBLE,_T3_DOUBLE,_T4_INT,_T5_INT>:System.Runtime.CompilerServices.ITuple.get_Length"
	.asciz "System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Runtime_CompilerServices_ITuple_get_Length"

	.byte 14,185,10
	.quad System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Runtime_CompilerServices_ITuple_get_Length
	.quad Lme_64

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM806=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM806
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM807=Lfde90_end - Lfde90_start
	.long LDIFF_SYM807
Lfde90_start:

	.long 0
	.align 3
	.quad System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Runtime_CompilerServices_ITuple_get_Length

LDIFF_SYM808=Lme_64 - System_ValueTuple_5_T1_DOUBLE_T2_DOUBLE_T3_DOUBLE_T4_INT_T5_INT_System_Runtime_CompilerServices_ITuple_get_Length
	.long LDIFF_SYM808
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde90_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_67:

	.byte 5
	.asciz "System_Predicate`1"

	.byte 128,1,16
LDIFF_SYM809=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM809
	.byte 2,35,0,0,7
	.asciz "System_Predicate`1"

LDIFF_SYM810=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM810
LTDIE_67_POINTER:

	.byte 13
LDIFF_SYM811=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM811
LTDIE_67_REFERENCE:

	.byte 14
LDIFF_SYM812=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM812
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Predicate`1<string>:invoke_bool_T"
	.asciz "wrapper_delegate_invoke_System_Predicate_1_string_invoke_bool_T_string"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Predicate_1_string_invoke_bool_T_string
	.quad Lme_65

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM813=LTDIE_67_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM813
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM814=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM814
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM815=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM815
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM816=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM816
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM817=LTDIE_59_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM817
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM818=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM818
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM819=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM819
	.byte 1,104,11
	.asciz "V_5"

LDIFF_SYM820=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM820
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM821=Lfde91_end - Lfde91_start
	.long LDIFF_SYM821
Lfde91_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Predicate_1_string_invoke_bool_T_string

LDIFF_SYM822=Lme_65 - wrapper_delegate_invoke_System_Predicate_1_string_invoke_bool_T_string
	.long LDIFF_SYM822
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,152,6,153,5,68,154,4
	.align 3
Lfde91_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_68:

	.byte 5
	.asciz "System_Action`1"

	.byte 128,1,16
LDIFF_SYM823=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM823
	.byte 2,35,0,0,7
	.asciz "System_Action`1"

LDIFF_SYM824=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM824
LTDIE_68_POINTER:

	.byte 13
LDIFF_SYM825=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM825
LTDIE_68_REFERENCE:

	.byte 14
LDIFF_SYM826=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM826
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Action`1<string>:invoke_void_T"
	.asciz "wrapper_delegate_invoke_System_Action_1_string_invoke_void_T_string"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Action_1_string_invoke_void_T_string
	.quad Lme_66

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM827=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM827
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM828=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM828
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM829=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM829
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM830=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM830
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM831=LTDIE_59_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM831
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM832=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM832
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM833=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM833
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM834=Lfde92_end - Lfde92_start
	.long LDIFF_SYM834
Lfde92_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Action_1_string_invoke_void_T_string

LDIFF_SYM835=Lme_66 - wrapper_delegate_invoke_System_Action_1_string_invoke_void_T_string
	.long LDIFF_SYM835
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,152,6,153,5,68,154,4
	.align 3
Lfde92_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_69:

	.byte 5
	.asciz "System_Comparison`1"

	.byte 128,1,16
LDIFF_SYM836=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM836
	.byte 2,35,0,0,7
	.asciz "System_Comparison`1"

LDIFF_SYM837=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM837
LTDIE_69_POINTER:

	.byte 13
LDIFF_SYM838=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM838
LTDIE_69_REFERENCE:

	.byte 14
LDIFF_SYM839=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM839
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Comparison`1<string>:invoke_int_T_T"
	.asciz "wrapper_delegate_invoke_System_Comparison_1_string_invoke_int_T_T_string_string"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Comparison_1_string_invoke_int_T_T_string_string
	.quad Lme_67

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM840=LTDIE_69_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM840
	.byte 1,104,3
	.asciz "param0"

LDIFF_SYM841=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM841
	.byte 1,105,3
	.asciz "param1"

LDIFF_SYM842=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM842
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM843=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM843
	.byte 1,102,11
	.asciz "V_1"

LDIFF_SYM844=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM844
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM845=LTDIE_59_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM845
	.byte 1,103,11
	.asciz "V_3"

LDIFF_SYM846=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM846
	.byte 1,101,11
	.asciz "V_4"

LDIFF_SYM847=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM847
	.byte 1,103,11
	.asciz "V_5"

LDIFF_SYM848=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM848
	.byte 1,101,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM849=Lfde93_end - Lfde93_start
	.long LDIFF_SYM849
Lfde93_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Comparison_1_string_invoke_int_T_T_string_string

LDIFF_SYM850=Lme_67 - wrapper_delegate_invoke_System_Comparison_1_string_invoke_int_T_T_string_string
	.long LDIFF_SYM850
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8,150,7,68,151,6,152,5,68,153,4,154,3
	.align 3
Lfde93_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_70:

	.byte 5
	.asciz "_InternalEnumerator`1"

	.byte 32,16
LDIFF_SYM851=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM851
	.byte 2,35,0,6
	.asciz "array"

LDIFF_SYM852=LTDIE_59_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM852
	.byte 2,35,16,6
	.asciz "idx"

LDIFF_SYM853=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM853
	.byte 2,35,24,0,7
	.asciz "_InternalEnumerator`1"

LDIFF_SYM854=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM854
LTDIE_70_POINTER:

	.byte 13
LDIFF_SYM855=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM855
LTDIE_70_REFERENCE:

	.byte 14
LDIFF_SYM856=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM856
	.byte 2
	.asciz "System.Array/InternalEnumerator`1<T_INST>:.ctor"
	.asciz "System_Array_InternalEnumerator_1_T_INST__ctor_System_Array"

	.byte 15,236,1
	.quad System_Array_InternalEnumerator_1_T_INST__ctor_System_Array
	.quad Lme_69

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM857=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM857
	.byte 1,105,3
	.asciz "array"

LDIFF_SYM858=LTDIE_59_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM858
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM859=Lfde94_end - Lfde94_start
	.long LDIFF_SYM859
Lfde94_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_T_INST__ctor_System_Array

LDIFF_SYM860=Lme_69 - System_Array_InternalEnumerator_1_T_INST__ctor_System_Array
	.long LDIFF_SYM860
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4
	.align 3
Lfde94_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<T_INST>:Dispose"
	.asciz "System_Array_InternalEnumerator_1_T_INST_Dispose"

	.byte 15,242,1
	.quad System_Array_InternalEnumerator_1_T_INST_Dispose
	.quad Lme_6a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM861=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM861
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM862=Lfde95_end - Lfde95_start
	.long LDIFF_SYM862
Lfde95_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_T_INST_Dispose

LDIFF_SYM863=Lme_6a - System_Array_InternalEnumerator_1_T_INST_Dispose
	.long LDIFF_SYM863
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde95_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<T_INST>:MoveNext"
	.asciz "System_Array_InternalEnumerator_1_T_INST_MoveNext"

	.byte 15,246,1
	.quad System_Array_InternalEnumerator_1_T_INST_MoveNext
	.quad Lme_6b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM864=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM864
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM865=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM865
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM866=Lfde96_end - Lfde96_start
	.long LDIFF_SYM866
Lfde96_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_T_INST_MoveNext

LDIFF_SYM867=Lme_6b - System_Array_InternalEnumerator_1_T_INST_MoveNext
	.long LDIFF_SYM867
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4,154,3
	.align 3
Lfde96_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<T_INST>:get_Current"
	.asciz "System_Array_InternalEnumerator_1_T_INST_get_Current"

	.byte 15,254,1
	.quad System_Array_InternalEnumerator_1_T_INST_get_Current
	.quad Lme_6c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM868=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM868
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM869=Lfde97_end - Lfde97_start
	.long LDIFF_SYM869
Lfde97_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_T_INST_get_Current

LDIFF_SYM870=Lme_6c - System_Array_InternalEnumerator_1_T_INST_get_Current
	.long LDIFF_SYM870
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,154,10
	.align 3
Lfde97_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<T_INST>:System.Collections.IEnumerator.Reset"
	.asciz "System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_Reset"

	.byte 15,137,2
	.quad System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_Reset
	.quad Lme_6d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM871=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM871
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM872=Lfde98_end - Lfde98_start
	.long LDIFF_SYM872
Lfde98_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_Reset

LDIFF_SYM873=Lme_6d - System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_Reset
	.long LDIFF_SYM873
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde98_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<T_INST>:System.Collections.IEnumerator.get_Current"
	.asciz "System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_get_Current"

	.byte 15,142,2
	.quad System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_get_Current
	.quad Lme_6e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM874=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM874
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM875=Lfde99_end - Lfde99_start
	.long LDIFF_SYM875
Lfde99_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_get_Current

LDIFF_SYM876=Lme_6e - System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_get_Current
	.long LDIFF_SYM876
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde99_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__IEnumerable_GetEnumerator<T_INST>"
	.asciz "System_Array_InternalArray__IEnumerable_GetEnumerator_T_INST"

	.byte 15,89
	.quad System_Array_InternalArray__IEnumerable_GetEnumerator_T_INST
	.quad Lme_6f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM877=LTDIE_59_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM877
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM878=Lfde100_end - Lfde100_start
	.long LDIFF_SYM878
Lfde100_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__IEnumerable_GetEnumerator_T_INST

LDIFF_SYM879=Lme_6f - System_Array_InternalArray__IEnumerable_GetEnumerator_T_INST
	.long LDIFF_SYM879
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde100_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Action`1<CoreLocation.CLLocation>:invoke_void_T"
	.asciz "wrapper_delegate_invoke_System_Action_1_CoreLocation_CLLocation_invoke_void_T_CoreLocation_CLLocation"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Action_1_CoreLocation_CLLocation_invoke_void_T_CoreLocation_CLLocation
	.quad Lme_70

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM880=LTDIE_52_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM880
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM881=LTDIE_54_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM881
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM882=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM882
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM883=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM883
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM884=LTDIE_59_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM884
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM885=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM885
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM886=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM886
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM887=Lfde101_end - Lfde101_start
	.long LDIFF_SYM887
Lfde101_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Action_1_CoreLocation_CLLocation_invoke_void_T_CoreLocation_CLLocation

LDIFF_SYM888=Lme_70 - wrapper_delegate_invoke_System_Action_1_CoreLocation_CLLocation_invoke_void_T_CoreLocation_CLLocation
	.long LDIFF_SYM888
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,152,6,153,5,68,154,4
	.align 3
Lfde101_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_other)_Xamarin.Essentials.DisplayInfo:StructureToPtr"
	.asciz "wrapper_other_Xamarin_Essentials_DisplayInfo_StructureToPtr_object_intptr_bool"

	.byte 0,0
	.quad wrapper_other_Xamarin_Essentials_DisplayInfo_StructureToPtr_object_intptr_bool
	.quad Lme_71

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM889=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM889
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM890=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM890
	.byte 1,106,3
	.asciz "param2"

LDIFF_SYM891=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM891
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM892=Lfde102_end - Lfde102_start
	.long LDIFF_SYM892
Lfde102_start:

	.long 0
	.align 3
	.quad wrapper_other_Xamarin_Essentials_DisplayInfo_StructureToPtr_object_intptr_bool

LDIFF_SYM893=Lme_71 - wrapper_other_Xamarin_Essentials_DisplayInfo_StructureToPtr_object_intptr_bool
	.long LDIFF_SYM893
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde102_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_other)_Xamarin.Essentials.DisplayInfo:PtrToStructure"
	.asciz "wrapper_other_Xamarin_Essentials_DisplayInfo_PtrToStructure_intptr_object"

	.byte 0,0
	.quad wrapper_other_Xamarin_Essentials_DisplayInfo_PtrToStructure_intptr_object
	.quad Lme_72

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM894=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM894
	.byte 1,105,3
	.asciz "param1"

LDIFF_SYM895=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM895
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM896=Lfde103_end - Lfde103_start
	.long LDIFF_SYM896
Lfde103_start:

	.long 0
	.align 3
	.quad wrapper_other_Xamarin_Essentials_DisplayInfo_PtrToStructure_intptr_object

LDIFF_SYM897=Lme_72 - wrapper_other_Xamarin_Essentials_DisplayInfo_PtrToStructure_intptr_object
	.long LDIFF_SYM897
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,153,2
	.align 3
Lfde103_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_71:

	.byte 17
	.asciz "System_Collections_Generic_IEnumerable`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEnumerable`1"

LDIFF_SYM898=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM898
LTDIE_71_POINTER:

	.byte 13
LDIFF_SYM899=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM899
LTDIE_71_REFERENCE:

	.byte 14
LDIFF_SYM900=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM900
	.byte 2
	.asciz "System.Linq.Enumerable:OrderByDescending<UIKit.UIWindow,_System.nfloat>"
	.asciz "System_Linq_Enumerable_OrderByDescending_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_System_nfloat"

	.byte 16,18
	.quad System_Linq_Enumerable_OrderByDescending_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_System_nfloat
	.quad Lme_73

	.byte 2,118,16,3
	.asciz "source"

LDIFF_SYM901=LTDIE_71_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM901
	.byte 2,141,16,3
	.asciz "keySelector"

LDIFF_SYM902=LTDIE_58_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM902
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM903=Lfde104_end - Lfde104_start
	.long LDIFF_SYM903
Lfde104_start:

	.long 0
	.align 3
	.quad System_Linq_Enumerable_OrderByDescending_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_System_nfloat

LDIFF_SYM904=Lme_73 - System_Linq_Enumerable_OrderByDescending_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_System_nfloat
	.long LDIFF_SYM904
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde104_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_72:

	.byte 5
	.asciz "System_Collections_Generic_EqualityComparer`1"

	.byte 16,16
LDIFF_SYM905=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM905
	.byte 2,35,0,0,7
	.asciz "System_Collections_Generic_EqualityComparer`1"

LDIFF_SYM906=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM906
LTDIE_72_POINTER:

	.byte 13
LDIFF_SYM907=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM907
LTDIE_72_REFERENCE:

	.byte 14
LDIFF_SYM908=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM908
	.byte 2
	.asciz "System.Collections.Generic.EqualityComparer`1<T_INT>:get_Default"
	.asciz "System_Collections_Generic_EqualityComparer_1_T_INT_get_Default"

	.byte 17,34
	.quad System_Collections_Generic_EqualityComparer_1_T_INT_get_Default
	.quad Lme_74

	.byte 2,118,16,11
	.asciz "comparer"

LDIFF_SYM909=LTDIE_72_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM909
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM910=Lfde105_end - Lfde105_start
	.long LDIFF_SYM910
Lfde105_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_EqualityComparer_1_T_INT_get_Default

LDIFF_SYM911=Lme_74 - System_Collections_Generic_EqualityComparer_1_T_INT_get_Default
	.long LDIFF_SYM911
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde105_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_73:

	.byte 5
	.asciz "System_Collections_Generic_EqualityComparer`1"

	.byte 16,16
LDIFF_SYM912=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM912
	.byte 2,35,0,0,7
	.asciz "System_Collections_Generic_EqualityComparer`1"

LDIFF_SYM913=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM913
LTDIE_73_POINTER:

	.byte 13
LDIFF_SYM914=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM914
LTDIE_73_REFERENCE:

	.byte 14
LDIFF_SYM915=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM915
	.byte 2
	.asciz "System.Collections.Generic.EqualityComparer`1<T_DOUBLE>:get_Default"
	.asciz "System_Collections_Generic_EqualityComparer_1_T_DOUBLE_get_Default"

	.byte 17,34
	.quad System_Collections_Generic_EqualityComparer_1_T_DOUBLE_get_Default
	.quad Lme_75

	.byte 2,118,16,11
	.asciz "comparer"

LDIFF_SYM916=LTDIE_73_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM916
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM917=Lfde106_end - Lfde106_start
	.long LDIFF_SYM917
Lfde106_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_EqualityComparer_1_T_DOUBLE_get_Default

LDIFF_SYM918=Lme_75 - System_Collections_Generic_EqualityComparer_1_T_DOUBLE_get_Default
	.long LDIFF_SYM918
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde106_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_74:

	.byte 5
	.asciz "System_Collections_Generic_Comparer`1"

	.byte 16,16
LDIFF_SYM919=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM919
	.byte 2,35,0,0,7
	.asciz "System_Collections_Generic_Comparer`1"

LDIFF_SYM920=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM920
LTDIE_74_POINTER:

	.byte 13
LDIFF_SYM921=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM921
LTDIE_74_REFERENCE:

	.byte 14
LDIFF_SYM922=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM922
	.byte 2
	.asciz "System.Collections.Generic.Comparer`1<T_INT>:get_Default"
	.asciz "System_Collections_Generic_Comparer_1_T_INT_get_Default"

	.byte 18,28
	.quad System_Collections_Generic_Comparer_1_T_INT_get_Default
	.quad Lme_76

	.byte 2,118,16,11
	.asciz "comparer"

LDIFF_SYM923=LTDIE_74_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM923
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM924=Lfde107_end - Lfde107_start
	.long LDIFF_SYM924
Lfde107_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_Comparer_1_T_INT_get_Default

LDIFF_SYM925=Lme_76 - System_Collections_Generic_Comparer_1_T_INT_get_Default
	.long LDIFF_SYM925
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde107_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_75:

	.byte 5
	.asciz "System_Collections_Generic_Comparer`1"

	.byte 16,16
LDIFF_SYM926=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM926
	.byte 2,35,0,0,7
	.asciz "System_Collections_Generic_Comparer`1"

LDIFF_SYM927=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM927
LTDIE_75_POINTER:

	.byte 13
LDIFF_SYM928=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM928
LTDIE_75_REFERENCE:

	.byte 14
LDIFF_SYM929=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM929
	.byte 2
	.asciz "System.Collections.Generic.Comparer`1<T_DOUBLE>:get_Default"
	.asciz "System_Collections_Generic_Comparer_1_T_DOUBLE_get_Default"

	.byte 18,28
	.quad System_Collections_Generic_Comparer_1_T_DOUBLE_get_Default
	.quad Lme_77

	.byte 2,118,16,11
	.asciz "comparer"

LDIFF_SYM930=LTDIE_75_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM930
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM931=Lfde108_end - Lfde108_start
	.long LDIFF_SYM931
Lfde108_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_Comparer_1_T_DOUBLE_get_Default

LDIFF_SYM932=Lme_77 - System_Collections_Generic_Comparer_1_T_DOUBLE_get_Default
	.long LDIFF_SYM932
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde108_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__get_Item<T_INST>"
	.asciz "System_Array_InternalArray__get_Item_T_INST_int"

	.byte 15,194,1
	.quad System_Array_InternalArray__get_Item_T_INST_int
	.quad Lme_78

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM933=LTDIE_59_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM933
	.byte 2,141,32,3
	.asciz "index"

LDIFF_SYM934=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM934
	.byte 2,141,40,11
	.asciz "value"

LDIFF_SYM935=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM935
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM936=Lfde109_end - Lfde109_start
	.long LDIFF_SYM936
Lfde109_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__get_Item_T_INST_int

LDIFF_SYM937=Lme_78 - System_Array_InternalArray__get_Item_T_INST_int
	.long LDIFF_SYM937
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.align 3
Lfde109_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_77:

	.byte 5
	.asciz "System_Linq_OrderedEnumerable`1"

	.byte 24,16
LDIFF_SYM938=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM938
	.byte 2,35,0,6
	.asciz "_source"

LDIFF_SYM939=LTDIE_71_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM939
	.byte 2,35,16,0,7
	.asciz "System_Linq_OrderedEnumerable`1"

LDIFF_SYM940=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM940
LTDIE_77_POINTER:

	.byte 13
LDIFF_SYM941=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM941
LTDIE_77_REFERENCE:

	.byte 14
LDIFF_SYM942=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM942
LTDIE_78:

	.byte 17
	.asciz "System_Collections_Generic_IComparer`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IComparer`1"

LDIFF_SYM943=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM943
LTDIE_78_POINTER:

	.byte 13
LDIFF_SYM944=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM944
LTDIE_78_REFERENCE:

	.byte 14
LDIFF_SYM945=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM945
LTDIE_76:

	.byte 5
	.asciz "System_Linq_OrderedEnumerable`2"

	.byte 56,16
LDIFF_SYM946=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM946
	.byte 2,35,0,6
	.asciz "_parent"

LDIFF_SYM947=LTDIE_77_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM947
	.byte 2,35,24,6
	.asciz "_keySelector"

LDIFF_SYM948=LTDIE_58_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM948
	.byte 2,35,32,6
	.asciz "_comparer"

LDIFF_SYM949=LTDIE_78_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM949
	.byte 2,35,40,6
	.asciz "_descending"

LDIFF_SYM950=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM950
	.byte 2,35,48,0,7
	.asciz "System_Linq_OrderedEnumerable`2"

LDIFF_SYM951=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM951
LTDIE_76_POINTER:

	.byte 13
LDIFF_SYM952=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM952
LTDIE_76_REFERENCE:

	.byte 14
LDIFF_SYM953=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM953
	.byte 2
	.asciz "System.Linq.OrderedEnumerable`2<UIKit.UIWindow,_System.nfloat>:.ctor"
	.asciz "System_Linq_OrderedEnumerable_2_UIKit_UIWindow_System_nfloat__ctor_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool_System_Linq_OrderedEnumerable_1_UIKit_UIWindow"

	.byte 19,128,3
	.quad System_Linq_OrderedEnumerable_2_UIKit_UIWindow_System_nfloat__ctor_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool_System_Linq_OrderedEnumerable_1_UIKit_UIWindow
	.quad Lme_79

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM954=LTDIE_76_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM954
	.byte 1,101,3
	.asciz "source"

LDIFF_SYM955=LTDIE_71_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM955
	.byte 2,141,40,3
	.asciz "keySelector"

LDIFF_SYM956=LTDIE_58_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM956
	.byte 2,141,48,3
	.asciz "comparer"

LDIFF_SYM957=LTDIE_78_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM957
	.byte 2,141,56,3
	.asciz "descending"

LDIFF_SYM958=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM958
	.byte 3,141,192,0,3
	.asciz "parent"

LDIFF_SYM959=LTDIE_77_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM959
	.byte 3,141,200,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM960=Lfde110_end - Lfde110_start
	.long LDIFF_SYM960
Lfde110_start:

	.long 0
	.align 3
	.quad System_Linq_OrderedEnumerable_2_UIKit_UIWindow_System_nfloat__ctor_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool_System_Linq_OrderedEnumerable_1_UIKit_UIWindow

LDIFF_SYM961=Lme_79 - System_Linq_OrderedEnumerable_2_UIKit_UIWindow_System_nfloat__ctor_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool_System_Linq_OrderedEnumerable_1_UIKit_UIWindow
	.long LDIFF_SYM961
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,147,8,148,7,68,149,6
	.align 3
Lfde110_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_79:

	.byte 5
	.asciz "System_Predicate`1"

	.byte 128,1,16
LDIFF_SYM962=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM962
	.byte 2,35,0,0,7
	.asciz "System_Predicate`1"

LDIFF_SYM963=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM963
LTDIE_79_POINTER:

	.byte 13
LDIFF_SYM964=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM964
LTDIE_79_REFERENCE:

	.byte 14
LDIFF_SYM965=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM965
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Predicate`1<UIKit.UIWindow>:invoke_bool_T"
	.asciz "wrapper_delegate_invoke_System_Predicate_1_UIKit_UIWindow_invoke_bool_T_UIKit_UIWindow"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Predicate_1_UIKit_UIWindow_invoke_bool_T_UIKit_UIWindow
	.quad Lme_7b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM966=LTDIE_79_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM966
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM967=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM967
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM968=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM968
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM969=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM969
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM970=LTDIE_59_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM970
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM971=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM971
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM972=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM972
	.byte 1,104,11
	.asciz "V_5"

LDIFF_SYM973=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM973
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM974=Lfde111_end - Lfde111_start
	.long LDIFF_SYM974
Lfde111_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Predicate_1_UIKit_UIWindow_invoke_bool_T_UIKit_UIWindow

LDIFF_SYM975=Lme_7b - wrapper_delegate_invoke_System_Predicate_1_UIKit_UIWindow_invoke_bool_T_UIKit_UIWindow
	.long LDIFF_SYM975
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,152,6,153,5,68,154,4
	.align 3
Lfde111_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_80:

	.byte 5
	.asciz "System_Action`1"

	.byte 128,1,16
LDIFF_SYM976=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM976
	.byte 2,35,0,0,7
	.asciz "System_Action`1"

LDIFF_SYM977=LTDIE_80 - Ldebug_info_start
	.long LDIFF_SYM977
LTDIE_80_POINTER:

	.byte 13
LDIFF_SYM978=LTDIE_80 - Ldebug_info_start
	.long LDIFF_SYM978
LTDIE_80_REFERENCE:

	.byte 14
LDIFF_SYM979=LTDIE_80 - Ldebug_info_start
	.long LDIFF_SYM979
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Action`1<UIKit.UIWindow>:invoke_void_T"
	.asciz "wrapper_delegate_invoke_System_Action_1_UIKit_UIWindow_invoke_void_T_UIKit_UIWindow"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Action_1_UIKit_UIWindow_invoke_void_T_UIKit_UIWindow
	.quad Lme_7c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM980=LTDIE_80_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM980
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM981=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM981
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM982=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM982
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM983=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM983
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM984=LTDIE_59_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM984
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM985=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM985
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM986=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM986
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM987=Lfde112_end - Lfde112_start
	.long LDIFF_SYM987
Lfde112_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Action_1_UIKit_UIWindow_invoke_void_T_UIKit_UIWindow

LDIFF_SYM988=Lme_7c - wrapper_delegate_invoke_System_Action_1_UIKit_UIWindow_invoke_void_T_UIKit_UIWindow
	.long LDIFF_SYM988
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,152,6,153,5,68,154,4
	.align 3
Lfde112_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_81:

	.byte 5
	.asciz "System_Comparison`1"

	.byte 128,1,16
LDIFF_SYM989=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM989
	.byte 2,35,0,0,7
	.asciz "System_Comparison`1"

LDIFF_SYM990=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM990
LTDIE_81_POINTER:

	.byte 13
LDIFF_SYM991=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM991
LTDIE_81_REFERENCE:

	.byte 14
LDIFF_SYM992=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM992
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Comparison`1<UIKit.UIWindow>:invoke_int_T_T"
	.asciz "wrapper_delegate_invoke_System_Comparison_1_UIKit_UIWindow_invoke_int_T_T_UIKit_UIWindow_UIKit_UIWindow"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Comparison_1_UIKit_UIWindow_invoke_int_T_T_UIKit_UIWindow_UIKit_UIWindow
	.quad Lme_7d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM993=LTDIE_81_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM993
	.byte 1,104,3
	.asciz "param0"

LDIFF_SYM994=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM994
	.byte 1,105,3
	.asciz "param1"

LDIFF_SYM995=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM995
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM996=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM996
	.byte 1,102,11
	.asciz "V_1"

LDIFF_SYM997=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM997
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM998=LTDIE_59_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM998
	.byte 1,103,11
	.asciz "V_3"

LDIFF_SYM999=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM999
	.byte 1,101,11
	.asciz "V_4"

LDIFF_SYM1000=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1000
	.byte 1,103,11
	.asciz "V_5"

LDIFF_SYM1001=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1001
	.byte 1,101,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1002=Lfde113_end - Lfde113_start
	.long LDIFF_SYM1002
Lfde113_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Comparison_1_UIKit_UIWindow_invoke_int_T_T_UIKit_UIWindow_UIKit_UIWindow

LDIFF_SYM1003=Lme_7d - wrapper_delegate_invoke_System_Comparison_1_UIKit_UIWindow_invoke_int_T_T_UIKit_UIWindow_UIKit_UIWindow
	.long LDIFF_SYM1003
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8,150,7,68,151,6,152,5,68,153,4,154,3
	.align 3
Lfde113_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_82:

	.byte 5
	.asciz "System_Linq_EnumerableSorter`1"

	.byte 16,16
LDIFF_SYM1004=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1004
	.byte 2,35,0,0,7
	.asciz "System_Linq_EnumerableSorter`1"

LDIFF_SYM1005=LTDIE_82 - Ldebug_info_start
	.long LDIFF_SYM1005
LTDIE_82_POINTER:

	.byte 13
LDIFF_SYM1006=LTDIE_82 - Ldebug_info_start
	.long LDIFF_SYM1006
LTDIE_82_REFERENCE:

	.byte 14
LDIFF_SYM1007=LTDIE_82 - Ldebug_info_start
	.long LDIFF_SYM1007
	.byte 2
	.asciz "System.Linq.OrderedEnumerable`2<UIKit.UIWindow,_System.nfloat>:GetEnumerableSorter"
	.asciz "System_Linq_OrderedEnumerable_2_UIKit_UIWindow_System_nfloat_GetEnumerableSorter_System_Linq_EnumerableSorter_1_UIKit_UIWindow"

	.byte 19,139,3
	.quad System_Linq_OrderedEnumerable_2_UIKit_UIWindow_System_nfloat_GetEnumerableSorter_System_Linq_EnumerableSorter_1_UIKit_UIWindow
	.quad Lme_7e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1008=LTDIE_76_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1008
	.byte 1,105,3
	.asciz "next"

LDIFF_SYM1009=LTDIE_82_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1009
	.byte 1,106,11
	.asciz "sorter"

LDIFF_SYM1010=LTDIE_82_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1010
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1011=Lfde114_end - Lfde114_start
	.long LDIFF_SYM1011
Lfde114_start:

	.long 0
	.align 3
	.quad System_Linq_OrderedEnumerable_2_UIKit_UIWindow_System_nfloat_GetEnumerableSorter_System_Linq_EnumerableSorter_1_UIKit_UIWindow

LDIFF_SYM1012=Lme_7e - System_Linq_OrderedEnumerable_2_UIKit_UIWindow_System_nfloat_GetEnumerableSorter_System_Linq_EnumerableSorter_1_UIKit_UIWindow
	.long LDIFF_SYM1012
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6,154,5
	.align 3
Lfde114_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_83:

	.byte 5
	.asciz "System_Linq_CachingComparer`1"

	.byte 16,16
LDIFF_SYM1013=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1013
	.byte 2,35,0,0,7
	.asciz "System_Linq_CachingComparer`1"

LDIFF_SYM1014=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM1014
LTDIE_83_POINTER:

	.byte 13
LDIFF_SYM1015=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM1015
LTDIE_83_REFERENCE:

	.byte 14
LDIFF_SYM1016=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM1016
	.byte 2
	.asciz "System.Linq.OrderedEnumerable`2<UIKit.UIWindow,_System.nfloat>:GetComparer"
	.asciz "System_Linq_OrderedEnumerable_2_UIKit_UIWindow_System_nfloat_GetComparer_System_Linq_CachingComparer_1_UIKit_UIWindow"

	.byte 19,150,3
	.quad System_Linq_OrderedEnumerable_2_UIKit_UIWindow_System_nfloat_GetComparer_System_Linq_CachingComparer_1_UIKit_UIWindow
	.quad Lme_7f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1017=LTDIE_76_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1017
	.byte 1,105,3
	.asciz "childComparer"

LDIFF_SYM1018=LTDIE_83_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1018
	.byte 1,106,11
	.asciz "cmp"

LDIFF_SYM1019=LTDIE_83_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1019
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1020=Lfde115_end - Lfde115_start
	.long LDIFF_SYM1020
Lfde115_start:

	.long 0
	.align 3
	.quad System_Linq_OrderedEnumerable_2_UIKit_UIWindow_System_nfloat_GetComparer_System_Linq_CachingComparer_1_UIKit_UIWindow

LDIFF_SYM1021=Lme_7f - System_Linq_OrderedEnumerable_2_UIKit_UIWindow_System_nfloat_GetComparer_System_Linq_CachingComparer_1_UIKit_UIWindow
	.long LDIFF_SYM1021
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,152,8,153,7,68,154,6
	.align 3
Lfde115_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_84:

	.byte 8
	.asciz "System_TypeCode"

	.byte 4
LDIFF_SYM1022=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1022
	.byte 9
	.asciz "Empty"

	.byte 0,9
	.asciz "Object"

	.byte 1,9
	.asciz "DBNull"

	.byte 2,9
	.asciz "Boolean"

	.byte 3,9
	.asciz "Char"

	.byte 4,9
	.asciz "SByte"

	.byte 5,9
	.asciz "Byte"

	.byte 6,9
	.asciz "Int16"

	.byte 7,9
	.asciz "UInt16"

	.byte 8,9
	.asciz "Int32"

	.byte 9,9
	.asciz "UInt32"

	.byte 10,9
	.asciz "Int64"

	.byte 11,9
	.asciz "UInt64"

	.byte 12,9
	.asciz "Single"

	.byte 13,9
	.asciz "Double"

	.byte 14,9
	.asciz "Decimal"

	.byte 15,9
	.asciz "DateTime"

	.byte 16,9
	.asciz "String"

	.byte 18,0,7
	.asciz "System_TypeCode"

LDIFF_SYM1023=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM1023
LTDIE_84_POINTER:

	.byte 13
LDIFF_SYM1024=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM1024
LTDIE_84_REFERENCE:

	.byte 14
LDIFF_SYM1025=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM1025
	.byte 2
	.asciz "System.Collections.Generic.EqualityComparer`1<T_INT>:CreateComparer"
	.asciz "System_Collections_Generic_EqualityComparer_1_T_INT_CreateComparer"

	.byte 17,51
	.quad System_Collections_Generic_EqualityComparer_1_T_INT_CreateComparer
	.quad Lme_80

	.byte 2,118,16,11
	.asciz "t"

LDIFF_SYM1026=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1026
	.byte 1,105,11
	.asciz "u"

LDIFF_SYM1027=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1027
	.byte 1,104,11
	.asciz "underlyingTypeCode"

LDIFF_SYM1028=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM1028
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1029=Lfde116_end - Lfde116_start
	.long LDIFF_SYM1029
Lfde116_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_EqualityComparer_1_T_INT_CreateComparer

LDIFF_SYM1030=Lme_80 - System_Collections_Generic_EqualityComparer_1_T_INT_CreateComparer
	.long LDIFF_SYM1030
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6,153,5,68,154,4
	.align 3
Lfde116_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.EqualityComparer`1<T_DOUBLE>:CreateComparer"
	.asciz "System_Collections_Generic_EqualityComparer_1_T_DOUBLE_CreateComparer"

	.byte 17,51
	.quad System_Collections_Generic_EqualityComparer_1_T_DOUBLE_CreateComparer
	.quad Lme_81

	.byte 2,118,16,11
	.asciz "t"

LDIFF_SYM1031=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1031
	.byte 1,105,11
	.asciz "u"

LDIFF_SYM1032=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1032
	.byte 1,104,11
	.asciz "underlyingTypeCode"

LDIFF_SYM1033=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM1033
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1034=Lfde117_end - Lfde117_start
	.long LDIFF_SYM1034
Lfde117_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_EqualityComparer_1_T_DOUBLE_CreateComparer

LDIFF_SYM1035=Lme_81 - System_Collections_Generic_EqualityComparer_1_T_DOUBLE_CreateComparer
	.long LDIFF_SYM1035
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6,153,5,68,154,4
	.align 3
Lfde117_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.Comparer`1<T_INT>:CreateComparer"
	.asciz "System_Collections_Generic_Comparer_1_T_INT_CreateComparer"

	.byte 18,53
	.quad System_Collections_Generic_Comparer_1_T_INT_CreateComparer
	.quad Lme_82

	.byte 2,118,16,11
	.asciz "t"

LDIFF_SYM1036=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1036
	.byte 1,105,11
	.asciz "u"

LDIFF_SYM1037=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1037
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1038=Lfde118_end - Lfde118_start
	.long LDIFF_SYM1038
Lfde118_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_Comparer_1_T_INT_CreateComparer

LDIFF_SYM1039=Lme_82 - System_Collections_Generic_Comparer_1_T_INT_CreateComparer
	.long LDIFF_SYM1039
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6,154,5
	.align 3
Lfde118_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.Comparer`1<T_DOUBLE>:CreateComparer"
	.asciz "System_Collections_Generic_Comparer_1_T_DOUBLE_CreateComparer"

	.byte 18,53
	.quad System_Collections_Generic_Comparer_1_T_DOUBLE_CreateComparer
	.quad Lme_83

	.byte 2,118,16,11
	.asciz "t"

LDIFF_SYM1040=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1040
	.byte 1,105,11
	.asciz "u"

LDIFF_SYM1041=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1041
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1042=Lfde119_end - Lfde119_start
	.long LDIFF_SYM1042
Lfde119_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_Comparer_1_T_DOUBLE_CreateComparer

LDIFF_SYM1043=Lme_83 - System_Collections_Generic_Comparer_1_T_DOUBLE_CreateComparer
	.long LDIFF_SYM1043
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6,154,5
	.align 3
Lfde119_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_85:

	.byte 5
	.asciz "System_Collections_Generic_Comparer`1"

	.byte 16,16
LDIFF_SYM1044=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1044
	.byte 2,35,0,0,7
	.asciz "System_Collections_Generic_Comparer`1"

LDIFF_SYM1045=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM1045
LTDIE_85_POINTER:

	.byte 13
LDIFF_SYM1046=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM1046
LTDIE_85_REFERENCE:

	.byte 14
LDIFF_SYM1047=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM1047
	.byte 2
	.asciz "System.Collections.Generic.Comparer`1<System.nfloat>:get_Default"
	.asciz "System_Collections_Generic_Comparer_1_System_nfloat_get_Default"

	.byte 18,28
	.quad System_Collections_Generic_Comparer_1_System_nfloat_get_Default
	.quad Lme_84

	.byte 2,118,16,11
	.asciz "comparer"

LDIFF_SYM1048=LTDIE_85_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1048
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1049=Lfde120_end - Lfde120_start
	.long LDIFF_SYM1049
Lfde120_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_Comparer_1_System_nfloat_get_Default

LDIFF_SYM1050=Lme_84 - System_Collections_Generic_Comparer_1_System_nfloat_get_Default
	.long LDIFF_SYM1050
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde120_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_86:

	.byte 5
	.asciz "System_Comparison`1"

	.byte 128,1,16
LDIFF_SYM1051=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM1051
	.byte 2,35,0,0,7
	.asciz "System_Comparison`1"

LDIFF_SYM1052=LTDIE_86 - Ldebug_info_start
	.long LDIFF_SYM1052
LTDIE_86_POINTER:

	.byte 13
LDIFF_SYM1053=LTDIE_86 - Ldebug_info_start
	.long LDIFF_SYM1053
LTDIE_86_REFERENCE:

	.byte 14
LDIFF_SYM1054=LTDIE_86 - Ldebug_info_start
	.long LDIFF_SYM1054
	.byte 2
	.asciz "System.Collections.Generic.Comparer`1<System.nfloat>:Create"
	.asciz "System_Collections_Generic_Comparer_1_System_nfloat_Create_System_Comparison_1_System_nfloat"

	.byte 18,41
	.quad System_Collections_Generic_Comparer_1_System_nfloat_Create_System_Comparison_1_System_nfloat
	.quad Lme_85

	.byte 2,118,16,3
	.asciz "comparison"

LDIFF_SYM1055=LTDIE_86_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1055
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1056=Lfde121_end - Lfde121_start
	.long LDIFF_SYM1056
Lfde121_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_Comparer_1_System_nfloat_Create_System_Comparison_1_System_nfloat

LDIFF_SYM1057=Lme_85 - System_Collections_Generic_Comparer_1_System_nfloat_Create_System_Comparison_1_System_nfloat
	.long LDIFF_SYM1057
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde121_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.Comparer`1<System.nfloat>:CreateComparer"
	.asciz "System_Collections_Generic_Comparer_1_System_nfloat_CreateComparer"

	.byte 18,53
	.quad System_Collections_Generic_Comparer_1_System_nfloat_CreateComparer
	.quad Lme_86

	.byte 2,118,16,11
	.asciz "t"

LDIFF_SYM1058=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1058
	.byte 1,105,11
	.asciz "u"

LDIFF_SYM1059=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1059
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1060=Lfde122_end - Lfde122_start
	.long LDIFF_SYM1060
Lfde122_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_Comparer_1_System_nfloat_CreateComparer

LDIFF_SYM1061=Lme_86 - System_Collections_Generic_Comparer_1_System_nfloat_CreateComparer
	.long LDIFF_SYM1061
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4,154,3
	.align 3
Lfde122_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.Comparer`1<System.nfloat>:System.Collections.IComparer.Compare"
	.asciz "System_Collections_Generic_Comparer_1_System_nfloat_System_Collections_IComparer_Compare_object_object"

	.byte 18,91
	.quad System_Collections_Generic_Comparer_1_System_nfloat_System_Collections_IComparer_Compare_object_object
	.quad Lme_88

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1062=LTDIE_85_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1062
	.byte 2,141,40,3
	.asciz "x"

LDIFF_SYM1063=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1063
	.byte 1,105,3
	.asciz "y"

LDIFF_SYM1064=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1064
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1065=Lfde123_end - Lfde123_start
	.long LDIFF_SYM1065
Lfde123_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_Comparer_1_System_nfloat_System_Collections_IComparer_Compare_object_object

LDIFF_SYM1066=Lme_88 - System_Collections_Generic_Comparer_1_System_nfloat_System_Collections_IComparer_Compare_object_object
	.long LDIFF_SYM1066
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,151,4,68,153,3,154,2
	.align 3
Lfde123_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.Comparer`1<System.nfloat>:.ctor"
	.asciz "System_Collections_Generic_Comparer_1_System_nfloat__ctor"

	.byte 0,0
	.quad System_Collections_Generic_Comparer_1_System_nfloat__ctor
	.quad Lme_89

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1067=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1067
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1068=Lfde124_end - Lfde124_start
	.long LDIFF_SYM1068
Lfde124_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_Comparer_1_System_nfloat__ctor

LDIFF_SYM1069=Lme_89 - System_Collections_Generic_Comparer_1_System_nfloat__ctor
	.long LDIFF_SYM1069
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde124_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_87:

	.byte 5
	.asciz "System_Collections_Generic_GenericComparer`1"

	.byte 16,16
LDIFF_SYM1070=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM1070
	.byte 2,35,0,0,7
	.asciz "System_Collections_Generic_GenericComparer`1"

LDIFF_SYM1071=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM1071
LTDIE_87_POINTER:

	.byte 13
LDIFF_SYM1072=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM1072
LTDIE_87_REFERENCE:

	.byte 14
LDIFF_SYM1073=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM1073
	.byte 2
	.asciz "System.Collections.Generic.GenericComparer`1<System.nfloat>:Compare"
	.asciz "System_Collections_Generic_GenericComparer_1_System_nfloat_Compare_System_nfloat_System_nfloat"

	.byte 18,103
	.quad System_Collections_Generic_GenericComparer_1_System_nfloat_Compare_System_nfloat_System_nfloat
	.quad Lme_8a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1074=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1074
	.byte 0,3
	.asciz "x"

LDIFF_SYM1075=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1075
	.byte 2,141,24,3
	.asciz "y"

LDIFF_SYM1076=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1076
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1077=Lfde125_end - Lfde125_start
	.long LDIFF_SYM1077
Lfde125_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_GenericComparer_1_System_nfloat_Compare_System_nfloat_System_nfloat

LDIFF_SYM1078=Lme_8a - System_Collections_Generic_GenericComparer_1_System_nfloat_Compare_System_nfloat_System_nfloat
	.long LDIFF_SYM1078
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde125_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.GenericComparer`1<System.nfloat>:Equals"
	.asciz "System_Collections_Generic_GenericComparer_1_System_nfloat_Equals_object"

	.byte 18,113
	.quad System_Collections_Generic_GenericComparer_1_System_nfloat_Equals_object
	.quad Lme_8b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1079=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1079
	.byte 0,3
	.asciz "obj"

LDIFF_SYM1080=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1080
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1081=Lfde126_end - Lfde126_start
	.long LDIFF_SYM1081
Lfde126_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_GenericComparer_1_System_nfloat_Equals_object

LDIFF_SYM1082=Lme_8b - System_Collections_Generic_GenericComparer_1_System_nfloat_Equals_object
	.long LDIFF_SYM1082
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4
	.align 3
Lfde126_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.GenericComparer`1<System.nfloat>:GetHashCode"
	.asciz "System_Collections_Generic_GenericComparer_1_System_nfloat_GetHashCode"

	.byte 18,118
	.quad System_Collections_Generic_GenericComparer_1_System_nfloat_GetHashCode
	.quad Lme_8c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1083=LTDIE_87_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1083
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1084=Lfde127_end - Lfde127_start
	.long LDIFF_SYM1084
Lfde127_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_GenericComparer_1_System_nfloat_GetHashCode

LDIFF_SYM1085=Lme_8c - System_Collections_Generic_GenericComparer_1_System_nfloat_GetHashCode
	.long LDIFF_SYM1085
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde127_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.GenericComparer`1<System.nfloat>:.ctor"
	.asciz "System_Collections_Generic_GenericComparer_1_System_nfloat__ctor"

	.byte 0,0
	.quad System_Collections_Generic_GenericComparer_1_System_nfloat__ctor
	.quad Lme_8d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1086=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1086
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1087=Lfde128_end - Lfde128_start
	.long LDIFF_SYM1087
Lfde128_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_GenericComparer_1_System_nfloat__ctor

LDIFF_SYM1088=Lme_8d - System_Collections_Generic_GenericComparer_1_System_nfloat__ctor
	.long LDIFF_SYM1088
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde128_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_88:

	.byte 5
	.asciz "System_Linq_EnumerableSorter`2"

	.byte 56,16
LDIFF_SYM1089=LTDIE_82 - Ldebug_info_start
	.long LDIFF_SYM1089
	.byte 2,35,0,6
	.asciz "_keySelector"

LDIFF_SYM1090=LTDIE_58_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1090
	.byte 2,35,16,6
	.asciz "_comparer"

LDIFF_SYM1091=LTDIE_78_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1091
	.byte 2,35,24,6
	.asciz "_descending"

LDIFF_SYM1092=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1092
	.byte 2,35,48,6
	.asciz "_next"

LDIFF_SYM1093=LTDIE_82_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1093
	.byte 2,35,32,6
	.asciz "_keys"

LDIFF_SYM1094=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1094
	.byte 2,35,40,0,7
	.asciz "System_Linq_EnumerableSorter`2"

LDIFF_SYM1095=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM1095
LTDIE_88_POINTER:

	.byte 13
LDIFF_SYM1096=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM1096
LTDIE_88_REFERENCE:

	.byte 14
LDIFF_SYM1097=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM1097
	.byte 2
	.asciz "System.Linq.EnumerableSorter`2<UIKit.UIWindow,_System.nfloat>:.ctor"
	.asciz "System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat__ctor_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool_System_Linq_EnumerableSorter_1_UIKit_UIWindow"

	.byte 19,160,4
	.quad System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat__ctor_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool_System_Linq_EnumerableSorter_1_UIKit_UIWindow
	.quad Lme_8e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1098=LTDIE_88_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1098
	.byte 1,102,3
	.asciz "keySelector"

LDIFF_SYM1099=LTDIE_58_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1099
	.byte 2,141,24,3
	.asciz "comparer"

LDIFF_SYM1100=LTDIE_78_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1100
	.byte 2,141,32,3
	.asciz "descending"

LDIFF_SYM1101=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1101
	.byte 2,141,40,3
	.asciz "next"

LDIFF_SYM1102=LTDIE_82_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1102
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1103=Lfde129_end - Lfde129_start
	.long LDIFF_SYM1103
Lfde129_start:

	.long 0
	.align 3
	.quad System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat__ctor_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool_System_Linq_EnumerableSorter_1_UIKit_UIWindow

LDIFF_SYM1104=Lme_8e - System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat__ctor_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool_System_Linq_EnumerableSorter_1_UIKit_UIWindow
	.long LDIFF_SYM1104
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,150,6
	.align 3
Lfde129_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Linq.EnumerableSorter`2<UIKit.UIWindow,_System.nfloat>:ComputeKeys"
	.asciz "System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_ComputeKeys_UIKit_UIWindow___int"

	.byte 19,170,4
	.quad System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_ComputeKeys_UIKit_UIWindow___int
	.quad Lme_8f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1105=LTDIE_88_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1105
	.byte 1,104,3
	.asciz "elements"

LDIFF_SYM1106=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1106
	.byte 1,105,3
	.asciz "count"

LDIFF_SYM1107=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1107
	.byte 1,106,11
	.asciz "i"

LDIFF_SYM1108=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1108
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1109=Lfde130_end - Lfde130_start
	.long LDIFF_SYM1109
Lfde130_start:

	.long 0
	.align 3
	.quad System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_ComputeKeys_UIKit_UIWindow___int

LDIFF_SYM1110=Lme_8f - System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_ComputeKeys_UIKit_UIWindow___int
	.long LDIFF_SYM1110
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,151,6,152,5,68,153,4,154,3
	.align 3
Lfde130_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Linq.EnumerableSorter`2<UIKit.UIWindow,_System.nfloat>:CompareAnyKeys"
	.asciz "System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_CompareAnyKeys_int_int"

	.byte 19,181,4
	.quad System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_CompareAnyKeys_int_int
	.quad Lme_90

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1111=LTDIE_88_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1111
	.byte 1,104,3
	.asciz "index1"

LDIFF_SYM1112=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1112
	.byte 2,141,32,3
	.asciz "index2"

LDIFF_SYM1113=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1113
	.byte 2,141,40,11
	.asciz "c"

LDIFF_SYM1114=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1114
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1115=Lfde131_end - Lfde131_start
	.long LDIFF_SYM1115
Lfde131_start:

	.long 0
	.align 3
	.quad System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_CompareAnyKeys_int_int

LDIFF_SYM1116=Lme_90 - System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_CompareAnyKeys_int_int
	.long LDIFF_SYM1116
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,151,4,152,3
	.align 3
Lfde131_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Linq.EnumerableSorter`2<UIKit.UIWindow,_System.nfloat>:CompareKeys"
	.asciz "System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_CompareKeys_int_int"

	.byte 19,199,4
	.quad System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_CompareKeys_int_int
	.quad Lme_91

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1117=LTDIE_88_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1117
	.byte 2,141,16,3
	.asciz "index1"

LDIFF_SYM1118=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1118
	.byte 2,141,24,3
	.asciz "index2"

LDIFF_SYM1119=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1119
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1120=Lfde132_end - Lfde132_start
	.long LDIFF_SYM1120
Lfde132_start:

	.long 0
	.align 3
	.quad System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_CompareKeys_int_int

LDIFF_SYM1121=Lme_91 - System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_CompareKeys_int_int
	.long LDIFF_SYM1121
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde132_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Linq.EnumerableSorter`2<UIKit.UIWindow,_System.nfloat>:QuickSort"
	.asciz "System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_QuickSort_int___int_int"

	.byte 19,202,4
	.quad System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_QuickSort_int___int_int
	.quad Lme_92

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1122=LTDIE_88_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1122
	.byte 2,141,16,3
	.asciz "keys"

LDIFF_SYM1123=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1123
	.byte 2,141,24,3
	.asciz "lo"

LDIFF_SYM1124=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1124
	.byte 2,141,32,3
	.asciz "hi"

LDIFF_SYM1125=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1125
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1126=Lfde133_end - Lfde133_start
	.long LDIFF_SYM1126
Lfde133_start:

	.long 0
	.align 3
	.quad System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_QuickSort_int___int_int

LDIFF_SYM1127=Lme_92 - System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_QuickSort_int___int_int
	.long LDIFF_SYM1127
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde133_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Linq.EnumerableSorter`2<UIKit.UIWindow,_System.nfloat>:PartialQuickSort"
	.asciz "System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_PartialQuickSort_int___int_int_int_int"

	.byte 19,212,4
	.quad System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_PartialQuickSort_int___int_int_int_int
	.quad Lme_93

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1128=LTDIE_88_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1128
	.byte 1,101,3
	.asciz "map"

LDIFF_SYM1129=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1129
	.byte 1,102,3
	.asciz "left"

LDIFF_SYM1130=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1130
	.byte 1,103,3
	.asciz "right"

LDIFF_SYM1131=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1131
	.byte 1,104,3
	.asciz "minIdx"

LDIFF_SYM1132=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1132
	.byte 1,105,3
	.asciz "maxIdx"

LDIFF_SYM1133=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1133
	.byte 3,141,208,0,11
	.asciz "i"

LDIFF_SYM1134=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1134
	.byte 1,100,11
	.asciz "j"

LDIFF_SYM1135=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1135
	.byte 1,99,11
	.asciz "x"

LDIFF_SYM1136=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1136
	.byte 3,141,216,0,11
	.asciz "temp"

LDIFF_SYM1137=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1137
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1138=Lfde134_end - Lfde134_start
	.long LDIFF_SYM1138
Lfde134_start:

	.long 0
	.align 3
	.quad System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_PartialQuickSort_int___int_int_int_int

LDIFF_SYM1139=Lme_93 - System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_PartialQuickSort_int___int_int_int_int
	.long LDIFF_SYM1139
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,147,10,148,9,68,149,8,150,7,68,151,6,152,5,68,153,4,154
	.byte 3
	.align 3
Lfde134_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Linq.EnumerableSorter`2<UIKit.UIWindow,_System.nfloat>:QuickSelect"
	.asciz "System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_QuickSelect_int___int_int"

	.byte 19,151,5
	.quad System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_QuickSelect_int___int_int
	.quad Lme_94

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1140=LTDIE_88_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1140
	.byte 1,103,3
	.asciz "map"

LDIFF_SYM1141=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1141
	.byte 1,104,3
	.asciz "right"

LDIFF_SYM1142=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1142
	.byte 1,105,3
	.asciz "idx"

LDIFF_SYM1143=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1143
	.byte 3,141,200,0,11
	.asciz "left"

LDIFF_SYM1144=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1144
	.byte 1,102,11
	.asciz "i"

LDIFF_SYM1145=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1145
	.byte 1,101,11
	.asciz "j"

LDIFF_SYM1146=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1146
	.byte 1,100,11
	.asciz "x"

LDIFF_SYM1147=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1147
	.byte 1,99,11
	.asciz "temp"

LDIFF_SYM1148=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1148
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1149=Lfde135_end - Lfde135_start
	.long LDIFF_SYM1149
Lfde135_start:

	.long 0
	.align 3
	.quad System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_QuickSelect_int___int_int

LDIFF_SYM1150=Lme_94 - System_Linq_EnumerableSorter_2_UIKit_UIWindow_System_nfloat_QuickSelect_int___int_int
	.long LDIFF_SYM1150
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,147,10,148,9,68,149,8,150,7,68,151,6,152,5,68,153,4
	.align 3
Lfde135_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_89:

	.byte 5
	.asciz "System_Linq_CachingComparer`2"

	.byte 48,16
LDIFF_SYM1151=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM1151
	.byte 2,35,0,6
	.asciz "_keySelector"

LDIFF_SYM1152=LTDIE_58_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1152
	.byte 2,35,16,6
	.asciz "_comparer"

LDIFF_SYM1153=LTDIE_78_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1153
	.byte 2,35,24,6
	.asciz "_descending"

LDIFF_SYM1154=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1154
	.byte 2,35,32,6
	.asciz "_lastKey"

LDIFF_SYM1155=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1155
	.byte 2,35,40,0,7
	.asciz "System_Linq_CachingComparer`2"

LDIFF_SYM1156=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM1156
LTDIE_89_POINTER:

	.byte 13
LDIFF_SYM1157=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM1157
LTDIE_89_REFERENCE:

	.byte 14
LDIFF_SYM1158=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM1158
	.byte 2
	.asciz "System.Linq.CachingComparer`2<UIKit.UIWindow,_System.nfloat>:.ctor"
	.asciz "System_Linq_CachingComparer_2_UIKit_UIWindow_System_nfloat__ctor_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool"

	.byte 19,174,3
	.quad System_Linq_CachingComparer_2_UIKit_UIWindow_System_nfloat__ctor_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool
	.quad Lme_95

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1159=LTDIE_89_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1159
	.byte 1,103,3
	.asciz "keySelector"

LDIFF_SYM1160=LTDIE_58_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1160
	.byte 2,141,24,3
	.asciz "comparer"

LDIFF_SYM1161=LTDIE_78_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1161
	.byte 2,141,32,3
	.asciz "descending"

LDIFF_SYM1162=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1162
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1163=Lfde136_end - Lfde136_start
	.long LDIFF_SYM1163
Lfde136_start:

	.long 0
	.align 3
	.quad System_Linq_CachingComparer_2_UIKit_UIWindow_System_nfloat__ctor_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool

LDIFF_SYM1164=Lme_95 - System_Linq_CachingComparer_2_UIKit_UIWindow_System_nfloat__ctor_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool
	.long LDIFF_SYM1164
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,151,4
	.align 3
Lfde136_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Linq.CachingComparer`2<UIKit.UIWindow,_System.nfloat>:Compare"
	.asciz "System_Linq_CachingComparer_2_UIKit_UIWindow_System_nfloat_Compare_UIKit_UIWindow_bool"

	.byte 19,183,3
	.quad System_Linq_CachingComparer_2_UIKit_UIWindow_System_nfloat_Compare_UIKit_UIWindow_bool
	.quad Lme_96

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1165=LTDIE_89_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1165
	.byte 1,104,3
	.asciz "element"

LDIFF_SYM1166=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1166
	.byte 1,105,3
	.asciz "cacheLower"

LDIFF_SYM1167=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1167
	.byte 2,141,32,11
	.asciz "newKey"

LDIFF_SYM1168=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1168
	.byte 2,141,40,11
	.asciz "cmp"

LDIFF_SYM1169=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1169
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1170=Lfde137_end - Lfde137_start
	.long LDIFF_SYM1170
Lfde137_start:

	.long 0
	.align 3
	.quad System_Linq_CachingComparer_2_UIKit_UIWindow_System_nfloat_Compare_UIKit_UIWindow_bool

LDIFF_SYM1171=Lme_96 - System_Linq_CachingComparer_2_UIKit_UIWindow_System_nfloat_Compare_UIKit_UIWindow_bool
	.long LDIFF_SYM1171
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,152,8,153,7
	.align 3
Lfde137_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Linq.CachingComparer`2<UIKit.UIWindow,_System.nfloat>:SetElement"
	.asciz "System_Linq_CachingComparer_2_UIKit_UIWindow_System_nfloat_SetElement_UIKit_UIWindow"

	.byte 19,195,3
	.quad System_Linq_CachingComparer_2_UIKit_UIWindow_System_nfloat_SetElement_UIKit_UIWindow
	.quad Lme_97

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1172=LTDIE_89_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1172
	.byte 1,105,3
	.asciz "element"

LDIFF_SYM1173=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1173
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1174=Lfde138_end - Lfde138_start
	.long LDIFF_SYM1174
Lfde138_start:

	.long 0
	.align 3
	.quad System_Linq_CachingComparer_2_UIKit_UIWindow_System_nfloat_SetElement_UIKit_UIWindow

LDIFF_SYM1175=Lme_97 - System_Linq_CachingComparer_2_UIKit_UIWindow_System_nfloat_SetElement_UIKit_UIWindow
	.long LDIFF_SYM1175
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4
	.align 3
Lfde138_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_90:

	.byte 5
	.asciz "System_Linq_CachingComparerWithChild`2"

	.byte 56,16
LDIFF_SYM1176=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM1176
	.byte 2,35,0,6
	.asciz "_child"

LDIFF_SYM1177=LTDIE_83_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1177
	.byte 2,35,48,0,7
	.asciz "System_Linq_CachingComparerWithChild`2"

LDIFF_SYM1178=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM1178
LTDIE_90_POINTER:

	.byte 13
LDIFF_SYM1179=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM1179
LTDIE_90_REFERENCE:

	.byte 14
LDIFF_SYM1180=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM1180
	.byte 2
	.asciz "System.Linq.CachingComparerWithChild`2<UIKit.UIWindow,_System.nfloat>:.ctor"
	.asciz "System_Linq_CachingComparerWithChild_2_UIKit_UIWindow_System_nfloat__ctor_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool_System_Linq_CachingComparer_1_UIKit_UIWindow"

	.byte 19,204,3
	.quad System_Linq_CachingComparerWithChild_2_UIKit_UIWindow_System_nfloat__ctor_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool_System_Linq_CachingComparer_1_UIKit_UIWindow
	.quad Lme_98

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1181=LTDIE_90_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1181
	.byte 1,102,3
	.asciz "keySelector"

LDIFF_SYM1182=LTDIE_58_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1182
	.byte 2,141,24,3
	.asciz "comparer"

LDIFF_SYM1183=LTDIE_78_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1183
	.byte 2,141,32,3
	.asciz "descending"

LDIFF_SYM1184=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1184
	.byte 2,141,40,3
	.asciz "child"

LDIFF_SYM1185=LTDIE_83_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1185
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1186=Lfde139_end - Lfde139_start
	.long LDIFF_SYM1186
Lfde139_start:

	.long 0
	.align 3
	.quad System_Linq_CachingComparerWithChild_2_UIKit_UIWindow_System_nfloat__ctor_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool_System_Linq_CachingComparer_1_UIKit_UIWindow

LDIFF_SYM1187=Lme_98 - System_Linq_CachingComparerWithChild_2_UIKit_UIWindow_System_nfloat__ctor_System_Func_2_UIKit_UIWindow_System_nfloat_System_Collections_Generic_IComparer_1_System_nfloat_bool_System_Linq_CachingComparer_1_UIKit_UIWindow
	.long LDIFF_SYM1187
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,150,6
	.align 3
Lfde139_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Linq.CachingComparerWithChild`2<UIKit.UIWindow,_System.nfloat>:Compare"
	.asciz "System_Linq_CachingComparerWithChild_2_UIKit_UIWindow_System_nfloat_Compare_UIKit_UIWindow_bool"

	.byte 19,211,3
	.quad System_Linq_CachingComparerWithChild_2_UIKit_UIWindow_System_nfloat_Compare_UIKit_UIWindow_bool
	.quad Lme_99

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1188=LTDIE_90_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1188
	.byte 1,104,3
	.asciz "element"

LDIFF_SYM1189=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1189
	.byte 2,141,40,3
	.asciz "cacheLower"

LDIFF_SYM1190=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1190
	.byte 2,141,48,11
	.asciz "newKey"

LDIFF_SYM1191=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1191
	.byte 2,141,56,11
	.asciz "cmp"

LDIFF_SYM1192=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1192
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1193=Lfde140_end - Lfde140_start
	.long LDIFF_SYM1193
Lfde140_start:

	.long 0
	.align 3
	.quad System_Linq_CachingComparerWithChild_2_UIKit_UIWindow_System_nfloat_Compare_UIKit_UIWindow_bool

LDIFF_SYM1194=Lme_99 - System_Linq_CachingComparerWithChild_2_UIKit_UIWindow_System_nfloat_Compare_UIKit_UIWindow_bool
	.long LDIFF_SYM1194
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,152,6
	.align 3
Lfde140_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Linq.CachingComparerWithChild`2<UIKit.UIWindow,_System.nfloat>:SetElement"
	.asciz "System_Linq_CachingComparerWithChild_2_UIKit_UIWindow_System_nfloat_SetElement_UIKit_UIWindow"

	.byte 19,229,3
	.quad System_Linq_CachingComparerWithChild_2_UIKit_UIWindow_System_nfloat_SetElement_UIKit_UIWindow
	.quad Lme_9a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1195=LTDIE_90_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1195
	.byte 2,141,16,3
	.asciz "element"

LDIFF_SYM1196=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1196
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1197=Lfde141_end - Lfde141_start
	.long LDIFF_SYM1197
Lfde141_start:

	.long 0
	.align 3
	.quad System_Linq_CachingComparerWithChild_2_UIKit_UIWindow_System_nfloat_SetElement_UIKit_UIWindow

LDIFF_SYM1198=Lme_9a - System_Linq_CachingComparerWithChild_2_UIKit_UIWindow_System_nfloat_SetElement_UIKit_UIWindow
	.long LDIFF_SYM1198
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde141_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_92:

	.byte 5
	.asciz "System_Collections_Generic_EqualityComparer`1"

	.byte 16,16
LDIFF_SYM1199=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1199
	.byte 2,35,0,0,7
	.asciz "System_Collections_Generic_EqualityComparer`1"

LDIFF_SYM1200=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM1200
LTDIE_92_POINTER:

	.byte 13
LDIFF_SYM1201=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM1201
LTDIE_92_REFERENCE:

	.byte 14
LDIFF_SYM1202=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM1202
LTDIE_91:

	.byte 5
	.asciz "System_Collections_Generic_ObjectEqualityComparer`1"

	.byte 16,16
LDIFF_SYM1203=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM1203
	.byte 2,35,0,0,7
	.asciz "System_Collections_Generic_ObjectEqualityComparer`1"

LDIFF_SYM1204=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM1204
LTDIE_91_POINTER:

	.byte 13
LDIFF_SYM1205=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM1205
LTDIE_91_REFERENCE:

	.byte 14
LDIFF_SYM1206=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM1206
	.byte 2
	.asciz "System.Collections.Generic.ObjectEqualityComparer`1<T_INT>:.ctor"
	.asciz "System_Collections_Generic_ObjectEqualityComparer_1_T_INT__ctor"

	.byte 0,0
	.quad System_Collections_Generic_ObjectEqualityComparer_1_T_INT__ctor
	.quad Lme_9b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1207=LTDIE_91_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1207
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1208=Lfde142_end - Lfde142_start
	.long LDIFF_SYM1208
Lfde142_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ObjectEqualityComparer_1_T_INT__ctor

LDIFF_SYM1209=Lme_9b - System_Collections_Generic_ObjectEqualityComparer_1_T_INT__ctor
	.long LDIFF_SYM1209
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde142_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_94:

	.byte 5
	.asciz "System_Collections_Generic_EqualityComparer`1"

	.byte 16,16
LDIFF_SYM1210=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1210
	.byte 2,35,0,0,7
	.asciz "System_Collections_Generic_EqualityComparer`1"

LDIFF_SYM1211=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM1211
LTDIE_94_POINTER:

	.byte 13
LDIFF_SYM1212=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM1212
LTDIE_94_REFERENCE:

	.byte 14
LDIFF_SYM1213=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM1213
LTDIE_93:

	.byte 5
	.asciz "System_Collections_Generic_ObjectEqualityComparer`1"

	.byte 16,16
LDIFF_SYM1214=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM1214
	.byte 2,35,0,0,7
	.asciz "System_Collections_Generic_ObjectEqualityComparer`1"

LDIFF_SYM1215=LTDIE_93 - Ldebug_info_start
	.long LDIFF_SYM1215
LTDIE_93_POINTER:

	.byte 13
LDIFF_SYM1216=LTDIE_93 - Ldebug_info_start
	.long LDIFF_SYM1216
LTDIE_93_REFERENCE:

	.byte 14
LDIFF_SYM1217=LTDIE_93 - Ldebug_info_start
	.long LDIFF_SYM1217
	.byte 2
	.asciz "System.Collections.Generic.ObjectEqualityComparer`1<T_DOUBLE>:.ctor"
	.asciz "System_Collections_Generic_ObjectEqualityComparer_1_T_DOUBLE__ctor"

	.byte 0,0
	.quad System_Collections_Generic_ObjectEqualityComparer_1_T_DOUBLE__ctor
	.quad Lme_9c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1218=LTDIE_93_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1218
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1219=Lfde143_end - Lfde143_start
	.long LDIFF_SYM1219
Lfde143_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ObjectEqualityComparer_1_T_DOUBLE__ctor

LDIFF_SYM1220=Lme_9c - System_Collections_Generic_ObjectEqualityComparer_1_T_DOUBLE__ctor
	.long LDIFF_SYM1220
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde143_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_96:

	.byte 5
	.asciz "System_Collections_Generic_Comparer`1"

	.byte 16,16
LDIFF_SYM1221=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1221
	.byte 2,35,0,0,7
	.asciz "System_Collections_Generic_Comparer`1"

LDIFF_SYM1222=LTDIE_96 - Ldebug_info_start
	.long LDIFF_SYM1222
LTDIE_96_POINTER:

	.byte 13
LDIFF_SYM1223=LTDIE_96 - Ldebug_info_start
	.long LDIFF_SYM1223
LTDIE_96_REFERENCE:

	.byte 14
LDIFF_SYM1224=LTDIE_96 - Ldebug_info_start
	.long LDIFF_SYM1224
LTDIE_95:

	.byte 5
	.asciz "System_Collections_Generic_ObjectComparer`1"

	.byte 16,16
LDIFF_SYM1225=LTDIE_96 - Ldebug_info_start
	.long LDIFF_SYM1225
	.byte 2,35,0,0,7
	.asciz "System_Collections_Generic_ObjectComparer`1"

LDIFF_SYM1226=LTDIE_95 - Ldebug_info_start
	.long LDIFF_SYM1226
LTDIE_95_POINTER:

	.byte 13
LDIFF_SYM1227=LTDIE_95 - Ldebug_info_start
	.long LDIFF_SYM1227
LTDIE_95_REFERENCE:

	.byte 14
LDIFF_SYM1228=LTDIE_95 - Ldebug_info_start
	.long LDIFF_SYM1228
	.byte 2
	.asciz "System.Collections.Generic.ObjectComparer`1<T_INT>:.ctor"
	.asciz "System_Collections_Generic_ObjectComparer_1_T_INT__ctor"

	.byte 0,0
	.quad System_Collections_Generic_ObjectComparer_1_T_INT__ctor
	.quad Lme_9d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1229=LTDIE_95_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1229
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1230=Lfde144_end - Lfde144_start
	.long LDIFF_SYM1230
Lfde144_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ObjectComparer_1_T_INT__ctor

LDIFF_SYM1231=Lme_9d - System_Collections_Generic_ObjectComparer_1_T_INT__ctor
	.long LDIFF_SYM1231
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde144_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_98:

	.byte 5
	.asciz "System_Collections_Generic_Comparer`1"

	.byte 16,16
LDIFF_SYM1232=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1232
	.byte 2,35,0,0,7
	.asciz "System_Collections_Generic_Comparer`1"

LDIFF_SYM1233=LTDIE_98 - Ldebug_info_start
	.long LDIFF_SYM1233
LTDIE_98_POINTER:

	.byte 13
LDIFF_SYM1234=LTDIE_98 - Ldebug_info_start
	.long LDIFF_SYM1234
LTDIE_98_REFERENCE:

	.byte 14
LDIFF_SYM1235=LTDIE_98 - Ldebug_info_start
	.long LDIFF_SYM1235
LTDIE_97:

	.byte 5
	.asciz "System_Collections_Generic_ObjectComparer`1"

	.byte 16,16
LDIFF_SYM1236=LTDIE_98 - Ldebug_info_start
	.long LDIFF_SYM1236
	.byte 2,35,0,0,7
	.asciz "System_Collections_Generic_ObjectComparer`1"

LDIFF_SYM1237=LTDIE_97 - Ldebug_info_start
	.long LDIFF_SYM1237
LTDIE_97_POINTER:

	.byte 13
LDIFF_SYM1238=LTDIE_97 - Ldebug_info_start
	.long LDIFF_SYM1238
LTDIE_97_REFERENCE:

	.byte 14
LDIFF_SYM1239=LTDIE_97 - Ldebug_info_start
	.long LDIFF_SYM1239
	.byte 2
	.asciz "System.Collections.Generic.ObjectComparer`1<T_DOUBLE>:.ctor"
	.asciz "System_Collections_Generic_ObjectComparer_1_T_DOUBLE__ctor"

	.byte 0,0
	.quad System_Collections_Generic_ObjectComparer_1_T_DOUBLE__ctor
	.quad Lme_9e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1240=LTDIE_97_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1240
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1241=Lfde145_end - Lfde145_start
	.long LDIFF_SYM1241
Lfde145_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ObjectComparer_1_T_DOUBLE__ctor

LDIFF_SYM1242=Lme_9e - System_Collections_Generic_ObjectComparer_1_T_DOUBLE__ctor
	.long LDIFF_SYM1242
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde145_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_99:

	.byte 5
	.asciz "System_Collections_Generic_ComparisonComparer`1"

	.byte 24,16
LDIFF_SYM1243=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM1243
	.byte 2,35,0,6
	.asciz "_comparison"

LDIFF_SYM1244=LTDIE_86_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1244
	.byte 2,35,16,0,7
	.asciz "System_Collections_Generic_ComparisonComparer`1"

LDIFF_SYM1245=LTDIE_99 - Ldebug_info_start
	.long LDIFF_SYM1245
LTDIE_99_POINTER:

	.byte 13
LDIFF_SYM1246=LTDIE_99 - Ldebug_info_start
	.long LDIFF_SYM1246
LTDIE_99_REFERENCE:

	.byte 14
LDIFF_SYM1247=LTDIE_99 - Ldebug_info_start
	.long LDIFF_SYM1247
	.byte 2
	.asciz "System.Collections.Generic.ComparisonComparer`1<System.nfloat>:.ctor"
	.asciz "System_Collections_Generic_ComparisonComparer_1_System_nfloat__ctor_System_Comparison_1_System_nfloat"

	.byte 18,169,1
	.quad System_Collections_Generic_ComparisonComparer_1_System_nfloat__ctor_System_Comparison_1_System_nfloat
	.quad Lme_9f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1248=LTDIE_99_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1248
	.byte 2,141,16,3
	.asciz "comparison"

LDIFF_SYM1249=LTDIE_86_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1249
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1250=Lfde146_end - Lfde146_start
	.long LDIFF_SYM1250
Lfde146_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ComparisonComparer_1_System_nfloat__ctor_System_Comparison_1_System_nfloat

LDIFF_SYM1251=Lme_9f - System_Collections_Generic_ComparisonComparer_1_System_nfloat__ctor_System_Comparison_1_System_nfloat
	.long LDIFF_SYM1251
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde146_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.ComparisonComparer`1<System.nfloat>:Compare"
	.asciz "System_Collections_Generic_ComparisonComparer_1_System_nfloat_Compare_System_nfloat_System_nfloat"

	.byte 18,174,1
	.quad System_Collections_Generic_ComparisonComparer_1_System_nfloat_Compare_System_nfloat_System_nfloat
	.quad Lme_a0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1252=LTDIE_99_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1252
	.byte 2,141,16,3
	.asciz "x"

LDIFF_SYM1253=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1253
	.byte 2,141,24,3
	.asciz "y"

LDIFF_SYM1254=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1254
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1255=Lfde147_end - Lfde147_start
	.long LDIFF_SYM1255
Lfde147_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ComparisonComparer_1_System_nfloat_Compare_System_nfloat_System_nfloat

LDIFF_SYM1256=Lme_a0 - System_Collections_Generic_ComparisonComparer_1_System_nfloat_Compare_System_nfloat_System_nfloat
	.long LDIFF_SYM1256
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde147_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Comparison`1<System.nfloat>:invoke_int_T_T"
	.asciz "wrapper_delegate_invoke_System_Comparison_1_System_nfloat_invoke_int_T_T_System_nfloat_System_nfloat"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Comparison_1_System_nfloat_invoke_int_T_T_System_nfloat_System_nfloat
	.quad Lme_a5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1257=LTDIE_86_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1257
	.byte 1,106,3
	.asciz "param0"

LDIFF_SYM1258=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1258
	.byte 2,141,48,3
	.asciz "param1"

LDIFF_SYM1259=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1259
	.byte 2,141,56,11
	.asciz "V_0"

LDIFF_SYM1260=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1260
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM1261=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1261
	.byte 1,106,11
	.asciz "V_2"

LDIFF_SYM1262=LTDIE_59_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1262
	.byte 1,105,11
	.asciz "V_3"

LDIFF_SYM1263=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1263
	.byte 1,103,11
	.asciz "V_4"

LDIFF_SYM1264=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1264
	.byte 1,105,11
	.asciz "V_5"

LDIFF_SYM1265=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1265
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1266=Lfde148_end - Lfde148_start
	.long LDIFF_SYM1266
Lfde148_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Comparison_1_System_nfloat_invoke_int_T_T_System_nfloat_System_nfloat

LDIFF_SYM1267=Lme_a5 - wrapper_delegate_invoke_System_Comparison_1_System_nfloat_invoke_int_T_T_System_nfloat_System_nfloat
	.long LDIFF_SYM1267
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,151,8,152,7,68,153,6,154,5
	.align 3
Lfde148_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_100:

	.byte 5
	.asciz "System_Collections_Generic_ObjectComparer`1"

	.byte 16,16
LDIFF_SYM1268=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM1268
	.byte 2,35,0,0,7
	.asciz "System_Collections_Generic_ObjectComparer`1"

LDIFF_SYM1269=LTDIE_100 - Ldebug_info_start
	.long LDIFF_SYM1269
LTDIE_100_POINTER:

	.byte 13
LDIFF_SYM1270=LTDIE_100 - Ldebug_info_start
	.long LDIFF_SYM1270
LTDIE_100_REFERENCE:

	.byte 14
LDIFF_SYM1271=LTDIE_100 - Ldebug_info_start
	.long LDIFF_SYM1271
	.byte 2
	.asciz "System.Collections.Generic.ObjectComparer`1<System.nfloat>:Compare"
	.asciz "System_Collections_Generic_ObjectComparer_1_System_nfloat_Compare_System_nfloat_System_nfloat"

	.byte 18,150,1
	.quad System_Collections_Generic_ObjectComparer_1_System_nfloat_Compare_System_nfloat_System_nfloat
	.quad Lme_a6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1272=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1272
	.byte 0,3
	.asciz "x"

LDIFF_SYM1273=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1273
	.byte 2,141,24,3
	.asciz "y"

LDIFF_SYM1274=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1274
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1275=Lfde149_end - Lfde149_start
	.long LDIFF_SYM1275
Lfde149_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ObjectComparer_1_System_nfloat_Compare_System_nfloat_System_nfloat

LDIFF_SYM1276=Lme_a6 - System_Collections_Generic_ObjectComparer_1_System_nfloat_Compare_System_nfloat_System_nfloat
	.long LDIFF_SYM1276
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde149_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.ObjectComparer`1<System.nfloat>:Equals"
	.asciz "System_Collections_Generic_ObjectComparer_1_System_nfloat_Equals_object"

	.byte 18,155,1
	.quad System_Collections_Generic_ObjectComparer_1_System_nfloat_Equals_object
	.quad Lme_a7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1277=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1277
	.byte 0,3
	.asciz "obj"

LDIFF_SYM1278=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1278
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1279=Lfde150_end - Lfde150_start
	.long LDIFF_SYM1279
Lfde150_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ObjectComparer_1_System_nfloat_Equals_object

LDIFF_SYM1280=Lme_a7 - System_Collections_Generic_ObjectComparer_1_System_nfloat_Equals_object
	.long LDIFF_SYM1280
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4
	.align 3
Lfde150_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.ObjectComparer`1<System.nfloat>:GetHashCode"
	.asciz "System_Collections_Generic_ObjectComparer_1_System_nfloat_GetHashCode"

	.byte 18,160,1
	.quad System_Collections_Generic_ObjectComparer_1_System_nfloat_GetHashCode
	.quad Lme_a8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1281=LTDIE_100_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1281
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1282=Lfde151_end - Lfde151_start
	.long LDIFF_SYM1282
Lfde151_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ObjectComparer_1_System_nfloat_GetHashCode

LDIFF_SYM1283=Lme_a8 - System_Collections_Generic_ObjectComparer_1_System_nfloat_GetHashCode
	.long LDIFF_SYM1283
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde151_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.ObjectComparer`1<System.nfloat>:.ctor"
	.asciz "System_Collections_Generic_ObjectComparer_1_System_nfloat__ctor"

	.byte 0,0
	.quad System_Collections_Generic_ObjectComparer_1_System_nfloat__ctor
	.quad Lme_a9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1284=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1284
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1285=Lfde152_end - Lfde152_start
	.long LDIFF_SYM1285
Lfde152_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ObjectComparer_1_System_nfloat__ctor

LDIFF_SYM1286=Lme_a9 - System_Collections_Generic_ObjectComparer_1_System_nfloat__ctor
	.long LDIFF_SYM1286
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde152_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_101:

	.byte 17
	.asciz "System_Collections_Generic_IComparer`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IComparer`1"

LDIFF_SYM1287=LTDIE_101 - Ldebug_info_start
	.long LDIFF_SYM1287
LTDIE_101_POINTER:

	.byte 13
LDIFF_SYM1288=LTDIE_101 - Ldebug_info_start
	.long LDIFF_SYM1288
LTDIE_101_REFERENCE:

	.byte 14
LDIFF_SYM1289=LTDIE_101 - Ldebug_info_start
	.long LDIFF_SYM1289
	.byte 2
	.asciz "System.Array:Sort<T_INT>"
	.asciz "System_Array_Sort_T_INT_T_INT___int_int_System_Collections_Generic_IComparer_1_T_INT"

	.byte 20,209,8
	.quad System_Array_Sort_T_INT_T_INT___int_int_System_Collections_Generic_IComparer_1_T_INT
	.quad Lme_aa

	.byte 2,118,16,3
	.asciz "array"

LDIFF_SYM1290=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1290
	.byte 1,103,3
	.asciz "index"

LDIFF_SYM1291=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1291
	.byte 2,141,40,3
	.asciz "length"

LDIFF_SYM1292=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1292
	.byte 1,105,3
	.asciz "comparer"

LDIFF_SYM1293=LTDIE_101_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1293
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1294=Lfde153_end - Lfde153_start
	.long LDIFF_SYM1294
Lfde153_start:

	.long 0
	.align 3
	.quad System_Array_Sort_T_INT_T_INT___int_int_System_Collections_Generic_IComparer_1_T_INT

LDIFF_SYM1295=Lme_aa - System_Array_Sort_T_INT_T_INT___int_int_System_Collections_Generic_IComparer_1_T_INT
	.long LDIFF_SYM1295
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,151,10,68,153,9,154,8
	.align 3
Lfde153_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_102:

	.byte 5
	.asciz "System_Comparison`1"

	.byte 128,1,16
LDIFF_SYM1296=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM1296
	.byte 2,35,0,0,7
	.asciz "System_Comparison`1"

LDIFF_SYM1297=LTDIE_102 - Ldebug_info_start
	.long LDIFF_SYM1297
LTDIE_102_POINTER:

	.byte 13
LDIFF_SYM1298=LTDIE_102 - Ldebug_info_start
	.long LDIFF_SYM1298
LTDIE_102_REFERENCE:

	.byte 14
LDIFF_SYM1299=LTDIE_102 - Ldebug_info_start
	.long LDIFF_SYM1299
	.byte 2
	.asciz "System.Collections.Generic.Comparer`1<T_INT>:Create"
	.asciz "System_Collections_Generic_Comparer_1_T_INT_Create_System_Comparison_1_T_INT"

	.byte 18,41
	.quad System_Collections_Generic_Comparer_1_T_INT_Create_System_Comparison_1_T_INT
	.quad Lme_ac

	.byte 2,118,16,3
	.asciz "comparison"

LDIFF_SYM1300=LTDIE_102_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1300
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1301=Lfde154_end - Lfde154_start
	.long LDIFF_SYM1301
Lfde154_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_Comparer_1_T_INT_Create_System_Comparison_1_T_INT

LDIFF_SYM1302=Lme_ac - System_Collections_Generic_Comparer_1_T_INT_Create_System_Comparison_1_T_INT
	.long LDIFF_SYM1302
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde154_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_103:

	.byte 5
	.asciz "System_Comparison`1"

	.byte 128,1,16
LDIFF_SYM1303=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM1303
	.byte 2,35,0,0,7
	.asciz "System_Comparison`1"

LDIFF_SYM1304=LTDIE_103 - Ldebug_info_start
	.long LDIFF_SYM1304
LTDIE_103_POINTER:

	.byte 13
LDIFF_SYM1305=LTDIE_103 - Ldebug_info_start
	.long LDIFF_SYM1305
LTDIE_103_REFERENCE:

	.byte 14
LDIFF_SYM1306=LTDIE_103 - Ldebug_info_start
	.long LDIFF_SYM1306
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Comparison`1<int>:invoke_int_T_T"
	.asciz "wrapper_delegate_invoke_System_Comparison_1_int_invoke_int_T_T_int_int"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Comparison_1_int_invoke_int_T_T_int_int
	.quad Lme_b1

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1307=LTDIE_103_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1307
	.byte 1,104,3
	.asciz "param0"

LDIFF_SYM1308=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1308
	.byte 1,105,3
	.asciz "param1"

LDIFF_SYM1309=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1309
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1310=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1310
	.byte 1,102,11
	.asciz "V_1"

LDIFF_SYM1311=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1311
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM1312=LTDIE_59_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1312
	.byte 1,103,11
	.asciz "V_3"

LDIFF_SYM1313=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1313
	.byte 1,101,11
	.asciz "V_4"

LDIFF_SYM1314=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1314
	.byte 1,103,11
	.asciz "V_5"

LDIFF_SYM1315=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1315
	.byte 1,101,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1316=Lfde155_end - Lfde155_start
	.long LDIFF_SYM1316
Lfde155_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Comparison_1_int_invoke_int_T_T_int_int

LDIFF_SYM1317=Lme_b1 - wrapper_delegate_invoke_System_Comparison_1_int_invoke_int_T_T_int_int
	.long LDIFF_SYM1317
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8,150,7,68,151,6,152,5,68,153,4,154,3
	.align 3
Lfde155_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.Comparer`1<T_INT>:System.Collections.IComparer.Compare"
	.asciz "System_Collections_Generic_Comparer_1_T_INT_System_Collections_IComparer_Compare_object_object"

	.byte 18,91
	.quad System_Collections_Generic_Comparer_1_T_INT_System_Collections_IComparer_Compare_object_object
	.quad Lme_b3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1318=LTDIE_74_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1318
	.byte 2,141,32,3
	.asciz "x"

LDIFF_SYM1319=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1319
	.byte 1,105,3
	.asciz "y"

LDIFF_SYM1320=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1320
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1321=Lfde156_end - Lfde156_start
	.long LDIFF_SYM1321
Lfde156_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_Comparer_1_T_INT_System_Collections_IComparer_Compare_object_object

LDIFF_SYM1322=Lme_b3 - System_Collections_Generic_Comparer_1_T_INT_System_Collections_IComparer_Compare_object_object
	.long LDIFF_SYM1322
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8,154,7
	.align 3
Lfde156_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.Comparer`1<T_INT>:.ctor"
	.asciz "System_Collections_Generic_Comparer_1_T_INT__ctor"

	.byte 0,0
	.quad System_Collections_Generic_Comparer_1_T_INT__ctor
	.quad Lme_b4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1323=LTDIE_74_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1323
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1324=Lfde157_end - Lfde157_start
	.long LDIFF_SYM1324
Lfde157_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_Comparer_1_T_INT__ctor

LDIFF_SYM1325=Lme_b4 - System_Collections_Generic_Comparer_1_T_INT__ctor
	.long LDIFF_SYM1325
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde157_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_105:

	.byte 5
	.asciz "System_Collections_Generic_Comparer`1"

	.byte 16,16
LDIFF_SYM1326=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1326
	.byte 2,35,0,0,7
	.asciz "System_Collections_Generic_Comparer`1"

LDIFF_SYM1327=LTDIE_105 - Ldebug_info_start
	.long LDIFF_SYM1327
LTDIE_105_POINTER:

	.byte 13
LDIFF_SYM1328=LTDIE_105 - Ldebug_info_start
	.long LDIFF_SYM1328
LTDIE_105_REFERENCE:

	.byte 14
LDIFF_SYM1329=LTDIE_105 - Ldebug_info_start
	.long LDIFF_SYM1329
LTDIE_104:

	.byte 5
	.asciz "System_Collections_Generic_GenericComparer`1"

	.byte 16,16
LDIFF_SYM1330=LTDIE_105 - Ldebug_info_start
	.long LDIFF_SYM1330
	.byte 2,35,0,0,7
	.asciz "System_Collections_Generic_GenericComparer`1"

LDIFF_SYM1331=LTDIE_104 - Ldebug_info_start
	.long LDIFF_SYM1331
LTDIE_104_POINTER:

	.byte 13
LDIFF_SYM1332=LTDIE_104 - Ldebug_info_start
	.long LDIFF_SYM1332
LTDIE_104_REFERENCE:

	.byte 14
LDIFF_SYM1333=LTDIE_104 - Ldebug_info_start
	.long LDIFF_SYM1333
	.byte 2
	.asciz "System.Collections.Generic.GenericComparer`1<T_INT>:Compare"
	.asciz "System_Collections_Generic_GenericComparer_1_T_INT_Compare_T_INT_T_INT"

	.byte 18,103
	.quad System_Collections_Generic_GenericComparer_1_T_INT_Compare_T_INT_T_INT
	.quad Lme_b5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1334=LTDIE_104_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1334
	.byte 2,141,16,3
	.asciz "x"

LDIFF_SYM1335=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1335
	.byte 2,141,24,3
	.asciz "y"

LDIFF_SYM1336=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1336
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1337=Lfde158_end - Lfde158_start
	.long LDIFF_SYM1337
Lfde158_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_GenericComparer_1_T_INT_Compare_T_INT_T_INT

LDIFF_SYM1338=Lme_b5 - System_Collections_Generic_GenericComparer_1_T_INT_Compare_T_INT_T_INT
	.long LDIFF_SYM1338
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde158_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.GenericComparer`1<T_INT>:Equals"
	.asciz "System_Collections_Generic_GenericComparer_1_T_INT_Equals_object"

	.byte 18,113
	.quad System_Collections_Generic_GenericComparer_1_T_INT_Equals_object
	.quad Lme_b6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1339=LTDIE_104_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1339
	.byte 2,141,16,3
	.asciz "obj"

LDIFF_SYM1340=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1340
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1341=Lfde159_end - Lfde159_start
	.long LDIFF_SYM1341
Lfde159_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_GenericComparer_1_T_INT_Equals_object

LDIFF_SYM1342=Lme_b6 - System_Collections_Generic_GenericComparer_1_T_INT_Equals_object
	.long LDIFF_SYM1342
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde159_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.GenericComparer`1<T_INT>:GetHashCode"
	.asciz "System_Collections_Generic_GenericComparer_1_T_INT_GetHashCode"

	.byte 18,118
	.quad System_Collections_Generic_GenericComparer_1_T_INT_GetHashCode
	.quad Lme_b7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1343=LTDIE_104_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1343
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1344=Lfde160_end - Lfde160_start
	.long LDIFF_SYM1344
Lfde160_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_GenericComparer_1_T_INT_GetHashCode

LDIFF_SYM1345=Lme_b7 - System_Collections_Generic_GenericComparer_1_T_INT_GetHashCode
	.long LDIFF_SYM1345
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde160_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.GenericComparer`1<T_INT>:.ctor"
	.asciz "System_Collections_Generic_GenericComparer_1_T_INT__ctor"

	.byte 0,0
	.quad System_Collections_Generic_GenericComparer_1_T_INT__ctor
	.quad Lme_b8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1346=LTDIE_104_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1346
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1347=Lfde161_end - Lfde161_start
	.long LDIFF_SYM1347
Lfde161_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_GenericComparer_1_T_INT__ctor

LDIFF_SYM1348=Lme_b8 - System_Collections_Generic_GenericComparer_1_T_INT__ctor
	.long LDIFF_SYM1348
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde161_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_106:

	.byte 5
	.asciz "System_Collections_Generic_ArraySortHelper`1"

	.byte 16,16
LDIFF_SYM1349=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1349
	.byte 2,35,0,0,7
	.asciz "System_Collections_Generic_ArraySortHelper`1"

LDIFF_SYM1350=LTDIE_106 - Ldebug_info_start
	.long LDIFF_SYM1350
LTDIE_106_POINTER:

	.byte 13
LDIFF_SYM1351=LTDIE_106 - Ldebug_info_start
	.long LDIFF_SYM1351
LTDIE_106_REFERENCE:

	.byte 14
LDIFF_SYM1352=LTDIE_106 - Ldebug_info_start
	.long LDIFF_SYM1352
LTDIE_107:

	.byte 17
	.asciz "System_Collections_Generic_IComparer`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IComparer`1"

LDIFF_SYM1353=LTDIE_107 - Ldebug_info_start
	.long LDIFF_SYM1353
LTDIE_107_POINTER:

	.byte 13
LDIFF_SYM1354=LTDIE_107 - Ldebug_info_start
	.long LDIFF_SYM1354
LTDIE_107_REFERENCE:

	.byte 14
LDIFF_SYM1355=LTDIE_107 - Ldebug_info_start
	.long LDIFF_SYM1355
	.byte 2
	.asciz "System.Collections.Generic.ArraySortHelper`1<T_INT>:Sort"
	.asciz "System_Collections_Generic_ArraySortHelper_1_T_INT_Sort_T_INT___int_int_System_Collections_Generic_IComparer_1_T_INT"

	.byte 21,60
	.quad System_Collections_Generic_ArraySortHelper_1_T_INT_Sort_T_INT___int_int_System_Collections_Generic_IComparer_1_T_INT
	.quad Lme_b9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1356=LTDIE_106_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1356
	.byte 2,141,16,3
	.asciz "keys"

LDIFF_SYM1357=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1357
	.byte 2,141,24,3
	.asciz "index"

LDIFF_SYM1358=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1358
	.byte 2,141,32,3
	.asciz "length"

LDIFF_SYM1359=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1359
	.byte 2,141,40,3
	.asciz "comparer"

LDIFF_SYM1360=LTDIE_107_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1360
	.byte 2,141,48,11
	.asciz "e"

LDIFF_SYM1361=LTDIE_26_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1361
	.byte 2,141,56,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1362=Lfde162_end - Lfde162_start
	.long LDIFF_SYM1362
Lfde162_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ArraySortHelper_1_T_INT_Sort_T_INT___int_int_System_Collections_Generic_IComparer_1_T_INT

LDIFF_SYM1363=Lme_b9 - System_Collections_Generic_ArraySortHelper_1_T_INT_Sort_T_INT___int_int_System_Collections_Generic_IComparer_1_T_INT
	.long LDIFF_SYM1363
	.long 0
	.byte 12,31,0,68,14,208,1,157,26,158,25,68,13,29
	.align 3
Lfde162_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.ArraySortHelper`1<T_INT>:get_Default"
	.asciz "System_Collections_Generic_ArraySortHelper_1_T_INT_get_Default"

	.byte 22,20
	.quad System_Collections_Generic_ArraySortHelper_1_T_INT_get_Default
	.quad Lme_ba

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1364=Lfde163_end - Lfde163_start
	.long LDIFF_SYM1364
Lfde163_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ArraySortHelper_1_T_INT_get_Default

LDIFF_SYM1365=Lme_ba - System_Collections_Generic_ArraySortHelper_1_T_INT_get_Default
	.long LDIFF_SYM1365
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde163_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_109:

	.byte 5
	.asciz "System_Collections_Generic_Comparer`1"

	.byte 16,16
LDIFF_SYM1366=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1366
	.byte 2,35,0,0,7
	.asciz "System_Collections_Generic_Comparer`1"

LDIFF_SYM1367=LTDIE_109 - Ldebug_info_start
	.long LDIFF_SYM1367
LTDIE_109_POINTER:

	.byte 13
LDIFF_SYM1368=LTDIE_109 - Ldebug_info_start
	.long LDIFF_SYM1368
LTDIE_109_REFERENCE:

	.byte 14
LDIFF_SYM1369=LTDIE_109 - Ldebug_info_start
	.long LDIFF_SYM1369
LTDIE_110:

	.byte 5
	.asciz "System_Comparison`1"

	.byte 128,1,16
LDIFF_SYM1370=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM1370
	.byte 2,35,0,0,7
	.asciz "System_Comparison`1"

LDIFF_SYM1371=LTDIE_110 - Ldebug_info_start
	.long LDIFF_SYM1371
LTDIE_110_POINTER:

	.byte 13
LDIFF_SYM1372=LTDIE_110 - Ldebug_info_start
	.long LDIFF_SYM1372
LTDIE_110_REFERENCE:

	.byte 14
LDIFF_SYM1373=LTDIE_110 - Ldebug_info_start
	.long LDIFF_SYM1373
LTDIE_108:

	.byte 5
	.asciz "System_Collections_Generic_ComparisonComparer`1"

	.byte 24,16
LDIFF_SYM1374=LTDIE_109 - Ldebug_info_start
	.long LDIFF_SYM1374
	.byte 2,35,0,6
	.asciz "_comparison"

LDIFF_SYM1375=LTDIE_110_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1375
	.byte 2,35,16,0,7
	.asciz "System_Collections_Generic_ComparisonComparer`1"

LDIFF_SYM1376=LTDIE_108 - Ldebug_info_start
	.long LDIFF_SYM1376
LTDIE_108_POINTER:

	.byte 13
LDIFF_SYM1377=LTDIE_108 - Ldebug_info_start
	.long LDIFF_SYM1377
LTDIE_108_REFERENCE:

	.byte 14
LDIFF_SYM1378=LTDIE_108 - Ldebug_info_start
	.long LDIFF_SYM1378
	.byte 2
	.asciz "System.Collections.Generic.ComparisonComparer`1<T_INT>:.ctor"
	.asciz "System_Collections_Generic_ComparisonComparer_1_T_INT__ctor_System_Comparison_1_T_INT"

	.byte 18,169,1
	.quad System_Collections_Generic_ComparisonComparer_1_T_INT__ctor_System_Comparison_1_T_INT
	.quad Lme_bb

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1379=LTDIE_108_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1379
	.byte 2,141,16,3
	.asciz "comparison"

LDIFF_SYM1380=LTDIE_110_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1380
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1381=Lfde164_end - Lfde164_start
	.long LDIFF_SYM1381
Lfde164_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ComparisonComparer_1_T_INT__ctor_System_Comparison_1_T_INT

LDIFF_SYM1382=Lme_bb - System_Collections_Generic_ComparisonComparer_1_T_INT__ctor_System_Comparison_1_T_INT
	.long LDIFF_SYM1382
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde164_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_111:

	.byte 5
	.asciz "System_Comparison`1"

	.byte 128,1,16
LDIFF_SYM1383=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM1383
	.byte 2,35,0,0,7
	.asciz "System_Comparison`1"

LDIFF_SYM1384=LTDIE_111 - Ldebug_info_start
	.long LDIFF_SYM1384
LTDIE_111_POINTER:

	.byte 13
LDIFF_SYM1385=LTDIE_111 - Ldebug_info_start
	.long LDIFF_SYM1385
LTDIE_111_REFERENCE:

	.byte 14
LDIFF_SYM1386=LTDIE_111 - Ldebug_info_start
	.long LDIFF_SYM1386
	.byte 2
	.asciz "System.Collections.Generic.ArraySortHelper`1<T_INT>:IntrospectiveSort"
	.asciz "System_Collections_Generic_ArraySortHelper_1_T_INT_IntrospectiveSort_T_INT___int_int_System_Comparison_1_T_INT"

	.byte 21,175,1
	.quad System_Collections_Generic_ArraySortHelper_1_T_INT_IntrospectiveSort_T_INT___int_int_System_Comparison_1_T_INT
	.quad Lme_bc

	.byte 2,118,16,3
	.asciz "keys"

LDIFF_SYM1387=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1387
	.byte 2,141,48,3
	.asciz "left"

LDIFF_SYM1388=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1388
	.byte 1,104,3
	.asciz "length"

LDIFF_SYM1389=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1389
	.byte 1,105,3
	.asciz "comparer"

LDIFF_SYM1390=LTDIE_111_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1390
	.byte 2,141,56,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1391=Lfde165_end - Lfde165_start
	.long LDIFF_SYM1391
Lfde165_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ArraySortHelper_1_T_INT_IntrospectiveSort_T_INT___int_int_System_Comparison_1_T_INT

LDIFF_SYM1392=Lme_bc - System_Collections_Generic_ArraySortHelper_1_T_INT_IntrospectiveSort_T_INT___int_int_System_Comparison_1_T_INT
	.long LDIFF_SYM1392
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,148,12,68,151,11,152,10,68,153,9
	.align 3
Lfde165_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.ArraySortHelper`1<T_INT>:IntroSort"
	.asciz "System_Collections_Generic_ArraySortHelper_1_T_INT_IntroSort_T_INT___int_int_int_System_Comparison_1_T_INT"

	.byte 21,0
	.quad System_Collections_Generic_ArraySortHelper_1_T_INT_IntroSort_T_INT___int_int_int_System_Comparison_1_T_INT
	.quad Lme_bd

	.byte 2,118,16,3
	.asciz "keys"

LDIFF_SYM1393=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1393
	.byte 1,102,3
	.asciz "lo"

LDIFF_SYM1394=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1394
	.byte 1,103,3
	.asciz "hi"

LDIFF_SYM1395=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1395
	.byte 1,104,3
	.asciz "depthLimit"

LDIFF_SYM1396=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1396
	.byte 1,105,3
	.asciz "comparer"

LDIFF_SYM1397=LTDIE_111_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1397
	.byte 1,106,11
	.asciz "partitionSize"

LDIFF_SYM1398=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1398
	.byte 1,101,11
	.asciz "p"

LDIFF_SYM1399=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1399
	.byte 1,101,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1400=Lfde166_end - Lfde166_start
	.long LDIFF_SYM1400
Lfde166_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ArraySortHelper_1_T_INT_IntroSort_T_INT___int_int_int_System_Comparison_1_T_INT

LDIFF_SYM1401=Lme_bd - System_Collections_Generic_ArraySortHelper_1_T_INT_IntroSort_T_INT___int_int_int_System_Comparison_1_T_INT
	.long LDIFF_SYM1401
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,149,14,150,13,68,151,12,152,11,68,153,10,154,9
	.align 3
Lfde166_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.ArraySortHelper`1<T_INT>:PickPivotAndPartition"
	.asciz "System_Collections_Generic_ArraySortHelper_1_T_INT_PickPivotAndPartition_T_INT___int_int_System_Comparison_1_T_INT"

	.byte 21,237,1
	.quad System_Collections_Generic_ArraySortHelper_1_T_INT_PickPivotAndPartition_T_INT___int_int_System_Comparison_1_T_INT
	.quad Lme_be

	.byte 2,118,16,3
	.asciz "keys"

LDIFF_SYM1402=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1402
	.byte 1,103,3
	.asciz "lo"

LDIFF_SYM1403=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1403
	.byte 1,104,3
	.asciz "hi"

LDIFF_SYM1404=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1404
	.byte 1,105,3
	.asciz "comparer"

LDIFF_SYM1405=LTDIE_111_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1405
	.byte 1,106,11
	.asciz "middle"

LDIFF_SYM1406=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1406
	.byte 0,11
	.asciz "pivot"

LDIFF_SYM1407=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1407
	.byte 1,102,11
	.asciz "left"

LDIFF_SYM1408=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1408
	.byte 1,101,11
	.asciz "right"

LDIFF_SYM1409=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1409
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1410=Lfde167_end - Lfde167_start
	.long LDIFF_SYM1410
Lfde167_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ArraySortHelper_1_T_INT_PickPivotAndPartition_T_INT___int_int_System_Comparison_1_T_INT

LDIFF_SYM1411=Lme_be - System_Collections_Generic_ArraySortHelper_1_T_INT_PickPivotAndPartition_T_INT___int_int_System_Comparison_1_T_INT
	.long LDIFF_SYM1411
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,149,18,150,17,68,151,16,152,15,68,153,14,154,13
	.align 3
Lfde167_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.ArraySortHelper`1<T_INT>:Heapsort"
	.asciz "System_Collections_Generic_ArraySortHelper_1_T_INT_Heapsort_T_INT___int_int_System_Comparison_1_T_INT"

	.byte 21,144,2
	.quad System_Collections_Generic_ArraySortHelper_1_T_INT_Heapsort_T_INT___int_int_System_Comparison_1_T_INT
	.quad Lme_bf

	.byte 2,118,16,3
	.asciz "keys"

LDIFF_SYM1412=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1412
	.byte 1,103,3
	.asciz "lo"

LDIFF_SYM1413=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1413
	.byte 1,104,3
	.asciz "hi"

LDIFF_SYM1414=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1414
	.byte 1,105,3
	.asciz "comparer"

LDIFF_SYM1415=LTDIE_111_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1415
	.byte 1,106,11
	.asciz "n"

LDIFF_SYM1416=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1416
	.byte 1,105,11
	.asciz "i"

LDIFF_SYM1417=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1417
	.byte 1,102,11
	.asciz "i"

LDIFF_SYM1418=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1418
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1419=Lfde168_end - Lfde168_start
	.long LDIFF_SYM1419
Lfde168_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ArraySortHelper_1_T_INT_Heapsort_T_INT___int_int_System_Comparison_1_T_INT

LDIFF_SYM1420=Lme_bf - System_Collections_Generic_ArraySortHelper_1_T_INT_Heapsort_T_INT___int_int_System_Comparison_1_T_INT
	.long LDIFF_SYM1420
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,150,10,151,9,68,152,8,153,7,68,154,6
	.align 3
Lfde168_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.ArraySortHelper`1<T_INT>:InsertionSort"
	.asciz "System_Collections_Generic_ArraySortHelper_1_T_INT_InsertionSort_T_INT___int_int_System_Comparison_1_T_INT"

	.byte 21,189,2
	.quad System_Collections_Generic_ArraySortHelper_1_T_INT_InsertionSort_T_INT___int_int_System_Comparison_1_T_INT
	.quad Lme_c0

	.byte 2,118,16,3
	.asciz "keys"

LDIFF_SYM1421=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1421
	.byte 1,103,3
	.asciz "lo"

LDIFF_SYM1422=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1422
	.byte 1,104,3
	.asciz "hi"

LDIFF_SYM1423=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1423
	.byte 1,105,3
	.asciz "comparer"

LDIFF_SYM1424=LTDIE_111_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1424
	.byte 1,106,11
	.asciz "i"

LDIFF_SYM1425=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1425
	.byte 1,102,11
	.asciz "j"

LDIFF_SYM1426=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1426
	.byte 1,101,11
	.asciz "t"

LDIFF_SYM1427=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1427
	.byte 1,100,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1428=Lfde169_end - Lfde169_start
	.long LDIFF_SYM1428
Lfde169_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ArraySortHelper_1_T_INT_InsertionSort_T_INT___int_int_System_Comparison_1_T_INT

LDIFF_SYM1429=Lme_c0 - System_Collections_Generic_ArraySortHelper_1_T_INT_InsertionSort_T_INT___int_int_System_Comparison_1_T_INT
	.long LDIFF_SYM1429
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,148,8,149,7,68,150,6,151,5,68,152,4,153,3,68,154,2
	.align 3
Lfde169_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.ArraySortHelper`1<T_INT>:SwapIfGreater"
	.asciz "System_Collections_Generic_ArraySortHelper_1_T_INT_SwapIfGreater_T_INT___System_Comparison_1_T_INT_int_int"

	.byte 21,145,1
	.quad System_Collections_Generic_ArraySortHelper_1_T_INT_SwapIfGreater_T_INT___System_Comparison_1_T_INT_int_int
	.quad Lme_c1

	.byte 2,118,16,3
	.asciz "keys"

LDIFF_SYM1430=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1430
	.byte 1,103,3
	.asciz "comparer"

LDIFF_SYM1431=LTDIE_111_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1431
	.byte 1,104,3
	.asciz "a"

LDIFF_SYM1432=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1432
	.byte 1,105,3
	.asciz "b"

LDIFF_SYM1433=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1433
	.byte 1,106,11
	.asciz "key"

LDIFF_SYM1434=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1434
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1435=Lfde170_end - Lfde170_start
	.long LDIFF_SYM1435
Lfde170_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ArraySortHelper_1_T_INT_SwapIfGreater_T_INT___System_Comparison_1_T_INT_int_int

LDIFF_SYM1436=Lme_c1 - System_Collections_Generic_ArraySortHelper_1_T_INT_SwapIfGreater_T_INT___System_Comparison_1_T_INT_int_int
	.long LDIFF_SYM1436
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,151,6,152,5,68,153,4,154,3
	.align 3
Lfde170_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.ArraySortHelper`1<T_INT>:Swap"
	.asciz "System_Collections_Generic_ArraySortHelper_1_T_INT_Swap_T_INT___int_int"

	.byte 21,158,1
	.quad System_Collections_Generic_ArraySortHelper_1_T_INT_Swap_T_INT___int_int
	.quad Lme_c2

	.byte 2,118,16,3
	.asciz "a"

LDIFF_SYM1437=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1437
	.byte 1,104,3
	.asciz "i"

LDIFF_SYM1438=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1438
	.byte 2,141,24,3
	.asciz "j"

LDIFF_SYM1439=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1439
	.byte 2,141,32,11
	.asciz "t"

LDIFF_SYM1440=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1440
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1441=Lfde171_end - Lfde171_start
	.long LDIFF_SYM1441
Lfde171_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ArraySortHelper_1_T_INT_Swap_T_INT___int_int

LDIFF_SYM1442=Lme_c2 - System_Collections_Generic_ArraySortHelper_1_T_INT_Swap_T_INT___int_int
	.long LDIFF_SYM1442
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6
	.align 3
Lfde171_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.ArraySortHelper`1<T_INT>:DownHeap"
	.asciz "System_Collections_Generic_ArraySortHelper_1_T_INT_DownHeap_T_INT___int_int_int_System_Comparison_1_T_INT"

	.byte 21,163,2
	.quad System_Collections_Generic_ArraySortHelper_1_T_INT_DownHeap_T_INT___int_int_int_System_Comparison_1_T_INT
	.quad Lme_c3

	.byte 2,118,16,3
	.asciz "keys"

LDIFF_SYM1443=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1443
	.byte 1,102,3
	.asciz "i"

LDIFF_SYM1444=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1444
	.byte 1,103,3
	.asciz "n"

LDIFF_SYM1445=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1445
	.byte 1,104,3
	.asciz "lo"

LDIFF_SYM1446=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1446
	.byte 1,105,3
	.asciz "comparer"

LDIFF_SYM1447=LTDIE_111_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1447
	.byte 1,106,11
	.asciz "d"

LDIFF_SYM1448=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1448
	.byte 1,101,11
	.asciz "child"

LDIFF_SYM1449=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1449
	.byte 1,100,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1450=Lfde172_end - Lfde172_start
	.long LDIFF_SYM1450
Lfde172_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ArraySortHelper_1_T_INT_DownHeap_T_INT___int_int_int_System_Comparison_1_T_INT

LDIFF_SYM1451=Lme_c3 - System_Collections_Generic_ArraySortHelper_1_T_INT_DownHeap_T_INT___int_int_int_System_Comparison_1_T_INT
	.long LDIFF_SYM1451
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,148,8,149,7,68,150,6,151,5,68,152,4,153,3,68,154,2
	.align 3
Lfde172_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.text
	.align 3
mem_end:
