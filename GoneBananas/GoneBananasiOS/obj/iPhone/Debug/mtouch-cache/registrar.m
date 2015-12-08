#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wtypedef-redefinition"
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"
#define DEBUG 1
#include <stdarg.h>
#include <xamarin/xamarin.h>
#include <objc/objc.h>
#include <objc/runtime.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <QuartzCore/QuartzCore.h>
#import <QuartzCore/CAEmitterBehavior.h>
#import <CoreMotion/CoreMotion.h>
#import <GameKit/GameKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import <Twitter/Twitter.h>


static void native_to_managed_trampoline_1 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static BOOL native_to_managed_trampoline_2 (id self, SEL _cmd, MonoMethod **managed_method_ptr, void * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	void * a0 = p0;
	arg_ptrs [0] = &a0;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	BOOL res;
	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static void native_to_managed_trampoline_3 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static id native_to_managed_trampoline_4 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (xamarin_try_get_nsobject (self))
		return self;
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL));
		*managed_method_ptr = managed_method;
	}
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (managed_method));
	uint8_t flags = 2;
	xamarin_set_nsobject_handle (mthis, self);
	xamarin_set_nsobject_flags (mthis, flags);
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);
	xamarin_create_managed_ref (self, mthis, true);

	return self;
}


static BOOL native_to_managed_trampoline_5 (id self, SEL _cmd, MonoMethod **managed_method_ptr, int p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	arg_ptrs [0] = &p0;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	BOOL res;
	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static int native_to_managed_trampoline_6 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	int res;
	res = *(int *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static BOOL native_to_managed_trampoline_7 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	BOOL res;
	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static void native_to_managed_trampoline_8 (id self, SEL _cmd, MonoMethod **managed_method_ptr, int p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	arg_ptrs [0] = &p0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_9 (id self, SEL _cmd, MonoMethod **managed_method_ptr, CGSize p0, id p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	arg_ptrs [0] = &p0;
	arg_ptrs [1] = xamarin_get_inative_object_static (p1, false, "MonoTouch.UIKit.UIViewControllerTransitionCoordinatorWrapper, monotouch", "MonoTouch.UIKit.IUIViewControllerTransitionCoordinator, monotouch");

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static Class native_to_managed_trampoline_10 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL));
		*managed_method_ptr = managed_method;
	}
	MonoObject * retval = mono_runtime_invoke (managed_method, NULL, arg_ptrs, NULL);

	Class res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_handle_for_inativeobject ((MonoObject *) retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


static void native_to_managed_trampoline_11 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, id p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	bool created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_12 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, int p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static BOOL native_to_managed_trampoline_13 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	BOOL res;
	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static void native_to_managed_trampoline_14 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, NULL, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_15 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, NSString * p1, id p2, void * p3, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4, const char *r5)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [4];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[4] = { r0, r1, r2, r3 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r4, r5, 4, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = p1 ? mono_string_new (mono_domain_get (), [p1 UTF8String]) : NULL;
	NSObject *nsobj2 = (NSObject *) p2;
	MonoObject *mobj2 = NULL;
	bool created2 = false;
	if (nsobj2) {
		MonoType *paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2);
		xamarin_verify_parameter (mobj2, _cmd, self, nsobj2, 2, mono_class_from_mono_type (paramtype2), managed_method);
	}
	arg_ptrs [2] = mobj2;
	void * a3 = p3;
	arg_ptrs [3] = &a3;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_16 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, NSArray * p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	if (p1) {
		NSArray *arr = (NSArray *) p1;
		xamarin_check_objc_type (p1, [NSArray class], _cmd, self, 1, managed_method);
		MonoClass *e_class;
		MonoArray *marr;
		MonoType *p;
		int j;
		p = xamarin_get_parameter_type (managed_method, 1);
		e_class = mono_class_get_element_class (mono_class_from_mono_type (p));
		marr = mono_array_new (mono_domain_get (), e_class, [arr count]);
		for (j = 0; j < [arr count]; j++) {
			NSObject *nobj = [arr objectAtIndex: j];
			MonoObject *mobj1 = NULL;
			if (nobj) {
				mobj1 = xamarin_get_managed_object_for_ptr_fast (nobj);
				xamarin_verify_parameter (mobj1, _cmd, self, nobj, 1, e_class, managed_method);
			}
			mono_array_set (marr, MonoObject *, j, mobj1);
		}
		arg_ptrs [1] = marr;
	} else {
		arg_ptrs [1] = NULL;
	}

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_17 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, NSArray * p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	if (p1) {
		NSArray *arr = (NSArray *) p1;
		xamarin_check_objc_type (p1, [NSArray class], _cmd, self, 1, managed_method);
		MonoClass *e_class;
		MonoArray *marr;
		MonoType *p;
		int j;
		p = xamarin_get_parameter_type (managed_method, 1);
		e_class = mono_class_get_element_class (mono_class_from_mono_type (p));
		marr = mono_array_new (mono_domain_get (), e_class, [arr count]);
		for (j = 0; j < [arr count]; j++) {
			NSString *sv = (NSString *) [arr objectAtIndex: j];
			mono_array_set (marr, MonoString *, j, mono_string_new (mono_domain_get (), [sv UTF8String]));
		}
		arg_ptrs [1] = marr;
	} else {
		arg_ptrs [1] = NULL;
	}

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_18 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, NSString * p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = p1 ? mono_string_new (mono_domain_get (), [p1 UTF8String]) : NULL;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static id native_to_managed_trampoline_19 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (xamarin_try_get_nsobject (self))
		return self;
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (managed_method));
	uint8_t flags = 2;
	xamarin_set_nsobject_handle (mthis, self);
	xamarin_set_nsobject_flags (mthis, flags);
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);
	xamarin_create_managed_ref (self, mthis, true);

	return self;
}


static id native_to_managed_trampoline_20 (id self, SEL _cmd, MonoMethod **managed_method_ptr, CGRect p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (xamarin_try_get_nsobject (self))
		return self;
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	arg_ptrs [0] = &p0;

	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (managed_method));
	uint8_t flags = 2;
	xamarin_set_nsobject_handle (mthis, self);
	xamarin_set_nsobject_flags (mthis, flags);
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);
	xamarin_create_managed_ref (self, mthis, true);

	return self;
}


static void native_to_managed_trampoline_21 (id self, SEL _cmd, MonoMethod **managed_method_ptr, int p0, double p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	arg_ptrs [0] = &p0;
	arg_ptrs [1] = &p1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_22 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, NSString * p1, id p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r3, r4, 3, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = p1 ? mono_string_new (mono_domain_get (), [p1 UTF8String]) : NULL;
	NSObject *nsobj2 = (NSObject *) p2;
	MonoObject *mobj2 = NULL;
	bool created2 = false;
	if (nsobj2) {
		MonoType *paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2);
		xamarin_verify_parameter (mobj2, _cmd, self, nsobj2, 2, mono_class_from_mono_type (paramtype2), managed_method);
	}
	arg_ptrs [2] = mobj2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_23 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, NSString * p1, int p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r3, r4, 3, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = p1 ? mono_string_new (mono_domain_get (), [p1 UTF8String]) : NULL;
	arg_ptrs [2] = &p2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}



@interface MonoTouch_Foundation_InternalNSNotificationHandler : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) post:(id)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation MonoTouch_Foundation_InternalNSNotificationHandler { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) post:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, "MonoTouch.Foundation.NSNotification, monotouch", "MonoTouch.Foundation.InternalNSNotificationHandler, monotouch", "Post");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "MonoTouch.Foundation.NSObject, monotouch", "InvokeConformsToProtocol");
	}
@end

@interface __MonoMac_NSActionDispatcher : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) xamarinApplySelector;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation __MonoMac_NSActionDispatcher { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "MonoTouch.Foundation.NSActionDispatcher, monotouch", "Apply");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "MonoTouch.Foundation.NSObject, monotouch", "InvokeConformsToProtocol");
	}
@end

@interface __Xamarin_NSTimerActionDispatcher : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) xamarinFireSelector:(id)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation __Xamarin_NSTimerActionDispatcher { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) xamarinFireSelector:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, "MonoTouch.Foundation.NSTimer, monotouch", "MonoTouch.Foundation.NSTimerActionDispatcher, monotouch", "Fire");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "MonoTouch.Foundation.NSObject, monotouch", "InvokeConformsToProtocol");
	}
@end

@interface __MonoMac_NSAsyncActionDispatcher : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) xamarinApplySelector;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation __MonoMac_NSAsyncActionDispatcher { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "MonoTouch.Foundation.NSAsyncActionDispatcher, monotouch", "Apply");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "MonoTouch.Foundation.NSObject, monotouch", "InvokeConformsToProtocol");
	}
@end

@interface AppDelegate : NSObject<UIApplicationDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) applicationDidFinishLaunching:(id)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation AppDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) applicationDidFinishLaunching:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIApplication, monotouch", "GoneBananas.AppDelegate, GoneBananas", "FinishedLaunching");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "MonoTouch.Foundation.NSObject, monotouch", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_4 (self, _cmd, &managed_method, "GoneBananas.AppDelegate, GoneBananas", ".ctor");
	}
@end

@interface Microsoft_Xna_Framework_iOSGameViewController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) loadView;
	-(BOOL) shouldAutorotateToInterfaceOrientation:(int)p0;
	-(int) supportedInterfaceOrientations;
	-(BOOL) shouldAutorotate;
	-(void) didRotateFromInterfaceOrientation:(int)p0;
	-(BOOL) prefersStatusBarHidden;
	-(void) viewWillTransitionToSize:(CGSize)p0 withTransitionCoordinator:(id)p1;
	-(void) traitCollectionDidChange:(id)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation Microsoft_Xna_Framework_iOSGameViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) loadView
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Microsoft.Xna.Framework.iOSGameViewController, MonoGame.Framework", "LoadView");
	}

	-(BOOL) shouldAutorotateToInterfaceOrientation:(int)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIInterfaceOrientation, monotouch", "Microsoft.Xna.Framework.iOSGameViewController, MonoGame.Framework", "ShouldAutorotateToInterfaceOrientation");
	}

	-(int) supportedInterfaceOrientations
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_6 (self, _cmd, &managed_method, "Microsoft.Xna.Framework.iOSGameViewController, MonoGame.Framework", "GetSupportedInterfaceOrientations");
	}

	-(BOOL) shouldAutorotate
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_7 (self, _cmd, &managed_method, "Microsoft.Xna.Framework.iOSGameViewController, MonoGame.Framework", "ShouldAutorotate");
	}

	-(void) didRotateFromInterfaceOrientation:(int)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIInterfaceOrientation, monotouch", "Microsoft.Xna.Framework.iOSGameViewController, MonoGame.Framework", "DidRotate");
	}

	-(BOOL) prefersStatusBarHidden
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_7 (self, _cmd, &managed_method, "Microsoft.Xna.Framework.iOSGameViewController, MonoGame.Framework", "PrefersStatusBarHidden");
	}

	-(void) viewWillTransitionToSize:(CGSize)p0 withTransitionCoordinator:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, p1, "System.Drawing.SizeF, monotouch", "MonoTouch.UIKit.IUIViewControllerTransitionCoordinator, monotouch", "Microsoft.Xna.Framework.iOSGameViewController, MonoGame.Framework", "ViewWillTransitionToSize");
	}

	-(void) traitCollectionDidChange:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITraitCollection, monotouch", "Microsoft.Xna.Framework.iOSGameViewController, MonoGame.Framework", "TraitCollectionDidChange");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "MonoTouch.Foundation.NSObject, monotouch", "InvokeConformsToProtocol");
	}
@end

@interface iOSGameView : UIView {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	+(Class) layerClass;
	-(BOOL) canBecomeFirstResponder;
	-(void) doTick;
	-(void) layoutSubviews;
	-(void) didMoveToWindow;
	-(void) touchesBegan:(id)p0 withEvent:(id)p1;
	-(void) touchesEnded:(id)p0 withEvent:(id)p1;
	-(void) touchesMoved:(id)p0 withEvent:(id)p1;
	-(void) touchesCancelled:(id)p0 withEvent:(id)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation iOSGameView { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	+(Class) layerClass
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_10 (self, _cmd, &managed_method, "Microsoft.Xna.Framework.iOSGameView, MonoGame.Framework", "GetLayerClass");
	}

	-(BOOL) canBecomeFirstResponder
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_7 (self, _cmd, &managed_method, "Microsoft.Xna.Framework.iOSGameView, MonoGame.Framework", "get_CanBecomeFirstResponder");
	}

	-(void) doTick
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Microsoft.Xna.Framework.iOSGameView, MonoGame.Framework", "DoTick");
	}

	-(void) layoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Microsoft.Xna.Framework.iOSGameView, MonoGame.Framework", "LayoutSubviews");
	}

	-(void) didMoveToWindow
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Microsoft.Xna.Framework.iOSGameView, MonoGame.Framework", "DidMoveToWindow");
	}

	-(void) touchesBegan:(id)p0 withEvent:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, p1, "MonoTouch.Foundation.NSSet, monotouch", "MonoTouch.UIKit.UIEvent, monotouch", "Microsoft.Xna.Framework.iOSGameView, MonoGame.Framework", "TouchesBegan");
	}

	-(void) touchesEnded:(id)p0 withEvent:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, p1, "MonoTouch.Foundation.NSSet, monotouch", "MonoTouch.UIKit.UIEvent, monotouch", "Microsoft.Xna.Framework.iOSGameView, MonoGame.Framework", "TouchesEnded");
	}

	-(void) touchesMoved:(id)p0 withEvent:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, p1, "MonoTouch.Foundation.NSSet, monotouch", "MonoTouch.UIKit.UIEvent, monotouch", "Microsoft.Xna.Framework.iOSGameView, MonoGame.Framework", "TouchesMoved");
	}

	-(void) touchesCancelled:(id)p0 withEvent:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, p1, "MonoTouch.Foundation.NSSet, monotouch", "MonoTouch.UIKit.UIEvent, monotouch", "Microsoft.Xna.Framework.iOSGameView, MonoGame.Framework", "TouchesCancelled");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "MonoTouch.Foundation.NSObject, monotouch", "InvokeConformsToProtocol");
	}
@end

@interface MonoTouch_UIKit_UIAlertView__UIAlertViewDelegate : NSObject<UIAlertViewDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) alertViewCancel:(id)p0;
	-(void) alertView:(id)p0 clickedButtonAtIndex:(int)p1;
	-(void) alertView:(id)p0 didDismissWithButtonIndex:(int)p1;
	-(void) didPresentAlertView:(id)p0;
	-(BOOL) alertViewShouldEnableFirstOtherButton:(id)p0;
	-(void) alertView:(id)p0 willDismissWithButtonIndex:(int)p1;
	-(void) willPresentAlertView:(id)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation MonoTouch_UIKit_UIAlertView__UIAlertViewDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) alertViewCancel:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIAlertView, monotouch", "MonoTouch.UIKit.UIAlertView+_UIAlertViewDelegate, monotouch", "Canceled");
	}

	-(void) alertView:(id)p0 clickedButtonAtIndex:(int)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_12 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UIAlertView, monotouch", "System.Int32, mscorlib", "MonoTouch.UIKit.UIAlertView+_UIAlertViewDelegate, monotouch", "Clicked");
	}

	-(void) alertView:(id)p0 didDismissWithButtonIndex:(int)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_12 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UIAlertView, monotouch", "System.Int32, mscorlib", "MonoTouch.UIKit.UIAlertView+_UIAlertViewDelegate, monotouch", "Dismissed");
	}

	-(void) didPresentAlertView:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIAlertView, monotouch", "MonoTouch.UIKit.UIAlertView+_UIAlertViewDelegate, monotouch", "Presented");
	}

	-(BOOL) alertViewShouldEnableFirstOtherButton:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIAlertView, monotouch", "MonoTouch.UIKit.UIAlertView+_UIAlertViewDelegate, monotouch", "ShouldEnableFirstOtherButton");
	}

	-(void) alertView:(id)p0 willDismissWithButtonIndex:(int)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_12 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UIAlertView, monotouch", "System.Int32, mscorlib", "MonoTouch.UIKit.UIAlertView+_UIAlertViewDelegate, monotouch", "WillDismiss");
	}

	-(void) willPresentAlertView:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIAlertView, monotouch", "MonoTouch.UIKit.UIAlertView+_UIAlertViewDelegate, monotouch", "WillPresent");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "MonoTouch.Foundation.NSObject, monotouch", "InvokeConformsToProtocol");
	}
@end

@interface MonoTouch_UIKit_UIBarButtonItem_Callback : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) InvokeAction:(id)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation MonoTouch_UIKit_UIBarButtonItem_Callback { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) InvokeAction:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, "MonoTouch.Foundation.NSObject, monotouch", "MonoTouch.UIKit.UIBarButtonItem+Callback, monotouch", "Call");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "MonoTouch.Foundation.NSObject, monotouch", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_4 (self, _cmd, &managed_method, "MonoTouch.UIKit.UIBarButtonItem+Callback, monotouch", ".ctor");
	}
@end

@interface __NSObject_Disposer : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	+(void) drain:(id)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation __NSObject_Disposer { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	+(void) drain:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, "MonoTouch.Foundation.NSObject, monotouch", "MonoTouch.Foundation.NSObject+NSObject_Disposer, monotouch", "Drain");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "MonoTouch.Foundation.NSObject, monotouch", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_4 (self, _cmd, &managed_method, "MonoTouch.Foundation.NSObject+NSObject_Disposer, monotouch", ".ctor");
	}
@end

@interface MonoTouch_GKSession_ReceivedObject : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) receiveData:(id)p0 fromPeer:(NSString *)p1 inSession:(id)p2 context:(void *)p3;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation MonoTouch_GKSession_ReceivedObject { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) receiveData:(id)p0 fromPeer:(NSString *)p1 inSession:(id)p2 context:(void *)p3
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_15 (self, _cmd, &managed_method, p0, p1, p2, p3, "MonoTouch.Foundation.NSData, monotouch", "System.String, mscorlib", "MonoTouch.GameKit.GKSession, monotouch", "System.IntPtr, mscorlib", "MonoTouch.GameKit.GKSession+ReceiverObject, monotouch", "Receive");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "MonoTouch.Foundation.NSObject, monotouch", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_4 (self, _cmd, &managed_method, "MonoTouch.GameKit.GKSession+ReceiverObject, monotouch", ".ctor");
	}
@end

@interface MonoTouch_GameKit_GKLeaderboardViewController__GKLeaderboardViewControllerDelegate : NSObject<GKLeaderboardViewControllerDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) leaderboardViewControllerDidFinish:(id)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation MonoTouch_GameKit_GKLeaderboardViewController__GKLeaderboardViewControllerDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) leaderboardViewControllerDidFinish:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, "MonoTouch.GameKit.GKLeaderboardViewController, monotouch", "MonoTouch.GameKit.GKLeaderboardViewController+_GKLeaderboardViewControllerDelegate, monotouch", "DidFinish");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "MonoTouch.Foundation.NSObject, monotouch", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_4 (self, _cmd, &managed_method, "MonoTouch.GameKit.GKLeaderboardViewController+_GKLeaderboardViewControllerDelegate, monotouch", ".ctor");
	}
@end

@interface MonoTouch_GameKit_GKMatchmakerViewController__GKMatchmakerViewControllerDelegate : NSObject<GKMatchmakerViewControllerDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) matchmakerViewController:(id)p0 didFailWithError:(id)p1;
	-(void) matchmakerViewController:(id)p0 didFindHostedPlayers:(NSArray *)p1;
	-(void) matchmakerViewController:(id)p0 didFindMatch:(id)p1;
	-(void) matchmakerViewController:(id)p0 didFindPlayers:(NSArray *)p1;
	-(void) matchmakerViewController:(id)p0 hostedPlayerDidAccept:(id)p1;
	-(void) matchmakerViewController:(id)p0 didReceiveAcceptFromHostedPlayer:(NSString *)p1;
	-(void) matchmakerViewControllerWasCancelled:(id)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation MonoTouch_GameKit_GKMatchmakerViewController__GKMatchmakerViewControllerDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) matchmakerViewController:(id)p0 didFailWithError:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, p1, "MonoTouch.GameKit.GKMatchmakerViewController, monotouch", "MonoTouch.Foundation.NSError, monotouch", "MonoTouch.GameKit.GKMatchmakerViewController+_GKMatchmakerViewControllerDelegate, monotouch", "DidFailWithError");
	}

	-(void) matchmakerViewController:(id)p0 didFindHostedPlayers:(NSArray *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, p0, p1, "MonoTouch.GameKit.GKMatchmakerViewController, monotouch", "MonoTouch.GameKit.GKPlayer[], monotouch", "MonoTouch.GameKit.GKMatchmakerViewController+_GKMatchmakerViewControllerDelegate, monotouch", "DidFindHostedPlayers");
	}

	-(void) matchmakerViewController:(id)p0 didFindMatch:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, p1, "MonoTouch.GameKit.GKMatchmakerViewController, monotouch", "MonoTouch.GameKit.GKMatch, monotouch", "MonoTouch.GameKit.GKMatchmakerViewController+_GKMatchmakerViewControllerDelegate, monotouch", "DidFindMatch");
	}

	-(void) matchmakerViewController:(id)p0 didFindPlayers:(NSArray *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_17 (self, _cmd, &managed_method, p0, p1, "MonoTouch.GameKit.GKMatchmakerViewController, monotouch", "System.String[], mscorlib", "MonoTouch.GameKit.GKMatchmakerViewController+_GKMatchmakerViewControllerDelegate, monotouch", "DidFindPlayers");
	}

	-(void) matchmakerViewController:(id)p0 hostedPlayerDidAccept:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, p1, "MonoTouch.GameKit.GKMatchmakerViewController, monotouch", "MonoTouch.GameKit.GKPlayer, monotouch", "MonoTouch.GameKit.GKMatchmakerViewController+_GKMatchmakerViewControllerDelegate, monotouch", "HostedPlayerDidAccept");
	}

	-(void) matchmakerViewController:(id)p0 didReceiveAcceptFromHostedPlayer:(NSString *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_18 (self, _cmd, &managed_method, p0, p1, "MonoTouch.GameKit.GKMatchmakerViewController, monotouch", "System.String, mscorlib", "MonoTouch.GameKit.GKMatchmakerViewController+_GKMatchmakerViewControllerDelegate, monotouch", "ReceivedAcceptFromHostedPlayer");
	}

	-(void) matchmakerViewControllerWasCancelled:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, "MonoTouch.GameKit.GKMatchmakerViewController, monotouch", "MonoTouch.GameKit.GKMatchmakerViewController+_GKMatchmakerViewControllerDelegate, monotouch", "WasCancelled");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "MonoTouch.Foundation.NSObject, monotouch", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_4 (self, _cmd, &managed_method, "MonoTouch.GameKit.GKMatchmakerViewController+_GKMatchmakerViewControllerDelegate, monotouch", ".ctor");
	}
@end

@interface MonoTouch_GameKit_GKAchievementViewController__GKAchievementViewControllerDelegate : NSObject<GKAchievementViewControllerDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) achievementViewControllerDidFinish:(id)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation MonoTouch_GameKit_GKAchievementViewController__GKAchievementViewControllerDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) achievementViewControllerDidFinish:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, "MonoTouch.GameKit.GKAchievementViewController, monotouch", "MonoTouch.GameKit.GKAchievementViewController+_GKAchievementViewControllerDelegate, monotouch", "DidFinish");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "MonoTouch.Foundation.NSObject, monotouch", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_4 (self, _cmd, &managed_method, "MonoTouch.GameKit.GKAchievementViewController+_GKAchievementViewControllerDelegate, monotouch", ".ctor");
	}
@end

@interface MonoTouch_GameKit_GKGameCenterViewController__GKGameCenterControllerDelegate : NSObject<GKGameCenterControllerDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) gameCenterViewControllerDidFinish:(id)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation MonoTouch_GameKit_GKGameCenterViewController__GKGameCenterControllerDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) gameCenterViewControllerDidFinish:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, "MonoTouch.GameKit.GKGameCenterViewController, monotouch", "MonoTouch.GameKit.GKGameCenterViewController+_GKGameCenterControllerDelegate, monotouch", "Finished");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "MonoTouch.Foundation.NSObject, monotouch", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_4 (self, _cmd, &managed_method, "MonoTouch.GameKit.GKGameCenterViewController+_GKGameCenterControllerDelegate, monotouch", ".ctor");
	}
@end

@interface OpenTK_Platform_iPhoneOS_CADisplayLinkTimeSource : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) runIteration;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation OpenTK_Platform_iPhoneOS_CADisplayLinkTimeSource { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) runIteration
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "OpenTK.Platform.iPhoneOS.CADisplayLinkTimeSource, OpenTK", "RunIteration");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "MonoTouch.Foundation.NSObject, monotouch", "InvokeConformsToProtocol");
	}
@end

@interface OpenTK_Platform_iPhoneOS_iPhoneOSGameView : UIView {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	+(Class) layerClass;
	-(void) layoutSubviews;
	-(void) willMoveToWindow:(id)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) initWithCoder:(id)p0;
	-(id) initWithFrame:(CGRect)p0;
@end
@implementation OpenTK_Platform_iPhoneOS_iPhoneOSGameView { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	+(Class) layerClass
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_10 (self, _cmd, &managed_method, "OpenTK.Platform.iPhoneOS.iPhoneOSGameView, OpenTK", "GetLayerClass");
	}

	-(void) layoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "OpenTK.Platform.iPhoneOS.iPhoneOSGameView, OpenTK", "LayoutSubviews");
	}

	-(void) willMoveToWindow:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIWindow, monotouch", "OpenTK.Platform.iPhoneOS.iPhoneOSGameView, OpenTK", "WillMoveToWindow");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "MonoTouch.Foundation.NSObject, monotouch", "InvokeConformsToProtocol");
	}

	-(id) initWithCoder:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_19 (self, _cmd, &managed_method, p0, "MonoTouch.Foundation.NSCoder, monotouch", "OpenTK.Platform.iPhoneOS.iPhoneOSGameView, OpenTK", ".ctor");
	}

	-(id) initWithFrame:(CGRect)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_20 (self, _cmd, &managed_method, p0, "System.Drawing.RectangleF, monotouch", "OpenTK.Platform.iPhoneOS.iPhoneOSGameView, OpenTK", ".ctor");
	}
@end

@interface Microsoft_Xna_Framework_GamerServices_GuideViewController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(BOOL) shouldAutorotateToInterfaceOrientation:(int)p0;
	-(int) supportedInterfaceOrientations;
	-(BOOL) shouldAutorotate;
	-(int) preferredInterfaceOrientationForPresentation;
	-(void) didRotateFromInterfaceOrientation:(int)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation Microsoft_Xna_Framework_GamerServices_GuideViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(BOOL) shouldAutorotateToInterfaceOrientation:(int)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIInterfaceOrientation, monotouch", "Microsoft.Xna.Framework.GamerServices.GuideViewController, MonoGame.Framework.Net", "ShouldAutorotateToInterfaceOrientation");
	}

	-(int) supportedInterfaceOrientations
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_6 (self, _cmd, &managed_method, "Microsoft.Xna.Framework.GamerServices.GuideViewController, MonoGame.Framework.Net", "GetSupportedInterfaceOrientations");
	}

	-(BOOL) shouldAutorotate
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_7 (self, _cmd, &managed_method, "Microsoft.Xna.Framework.GamerServices.GuideViewController, MonoGame.Framework.Net", "ShouldAutorotate");
	}

	-(int) preferredInterfaceOrientationForPresentation
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_6 (self, _cmd, &managed_method, "Microsoft.Xna.Framework.GamerServices.GuideViewController, MonoGame.Framework.Net", "PreferredInterfaceOrientationForPresentation");
	}

	-(void) didRotateFromInterfaceOrientation:(int)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIInterfaceOrientation, monotouch", "Microsoft.Xna.Framework.GamerServices.GuideViewController, MonoGame.Framework.Net", "DidRotate");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "MonoTouch.Foundation.NSObject, monotouch", "InvokeConformsToProtocol");
	}
@end

@interface Microsoft_Xna_Framework_KeyboardInputViewController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) loadView;
	-(void) viewDidUnload;
	-(BOOL) shouldAutorotateToInterfaceOrientation:(int)p0;
	-(int) supportedInterfaceOrientations;
	-(BOOL) shouldAutorotate;
	-(int) preferredInterfaceOrientationForPresentation;
	-(void) willRotateToInterfaceOrientation:(int)p0 duration:(double)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation Microsoft_Xna_Framework_KeyboardInputViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) loadView
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Microsoft.Xna.Framework.KeyboardInputViewController, MonoGame.Framework.Net", "LoadView");
	}

	-(void) viewDidUnload
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Microsoft.Xna.Framework.KeyboardInputViewController, MonoGame.Framework.Net", "ViewDidUnload");
	}

	-(BOOL) shouldAutorotateToInterfaceOrientation:(int)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIInterfaceOrientation, monotouch", "Microsoft.Xna.Framework.KeyboardInputViewController, MonoGame.Framework.Net", "ShouldAutorotateToInterfaceOrientation");
	}

	-(int) supportedInterfaceOrientations
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_6 (self, _cmd, &managed_method, "Microsoft.Xna.Framework.KeyboardInputViewController, MonoGame.Framework.Net", "GetSupportedInterfaceOrientations");
	}

	-(BOOL) shouldAutorotate
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_7 (self, _cmd, &managed_method, "Microsoft.Xna.Framework.KeyboardInputViewController, MonoGame.Framework.Net", "ShouldAutorotate");
	}

	-(int) preferredInterfaceOrientationForPresentation
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_6 (self, _cmd, &managed_method, "Microsoft.Xna.Framework.KeyboardInputViewController, MonoGame.Framework.Net", "PreferredInterfaceOrientationForPresentation");
	}

	-(void) willRotateToInterfaceOrientation:(int)p0 duration:(double)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_21 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UIInterfaceOrientation, monotouch", "System.Double, mscorlib", "Microsoft.Xna.Framework.KeyboardInputViewController, MonoGame.Framework.Net", "WillRotate");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "MonoTouch.Foundation.NSObject, monotouch", "InvokeConformsToProtocol");
	}
@end

@interface Microsoft_Xna_Framework_GamerServices_TextFieldAlertView : UIAlertView {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) layoutSubviews;
	-(void) show;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation Microsoft_Xna_Framework_GamerServices_TextFieldAlertView { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) layoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Microsoft.Xna.Framework.GamerServices.TextFieldAlertView, MonoGame.Framework.Net", "LayoutSubviews");
	}

	-(void) show
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Microsoft.Xna.Framework.GamerServices.TextFieldAlertView, MonoGame.Framework.Net", "Show");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "MonoTouch.Foundation.NSObject, monotouch", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_4 (self, _cmd, &managed_method, "Microsoft.Xna.Framework.GamerServices.TextFieldAlertView, MonoGame.Framework.Net", ".ctor");
	}
@end

@interface Microsoft_Xna_Framework_Net_MonoGamePeerPickerControllerDelegate : NSObject<GKPeerPickerControllerDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) peerPickerController:(id)p0 didSelectConnectionType:(int)p1;
	-(void) peerPickerController:(id)p0 didConnectPeer:(NSString *)p1 toSession:(id)p2;
	-(void) peerPickerControllerDidCancel:(id)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation Microsoft_Xna_Framework_Net_MonoGamePeerPickerControllerDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) peerPickerController:(id)p0 didSelectConnectionType:(int)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_12 (self, _cmd, &managed_method, p0, p1, "MonoTouch.GameKit.GKPeerPickerController, monotouch", "MonoTouch.GameKit.GKPeerPickerConnectionType, monotouch", "Microsoft.Xna.Framework.Net.MonoGamePeerPickerControllerDelegate, MonoGame.Framework.Net", "ConnectionTypeSelected");
	}

	-(void) peerPickerController:(id)p0 didConnectPeer:(NSString *)p1 toSession:(id)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_22 (self, _cmd, &managed_method, p0, p1, p2, "MonoTouch.GameKit.GKPeerPickerController, monotouch", "System.String, mscorlib", "MonoTouch.GameKit.GKSession, monotouch", "Microsoft.Xna.Framework.Net.MonoGamePeerPickerControllerDelegate, MonoGame.Framework.Net", "PeerConnected");
	}

	-(void) peerPickerControllerDidCancel:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, "MonoTouch.GameKit.GKPeerPickerController, monotouch", "Microsoft.Xna.Framework.Net.MonoGamePeerPickerControllerDelegate, MonoGame.Framework.Net", "ControllerCancelled");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "MonoTouch.Foundation.NSObject, monotouch", "InvokeConformsToProtocol");
	}
@end

@interface Microsoft_Xna_Framework_Net_MonoGameSessionDelegate : NSObject<GKSessionDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) session:(id)p0 peer:(NSString *)p1 didChangeState:(int)p2;
	-(void) session:(id)p0 didReceiveConnectionRequestFromPeer:(NSString *)p1;
	-(void) session:(id)p0 connectionWithPeerFailed:(NSString *)p1 withError:(id)p2;
	-(void) session:(id)p0 didFailWithError:(id)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation Microsoft_Xna_Framework_Net_MonoGameSessionDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) session:(id)p0 peer:(NSString *)p1 didChangeState:(int)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_23 (self, _cmd, &managed_method, p0, p1, p2, "MonoTouch.GameKit.GKSession, monotouch", "System.String, mscorlib", "MonoTouch.GameKit.GKPeerConnectionState, monotouch", "Microsoft.Xna.Framework.Net.MonoGameSessionDelegate, MonoGame.Framework.Net", "PeerChangedState");
	}

	-(void) session:(id)p0 didReceiveConnectionRequestFromPeer:(NSString *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_18 (self, _cmd, &managed_method, p0, p1, "MonoTouch.GameKit.GKSession, monotouch", "System.String, mscorlib", "Microsoft.Xna.Framework.Net.MonoGameSessionDelegate, MonoGame.Framework.Net", "PeerConnectionRequest");
	}

	-(void) session:(id)p0 connectionWithPeerFailed:(NSString *)p1 withError:(id)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_22 (self, _cmd, &managed_method, p0, p1, p2, "MonoTouch.GameKit.GKSession, monotouch", "System.String, mscorlib", "MonoTouch.Foundation.NSError, monotouch", "Microsoft.Xna.Framework.Net.MonoGameSessionDelegate, MonoGame.Framework.Net", "PeerConnectionFailed");
	}

	-(void) session:(id)p0 didFailWithError:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, p1, "MonoTouch.GameKit.GKSession, monotouch", "MonoTouch.Foundation.NSError, monotouch", "Microsoft.Xna.Framework.Net.MonoGameSessionDelegate, MonoGame.Framework.Net", "FailedWithError");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "MonoTouch.Foundation.NSObject, monotouch", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_4 (self, _cmd, &managed_method, "Microsoft.Xna.Framework.Net.MonoGameSessionDelegate, MonoGame.Framework.Net", ".ctor");
	}
@end

@interface Microsoft_Xna_Framework_KeyboardInputView_TextFieldDelegate : NSObject<UITextFieldDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(BOOL) textFieldShouldReturn:(id)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation Microsoft_Xna_Framework_KeyboardInputView_TextFieldDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(BOOL) textFieldShouldReturn:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch", "Microsoft.Xna.Framework.KeyboardInputView+TextFieldDelegate, MonoGame.Framework.Net", "ShouldReturn");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "MonoTouch.Foundation.NSObject, monotouch", "InvokeConformsToProtocol");
	}
@end

@interface Microsoft_Xna_Framework_KeyboardInputView : UIScrollView {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) touchesEnded:(id)p0 withEvent:(id)p1;
	-(void) layoutSubviews;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation Microsoft_Xna_Framework_KeyboardInputView { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) touchesEnded:(id)p0 withEvent:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, p1, "MonoTouch.Foundation.NSSet, monotouch", "MonoTouch.UIKit.UIEvent, monotouch", "Microsoft.Xna.Framework.KeyboardInputView, MonoGame.Framework.Net", "TouchesEnded");
	}

	-(void) layoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Microsoft.Xna.Framework.KeyboardInputView, MonoGame.Framework.Net", "LayoutSubviews");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "MonoTouch.Foundation.NSObject, monotouch", "InvokeConformsToProtocol");
	}
@end

	static MTClassMap __xamarin_class_map [] = {
		{"NSObject", "MonoTouch.Foundation.NSObject, monotouch", NULL },
		{"UIResponder", "MonoTouch.UIKit.UIResponder, monotouch", NULL },
		{"UIViewController", "MonoTouch.UIKit.UIViewController, monotouch", NULL },
		{"UIView", "MonoTouch.UIKit.UIView, monotouch", NULL },
		{"EAGLContext", "MonoTouch.OpenGLES.EAGLContext, monotouch", NULL },
		{"NSArray", "MonoTouch.Foundation.NSArray, monotouch", NULL },
		{"NSAttributedString", "MonoTouch.Foundation.NSAttributedString, monotouch", NULL },
		{"NSBundle", "MonoTouch.Foundation.NSBundle, monotouch", NULL },
		{"NSCoder", "MonoTouch.Foundation.NSCoder, monotouch", NULL },
		{"NSDate", "MonoTouch.Foundation.NSDate, monotouch", NULL },
		{"UIApplication", "MonoTouch.UIKit.UIApplication, monotouch", NULL },
		{"UIBarItem", "MonoTouch.UIKit.UIBarItem, monotouch", NULL },
		{"UIBezierPath", "MonoTouch.UIKit.UIBezierPath, monotouch", NULL },
		{"UIColor", "MonoTouch.UIKit.UIColor, monotouch", NULL },
		{"UIControl", "MonoTouch.UIKit.UIControl, monotouch", NULL },
		{"UIDevice", "MonoTouch.UIKit.UIDevice, monotouch", NULL },
		{"NSMutableAttributedString", "MonoTouch.Foundation.NSMutableAttributedString, monotouch", NULL },
		{"UIEvent", "MonoTouch.UIKit.UIEvent, monotouch", NULL },
		{"UIFont", "MonoTouch.UIKit.UIFont, monotouch", NULL },
		{"UIImage", "MonoTouch.UIKit.UIImage, monotouch", NULL },
		{"MonoTouch_Foundation_InternalNSNotificationHandler", "MonoTouch.Foundation.InternalNSNotificationHandler, monotouch", NULL },
		{"UINavigationController", "MonoTouch.UIKit.UINavigationController, monotouch", NULL },
		{"NSValue", "MonoTouch.Foundation.NSValue, monotouch", NULL },
		{"NSNumber", "MonoTouch.Foundation.NSNumber, monotouch", NULL },
		{"NSRunLoop", "MonoTouch.Foundation.NSRunLoop, monotouch", NULL },
		{"UIScreen", "MonoTouch.UIKit.UIScreen, monotouch", NULL },
		{"NSString", "MonoTouch.Foundation.NSString, monotouch", NULL },
		{"NSTimer", "MonoTouch.Foundation.NSTimer, monotouch", NULL },
		{"UITextField", "MonoTouch.UIKit.UITextField, monotouch", NULL },
		{"UIToolbar", "MonoTouch.UIKit.UIToolbar, monotouch", NULL },
		{"NSURL", "MonoTouch.Foundation.NSUrl, monotouch", NULL },
		{"UIWindow", "MonoTouch.UIKit.UIWindow, monotouch", NULL },
		{"NSUserDefaults", "MonoTouch.Foundation.NSUserDefaults, monotouch", NULL },
		{"AVAudioPlayer", "MonoTouch.AVFoundation.AVAudioPlayer, monotouch", NULL },
		{"AVAudioSession", "MonoTouch.AVFoundation.AVAudioSession, monotouch", NULL },
		{"AVAsset", "MonoTouch.AVFoundation.AVAsset, monotouch", NULL },
		{"AVPlayer", "MonoTouch.AVFoundation.AVPlayer, monotouch", NULL },
		{"__MonoMac_NSActionDispatcher", "MonoTouch.Foundation.NSActionDispatcher, monotouch", NULL },
		{"__Xamarin_NSTimerActionDispatcher", "MonoTouch.Foundation.NSTimerActionDispatcher, monotouch", NULL },
		{"__MonoMac_NSAsyncActionDispatcher", "MonoTouch.Foundation.NSAsyncActionDispatcher, monotouch", NULL },
		{"NSAutoreleasePool", "MonoTouch.Foundation.NSAutoreleasePool, monotouch", NULL },
		{"NSError", "MonoTouch.Foundation.NSError, monotouch", NULL },
		{"CADisplayLink", "MonoTouch.CoreAnimation.CADisplayLink, monotouch", NULL },
		{"CALayer", "MonoTouch.CoreAnimation.CALayer, monotouch", NULL },
		{"CMLogItem", "MonoTouch.CoreMotion.CMLogItem, monotouch", NULL },
		{"CMDeviceMotion", "MonoTouch.CoreMotion.CMDeviceMotion, monotouch", NULL },
		{"CMAccelerometerData", "MonoTouch.CoreMotion.CMAccelerometerData, monotouch", NULL },
		{"GKPlayer", "MonoTouch.GameKit.GKPlayer, monotouch", NULL },
		{"GKMatch", "MonoTouch.GameKit.GKMatch, monotouch", NULL },
		{"GKScore", "MonoTouch.GameKit.GKScore, monotouch", NULL },
		{"MPMediaItem", "MonoTouch.MediaPlayer.MPMediaItem, monotouch", NULL },
		{"MPMediaItemArtwork", "MonoTouch.MediaPlayer.MPMediaItemArtwork, monotouch", NULL },
		{"MPMediaQuery", "MonoTouch.MediaPlayer.MPMediaQuery, monotouch", NULL },
		{"MPMoviePlayerController", "MonoTouch.MediaPlayer.MPMoviePlayerController, monotouch", NULL },
		{"CAEAGLLayer", "MonoTouch.CoreAnimation.CAEAGLLayer, monotouch", NULL },
		{"NSException", "MonoTouch.Foundation.NSException, monotouch", NULL },
		{"NSNull", "MonoTouch.Foundation.NSNull, monotouch", NULL },
		{"NSEnumerator", "MonoTouch.Foundation.NSEnumerator, monotouch", NULL },
		{"NSUserActivity", "MonoTouch.Foundation.NSUserActivity, monotouch", NULL },
		{"NSOperationQueue", "MonoTouch.Foundation.NSOperationQueue, monotouch", NULL },
		{"NSNotification", "MonoTouch.Foundation.NSNotification, monotouch", NULL },
		{"CMMotionManager", "MonoTouch.CoreMotion.CMMotionManager, monotouch", NULL },
		{"GKPeerPickerController", "MonoTouch.GameKit.GKPeerPickerController, monotouch", NULL },
		{"GKMatchRequest", "MonoTouch.GameKit.GKMatchRequest, monotouch", NULL },
		{"GKLocalPlayer", "MonoTouch.GameKit.GKLocalPlayer, monotouch", NULL },
		{"GKAchievement", "MonoTouch.GameKit.GKAchievement, monotouch", NULL },
		{"GKAchievementDescription", "MonoTouch.GameKit.GKAchievementDescription, monotouch", NULL },
		{"MPMediaPredicate", "MonoTouch.MediaPlayer.MPMediaPredicate, monotouch", NULL },
		{"MPMediaPropertyPredicate", "MonoTouch.MediaPlayer.MPMediaPropertyPredicate, monotouch", NULL },
		{"MPMoviePlayerViewController", "MonoTouch.MediaPlayer.MPMoviePlayerViewController, monotouch", NULL },
		{"MPMediaItemCollection", "MonoTouch.MediaPlayer.MPMediaItemCollection, monotouch", NULL },
		{"EAGLSharegroup", "MonoTouch.OpenGLES.EAGLSharegroup, monotouch", NULL },
		{"TWTweetComposeViewController", "MonoTouch.Twitter.TWTweetComposeViewController, monotouch", NULL },
		{"UIApplicationShortcutItem", "MonoTouch.UIKit.UIApplicationShortcutItem, monotouch", NULL },
		{"UITextSelectionRect", "MonoTouch.UIKit.UITextSelectionRect, monotouch", NULL },
		{"UILocalNotification", "MonoTouch.UIKit.UILocalNotification, monotouch", NULL },
		{"UITextPosition", "MonoTouch.UIKit.UITextPosition, monotouch", NULL },
		{"UITextRange", "MonoTouch.UIKit.UITextRange, monotouch", NULL },
		{"UILabel", "MonoTouch.UIKit.UILabel, monotouch", NULL },
		{"UIScrollView", "MonoTouch.UIKit.UIScrollView, monotouch", NULL },
		{"UITraitCollection", "MonoTouch.UIKit.UITraitCollection, monotouch", NULL },
		{"UITouch", "MonoTouch.UIKit.UITouch, monotouch", NULL },
		{"UIUserNotificationSettings", "MonoTouch.UIKit.UIUserNotificationSettings, monotouch", NULL },
		{"UIFocusAnimationCoordinator", "MonoTouch.UIKit.UIFocusAnimationCoordinator, monotouch", NULL },
		{"UIFocusUpdateContext", "MonoTouch.UIKit.UIFocusUpdateContext, monotouch", NULL },
		{"NSData", "MonoTouch.Foundation.NSData, monotouch", NULL },
		{"NSDictionary", "MonoTouch.Foundation.NSDictionary, monotouch", NULL },
		{"UIAlertView", "MonoTouch.UIKit.UIAlertView, monotouch", NULL },
		{"UIBarButtonItem", "MonoTouch.UIKit.UIBarButtonItem, monotouch", NULL },
		{"NSMutableData", "MonoTouch.Foundation.NSMutableData, monotouch", NULL },
		{"NSMutableDictionary", "MonoTouch.Foundation.NSMutableDictionary, monotouch", NULL },
		{"NSNotificationCenter", "MonoTouch.Foundation.NSNotificationCenter, monotouch", NULL },
		{"NSSet", "MonoTouch.Foundation.NSSet, monotouch", NULL },
		{"AVPlayerItem", "MonoTouch.AVFoundation.AVPlayerItem, monotouch", NULL },
		{"GKSession", "MonoTouch.GameKit.GKSession, monotouch", NULL },
		{"GKGameCenterViewController", "MonoTouch.GameKit.GKGameCenterViewController, monotouch", NULL },
		{"GKLeaderboardViewController", "MonoTouch.GameKit.GKLeaderboardViewController, monotouch", NULL },
		{"GKMatchmakerViewController", "MonoTouch.GameKit.GKMatchmakerViewController, monotouch", NULL },
		{"GKAchievementViewController", "MonoTouch.GameKit.GKAchievementViewController, monotouch", NULL },
		{"AppDelegate", "GoneBananas.AppDelegate, GoneBananas", NULL },
		{"Microsoft_Xna_Framework_iOSGameViewController", "Microsoft.Xna.Framework.iOSGameViewController, MonoGame.Framework", NULL },
		{"iOSGameView", "Microsoft.Xna.Framework.iOSGameView, MonoGame.Framework", NULL },
		{"MonoTouch_UIKit_UIAlertView__UIAlertViewDelegate", "MonoTouch.UIKit.UIAlertView+_UIAlertViewDelegate, monotouch", NULL },
		{"MonoTouch_UIKit_UIBarButtonItem_Callback", "MonoTouch.UIKit.UIBarButtonItem+Callback, monotouch", NULL },
		{"__NSObject_Disposer", "MonoTouch.Foundation.NSObject+NSObject_Disposer, monotouch", NULL },
		{"MonoTouch_GKSession_ReceivedObject", "MonoTouch.GameKit.GKSession+ReceiverObject, monotouch", NULL },
		{"MonoTouch_GameKit_GKLeaderboardViewController__GKLeaderboardViewControllerDelegate", "MonoTouch.GameKit.GKLeaderboardViewController+_GKLeaderboardViewControllerDelegate, monotouch", NULL },
		{"MonoTouch_GameKit_GKMatchmakerViewController__GKMatchmakerViewControllerDelegate", "MonoTouch.GameKit.GKMatchmakerViewController+_GKMatchmakerViewControllerDelegate, monotouch", NULL },
		{"MonoTouch_GameKit_GKAchievementViewController__GKAchievementViewControllerDelegate", "MonoTouch.GameKit.GKAchievementViewController+_GKAchievementViewControllerDelegate, monotouch", NULL },
		{"MonoTouch_GameKit_GKGameCenterViewController__GKGameCenterControllerDelegate", "MonoTouch.GameKit.GKGameCenterViewController+_GKGameCenterControllerDelegate, monotouch", NULL },
		{"OpenTK_Platform_iPhoneOS_CADisplayLinkTimeSource", "OpenTK.Platform.iPhoneOS.CADisplayLinkTimeSource, OpenTK", NULL },
		{"OpenTK_Platform_iPhoneOS_iPhoneOSGameView", "OpenTK.Platform.iPhoneOS.iPhoneOSGameView, OpenTK", NULL },
		{"Microsoft_Xna_Framework_GamerServices_GuideViewController", "Microsoft.Xna.Framework.GamerServices.GuideViewController, MonoGame.Framework.Net", NULL },
		{"Microsoft_Xna_Framework_KeyboardInputViewController", "Microsoft.Xna.Framework.KeyboardInputViewController, MonoGame.Framework.Net", NULL },
		{"Microsoft_Xna_Framework_GamerServices_TextFieldAlertView", "Microsoft.Xna.Framework.GamerServices.TextFieldAlertView, MonoGame.Framework.Net", NULL },
		{"Microsoft_Xna_Framework_Net_MonoGamePeerPickerControllerDelegate", "Microsoft.Xna.Framework.Net.MonoGamePeerPickerControllerDelegate, MonoGame.Framework.Net", NULL },
		{"Microsoft_Xna_Framework_Net_MonoGameSessionDelegate", "Microsoft.Xna.Framework.Net.MonoGameSessionDelegate, MonoGame.Framework.Net", NULL },
		{"Microsoft_Xna_Framework_KeyboardInputView_TextFieldDelegate", "Microsoft.Xna.Framework.KeyboardInputView+TextFieldDelegate, MonoGame.Framework.Net", NULL },
		{"Microsoft_Xna_Framework_KeyboardInputView", "Microsoft.Xna.Framework.KeyboardInputView, MonoGame.Framework.Net", NULL },
		{ NULL, NULL, NULL },
	};

	static const char *__xamarin_registration_assemblies []= {
		"GoneBananas", 
		"CocosSharp", 
		"mscorlib", 
		"MonoGame.Framework", 
		"System", 
		"System.Xml", 
		"monotouch", 
		"System.Core", 
		"OpenTK", 
		"System.Runtime.Serialization", 
		"System.ServiceModel.Internals", 
		"ICSharpCode.SharpZipLib", 
		"MonoGame.Framework.Net", 
		"Lidgren.Network", 
		"box2d"
	};

	static struct MTRegistrationMap __xamarin_registration_map = {
		NULL,
		__xamarin_registration_assemblies,
		__xamarin_class_map,
		15,
		119,
		20
	};

void xamarin_create_classes () {
	__xamarin_class_map [0].handle = objc_getClass ("NSObject");
	__xamarin_class_map [1].handle = objc_getClass ("UIResponder");
	__xamarin_class_map [2].handle = objc_getClass ("UIViewController");
	__xamarin_class_map [3].handle = objc_getClass ("UIView");
	__xamarin_class_map [4].handle = objc_getClass ("EAGLContext");
	__xamarin_class_map [5].handle = objc_getClass ("NSArray");
	__xamarin_class_map [6].handle = objc_getClass ("NSAttributedString");
	__xamarin_class_map [7].handle = objc_getClass ("NSBundle");
	__xamarin_class_map [8].handle = objc_getClass ("NSCoder");
	__xamarin_class_map [9].handle = objc_getClass ("NSDate");
	__xamarin_class_map [10].handle = objc_getClass ("UIApplication");
	__xamarin_class_map [11].handle = objc_getClass ("UIBarItem");
	__xamarin_class_map [12].handle = objc_getClass ("UIBezierPath");
	__xamarin_class_map [13].handle = objc_getClass ("UIColor");
	__xamarin_class_map [14].handle = objc_getClass ("UIControl");
	__xamarin_class_map [15].handle = objc_getClass ("UIDevice");
	__xamarin_class_map [16].handle = objc_getClass ("NSMutableAttributedString");
	__xamarin_class_map [17].handle = objc_getClass ("UIEvent");
	__xamarin_class_map [18].handle = objc_getClass ("UIFont");
	__xamarin_class_map [19].handle = objc_getClass ("UIImage");
	__xamarin_class_map [20].handle = objc_getClass ("MonoTouch_Foundation_InternalNSNotificationHandler");
	__xamarin_class_map [21].handle = objc_getClass ("UINavigationController");
	__xamarin_class_map [22].handle = objc_getClass ("NSValue");
	__xamarin_class_map [23].handle = objc_getClass ("NSNumber");
	__xamarin_class_map [24].handle = objc_getClass ("NSRunLoop");
	__xamarin_class_map [25].handle = objc_getClass ("UIScreen");
	__xamarin_class_map [26].handle = objc_getClass ("NSString");
	__xamarin_class_map [27].handle = objc_getClass ("NSTimer");
	__xamarin_class_map [28].handle = objc_getClass ("UITextField");
	__xamarin_class_map [29].handle = objc_getClass ("UIToolbar");
	__xamarin_class_map [30].handle = objc_getClass ("NSURL");
	__xamarin_class_map [31].handle = objc_getClass ("UIWindow");
	__xamarin_class_map [32].handle = objc_getClass ("NSUserDefaults");
	__xamarin_class_map [33].handle = objc_getClass ("AVAudioPlayer");
	__xamarin_class_map [34].handle = objc_getClass ("AVAudioSession");
	__xamarin_class_map [35].handle = objc_getClass ("AVAsset");
	__xamarin_class_map [36].handle = objc_getClass ("AVPlayer");
	__xamarin_class_map [37].handle = objc_getClass ("__MonoMac_NSActionDispatcher");
	__xamarin_class_map [38].handle = objc_getClass ("__Xamarin_NSTimerActionDispatcher");
	__xamarin_class_map [39].handle = objc_getClass ("__MonoMac_NSAsyncActionDispatcher");
	__xamarin_class_map [40].handle = objc_getClass ("NSAutoreleasePool");
	__xamarin_class_map [41].handle = objc_getClass ("NSError");
	__xamarin_class_map [42].handle = objc_getClass ("CADisplayLink");
	__xamarin_class_map [43].handle = objc_getClass ("CALayer");
	__xamarin_class_map [44].handle = objc_getClass ("CMLogItem");
	__xamarin_class_map [45].handle = objc_getClass ("CMDeviceMotion");
	__xamarin_class_map [46].handle = objc_getClass ("CMAccelerometerData");
	__xamarin_class_map [47].handle = objc_getClass ("GKPlayer");
	__xamarin_class_map [48].handle = objc_getClass ("GKMatch");
	__xamarin_class_map [49].handle = objc_getClass ("GKScore");
	__xamarin_class_map [50].handle = objc_getClass ("MPMediaItem");
	__xamarin_class_map [51].handle = objc_getClass ("MPMediaItemArtwork");
	__xamarin_class_map [52].handle = objc_getClass ("MPMediaQuery");
	__xamarin_class_map [53].handle = objc_getClass ("MPMoviePlayerController");
	__xamarin_class_map [54].handle = objc_getClass ("CAEAGLLayer");
	__xamarin_class_map [55].handle = objc_getClass ("NSException");
	__xamarin_class_map [56].handle = objc_getClass ("NSNull");
	__xamarin_class_map [57].handle = objc_getClass ("NSEnumerator");
	__xamarin_class_map [58].handle = objc_getClass ("NSUserActivity");
	__xamarin_class_map [59].handle = objc_getClass ("NSOperationQueue");
	__xamarin_class_map [60].handle = objc_getClass ("NSNotification");
	__xamarin_class_map [61].handle = objc_getClass ("CMMotionManager");
	__xamarin_class_map [62].handle = objc_getClass ("GKPeerPickerController");
	__xamarin_class_map [63].handle = objc_getClass ("GKMatchRequest");
	__xamarin_class_map [64].handle = objc_getClass ("GKLocalPlayer");
	__xamarin_class_map [65].handle = objc_getClass ("GKAchievement");
	__xamarin_class_map [66].handle = objc_getClass ("GKAchievementDescription");
	__xamarin_class_map [67].handle = objc_getClass ("MPMediaPredicate");
	__xamarin_class_map [68].handle = objc_getClass ("MPMediaPropertyPredicate");
	__xamarin_class_map [69].handle = objc_getClass ("MPMoviePlayerViewController");
	__xamarin_class_map [70].handle = objc_getClass ("MPMediaItemCollection");
	__xamarin_class_map [71].handle = objc_getClass ("EAGLSharegroup");
	__xamarin_class_map [72].handle = objc_getClass ("TWTweetComposeViewController");
	__xamarin_class_map [73].handle = objc_getClass ("UIApplicationShortcutItem");
	__xamarin_class_map [74].handle = objc_getClass ("UITextSelectionRect");
	__xamarin_class_map [75].handle = objc_getClass ("UILocalNotification");
	__xamarin_class_map [76].handle = objc_getClass ("UITextPosition");
	__xamarin_class_map [77].handle = objc_getClass ("UITextRange");
	__xamarin_class_map [78].handle = objc_getClass ("UILabel");
	__xamarin_class_map [79].handle = objc_getClass ("UIScrollView");
	__xamarin_class_map [80].handle = objc_getClass ("UITraitCollection");
	__xamarin_class_map [81].handle = objc_getClass ("UITouch");
	__xamarin_class_map [82].handle = objc_getClass ("UIUserNotificationSettings");
	__xamarin_class_map [83].handle = objc_getClass ("UIFocusAnimationCoordinator");
	__xamarin_class_map [84].handle = objc_getClass ("UIFocusUpdateContext");
	__xamarin_class_map [85].handle = objc_getClass ("NSData");
	__xamarin_class_map [86].handle = objc_getClass ("NSDictionary");
	__xamarin_class_map [87].handle = objc_getClass ("UIAlertView");
	__xamarin_class_map [88].handle = objc_getClass ("UIBarButtonItem");
	__xamarin_class_map [89].handle = objc_getClass ("NSMutableData");
	__xamarin_class_map [90].handle = objc_getClass ("NSMutableDictionary");
	__xamarin_class_map [91].handle = objc_getClass ("NSNotificationCenter");
	__xamarin_class_map [92].handle = objc_getClass ("NSSet");
	__xamarin_class_map [93].handle = objc_getClass ("AVPlayerItem");
	__xamarin_class_map [94].handle = objc_getClass ("GKSession");
	__xamarin_class_map [95].handle = objc_getClass ("GKGameCenterViewController");
	__xamarin_class_map [96].handle = objc_getClass ("GKLeaderboardViewController");
	__xamarin_class_map [97].handle = objc_getClass ("GKMatchmakerViewController");
	__xamarin_class_map [98].handle = objc_getClass ("GKAchievementViewController");
	__xamarin_class_map [99].handle = [AppDelegate class];
	__xamarin_class_map [100].handle = [Microsoft_Xna_Framework_iOSGameViewController class];
	__xamarin_class_map [101].handle = [iOSGameView class];
	__xamarin_class_map [102].handle = objc_getClass ("MonoTouch_UIKit_UIAlertView__UIAlertViewDelegate");
	__xamarin_class_map [103].handle = objc_getClass ("MonoTouch_UIKit_UIBarButtonItem_Callback");
	__xamarin_class_map [104].handle = objc_getClass ("__NSObject_Disposer");
	__xamarin_class_map [105].handle = objc_getClass ("MonoTouch_GKSession_ReceivedObject");
	__xamarin_class_map [106].handle = objc_getClass ("MonoTouch_GameKit_GKLeaderboardViewController__GKLeaderboardViewControllerDelegate");
	__xamarin_class_map [107].handle = objc_getClass ("MonoTouch_GameKit_GKMatchmakerViewController__GKMatchmakerViewControllerDelegate");
	__xamarin_class_map [108].handle = objc_getClass ("MonoTouch_GameKit_GKAchievementViewController__GKAchievementViewControllerDelegate");
	__xamarin_class_map [109].handle = objc_getClass ("MonoTouch_GameKit_GKGameCenterViewController__GKGameCenterControllerDelegate");
	__xamarin_class_map [110].handle = [OpenTK_Platform_iPhoneOS_CADisplayLinkTimeSource class];
	__xamarin_class_map [111].handle = [OpenTK_Platform_iPhoneOS_iPhoneOSGameView class];
	__xamarin_class_map [112].handle = [Microsoft_Xna_Framework_GamerServices_GuideViewController class];
	__xamarin_class_map [113].handle = [Microsoft_Xna_Framework_KeyboardInputViewController class];
	__xamarin_class_map [114].handle = [Microsoft_Xna_Framework_GamerServices_TextFieldAlertView class];
	__xamarin_class_map [115].handle = [Microsoft_Xna_Framework_Net_MonoGamePeerPickerControllerDelegate class];
	__xamarin_class_map [116].handle = [Microsoft_Xna_Framework_Net_MonoGameSessionDelegate class];
	__xamarin_class_map [117].handle = [Microsoft_Xna_Framework_KeyboardInputView_TextFieldDelegate class];
	__xamarin_class_map [118].handle = [Microsoft_Xna_Framework_KeyboardInputView class];
	xamarin_add_registration_map (&__xamarin_registration_map);
}

