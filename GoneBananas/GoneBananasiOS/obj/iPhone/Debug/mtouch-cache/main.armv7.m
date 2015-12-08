#include "xamarin/xamarin.h"

extern void *mono_aot_module_GoneBananas_info;
extern void *mono_aot_module_CocosSharp_info;
extern void *mono_aot_module_mscorlib_info;
extern void *mono_aot_module_MonoGame_Framework_info;
extern void *mono_aot_module_System_info;
extern void *mono_aot_module_System_Xml_info;
extern void *mono_aot_module_monotouch_info;
extern void *mono_aot_module_System_Core_info;
extern void *mono_aot_module_OpenTK_info;
extern void *mono_aot_module_System_Runtime_Serialization_info;
extern void *mono_aot_module_System_ServiceModel_Internals_info;
extern void *mono_aot_module_ICSharpCode_SharpZipLib_info;
extern void *mono_aot_module_MonoGame_Framework_Net_info;
extern void *mono_aot_module_Lidgren_Network_info;
extern void *mono_aot_module_box2d_info;

void xamarin_register_modules ()
{
	mono_aot_register_module (mono_aot_module_GoneBananas_info);
	mono_aot_register_module (mono_aot_module_CocosSharp_info);
	mono_aot_register_module (mono_aot_module_mscorlib_info);
	mono_aot_register_module (mono_aot_module_MonoGame_Framework_info);
	mono_aot_register_module (mono_aot_module_System_info);
	mono_aot_register_module (mono_aot_module_System_Xml_info);
	mono_aot_register_module (mono_aot_module_monotouch_info);
	mono_aot_register_module (mono_aot_module_System_Core_info);
	mono_aot_register_module (mono_aot_module_OpenTK_info);
	mono_aot_register_module (mono_aot_module_System_Runtime_Serialization_info);
	mono_aot_register_module (mono_aot_module_System_ServiceModel_Internals_info);
	mono_aot_register_module (mono_aot_module_ICSharpCode_SharpZipLib_info);
	mono_aot_register_module (mono_aot_module_MonoGame_Framework_Net_info);
	mono_aot_register_module (mono_aot_module_Lidgren_Network_info);
	mono_aot_register_module (mono_aot_module_box2d_info);

}

void xamarin_register_assemblies ()
{
	xamarin_open_and_register ("MonoGame.Framework.dll");
	xamarin_open_and_register ("MonoGame.Framework.Net.dll");

}

void xamarin_create_classes();
void xamarin_setup ()
{
	xamarin_use_old_dynamic_registrar = FALSE;
	xamarin_create_classes();
	xamarin_enable_debug_tracking = FALSE;
	xamarin_init_mono_debug = TRUE;
	xamarin_executable_name = "GoneBananas.exe";
	xamarin_use_new_assemblies = 0;
	mono_use_llvm = FALSE;
	xamarin_log_level = 0;
	xamarin_use_sgen = FALSE;
	xamarin_debug_mode = TRUE;
	xamarin_new_refcount = FALSE;
}

int main (int argc, char **argv)
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	int rv = xamarin_main (argc, argv, false);
	[pool drain];
	return rv;
}
