.subsections_via_symbols
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
	.byte 4,1
	.asciz "Mono AOT Compiler 4.2.1 (mono-4.2.0-branch-c6sr0/a7605b3 Tue Dec  1 02:07:31 EST 2015)"
	.asciz "System.Runtime.Serialization.dll"
	.asciz ""

	.byte 2,0,0,0,0,0,0,0,0
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

	.byte 4,4,5
	.asciz "intptr"
LDIE_U:

	.byte 4,4,7
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

	.byte 4,4,1
	.asciz "string"
LDIE_OBJECT:

	.byte 4,4,1
	.asciz "object"
LDIE_SZARRAY:

	.byte 4,4,1
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

	.byte 1,124,14
	.align 2
Lcie0_end:
.text
	.align 3
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
ut_0:

	.byte 8,0,128,226
	b System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_get_Key

.text
	.align 2
	.no_dead_strip System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_get_Key
System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_get_Key:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,3,223,77,226,0,128,141,229,4,0,141,229,4,0,157,229,0,0,144,229
	.byte 3,223,141,226,0,1,189,232,128,128,189,232

Lme_0:
.text
ut_1:

	.byte 8,0,128,226
	b System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_set_Key_K_REF

.text
	.align 2
	.no_dead_strip System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_set_Key_K_REF
System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_set_Key_K_REF:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,0,128,141,229,4,0,141,229,8,16,141,229,8,16,157,229
	.byte 4,0,157,229,0,16,128,229,5,223,141,226,0,1,189,232,128,128,189,232

Lme_1:
.text
ut_2:

	.byte 8,0,128,226
	b System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_get_Value

.text
	.align 2
	.no_dead_strip System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_get_Value
System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_get_Value:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,3,223,77,226,0,128,141,229,4,0,141,229,4,0,157,229,4,0,144,229
	.byte 3,223,141,226,0,1,189,232,128,128,189,232

Lme_2:
.text
ut_3:

	.byte 8,0,128,226
	b System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_set_Value_V_REF

.text
	.align 2
	.no_dead_strip System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_set_Value_V_REF
System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_set_Value_V_REF:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,0,128,141,229,4,0,141,229,8,16,141,229,8,16,157,229
	.byte 4,0,157,229,4,16,128,229,5,223,141,226,0,1,189,232,128,128,189,232

Lme_3:
.text
	.align 2
	.no_dead_strip System_Runtime_Serialization_DataContractAttribute__ctor
System_Runtime_Serialization_DataContractAttribute__ctor:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,3,223,77,226,0,0,141,229,3,223,141,226,0,1,189,232,128,128,189,232

Lme_4:
.text
	.align 2
	.no_dead_strip System_Runtime_Serialization_DataContractAttribute_set_Namespace_string
System_Runtime_Serialization_DataContractAttribute_set_Namespace_string:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,3,223,77,226,0,0,141,229,4,16,141,229,4,16,157,229,0,0,157,229
	.byte 12,16,128,229,64,19,160,227,17,16,192,229,3,223,141,226,0,1,189,232,128,128,189,232

Lme_5:
.text
	.align 2
	.no_dead_strip System_Runtime_Serialization_DataContractAttribute_set_Name_string
System_Runtime_Serialization_DataContractAttribute_set_Name_string:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,3,223,77,226,0,0,141,229,4,16,141,229,4,16,157,229,0,0,157,229
	.byte 8,16,128,229,64,19,160,227,16,16,192,229,3,223,141,226,0,1,189,232,128,128,189,232

Lme_6:
.text
	.align 2
	.no_dead_strip System_Runtime_Serialization_DataMemberAttribute__ctor
System_Runtime_Serialization_DataMemberAttribute__ctor:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,3,223,77,226,0,0,141,229,0,0,157,229,0,31,224,227,16,16,128,229
	.byte 64,19,160,227,21,16,192,229,3,223,141,226,0,1,189,232,128,128,189,232

Lme_7:
.text
	.align 2
	.no_dead_strip System_Runtime_Serialization_DataMemberAttribute_set_Name_string
System_Runtime_Serialization_DataMemberAttribute_set_Name_string:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,3,223,77,226,0,0,141,229,4,16,141,229,4,16,157,229,0,0,157,229
	.byte 8,16,128,229,64,19,160,227,12,16,192,229,3,223,141,226,0,1,189,232,128,128,189,232

Lme_8:
.text
	.align 2
	.no_dead_strip System_Runtime_Serialization_DataMemberAttribute_set_IsRequired_bool
System_Runtime_Serialization_DataMemberAttribute_set_IsRequired_bool:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,3,223,77,226,0,0,141,229,4,16,205,229,4,16,221,229,0,0,157,229
	.byte 20,16,192,229,3,223,141,226,0,1,189,232,128,128,189,232

Lme_9:
.text
ut_10:

	.byte 8,0,128,226
	b System_Runtime_Serialization_DateTimeOffsetAdapter_get_UtcDateTime

.text
	.align 2
	.no_dead_strip System_Runtime_Serialization_DateTimeOffsetAdapter_get_UtcDateTime
System_Runtime_Serialization_DateTimeOffsetAdapter_get_UtcDateTime:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,0,16,141,229,12,0,141,229,12,0,157,229,0,16,144,229
	.byte 4,16,141,229,4,0,144,229,8,0,141,229,0,0,157,229,4,16,157,229,0,16,128,229,8,16,157,229,4,16,128,229
	.byte 5,223,141,226,0,1,189,232,128,128,189,232

Lme_a:
.text
ut_11:

	.byte 8,0,128,226
	b System_Runtime_Serialization_DateTimeOffsetAdapter_set_UtcDateTime_System_DateTime

.text
	.align 2
	.no_dead_strip System_Runtime_Serialization_DateTimeOffsetAdapter_set_UtcDateTime_System_DateTime
System_Runtime_Serialization_DateTimeOffsetAdapter_set_UtcDateTime_System_DateTime:

	.byte 128,64,45,233,13,112,160,225,0,9,45,233,4,223,77,226,13,176,160,225,0,0,139,229,4,16,139,229,8,32,139,229
	.byte 0,0,155,229,4,16,155,229,0,16,128,229,8,16,155,229,4,16,128,229,4,223,139,226,0,9,189,232,128,128,189,232

Lme_b:
.text
ut_12:

	.byte 8,0,128,226
	b System_Runtime_Serialization_DateTimeOffsetAdapter_get_OffsetMinutes

.text
	.align 2
	.no_dead_strip System_Runtime_Serialization_DateTimeOffsetAdapter_get_OffsetMinutes
System_Runtime_Serialization_DateTimeOffsetAdapter_get_OffsetMinutes:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,3,223,77,226,0,0,141,229,0,0,157,229,248,0,208,225,3,223,141,226
	.byte 0,1,189,232,128,128,189,232

Lme_c:
.text
ut_13:

	.byte 8,0,128,226
	b System_Runtime_Serialization_DateTimeOffsetAdapter_set_OffsetMinutes_int16

.text
	.align 2
	.no_dead_strip System_Runtime_Serialization_DateTimeOffsetAdapter_set_OffsetMinutes_int16
System_Runtime_Serialization_DateTimeOffsetAdapter_set_OffsetMinutes_int16:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,3,223,77,226,0,0,141,229,180,16,205,225,244,16,221,225,0,0,157,229
	.byte 184,16,192,225,3,223,141,226,0,1,189,232,128,128,189,232

Lme_d:
.text
ut_15:

	.byte 8,0,128,226
	b System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_get_Key

.text
	.align 2
	.no_dead_strip System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_get_Key
System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_get_Key:

	.byte 128,64,45,233,13,112,160,225,48,9,45,233,4,223,77,226,13,176,160,225,4,128,139,229,0,16,139,229,8,0,139,229
	.byte 4,0,155,229
bl _p_1

	.byte 0,80,160,225,0,0,149,229,7,64,128,226,7,64,196,227,4,208,77,224,13,64,160,225,4,0,149,229,64,19,64,226
	.byte 8,0,155,229,1,16,128,224,16,0,149,229,0,0,132,224,8,32,149,229,12,48,149,229,51,255,47,225,16,16,149,229
	.byte 4,0,160,225,1,16,128,224,0,0,155,229,8,32,149,229,12,48,149,229,51,255,47,225,4,223,139,226,48,9,189,232
	.byte 128,128,189,232

Lme_f:
.text
ut_16:

	.byte 8,0,128,226
	b System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_set_Key_K_GSHAREDVT

.text
	.align 2
	.no_dead_strip System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_set_Key_K_GSHAREDVT
System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_set_Key_K_GSHAREDVT:

	.byte 128,64,45,233,13,112,160,225,64,9,45,233,5,223,77,226,13,176,160,225,0,128,139,229,8,0,139,229,12,16,139,229
	.byte 0,0,155,229
bl _p_2

	.byte 0,96,160,225,0,0,150,229,0,31,160,227,0,15,160,227,4,0,139,229,4,0,150,229,64,35,64,226,8,0,155,229
	.byte 2,0,128,224,12,16,155,229,8,32,150,229,12,48,150,229,51,255,47,225,5,223,139,226,64,9,189,232,128,128,189,232

Lme_10:
.text
ut_17:

	.byte 8,0,128,226
	b System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_get_Value

.text
	.align 2
	.no_dead_strip System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_get_Value
System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_get_Value:

	.byte 128,64,45,233,13,112,160,225,48,9,45,233,4,223,77,226,13,176,160,225,4,128,139,229,0,16,139,229,8,0,139,229
	.byte 4,0,155,229
bl _p_3

	.byte 0,80,160,225,0,0,149,229,7,64,128,226,7,64,196,227,4,208,77,224,13,64,160,225,4,0,149,229,64,19,64,226
	.byte 8,0,155,229,1,16,128,224,16,0,149,229,0,0,132,224,8,32,149,229,12,48,149,229,51,255,47,225,16,16,149,229
	.byte 4,0,160,225,1,16,128,224,0,0,155,229,8,32,149,229,12,48,149,229,51,255,47,225,4,223,139,226,48,9,189,232
	.byte 128,128,189,232

Lme_11:
.text
ut_18:

	.byte 8,0,128,226
	b System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_set_Value_V_GSHAREDVT

.text
	.align 2
	.no_dead_strip System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_set_Value_V_GSHAREDVT
System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_set_Value_V_GSHAREDVT:

	.byte 128,64,45,233,13,112,160,225,64,9,45,233,5,223,77,226,13,176,160,225,0,128,139,229,8,0,139,229,12,16,139,229
	.byte 0,0,155,229
bl _p_4

	.byte 0,96,160,225,0,0,150,229,0,31,160,227,0,15,160,227,4,0,139,229,4,0,150,229,64,35,64,226,8,0,155,229
	.byte 2,0,128,224,12,16,155,229,8,32,150,229,12,48,150,229,51,255,47,225,5,223,139,226,64,9,189,232,128,128,189,232

Lme_12:
.text
	.align 3
jit_code_end:

	.byte 0,0,0,0
.text
	.align 3
method_addresses:
	.no_dead_strip method_addresses
bl System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_get_Key
bl System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_set_Key_K_REF
bl System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_get_Value
bl System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_set_Value_V_REF
bl System_Runtime_Serialization_DataContractAttribute__ctor
bl System_Runtime_Serialization_DataContractAttribute_set_Namespace_string
bl System_Runtime_Serialization_DataContractAttribute_set_Name_string
bl System_Runtime_Serialization_DataMemberAttribute__ctor
bl System_Runtime_Serialization_DataMemberAttribute_set_Name_string
bl System_Runtime_Serialization_DataMemberAttribute_set_IsRequired_bool
bl System_Runtime_Serialization_DateTimeOffsetAdapter_get_UtcDateTime
bl System_Runtime_Serialization_DateTimeOffsetAdapter_set_UtcDateTime_System_DateTime
bl System_Runtime_Serialization_DateTimeOffsetAdapter_get_OffsetMinutes
bl System_Runtime_Serialization_DateTimeOffsetAdapter_set_OffsetMinutes_int16
bl method_addresses
bl System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_get_Key
bl System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_set_Key_K_GSHAREDVT
bl System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_get_Value
bl System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_set_Value_V_GSHAREDVT
method_addresses_end:

.section __TEXT, __const
	.align 3
unbox_trampolines:

	.long 0,1,2,3,10,11,12,13
	.long 15,16,17,18
unbox_trampolines_end:

	.long 0
.text
	.align 3
unbox_trampoline_addresses:
bl ut_0
bl ut_1
bl ut_2
bl ut_3
bl ut_10
bl ut_11
bl ut_12
bl ut_13
bl ut_15
bl ut_16
bl ut_17
bl ut_18

	.long 0
.section __TEXT, __const
	.align 3
method_info_offsets:

	.byte 19,0,0,0,10,0,0,0,2,0,0,0,2,0,0,0,0,0,10,0,1,2,2,2,2,2,2,2,2,2,21,2
	.byte 2,2,255,255,255,255,229,29,2,2,2
.section __TEXT, __const
	.align 3
extra_method_table:

	.byte 11,0,0,0,125,0,0,0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 107,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,143,0,0,0,18,0,0,0,0,0,0,0,89,0,0,0
	.byte 15,0,0,0,0,0,0,0
.section __TEXT, __const
	.align 3
extra_method_info_offsets:

	.byte 4,0,0,0,15,0,0,0,89,0,0,0,16,0,0,0,107,0,0,0,17,0,0,0,125,0,0,0,18,0,0,0
	.byte 143,0,0,0
.section __TEXT, __const
	.align 3
class_name_table:

	.byte 11,0,1,0,0,0,3,0,0,0,5,0,0,0,0,0,0,0,4,0,0,0,2,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0
.section __TEXT, __const
	.align 3
got_info_offsets:

	.byte 5,0,0,0,10,0,0,0,1,0,0,0,2,0,0,0,0,0,128,161,2,1,1,1
.section __TEXT, __const
	.align 3
ex_info_offsets:

	.byte 19,0,0,0,10,0,0,0,2,0,0,0,2,0,0,0,0,0,11,0,129,167,44,49,44,49,15,24,24,19,24,130
	.byte 225,15,20,17,255,255,255,252,235,131,43,57,65,57
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 18,12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,24,18,12,13,0,72,14,8,135,2,68,14,12,136
	.byte 3,142,1,68,14,32,23,12,13,0,72,14,8,135,2,68,14,16,136,4,139,3,142,1,68,14,32,68,13,11,27,12
	.byte 13,0,72,14,8,135,2,68,14,24,132,6,133,5,136,4,139,3,142,1,68,14,40,68,13,11,25,12,13,0,72,14
	.byte 8,135,2,68,14,20,134,5,136,4,139,3,142,1,68,14,40,68,13,11
.section __TEXT, __const
	.align 3
class_info_offsets:

	.byte 5,0,0,0,10,0,0,0,1,0,0,0,2,0,0,0,0,0,132,31,7,5,35,35

.text
	.align 4
plt:
mono_aot_System_Runtime_Serialization_plt:
	.no_dead_strip plt__rgctx_fetch_0
plt__rgctx_fetch_0:
_p_1:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Runtime_Serialization_got - . + 20,185
	.no_dead_strip plt__rgctx_fetch_1
plt__rgctx_fetch_1:
_p_2:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Runtime_Serialization_got - . + 24,242
	.no_dead_strip plt__rgctx_fetch_2
plt__rgctx_fetch_2:
_p_3:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Runtime_Serialization_got - . + 28,296
	.no_dead_strip plt__rgctx_fetch_3
plt__rgctx_fetch_3:
_p_4:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Runtime_Serialization_got - . + 32,353
plt_end:
.section __TEXT, __const
	.align 3
image_table:

	.byte 2,0,0,0,83,121,115,116,101,109,46,82,117,110,116,105,109,101,46,83,101,114,105,97,108,105,122,97,116,105,111,110
	.byte 0,53,56,65,53,49,52,68,66,45,66,48,49,70,45,52,68,54,57,45,57,55,49,65,45,50,70,51,69,66,48,50
	.byte 68,65,50,55,57,0,0,55,99,101,99,56,53,100,55,98,101,97,55,55,57,56,101,0,1,0,0,0,2,0,0,0
	.byte 0,0,0,0,5,0,0,0,0,0,0,0,109,115,99,111,114,108,105,98,0,54,67,66,49,50,52,69,52,45,55,67
	.byte 57,53,45,52,52,48,50,45,56,48,48,68,45,53,56,70,68,65,57,55,67,67,49,66,54,0,0,55,99,101,99,56
	.byte 53,100,55,98,101,97,55,55,57,56,101,0,0,0,0,0,1,0,0,0,2,0,0,0,0,0,0,0,5,0,0,0
	.byte 0,0,0,0
.section __DATA, __bss
	.align 3
.lcomm mono_aot_System_Runtime_Serialization_got, 40
.section __TEXT, __const
	.align 2
runtime_version:
	.asciz ""
.section __TEXT, __const
	.align 2
assembly_guid:
	.asciz "58A514DB-B01F-4D69-971A-2F3EB02DA279"
.section __TEXT, __const
	.align 2
assembly_name:
	.asciz "System.Runtime.Serialization"
.data
	.align 3
_mono_aot_file_info:

	.long 119,0
	.align 2
	.long mono_aot_System_Runtime_Serialization_got
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long jit_code_start
	.align 2
	.long jit_code_end
	.align 2
	.long method_addresses
	.align 2
	.long blob
	.align 2
	.long class_name_table
	.align 2
	.long class_info_offsets
	.align 2
	.long method_info_offsets
	.align 2
	.long ex_info_offsets
	.align 2
	.long extra_method_info_offsets
	.align 2
	.long extra_method_table
	.align 2
	.long got_info_offsets
	.align 2
	.long 0
	.align 2
	.long mem_end
	.align 2
	.long image_table
	.align 2
	.long assembly_guid
	.align 2
	.long runtime_version
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long globals
	.align 2
	.long assembly_name
	.align 2
	.long plt
	.align 2
	.long plt_end
	.align 2
	.long unwind_info
	.align 2
	.long unbox_trampolines
	.align 2
	.long unbox_trampolines_end
	.align 2
	.long unbox_trampoline_addresses

	.long 5,40,5,19,2,387000831,0,1160
	.long 128,4,4,15,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0
	.globl _mono_aot_module_System_Runtime_Serialization_info
	.align 2
_mono_aot_module_System_Runtime_Serialization_info:
	.align 2
	.long _mono_aot_file_info
.section __TEXT, __const
	.align 3
blob:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,5,19,0,0,1,17,2,132,57,1,11,75,95,71,83,72,65,82,69,68,86,84,5,19,1,0,1
	.byte 17,2,132,57,1,11,86,95,71,83,72,65,82,69,68,86,84,4,1,2,2,7,37,7,59,255,253,0,0,0,7,81
	.byte 0,198,0,0,1,2,7,37,7,59,0,255,253,0,0,0,7,81,0,198,0,0,2,2,7,37,7,59,0,255,253,0
	.byte 0,0,7,81,0,198,0,0,3,2,7,37,7,59,0,255,253,0,0,0,7,81,0,198,0,0,4,2,7,37,7,59
	.byte 0,12,0,39,42,52,47,255,253,0,0,0,7,81,0,198,0,0,1,2,7,37,7,59,0,35,128,167,192,0,92,42
	.byte 255,253,0,0,0,7,81,0,198,0,0,1,2,7,37,7,59,0,4,16,7,81,1,15,7,37,23,7,37,22,7,37
	.byte 255,253,0,0,0,7,81,0,198,0,0,2,2,7,37,7,59,0,35,128,224,192,0,92,42,255,253,0,0,0,7,81
	.byte 0,198,0,0,2,2,7,37,7,59,0,3,16,7,81,1,15,7,37,23,7,37,255,253,0,0,0,7,81,0,198,0
	.byte 0,3,2,7,37,7,59,0,35,129,22,192,0,92,42,255,253,0,0,0,7,81,0,198,0,0,3,2,7,37,7,59
	.byte 0,4,16,7,81,2,15,7,59,23,7,59,22,7,59,255,253,0,0,0,7,81,0,198,0,0,4,2,7,37,7,59
	.byte 0,35,129,79,192,0,92,42,255,253,0,0,0,7,81,0,198,0,0,4,2,7,37,7,59,0,3,16,7,81,2,15
	.byte 7,59,23,7,59,5,19,0,0,1,28,5,75,95,82,69,70,5,19,1,0,1,28,5,86,95,82,69,70,4,1,2
	.byte 2,7,129,133,7,129,145,3,0,0,1,13,0,21,255,253,0,0,0,7,129,157,0,198,0,0,1,2,7,129,133,7
	.byte 129,145,0,0,14,32,28,44,208,0,0,13,4,0,2,1,28,6,4,3,19,0,1,13,0,21,255,253,0,0,0,7
	.byte 129,157,0,198,0,0,2,2,7,129,133,7,129,145,0,0,19,40,36,52,208,0,0,13,8,208,0,0,13,4,0,2
	.byte 2,36,6,4,3,0,0,1,13,0,21,255,253,0,0,0,7,129,157,0,198,0,0,3,2,7,129,133,7,129,145,0
	.byte 0,14,32,28,44,208,0,0,13,4,0,2,1,28,6,4,3,19,0,1,13,0,21,255,253,0,0,0,7,129,157,0
	.byte 198,0,0,4,2,7,129,133,7,129,145,0,0,19,40,36,52,208,0,0,13,8,208,0,0,13,4,0,2,2,36,6
	.byte 4,2,0,12,20,0,32,255,48,0,0,0,0,1,7,20,2,0,21,44,32,56,208,0,0,13,4,208,0,0,13,0
	.byte 0,3,2,32,7,8,6,4,2,0,21,44,32,56,208,0,0,13,4,208,0,0,13,0,0,3,2,32,7,8,6,4
	.byte 2,0,16,40,28,52,208,0,0,13,0,0,3,2,28,7,8,12,4,2,0,21,44,32,56,208,0,0,13,4,208,0
	.byte 0,13,0,0,3,2,32,7,8,6,4,2,0,19,36,32,48,208,0,0,13,4,208,0,0,13,0,0,2,2,32,6
	.byte 4,2,19,12,64,0,76,208,0,0,13,12,0,1,7,64,2,38,17,52,0,64,208,0,0,11,4,208,0,0,11,0
	.byte 0,1,8,52,2,0,14,28,24,40,208,0,0,13,0,0,2,1,24,6,4,2,0,19,36,32,48,208,0,0,13,4
	.byte 208,0,0,13,0,0,2,2,32,6,4,3,62,0,1,11,4,18,255,253,0,0,0,7,81,0,198,0,0,1,2,7
	.byte 37,7,59,0,1,30,128,128,36,128,140,208,0,0,11,8,1,5,4,8,0,36,0,4,0,4,0,4,1,16,0,4
	.byte 0,8,6,52,3,90,0,1,11,0,18,255,253,0,0,0,7,81,0,198,0,0,2,2,7,37,7,59,0,1,38,92
	.byte 36,104,255,64,0,0,11,12,208,0,0,11,8,1,6,208,0,0,11,4,8,0,36,0,4,0,4,0,4,2,12,0
	.byte 4,0,8,6,20,3,62,0,1,11,4,18,255,253,0,0,0,7,81,0,198,0,0,3,2,7,37,7,59,0,1,30
	.byte 128,128,36,128,140,208,0,0,11,8,1,5,4,8,0,36,0,4,0,4,0,4,1,16,0,4,0,8,6,52,3,90
	.byte 0,1,11,0,18,255,253,0,0,0,7,81,0,198,0,0,4,2,7,37,7,59,0,1,38,92,36,104,255,64,0,0
	.byte 11,12,208,0,0,11,8,1,6,208,0,0,11,4,8,0,36,0,4,0,4,0,4,2,12,0,4,0,8,6,20,0
	.byte 128,144,8,0,0,1,255,255,255,255,255,7,128,160,20,0,0,4,193,0,33,150,193,0,1,71,193,0,33,146,193,0
	.byte 1,69,193,0,1,74,193,0,1,73,193,0,1,72,7,128,160,24,0,0,4,193,0,33,150,193,0,1,71,193,0,33
	.byte 146,193,0,1,69,193,0,1,74,193,0,1,73,193,0,1,72,4,128,128,20,0,0,4,193,0,33,241,193,0,33,240
	.byte 193,0,33,146,193,0,33,238,98,111,101,104,109,0
.section __TEXT, __const
	.align 3
Lglobals_hash:

	.short 11, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0
.data
	.align 3
globals:
	.align 2
	.long Lglobals_hash

	.long 0,0
.section __DWARF, __debug_info,regular,debug
LTDIE_2:

	.byte 17
	.asciz "System_Object"

	.byte 8,7
	.asciz "System_Object"

LDIFF_SYM3=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM3
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM4=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM4
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM5=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM5
LTDIE_1:

	.byte 5
	.asciz "System_ValueType"

	.byte 8,16
LDIFF_SYM6=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM6
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM7=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM7
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM8=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM8
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM9=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM9
LTDIE_0:

	.byte 5
	.asciz "System_Runtime_Serialization_KeyValue`2"

	.byte 16,16
LDIFF_SYM10=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM10
	.byte 2,35,0,6
	.asciz "key"

LDIFF_SYM11=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM11
	.byte 2,35,8,6
	.asciz "value"

LDIFF_SYM12=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM12
	.byte 2,35,12,0,7
	.asciz "System_Runtime_Serialization_KeyValue`2"

LDIFF_SYM13=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM13
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM14=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM14
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM15=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM15
	.byte 2
	.asciz "System.Runtime.Serialization.KeyValue`2<K_REF, V_REF>:get_Key"
	.asciz "System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_get_Key"

	.byte 1,41
	.long System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_get_Key
	.long Lme_0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM16=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM16
	.byte 2,125,4,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM17=Lfde0_end - Lfde0_start
	.long LDIFF_SYM17
Lfde0_start:

	.long 0
	.align 2
	.long System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_get_Key

LDIFF_SYM18=Lme_0 - System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_get_Key
	.long LDIFF_SYM18
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,24
	.align 2
Lfde0_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.Serialization.KeyValue`2<K_REF, V_REF>:set_Key"
	.asciz "System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_set_Key_K_REF"

	.byte 1,42
	.long System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_set_Key_K_REF
	.long Lme_1

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM19=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM19
	.byte 2,125,4,3
	.asciz "value"

LDIFF_SYM20=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM20
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM21=Lfde1_end - Lfde1_start
	.long LDIFF_SYM21
Lfde1_start:

	.long 0
	.align 2
	.long System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_set_Key_K_REF

LDIFF_SYM22=Lme_1 - System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_set_Key_K_REF
	.long LDIFF_SYM22
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde1_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.Serialization.KeyValue`2<K_REF, V_REF>:get_Value"
	.asciz "System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_get_Value"

	.byte 1,48
	.long System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_get_Value
	.long Lme_2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM23=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM23
	.byte 2,125,4,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM24=Lfde2_end - Lfde2_start
	.long LDIFF_SYM24
Lfde2_start:

	.long 0
	.align 2
	.long System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_get_Value

LDIFF_SYM25=Lme_2 - System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_get_Value
	.long LDIFF_SYM25
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,24
	.align 2
Lfde2_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.Serialization.KeyValue`2<K_REF, V_REF>:set_Value"
	.asciz "System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_set_Value_V_REF"

	.byte 1,49
	.long System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_set_Value_V_REF
	.long Lme_3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM26=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM26
	.byte 2,125,4,3
	.asciz "value"

LDIFF_SYM27=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM27
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM28=Lfde3_end - Lfde3_start
	.long LDIFF_SYM28
Lfde3_start:

	.long 0
	.align 2
	.long System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_set_Value_V_REF

LDIFF_SYM29=Lme_3 - System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_set_Value_V_REF
	.long LDIFF_SYM29
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde3_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_4:

	.byte 5
	.asciz "System_Attribute"

	.byte 8,16
LDIFF_SYM30=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM30
	.byte 2,35,0,0,7
	.asciz "System_Attribute"

LDIFF_SYM31=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM31
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM32=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM32
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM33=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM33
LTDIE_5:

	.byte 5
	.asciz "System_Boolean"

	.byte 9,16
LDIFF_SYM34=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM34
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM35=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM35
	.byte 2,35,8,0,7
	.asciz "System_Boolean"

LDIFF_SYM36=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM36
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM37=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM37
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM38=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM38
LTDIE_3:

	.byte 5
	.asciz "System_Runtime_Serialization_DataContractAttribute"

	.byte 20,16
LDIFF_SYM39=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM39
	.byte 2,35,0,6
	.asciz "name"

LDIFF_SYM40=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM40
	.byte 2,35,8,6
	.asciz "ns"

LDIFF_SYM41=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM41
	.byte 2,35,12,6
	.asciz "isNameSetExplicit"

LDIFF_SYM42=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM42
	.byte 2,35,16,6
	.asciz "isNamespaceSetExplicit"

LDIFF_SYM43=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM43
	.byte 2,35,17,0,7
	.asciz "System_Runtime_Serialization_DataContractAttribute"

LDIFF_SYM44=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM44
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM45=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM45
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM46=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM46
	.byte 2
	.asciz "System.Runtime.Serialization.DataContractAttribute:.ctor"
	.asciz "System_Runtime_Serialization_DataContractAttribute__ctor"

	.byte 2,17
	.long System_Runtime_Serialization_DataContractAttribute__ctor
	.long Lme_4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM47=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM47
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM48=Lfde4_end - Lfde4_start
	.long LDIFF_SYM48
Lfde4_start:

	.long 0
	.align 2
	.long System_Runtime_Serialization_DataContractAttribute__ctor

LDIFF_SYM49=Lme_4 - System_Runtime_Serialization_DataContractAttribute__ctor
	.long LDIFF_SYM49
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,24
	.align 2
Lfde4_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.Serialization.DataContractAttribute:set_Namespace"
	.asciz "System_Runtime_Serialization_DataContractAttribute_set_Namespace_string"

	.byte 2,41
	.long System_Runtime_Serialization_DataContractAttribute_set_Namespace_string
	.long Lme_5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM50=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM50
	.byte 2,125,0,3
	.asciz "value"

LDIFF_SYM51=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM51
	.byte 2,125,4,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM52=Lfde5_end - Lfde5_start
	.long LDIFF_SYM52
Lfde5_start:

	.long 0
	.align 2
	.long System_Runtime_Serialization_DataContractAttribute_set_Namespace_string

LDIFF_SYM53=Lme_5 - System_Runtime_Serialization_DataContractAttribute_set_Namespace_string
	.long LDIFF_SYM53
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,24
	.align 2
Lfde5_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.Serialization.DataContractAttribute:set_Name"
	.asciz "System_Runtime_Serialization_DataContractAttribute_set_Name_string"

	.byte 2,56
	.long System_Runtime_Serialization_DataContractAttribute_set_Name_string
	.long Lme_6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM54=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM54
	.byte 2,125,0,3
	.asciz "value"

LDIFF_SYM55=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM55
	.byte 2,125,4,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM56=Lfde6_end - Lfde6_start
	.long LDIFF_SYM56
Lfde6_start:

	.long 0
	.align 2
	.long System_Runtime_Serialization_DataContractAttribute_set_Name_string

LDIFF_SYM57=Lme_6 - System_Runtime_Serialization_DataContractAttribute_set_Name_string
	.long LDIFF_SYM57
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,24
	.align 2
Lfde6_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_7:

	.byte 5
	.asciz "System_Int32"

	.byte 12,16
LDIFF_SYM58=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM58
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM59=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM59
	.byte 2,35,8,0,7
	.asciz "System_Int32"

LDIFF_SYM60=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM60
LTDIE_7_POINTER:

	.byte 13
LDIFF_SYM61=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM61
LTDIE_7_REFERENCE:

	.byte 14
LDIFF_SYM62=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM62
LTDIE_6:

	.byte 5
	.asciz "System_Runtime_Serialization_DataMemberAttribute"

	.byte 24,16
LDIFF_SYM63=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM63
	.byte 2,35,0,6
	.asciz "name"

LDIFF_SYM64=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM64
	.byte 2,35,8,6
	.asciz "isNameSetExplicit"

LDIFF_SYM65=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM65
	.byte 2,35,12,6
	.asciz "order"

LDIFF_SYM66=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM66
	.byte 2,35,16,6
	.asciz "isRequired"

LDIFF_SYM67=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM67
	.byte 2,35,20,6
	.asciz "emitDefaultValue"

LDIFF_SYM68=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM68
	.byte 2,35,21,0,7
	.asciz "System_Runtime_Serialization_DataMemberAttribute"

LDIFF_SYM69=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM69
LTDIE_6_POINTER:

	.byte 13
LDIFF_SYM70=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM70
LTDIE_6_REFERENCE:

	.byte 14
LDIFF_SYM71=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM71
	.byte 2
	.asciz "System.Runtime.Serialization.DataMemberAttribute:.ctor"
	.asciz "System_Runtime_Serialization_DataMemberAttribute__ctor"

	.byte 3,12
	.long System_Runtime_Serialization_DataMemberAttribute__ctor
	.long Lme_7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM72=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM72
	.byte 2,125,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM73=Lfde7_end - Lfde7_start
	.long LDIFF_SYM73
Lfde7_start:

	.long 0
	.align 2
	.long System_Runtime_Serialization_DataMemberAttribute__ctor

LDIFF_SYM74=Lme_7 - System_Runtime_Serialization_DataMemberAttribute__ctor
	.long LDIFF_SYM74
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,24
	.align 2
Lfde7_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.Serialization.DataMemberAttribute:set_Name"
	.asciz "System_Runtime_Serialization_DataMemberAttribute_set_Name_string"

	.byte 3,23
	.long System_Runtime_Serialization_DataMemberAttribute_set_Name_string
	.long Lme_8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM75=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM75
	.byte 2,125,0,3
	.asciz "value"

LDIFF_SYM76=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM76
	.byte 2,125,4,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM77=Lfde8_end - Lfde8_start
	.long LDIFF_SYM77
Lfde8_start:

	.long 0
	.align 2
	.long System_Runtime_Serialization_DataMemberAttribute_set_Name_string

LDIFF_SYM78=Lme_8 - System_Runtime_Serialization_DataMemberAttribute_set_Name_string
	.long LDIFF_SYM78
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,24
	.align 2
Lfde8_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.Serialization.DataMemberAttribute:set_IsRequired"
	.asciz "System_Runtime_Serialization_DataMemberAttribute_set_IsRequired_bool"

	.byte 3,45
	.long System_Runtime_Serialization_DataMemberAttribute_set_IsRequired_bool
	.long Lme_9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM79=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM79
	.byte 2,125,0,3
	.asciz "value"

LDIFF_SYM80=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM80
	.byte 2,125,4,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM81=Lfde9_end - Lfde9_start
	.long LDIFF_SYM81
Lfde9_start:

	.long 0
	.align 2
	.long System_Runtime_Serialization_DataMemberAttribute_set_IsRequired_bool

LDIFF_SYM82=Lme_9 - System_Runtime_Serialization_DataMemberAttribute_set_IsRequired_bool
	.long LDIFF_SYM82
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,24
	.align 2
Lfde9_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_9:

	.byte 5
	.asciz "System_Int16"

	.byte 10,16
LDIFF_SYM83=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM83
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM84=LDIE_I2 - Ldebug_info_start
	.long LDIFF_SYM84
	.byte 2,35,8,0,7
	.asciz "System_Int16"

LDIFF_SYM85=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM85
LTDIE_9_POINTER:

	.byte 13
LDIFF_SYM86=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM86
LTDIE_9_REFERENCE:

	.byte 14
LDIFF_SYM87=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM87
LTDIE_8:

	.byte 5
	.asciz "System_Runtime_Serialization_DateTimeOffsetAdapter"

	.byte 20,16
LDIFF_SYM88=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM88
	.byte 2,35,0,6
	.asciz "utcDateTime"

LDIFF_SYM89=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM89
	.byte 2,35,0,6
	.asciz "offsetMinutes"

LDIFF_SYM90=LDIE_I2 - Ldebug_info_start
	.long LDIFF_SYM90
	.byte 2,35,8,0,7
	.asciz "System_Runtime_Serialization_DateTimeOffsetAdapter"

LDIFF_SYM91=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM91
LTDIE_8_POINTER:

	.byte 13
LDIFF_SYM92=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM92
LTDIE_8_REFERENCE:

	.byte 14
LDIFF_SYM93=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM93
	.byte 2
	.asciz "System.Runtime.Serialization.DateTimeOffsetAdapter:get_UtcDateTime"
	.asciz "System_Runtime_Serialization_DateTimeOffsetAdapter_get_UtcDateTime"

	.byte 4,30
	.long System_Runtime_Serialization_DateTimeOffsetAdapter_get_UtcDateTime
	.long Lme_a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM94=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM94
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM95=Lfde10_end - Lfde10_start
	.long LDIFF_SYM95
Lfde10_start:

	.long 0
	.align 2
	.long System_Runtime_Serialization_DateTimeOffsetAdapter_get_UtcDateTime

LDIFF_SYM96=Lme_a - System_Runtime_Serialization_DateTimeOffsetAdapter_get_UtcDateTime
	.long LDIFF_SYM96
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde10_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.Serialization.DateTimeOffsetAdapter:set_UtcDateTime"
	.asciz "System_Runtime_Serialization_DateTimeOffsetAdapter_set_UtcDateTime_System_DateTime"

	.byte 4,31
	.long System_Runtime_Serialization_DateTimeOffsetAdapter_set_UtcDateTime_System_DateTime
	.long Lme_b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM97=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM97
	.byte 2,123,0,3
	.asciz "value"

LDIFF_SYM98=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM98
	.byte 2,123,4,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM99=Lfde11_end - Lfde11_start
	.long LDIFF_SYM99
Lfde11_start:

	.long 0
	.align 2
	.long System_Runtime_Serialization_DateTimeOffsetAdapter_set_UtcDateTime_System_DateTime

LDIFF_SYM100=Lme_b - System_Runtime_Serialization_DateTimeOffsetAdapter_set_UtcDateTime_System_DateTime
	.long LDIFF_SYM100
	.byte 12,13,0,72,14,8,135,2,68,14,16,136,4,139,3,142,1,68,14,32,68,13,11
	.align 2
Lfde11_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.Serialization.DateTimeOffsetAdapter:get_OffsetMinutes"
	.asciz "System_Runtime_Serialization_DateTimeOffsetAdapter_get_OffsetMinutes"

	.byte 4,37
	.long System_Runtime_Serialization_DateTimeOffsetAdapter_get_OffsetMinutes
	.long Lme_c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM101=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM101
	.byte 2,125,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM102=Lfde12_end - Lfde12_start
	.long LDIFF_SYM102
Lfde12_start:

	.long 0
	.align 2
	.long System_Runtime_Serialization_DateTimeOffsetAdapter_get_OffsetMinutes

LDIFF_SYM103=Lme_c - System_Runtime_Serialization_DateTimeOffsetAdapter_get_OffsetMinutes
	.long LDIFF_SYM103
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,24
	.align 2
Lfde12_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.Serialization.DateTimeOffsetAdapter:set_OffsetMinutes"
	.asciz "System_Runtime_Serialization_DateTimeOffsetAdapter_set_OffsetMinutes_int16"

	.byte 4,38
	.long System_Runtime_Serialization_DateTimeOffsetAdapter_set_OffsetMinutes_int16
	.long Lme_d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM104=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM104
	.byte 2,125,0,3
	.asciz "value"

LDIFF_SYM105=LDIE_I2 - Ldebug_info_start
	.long LDIFF_SYM105
	.byte 2,125,4,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM106=Lfde13_end - Lfde13_start
	.long LDIFF_SYM106
Lfde13_start:

	.long 0
	.align 2
	.long System_Runtime_Serialization_DateTimeOffsetAdapter_set_OffsetMinutes_int16

LDIFF_SYM107=Lme_d - System_Runtime_Serialization_DateTimeOffsetAdapter_set_OffsetMinutes_int16
	.long LDIFF_SYM107
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,24
	.align 2
Lfde13_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_10:

	.byte 5
	.asciz "System_Runtime_Serialization_KeyValue`2"

	.byte 16,16
LDIFF_SYM108=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM108
	.byte 2,35,0,6
	.asciz "key"

LDIFF_SYM109=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM109
	.byte 2,35,8,6
	.asciz "value"

LDIFF_SYM110=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM110
	.byte 2,35,12,0,7
	.asciz "System_Runtime_Serialization_KeyValue`2"

LDIFF_SYM111=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM111
LTDIE_10_POINTER:

	.byte 13
LDIFF_SYM112=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM112
LTDIE_10_REFERENCE:

	.byte 14
LDIFF_SYM113=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM113
	.byte 2
	.asciz "System.Runtime.Serialization.KeyValue`2<K_GSHAREDVT, V_GSHAREDVT>:get_Key"
	.asciz "System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_get_Key"

	.byte 1,41
	.long System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_get_Key
	.long Lme_f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM114=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM114
	.byte 2,123,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM115=Lfde14_end - Lfde14_start
	.long LDIFF_SYM115
Lfde14_start:

	.long 0
	.align 2
	.long System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_get_Key

LDIFF_SYM116=Lme_f - System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_get_Key
	.long LDIFF_SYM116
	.byte 12,13,0,72,14,8,135,2,68,14,24,132,6,133,5,136,4,139,3,142,1,68,14,40,68,13,11
	.align 2
Lfde14_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.Serialization.KeyValue`2<K_GSHAREDVT, V_GSHAREDVT>:set_Key"
	.asciz "System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_set_Key_K_GSHAREDVT"

	.byte 1,42
	.long System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_set_Key_K_GSHAREDVT
	.long Lme_10

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM117=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM117
	.byte 2,123,8,3
	.asciz "value"

LDIFF_SYM118=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM118
	.byte 1,80,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM119=Lfde15_end - Lfde15_start
	.long LDIFF_SYM119
Lfde15_start:

	.long 0
	.align 2
	.long System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_set_Key_K_GSHAREDVT

LDIFF_SYM120=Lme_10 - System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_set_Key_K_GSHAREDVT
	.long LDIFF_SYM120
	.byte 12,13,0,72,14,8,135,2,68,14,20,134,5,136,4,139,3,142,1,68,14,40,68,13,11
	.align 2
Lfde15_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.Serialization.KeyValue`2<K_GSHAREDVT, V_GSHAREDVT>:get_Value"
	.asciz "System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_get_Value"

	.byte 1,48
	.long System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_get_Value
	.long Lme_11

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM121=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM121
	.byte 2,123,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM122=Lfde16_end - Lfde16_start
	.long LDIFF_SYM122
Lfde16_start:

	.long 0
	.align 2
	.long System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_get_Value

LDIFF_SYM123=Lme_11 - System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_get_Value
	.long LDIFF_SYM123
	.byte 12,13,0,72,14,8,135,2,68,14,24,132,6,133,5,136,4,139,3,142,1,68,14,40,68,13,11
	.align 2
Lfde16_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.Serialization.KeyValue`2<K_GSHAREDVT, V_GSHAREDVT>:set_Value"
	.asciz "System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_set_Value_V_GSHAREDVT"

	.byte 1,49
	.long System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_set_Value_V_GSHAREDVT
	.long Lme_12

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM124=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM124
	.byte 2,123,8,3
	.asciz "value"

LDIFF_SYM125=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM125
	.byte 1,80,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM126=Lfde17_end - Lfde17_start
	.long LDIFF_SYM126
Lfde17_start:

	.long 0
	.align 2
	.long System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_set_Value_V_GSHAREDVT

LDIFF_SYM127=Lme_12 - System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_set_Value_V_GSHAREDVT
	.long LDIFF_SYM127
	.byte 12,13,0,72,14,8,135,2,68,14,20,134,5,136,4,139,3,142,1,68,14,40,68,13,11
	.align 2
Lfde17_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.section __DWARF, __debug_line,regular,debug
Ldebug_line_section_start:
Ldebug_line_start:

	.long Ldebug_line_end - . -4
	.short 2
	.long Ldebug_line_header_end - . -4
	.byte 1,1,251,14,13,0,1,1,1,1,0,0,0,1,0,0,1
.section __DWARF, __debug_line,regular,debug
	.asciz "/Users/builder/data/lanes/2506/eb4c1ef1/source/maccore/_build/Library/Frameworks/Xamarin.iOS.framework/Versions/git/src/mono/external/referencesource/System.Runtime.Serialization/System/Runtime/Serialization"

	.byte 0
	.asciz "CollectionDataContract.cs"

	.byte 1,0,0
	.asciz "DataContractAttribute.cs"

	.byte 1,0,0
	.asciz "DataMemberAttribute.cs"

	.byte 1,0,0
	.asciz "DateTimeOffsetAdapter.cs"

	.byte 1,0,0
	.asciz "<unknown>"

	.byte 0,0,0,0
Ldebug_line_header_end:
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_get_Key

	.byte 4,1,1,10,3,40,2,28,1,2,16,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_set_Key_K_REF

	.byte 4,1,1,10,3,41,2,36,1,2,16,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_get_Value

	.byte 4,1,1,10,3,47,2,28,1,2,16,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long System_Runtime_Serialization_KeyValue_2_K_REF_V_REF_set_Value_V_REF

	.byte 4,1,1,10,3,48,2,36,1,2,16,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long System_Runtime_Serialization_DataContractAttribute__ctor

	.byte 4,2,1,10,3,16,2,20,1,2,12,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long System_Runtime_Serialization_DataContractAttribute_set_Namespace_string

	.byte 4,2,1,10,3,40,2,32,1,131,2,16,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long System_Runtime_Serialization_DataContractAttribute_set_Name_string

	.byte 4,2,1,10,3,55,2,32,1,131,2,16,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long System_Runtime_Serialization_DataMemberAttribute__ctor

	.byte 4,3,1,10,3,11,2,28,1,132,76,2,12,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long System_Runtime_Serialization_DataMemberAttribute_set_Name_string

	.byte 4,3,1,10,3,22,2,32,1,2,24,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long System_Runtime_Serialization_DataMemberAttribute_set_IsRequired_bool

	.byte 4,3,1,10,3,44,2,32,1,2,16,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long System_Runtime_Serialization_DateTimeOffsetAdapter_get_UtcDateTime

	.byte 4,4,1,10,3,29,2,192,0,1,2,12,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long System_Runtime_Serialization_DateTimeOffsetAdapter_set_UtcDateTime_System_DateTime

	.byte 4,4,1,10,3,30,2,52,1,2,12,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long System_Runtime_Serialization_DateTimeOffsetAdapter_get_OffsetMinutes

	.byte 4,4,1,10,3,36,2,24,1,2,16,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long System_Runtime_Serialization_DateTimeOffsetAdapter_set_OffsetMinutes_int16

	.byte 4,4,1,10,3,37,2,32,1,2,16,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_get_Key

	.byte 4,1,1,10,3,40,2,36,1,2,232,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_set_Key_K_GSHAREDVT

	.byte 4,1,1,10,3,41,2,36,1,2,196,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_get_Value

	.byte 4,1,1,10,3,47,2,36,1,2,232,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long System_Runtime_Serialization_KeyValue_2_K_GSHAREDVT_V_GSHAREDVT_set_Value_V_GSHAREDVT

	.byte 4,1,1,10,3,48,2,36,1,2,196,0,1,0,1,1,0,1,1
Ldebug_line_end:
.text
	.align 3
mem_end:
