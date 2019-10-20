#include <xamarin/xamarin.h>
#include "registrar.h"
extern "C" {
static id native_to_managed_trampoline_1 (id self, SEL _cmd, MonoMethod **managed_method_ptr, bool* call_super, uint32_t token_ref)
{
	uint8_t flags = NSObjectFlagsNativeRef;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	bool has_nsobject = xamarin_has_nsobject (self, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	if (has_nsobject) {
		*call_super = true;
		goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (managed_method));
	xamarin_set_nsobject_handle (mthis, self);
	xamarin_set_nsobject_flags (mthis, flags);
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);
	xamarin_create_managed_ref (self, mthis, true);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return self;
}


static UIWindow * native_to_managed_trampoline_2 (id self, SEL _cmd, MonoMethod **managed_method_ptr, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UIWindow * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_3 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIWindow * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static BOOL native_to_managed_trampoline_4 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIApplication * p0, NSUserActivity * p1, id p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	if (p2) {
		arg_ptrs [2] = (void *) xamarin_get_delegate_for_block_parameter (managed_method, 0x39A16 /* UIKit.UIApplicationRestorationHandler ObjCRuntime.Trampolines/NIDUIApplicationRestorationHandler::Create(System.IntPtr) */ , 2, p2, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	} else {
		arg_ptrs [2] = NULL;
	}

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_5 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIApplication * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static BOOL native_to_managed_trampoline_6 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIApplication * p0, NSDictionary * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_7 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIApplication * p0, NSUserActivity * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static BOOL native_to_managed_trampoline_8 (id self, SEL _cmd, MonoMethod **managed_method_ptr, void * p0, uint32_t token_ref)
{
	void * a0 = p0;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &a0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static UIColor * native_to_managed_trampoline_9 (id self, SEL _cmd, MonoMethod **managed_method_ptr, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UIColor * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_generic_method_from_token (mthis, token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_10 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIColor * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_generic_method_from_token (mthis, token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static NSArray * native_to_managed_trampoline_11 (id self, SEL _cmd, MonoMethod **managed_method_ptr, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSArray * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_generic_method_from_token (mthis, token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = xamarin_managed_nsobject_array_to_nsarray ((MonoArray *) retval, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	xamarin_framework_peer_lock ();
	mt_dummy_use (retval);
	xamarin_framework_peer_unlock ();

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_12 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIKeyCommand * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_generic_method_from_token (mthis, token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static CGSize native_to_managed_trampoline_13 (id self, SEL _cmd, MonoMethod **managed_method_ptr, CGSize p0, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	CGSize res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_generic_method_from_token (mthis, token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &p0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(CGSize *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_14 (id self, SEL _cmd, MonoMethod **managed_method_ptr, uint32_t token_ref)
{
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_generic_method_from_token (mthis, token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static BOOL native_to_managed_trampoline_15 (id self, SEL _cmd, MonoMethod **managed_method_ptr, void * p0, uint32_t token_ref)
{
	void * a0 = p0;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_generic_method_from_token (mthis, token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &a0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_16 (id self, SEL _cmd, MonoMethod **managed_method_ptr, uint32_t token_ref)
{
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_17 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSNotification * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_18 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSTimer * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static NSUInteger native_to_managed_trampoline_19 (id self, SEL _cmd, MonoMethod **managed_method_ptr, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSUInteger res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(NSUInteger *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static NSInteger native_to_managed_trampoline_20 (id self, SEL _cmd, MonoMethod **managed_method_ptr, void * p0, NSUInteger p1, uint32_t token_ref)
{
	void * a0 = p0;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSInteger res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &a0;
	arg_ptrs [1] = &p1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(NSInteger *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_21 (id self, SEL _cmd, MonoMethod **managed_method_ptr, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_22 (id self, SEL _cmd, MonoMethod **managed_method_ptr, void ** p0, NSUInteger* p1, uint32_t token_ref)
{
	void ** a0 = 0;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &a0;
	arg_ptrs [1] = p1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	*p0 = a0;

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static NSObject * native_to_managed_trampoline_23 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSString * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSObject * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_24 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSObject * p0, NSString * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_25 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSUInteger p0, void * p1, void * p2, uint32_t token_ref)
{
	unsigned long long nativeEnum0 = p0;
	void * a1 = p1;
	void * a2 = p2;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &nativeEnum0;
	arg_ptrs [1] = &a1;
	arg_ptrs [2] = &a2;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_26 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSRunLoop * p0, NSString * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = xamarin_nsstring_to_string (NULL, p1);

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_27 (id self, SEL _cmd, MonoMethod **managed_method_ptr, GLKView * p0, CGRect p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_28 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSObject * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static UIColor * native_to_managed_trampoline_29 (id self, SEL _cmd, MonoMethod **managed_method_ptr, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UIColor * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static UIImage * native_to_managed_trampoline_30 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSUInteger p0, uint32_t token_ref)
{
	unsigned long long nativeEnum0 = p0;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UIImage * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &nativeEnum0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static UIColor * native_to_managed_trampoline_31 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSUInteger p0, uint32_t token_ref)
{
	unsigned long long nativeEnum0 = p0;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UIColor * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &nativeEnum0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_32 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIGestureRecognizer * p0, UIGestureRecognizer * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_33 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIGestureRecognizer * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_34 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIGestureRecognizer * p0, UIPress * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_35 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIGestureRecognizer * p0, UITouch * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_36 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UILongPressGestureRecognizer * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_37 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITapGestureRecognizer * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_38 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIPanGestureRecognizer * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_39 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIPinchGestureRecognizer * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static NSDictionary * native_to_managed_trampoline_40 (id self, SEL _cmd, MonoMethod **managed_method_ptr, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSDictionary * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_41 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UISearchBar * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_42 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UISearchBar * p0, NSInteger p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static BOOL native_to_managed_trampoline_43 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UISearchBar * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_44 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UISearchBar * p0, NSRange p1, NSString * p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = xamarin_nsstring_to_string (NULL, p2);

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_45 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UISearchBar * p0, NSString * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = xamarin_nsstring_to_string (NULL, p1);

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_46 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UISearchController * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_47 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextField * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_48 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextField * p0, NSInteger p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	long long nativeEnum1 = p1;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &nativeEnum1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static BOOL native_to_managed_trampoline_49 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextField * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_50 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextField * p0, NSRange p1, NSString * p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = xamarin_nsstring_to_string (NULL, p2);

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_51 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_52 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, BOOL p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static BOOL native_to_managed_trampoline_53 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static UIView * native_to_managed_trampoline_54 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UIView * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_55 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, CGPoint p1, CGPoint* p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = p2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_56 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, UIView * p1, CGFloat p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	arg_ptrs [2] = &p2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_57 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, UIView * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_58 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextView * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static BOOL native_to_managed_trampoline_59 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextView * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_60 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextView * p0, NSRange p1, NSString * p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = xamarin_nsstring_to_string (NULL, p2);

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_61 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextView * p0, NSTextAttachment * p1, NSRange p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	arg_ptrs [2] = &p2;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_62 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextView * p0, NSTextAttachment * p1, NSRange p2, NSInteger p3, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	long long nativeEnum3 = p3;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [4];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	arg_ptrs [2] = &p2;
	arg_ptrs [3] = &nativeEnum3;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_63 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextView * p0, NSURL * p1, NSRange p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	arg_ptrs [2] = &p2;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_64 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextView * p0, NSURL * p1, NSRange p2, NSInteger p3, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	long long nativeEnum3 = p3;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [4];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	arg_ptrs [2] = &p2;
	arg_ptrs [3] = &nativeEnum3;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_65 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UISplitViewController * p0, UIViewController * p1, UIViewController * p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	NSObject *nsobj2 = NULL;
	MonoObject *mobj2 = NULL;
	int32_t created2 = false;
	MonoType *paramtype2 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	nsobj2 = (NSObject *) p2;
	if (nsobj2) {
		paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype2, 2, true);
			goto exception_handling;
		}
	}
	arg_ptrs [2] = mobj2;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_66 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UISplitViewController * p0, UIViewController * p1, NSObject * p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	NSObject *nsobj2 = NULL;
	MonoObject *mobj2 = NULL;
	int32_t created2 = false;
	MonoType *paramtype2 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	nsobj2 = (NSObject *) p2;
	if (nsobj2) {
		paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype2, 2, true);
			goto exception_handling;
		}
	}
	arg_ptrs [2] = mobj2;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static NSInteger native_to_managed_trampoline_67 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UISplitViewController * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSInteger res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(NSInteger *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static UIViewController * native_to_managed_trampoline_68 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UISplitViewController * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UIViewController * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static UIViewController * native_to_managed_trampoline_69 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UISplitViewController * p0, UIViewController * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UIViewController * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_70 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UISplitViewController * p0, UIViewController * p1, NSInteger p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	long long nativeEnum2 = p2;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	arg_ptrs [2] = &nativeEnum2;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static NSUInteger native_to_managed_trampoline_71 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UISplitViewController * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSUInteger res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(NSUInteger *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_72 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UISplitViewController * p0, NSInteger p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	long long nativeEnum1 = p1;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &nativeEnum1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_73 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UISplitViewController * p0, UIViewController * p1, UIBarButtonItem * p2, UIPopoverController * p3, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	NSObject *nsobj2 = NULL;
	MonoObject *mobj2 = NULL;
	int32_t created2 = false;
	MonoType *paramtype2 = NULL;
	NSObject *nsobj3 = NULL;
	MonoObject *mobj3 = NULL;
	int32_t created3 = false;
	MonoType *paramtype3 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [4];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	nsobj2 = (NSObject *) p2;
	if (nsobj2) {
		paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype2, 2, true);
			goto exception_handling;
		}
	}
	arg_ptrs [2] = mobj2;
	nsobj3 = (NSObject *) p3;
	if (nsobj3) {
		paramtype3 = xamarin_get_parameter_type (managed_method, 3);
		mobj3 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj3, false, paramtype3, &created3, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype3, 3, true);
			goto exception_handling;
		}
	}
	arg_ptrs [3] = mobj3;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_74 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UISplitViewController * p0, UIPopoverController * p1, UIViewController * p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	NSObject *nsobj2 = NULL;
	MonoObject *mobj2 = NULL;
	int32_t created2 = false;
	MonoType *paramtype2 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	nsobj2 = (NSObject *) p2;
	if (nsobj2) {
		paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype2, 2, true);
			goto exception_handling;
		}
	}
	arg_ptrs [2] = mobj2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_75 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UISplitViewController * p0, UIViewController * p1, UIBarButtonItem * p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	NSObject *nsobj2 = NULL;
	MonoObject *mobj2 = NULL;
	int32_t created2 = false;
	MonoType *paramtype2 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	nsobj2 = (NSObject *) p2;
	if (nsobj2) {
		paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype2, 2, true);
			goto exception_handling;
		}
	}
	arg_ptrs [2] = mobj2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_76 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITabBarController * p0, NSArray * p1, BOOL p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoArray *marr1 = NULL;
	NSArray *arr1 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	arr1 = p1;
	marr1 = xamarin_nsarray_to_managed_nsobject_array (arr1, xamarin_get_parameter_type (managed_method, 1), NULL, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [1] = marr1;
	arg_ptrs [2] = &p2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static id native_to_managed_trampoline_77 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITabBarController * p0, UIViewController * p1, UIViewController * p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	NSObject *nsobj2 = NULL;
	MonoObject *mobj2 = NULL;
	int32_t created2 = false;
	MonoType *paramtype2 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	id res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	nsobj2 = (NSObject *) p2;
	if (nsobj2) {
		paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype2, 2, true);
			goto exception_handling;
		}
	}
	arg_ptrs [2] = mobj2;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_handle_for_inativeobject ((MonoObject *) retval, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static id native_to_managed_trampoline_78 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITabBarController * p0, id p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	id res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = xamarin_get_inative_object_static (p1, false, 0x22516 /* UIKit.IUIViewControllerAnimatedTransitioning */, 0x22616 /* UIKit.UIViewControllerAnimatedTransitioningWrapper */, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_handle_for_inativeobject ((MonoObject *) retval, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static NSInteger native_to_managed_trampoline_79 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITabBarController * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSInteger res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(NSInteger *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_80 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITabBarController * p0, NSArray * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoArray *marr1 = NULL;
	NSArray *arr1 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	arr1 = p1;
	marr1 = xamarin_nsarray_to_managed_nsobject_array (arr1, xamarin_get_parameter_type (managed_method, 1), NULL, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [1] = marr1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static BOOL native_to_managed_trampoline_81 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITabBarController * p0, UIViewController * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static NSUInteger native_to_managed_trampoline_82 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITabBarController * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSUInteger res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(NSUInteger *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_83 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITabBarController * p0, UIViewController * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static BOOL native_to_managed_trampoline_84 (id self, SEL _cmd, MonoMethod **managed_method_ptr, SEL p0, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = p0 ? xamarin_get_selector (p0, &exception_gchandle) : NULL;
	if (exception_gchandle != 0) goto exception_handling;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_85 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIWebView * p0, NSError * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_86 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIWebView * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static BOOL native_to_managed_trampoline_87 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIWebView * p0, NSURLRequest * p1, NSInteger p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	long long nativeEnum2 = p2;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	arg_ptrs [2] = &nativeEnum2;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_88 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSObject * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, NULL, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_89 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSString * p0, NSObject * p1, NSDictionary * p2, void * p3, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	NSObject *nsobj2 = NULL;
	MonoObject *mobj2 = NULL;
	int32_t created2 = false;
	MonoType *paramtype2 = NULL;
	void * a3 = p3;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [4];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	nsobj2 = (NSObject *) p2;
	if (nsobj2) {
		paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype2, 2, true);
			goto exception_handling;
		}
	}
	arg_ptrs [2] = mobj2;
	arg_ptrs [3] = &a3;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_90 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSURLSession * p0, NSURLSessionDataTask * p1, NSURLResponse * p2, id p3, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	NSObject *nsobj2 = NULL;
	MonoObject *mobj2 = NULL;
	int32_t created2 = false;
	MonoType *paramtype2 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [4];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	nsobj2 = (NSObject *) p2;
	if (nsobj2) {
		paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype2, 2, true);
			goto exception_handling;
		}
	}
	arg_ptrs [2] = mobj2;
	if (p3) {
		arg_ptrs [3] = (void *) xamarin_get_delegate_for_block_parameter (managed_method, 0x35416 /* System.Action`1<Foundation.NSUrlSessionResponseDisposition> ObjCRuntime.Trampolines/NIDActionArity1V46::Create(System.IntPtr) */ , 3, p3, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	} else {
		arg_ptrs [3] = NULL;
	}

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_91 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSURLSession * p0, NSURLSessionDataTask * p1, NSData * p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	NSObject *nsobj2 = NULL;
	MonoObject *mobj2 = NULL;
	int32_t created2 = false;
	MonoType *paramtype2 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	nsobj2 = (NSObject *) p2;
	if (nsobj2) {
		paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype2, 2, true);
			goto exception_handling;
		}
	}
	arg_ptrs [2] = mobj2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_92 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSURLSession * p0, NSURLSessionTask * p1, NSError * p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	NSObject *nsobj2 = NULL;
	MonoObject *mobj2 = NULL;
	int32_t created2 = false;
	MonoType *paramtype2 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	nsobj2 = (NSObject *) p2;
	if (nsobj2) {
		paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype2, 2, true);
			goto exception_handling;
		}
	}
	arg_ptrs [2] = mobj2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_93 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSURLSession * p0, NSURLSessionDataTask * p1, NSCachedURLResponse * p2, id p3, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	NSObject *nsobj2 = NULL;
	MonoObject *mobj2 = NULL;
	int32_t created2 = false;
	MonoType *paramtype2 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [4];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	nsobj2 = (NSObject *) p2;
	if (nsobj2) {
		paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype2, 2, true);
			goto exception_handling;
		}
	}
	arg_ptrs [2] = mobj2;
	if (p3) {
		arg_ptrs [3] = (void *) xamarin_get_delegate_for_block_parameter (managed_method, 0x33616 /* System.Action`1<Foundation.NSCachedUrlResponse> ObjCRuntime.Trampolines/NIDActionArity1V44::Create(System.IntPtr) */ , 3, p3, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	} else {
		arg_ptrs [3] = NULL;
	}

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_94 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSURLSession * p0, NSURLSessionTask * p1, NSHTTPURLResponse * p2, NSURLRequest * p3, id p4, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	NSObject *nsobj2 = NULL;
	MonoObject *mobj2 = NULL;
	int32_t created2 = false;
	MonoType *paramtype2 = NULL;
	NSObject *nsobj3 = NULL;
	MonoObject *mobj3 = NULL;
	int32_t created3 = false;
	MonoType *paramtype3 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [5];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	nsobj2 = (NSObject *) p2;
	if (nsobj2) {
		paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype2, 2, true);
			goto exception_handling;
		}
	}
	arg_ptrs [2] = mobj2;
	nsobj3 = (NSObject *) p3;
	if (nsobj3) {
		paramtype3 = xamarin_get_parameter_type (managed_method, 3);
		mobj3 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj3, false, paramtype3, &created3, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype3, 3, true);
			goto exception_handling;
		}
	}
	arg_ptrs [3] = mobj3;
	if (p4) {
		arg_ptrs [4] = (void *) xamarin_get_delegate_for_block_parameter (managed_method, 0x34A16 /* System.Action`1<Foundation.NSUrlRequest> ObjCRuntime.Trampolines/NIDActionArity1V1::Create(System.IntPtr) */ , 4, p4, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	} else {
		arg_ptrs [4] = NULL;
	}

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_95 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSURLSession * p0, NSURLSessionTask * p1, NSURLAuthenticationChallenge * p2, id p3, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	NSObject *nsobj2 = NULL;
	MonoObject *mobj2 = NULL;
	int32_t created2 = false;
	MonoType *paramtype2 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [4];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	nsobj2 = (NSObject *) p2;
	if (nsobj2) {
		paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype2, 2, true);
			goto exception_handling;
		}
	}
	arg_ptrs [2] = mobj2;
	if (p3) {
		arg_ptrs [3] = (void *) xamarin_get_delegate_for_block_parameter (managed_method, 0x39016 /* System.Action`2<Foundation.NSUrlSessionAuthChallengeDisposition,Foundation.NSUrlCredential> ObjCRuntime.Trampolines/NIDActionArity2V2::Create(System.IntPtr) */ , 3, p3, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	} else {
		arg_ptrs [3] = NULL;
	}

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_96 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSSet * p0, UIEvent * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static NSInteger native_to_managed_trampoline_97 (id self, SEL _cmd, MonoMethod **managed_method_ptr, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSInteger res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(NSInteger *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static UIViewController * native_to_managed_trampoline_98 (id self, SEL _cmd, MonoMethod **managed_method_ptr, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UIViewController * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_99 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSInteger p0, uint32_t token_ref)
{
	long long nativeEnum0 = p0;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &nativeEnum0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_100 (id self, SEL _cmd, MonoMethod **managed_method_ptr, BOOL p0, uint32_t token_ref)
{
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &p0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_101 (id self, SEL _cmd, MonoMethod **managed_method_ptr, CGRect p0, uint32_t token_ref)
{
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &p0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static CGSize native_to_managed_trampoline_102 (id self, SEL _cmd, MonoMethod **managed_method_ptr, CGSize p0, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	CGSize res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &p0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(CGSize *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static CGRect native_to_managed_trampoline_103 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextPosition * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	CGRect res = {{0}};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(CGRect *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_104 (id self, SEL _cmd, MonoMethod **managed_method_ptr, SEL p0, NSObject * p1, uint32_t token_ref)
{
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = p0 ? xamarin_get_selector (p0, &exception_gchandle) : NULL;
	if (exception_gchandle != 0) goto exception_handling;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static UITableViewCell * native_to_managed_trampoline_105 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, NSIndexPath * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UITableViewCell * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static CGFloat native_to_managed_trampoline_106 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, NSInteger p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	CGFloat res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(CGFloat *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static UIView * native_to_managed_trampoline_107 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, NSInteger p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UIView * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_108 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, UIView * p1, NSInteger p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	arg_ptrs [2] = &p2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static NSInteger native_to_managed_trampoline_109 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSInteger res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(NSInteger *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_110 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, NSIndexPath * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static NSInteger native_to_managed_trampoline_111 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, NSInteger p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSInteger res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(NSInteger *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static NSArray * native_to_managed_trampoline_112 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSArray * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = xamarin_managed_string_array_to_nsarray ((MonoArray *) retval, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	xamarin_framework_peer_lock ();
	mt_dummy_use (retval);
	xamarin_framework_peer_unlock ();

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static NSString * native_to_managed_trampoline_113 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, NSInteger p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSString * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		res = xamarin_string_to_nsstring ((MonoString *) retval, false);
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static CGFloat native_to_managed_trampoline_114 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, NSIndexPath * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	CGFloat res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(CGFloat *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static UICollectionViewCell * native_to_managed_trampoline_115 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UICollectionView * p0, NSIndexPath * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UICollectionViewCell * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static NSInteger native_to_managed_trampoline_116 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UICollectionView * p0, NSInteger p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSInteger res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(NSInteger *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static NSInteger native_to_managed_trampoline_117 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UICollectionView * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSInteger res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(NSInteger *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_118 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UICollectionView * p0, NSIndexPath * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static UICollectionReusableView * native_to_managed_trampoline_119 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UICollectionView * p0, NSString * p1, NSIndexPath * p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	NSObject *nsobj2 = NULL;
	MonoObject *mobj2 = NULL;
	int32_t created2 = false;
	MonoType *paramtype2 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UICollectionReusableView * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	nsobj2 = (NSObject *) p2;
	if (nsobj2) {
		paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype2, 2, true);
			goto exception_handling;
		}
	}
	arg_ptrs [2] = mobj2;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static id native_to_managed_trampoline_120 (id self, SEL _cmd, MonoMethod **managed_method_ptr, CGRect p0, bool* call_super, uint32_t token_ref)
{
	uint8_t flags = NSObjectFlagsNativeRef;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	bool has_nsobject = xamarin_has_nsobject (self, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	if (has_nsobject) {
		*call_super = true;
		goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	arg_ptrs [0] = &p0;

	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (managed_method));
	xamarin_set_nsobject_handle (mthis, self);
	xamarin_set_nsobject_flags (mthis, flags);
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);
	xamarin_create_managed_ref (self, mthis, true);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return self;
}


static UICollectionViewLayoutAttributes * native_to_managed_trampoline_121 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UICollectionViewLayoutAttributes * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UICollectionViewLayoutAttributes * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_122 (id self, SEL _cmd, MonoMethod **managed_method_ptr, CGRect p0, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &p0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_123 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UICollectionViewLayoutAttributes * p0, UICollectionViewLayoutAttributes * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static CGPoint native_to_managed_trampoline_124 (id self, SEL _cmd, MonoMethod **managed_method_ptr, CGPoint p0, CGPoint p1, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	CGPoint res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &p0;
	arg_ptrs [1] = &p1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(CGPoint *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static UICollectionViewLayoutInvalidationContext * native_to_managed_trampoline_125 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UICollectionViewLayoutAttributes * p0, UICollectionViewLayoutAttributes * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UICollectionViewLayoutInvalidationContext * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static UICollectionViewLayoutAttributes * native_to_managed_trampoline_126 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSString * p0, NSIndexPath * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UICollectionViewLayoutAttributes * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_127 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSArray * p0, uint32_t token_ref)
{
	MonoArray *marr0 = NULL;
	NSArray *arr0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arr0 = p0;
	marr0 = xamarin_nsarray_to_managed_nsobject_array (arr0, xamarin_get_parameter_type (managed_method, 0), NULL, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = marr0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static CGPoint native_to_managed_trampoline_128 (id self, SEL _cmd, MonoMethod **managed_method_ptr, CGPoint p0, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	CGPoint res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &p0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(CGPoint *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static CGSize native_to_managed_trampoline_129 (id self, SEL _cmd, MonoMethod **managed_method_ptr, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	CGSize res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(CGSize *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static NSArray * native_to_managed_trampoline_130 (id self, SEL _cmd, MonoMethod **managed_method_ptr, CGRect p0, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSArray * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &p0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = xamarin_managed_nsobject_array_to_nsarray ((MonoArray *) retval, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	xamarin_framework_peer_lock ();
	mt_dummy_use (retval);
	xamarin_framework_peer_unlock ();

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_131 (id self, SEL _cmd, MonoMethod **managed_method_ptr, BOOL p0, id p1, uint32_t token_ref)
{
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &p0;
	if (p1) {
		arg_ptrs [1] = (void *) xamarin_get_delegate_for_block_parameter (managed_method, 0x32C16 /* System.Action ObjCRuntime.Trampolines/NIDAction::Create(System.IntPtr) */ , 1, p1, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	} else {
		arg_ptrs [1] = NULL;
	}

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static NSObject * native_to_managed_trampoline_132 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSInteger p0, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSObject * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &p0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static int native_to_managed_trampoline_133 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSObject * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	int res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(int *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_134 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIViewController * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_135 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSInteger p0, double p1, uint32_t token_ref)
{
	long long nativeEnum0 = p0;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &nativeEnum0;
	arg_ptrs [1] = &p1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_136 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIActionSheet * p0, NSInteger p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static UIView * native_to_managed_trampoline_137 (id self, SEL _cmd, MonoMethod **managed_method_ptr, CGPoint p0, UIEvent * p1, uint32_t token_ref)
{
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UIView * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &p0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_138 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSInteger p0, uint32_t token_ref)
{
	long long nativeEnum0 = p0;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &nativeEnum0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static CGRect native_to_managed_trampoline_139 (id self, SEL _cmd, MonoMethod **managed_method_ptr, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	CGRect res = {{0}};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_generic_method_from_token (mthis, token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(CGRect *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_140 (id self, SEL _cmd, MonoMethod **managed_method_ptr, CGRect p0, uint32_t token_ref)
{
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_generic_method_from_token (mthis, token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &p0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static CGRect native_to_managed_trampoline_141 (id self, SEL _cmd, MonoMethod **managed_method_ptr, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	CGRect res = {{0}};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(CGRect *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static NSArray * native_to_managed_trampoline_142 (id self, SEL _cmd, MonoMethod **managed_method_ptr, BOOL p0, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSArray * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &p0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = xamarin_managed_nsobject_array_to_nsarray ((MonoArray *) retval, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	xamarin_framework_peer_lock ();
	mt_dummy_use (retval);
	xamarin_framework_peer_unlock ();

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static UIViewController * native_to_managed_trampoline_143 (id self, SEL _cmd, MonoMethod **managed_method_ptr, BOOL p0, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UIViewController * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &p0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static NSInteger native_to_managed_trampoline_144 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIPickerView * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSInteger res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_generic_method_from_token (mthis, token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(NSInteger *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static NSInteger native_to_managed_trampoline_145 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIPickerView * p0, NSInteger p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSInteger res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_generic_method_from_token (mthis, token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(NSInteger *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static NSString * native_to_managed_trampoline_146 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIPickerView * p0, NSInteger p1, NSInteger p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSString * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_generic_method_from_token (mthis, token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = &p2;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		res = xamarin_string_to_nsstring ((MonoString *) retval, false);
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_147 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIPickerView * p0, NSInteger p1, NSInteger p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_generic_method_from_token (mthis, token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = &p2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static UIEdgeInsets native_to_managed_trampoline_148 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UICollectionView * p0, UICollectionViewLayout * p1, NSInteger p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UIEdgeInsets res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	arg_ptrs [2] = &p2;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(UIEdgeInsets *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static CGFloat native_to_managed_trampoline_149 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UICollectionView * p0, UICollectionViewLayout * p1, NSInteger p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	CGFloat res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	arg_ptrs [2] = &p2;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(CGFloat *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_150 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UICollectionView * p0, UICollectionViewCell * p1, NSIndexPath * p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	NSObject *nsobj2 = NULL;
	MonoObject *mobj2 = NULL;
	int32_t created2 = false;
	MonoType *paramtype2 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	nsobj2 = (NSObject *) p2;
	if (nsobj2) {
		paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype2, 2, true);
			goto exception_handling;
		}
	}
	arg_ptrs [2] = mobj2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static CGSize native_to_managed_trampoline_151 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UICollectionView * p0, UICollectionViewLayout * p1, NSInteger p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	CGSize res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	arg_ptrs [2] = &p2;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(CGSize *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_152 (id self, SEL _cmd, MonoMethod **managed_method_ptr, WKWebView * p0, WKNavigation * p1, NSError * p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	NSObject *nsobj2 = NULL;
	MonoObject *mobj2 = NULL;
	int32_t created2 = false;
	MonoType *paramtype2 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	nsobj2 = (NSObject *) p2;
	if (nsobj2) {
		paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype2, 2, true);
			goto exception_handling;
		}
	}
	arg_ptrs [2] = mobj2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_153 (id self, SEL _cmd, MonoMethod **managed_method_ptr, WKWebView * p0, WKNavigation * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_154 (id self, SEL _cmd, MonoMethod **managed_method_ptr, WKWebView * p0, WKNavigationAction * p1, id p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	if (p2) {
		arg_ptrs [2] = (void *) xamarin_get_delegate_for_block_parameter (managed_method, 0x38616 /* System.Action`1<WebKit.WKNavigationActionPolicy> ObjCRuntime.Trampolines/NIDActionArity1V207::Create(System.IntPtr) */ , 2, p2, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	} else {
		arg_ptrs [2] = NULL;
	}

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static NSArray * native_to_managed_trampoline_155 (id self, SEL _cmd, MonoMethod **managed_method_ptr, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSArray * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = xamarin_managed_nsobject_array_to_nsarray ((MonoArray *) retval, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	xamarin_framework_peer_lock ();
	mt_dummy_use (retval);
	xamarin_framework_peer_unlock ();

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_156 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIKeyCommand * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static BOOL native_to_managed_trampoline_157 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UICollectionView * p0, NSIndexPath * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_158 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UINavigationController * p0, UIViewController * p1, BOOL p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	arg_ptrs [2] = &p2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (created1) {
		xamarin_dispose (mobj1, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static BOOL native_to_managed_trampoline_159 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UINavigationBar * p0, UINavigationItem * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_160 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, UITableViewCell * p1, NSIndexPath * p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	NSObject *nsobj2 = NULL;
	MonoObject *mobj2 = NULL;
	int32_t created2 = false;
	MonoType *paramtype2 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	nsobj2 = (NSObject *) p2;
	if (nsobj2) {
		paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype2, 2, true);
			goto exception_handling;
		}
	}
	arg_ptrs [2] = mobj2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_161 (id self, SEL _cmd, MonoMethod **managed_method_ptr, WKWebView * p0, NSString * p1, WKFrameInfo * p2, id p3, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj2 = NULL;
	MonoObject *mobj2 = NULL;
	int32_t created2 = false;
	MonoType *paramtype2 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [4];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = xamarin_nsstring_to_string (NULL, p1);
	nsobj2 = (NSObject *) p2;
	if (nsobj2) {
		paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype2, 2, true);
			goto exception_handling;
		}
	}
	arg_ptrs [2] = mobj2;
	if (p3) {
		arg_ptrs [3] = (void *) xamarin_get_delegate_for_block_parameter (managed_method, 0x32C16 /* System.Action ObjCRuntime.Trampolines/NIDAction::Create(System.IntPtr) */ , 3, p3, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	} else {
		arg_ptrs [3] = NULL;
	}

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_162 (id self, SEL _cmd, MonoMethod **managed_method_ptr, WKWebView * p0, NSString * p1, WKFrameInfo * p2, id p3, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj2 = NULL;
	MonoObject *mobj2 = NULL;
	int32_t created2 = false;
	MonoType *paramtype2 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [4];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = xamarin_nsstring_to_string (NULL, p1);
	nsobj2 = (NSObject *) p2;
	if (nsobj2) {
		paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype2, 2, true);
			goto exception_handling;
		}
	}
	arg_ptrs [2] = mobj2;
	if (p3) {
		arg_ptrs [3] = (void *) xamarin_get_delegate_for_block_parameter (managed_method, 0x35E16 /* System.Action`1<System.Boolean> ObjCRuntime.Trampolines/NIDActionArity1V2::Create(System.IntPtr) */ , 3, p3, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	} else {
		arg_ptrs [3] = NULL;
	}

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_163 (id self, SEL _cmd, MonoMethod **managed_method_ptr, WKWebView * p0, NSString * p1, NSString * p2, WKFrameInfo * p3, id p4, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj3 = NULL;
	MonoObject *mobj3 = NULL;
	int32_t created3 = false;
	MonoType *paramtype3 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [5];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = xamarin_nsstring_to_string (NULL, p1);
	arg_ptrs [2] = xamarin_nsstring_to_string (NULL, p2);
	nsobj3 = (NSObject *) p3;
	if (nsobj3) {
		paramtype3 = xamarin_get_parameter_type (managed_method, 3);
		mobj3 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj3, false, paramtype3, &created3, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype3, 3, true);
			goto exception_handling;
		}
	}
	arg_ptrs [3] = mobj3;
	if (p4) {
		arg_ptrs [4] = (void *) xamarin_get_delegate_for_block_parameter (managed_method, 0x36816 /* System.Action`1<System.String> ObjCRuntime.Trampolines/NIDActionArity1V49::Create(System.IntPtr) */ , 4, p4, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	} else {
		arg_ptrs [4] = NULL;
	}

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static double native_to_managed_trampoline_164 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	double res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = xamarin_get_inative_object_static (p0, false, 0x22716 /* UIKit.IUIViewControllerContextTransitioning */, 0x22816 /* UIKit.UIViewControllerContextTransitioningWrapper */, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(double *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_165 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, uint32_t token_ref)
{
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = xamarin_get_inative_object_static (p0, false, 0x22716 /* UIKit.IUIViewControllerContextTransitioning */, 0x22816 /* UIKit.UIViewControllerContextTransitioningWrapper */, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static id native_to_managed_trampoline_166 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIViewController * p0, UIViewController * p1, UIViewController * p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	NSObject *nsobj2 = NULL;
	MonoObject *mobj2 = NULL;
	int32_t created2 = false;
	MonoType *paramtype2 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	id res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;
	nsobj2 = (NSObject *) p2;
	if (nsobj2) {
		paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype2, 2, true);
			goto exception_handling;
		}
	}
	arg_ptrs [2] = mobj2;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_handle_for_inativeobject ((MonoObject *) retval, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static id native_to_managed_trampoline_167 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIViewController * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	id res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_handle_for_inativeobject ((MonoObject *) retval, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_168 (id self, SEL _cmd, MonoMethod **managed_method_ptr, CLLocationManager * p0, NSArray * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoArray *marr1 = NULL;
	NSArray *arr1 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	arr1 = p1;
	marr1 = xamarin_nsarray_to_managed_nsobject_array (arr1, xamarin_get_parameter_type (managed_method, 1), NULL, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [1] = marr1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static BOOL native_to_managed_trampoline_169 (id self, SEL _cmd, MonoMethod **managed_method_ptr, CLLocationManager * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static NSObject * native_to_managed_trampoline_170 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIActivityViewController * p0, NSString * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSObject * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static NSObject * native_to_managed_trampoline_171 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIActivityViewController * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSObject * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static NSString * native_to_managed_trampoline_172 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIActivityViewController * p0, NSString * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSString * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype1, 1, true);
			goto exception_handling;
		}
	}
	arg_ptrs [1] = mobj1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		res = xamarin_string_to_nsstring ((MonoString *) retval, false);
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static Class native_to_managed_trampoline_173 (id self, SEL _cmd, MonoMethod **managed_method_ptr, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	Class res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	retval = mono_runtime_invoke (managed_method, NULL, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		res = (Class) xamarin_get_handle_for_inativeobject (retval, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static id native_to_managed_trampoline_174 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSCoder * p0, bool* call_super, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	uint8_t flags = NSObjectFlagsNativeRef;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	bool has_nsobject = xamarin_has_nsobject (self, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	if (has_nsobject) {
		*call_super = true;
		goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (managed_method));
	xamarin_set_nsobject_handle (mthis, self);
	xamarin_set_nsobject_flags (mthis, flags);
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);
	xamarin_create_managed_ref (self, mthis, true);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return self;
}


static void native_to_managed_trampoline_175 (id self, SEL _cmd, MonoMethod **managed_method_ptr, AVCaptureMetadataOutput * p0, NSArray * p1, AVCaptureConnection * p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoArray *marr1 = NULL;
	NSArray *arr1 = NULL;
	NSObject *nsobj2 = NULL;
	MonoObject *mobj2 = NULL;
	int32_t created2 = false;
	MonoType *paramtype2 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	arr1 = p1;
	marr1 = xamarin_nsarray_to_managed_nsobject_array (arr1, xamarin_get_parameter_type (managed_method, 1), NULL, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [1] = marr1;
	nsobj2 = (NSObject *) p2;
	if (nsobj2) {
		paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype2, 2, true);
			goto exception_handling;
		}
	}
	arg_ptrs [2] = mobj2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_176 (id self, SEL _cmd, MonoMethod **managed_method_ptr, AVCaptureOutput * p0, id p1, AVCaptureConnection * p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoType *type1;
	NSObject *nsobj2 = NULL;
	MonoObject *mobj2 = NULL;
	int32_t created2 = false;
	MonoType *paramtype2 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;
	type1 = xamarin_get_parameter_type (managed_method, 1);
	arg_ptrs [1] = xamarin_get_inative_object_dynamic (p1, false, mono_type_get_object (mono_domain_get (), type1), &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj2 = (NSObject *) p2;
	if (nsobj2) {
		paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype2, 2, true);
			goto exception_handling;
		}
	}
	arg_ptrs [2] = mobj2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}




#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation UIApplicationDelegate {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0xADA16);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

@implementation Xamarin_Forms_Platform_iOS_FormsApplicationDelegate {
	XamarinObject __monoObjectGCHandle;
}
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


	-(UIWindow *) window
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, 0xC026);
	}

	-(void) setWindow:(UIWindow *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, 0xC126);
	}

	-(BOOL) application:(UIApplication *)p0 continueUserActivity:(NSUserActivity *)p1 restorationHandler:(id)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, p1, p2, 0xC326);
	}

	-(void) applicationDidEnterBackground:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, p0, 0xC426);
	}

	-(BOOL) application:(UIApplication *)p0 didFinishLaunchingWithOptions:(NSDictionary *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, p1, 0xC526);
	}

	-(void) applicationDidBecomeActive:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, p0, 0xC626);
	}

	-(void) applicationWillResignActive:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, p0, 0xC726);
	}

	-(void) application:(UIApplication *)p0 didUpdateUserActivity:(NSUserActivity *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_7 (self, _cmd, &managed_method, p0, p1, 0xC826);
	}

	-(void) applicationWillEnterForeground:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, p0, 0xC926);
	}

	-(BOOL) application:(UIApplication *)p0 willFinishLaunchingWithOptions:(NSDictionary *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, p1, 0xCA26);
	}

	-(void) applicationWillTerminate:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, p0, 0xCB26);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0xC226);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation AppDelegate {
}

	-(BOOL) application:(UIApplication *)p0 didFinishLaunchingWithOptions:(NSDictionary *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, p1, 0x300);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x400);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_FormsApplicationDelegate class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_VisualElementRenderer_1 {
	XamarinObject __monoObjectGCHandle;
}
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


	-(UIColor *) backgroundColor
	{
		MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_9 (self, _cmd, &managed_method, 0x17826);
	}

	-(void) setBackgroundColor:(UIColor *)p0
	{
		MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_10 (self, _cmd, &managed_method, p0, 0x17926);
	}

	-(NSArray *) keyCommands
	{
		MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_11 (self, _cmd, &managed_method, 0x19426);
	}

	-(void) tabForward:(UIKeyCommand *)p0
	{
		MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_12 (self, _cmd, &managed_method, p0, 0x19526);
	}

	-(void) tabBackward:(UIKeyCommand *)p0
	{
		MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_12 (self, _cmd, &managed_method, p0, 0x19626);
	}

	-(CGSize) sizeThatFits:(CGSize)p0
	{
		MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, 0x19826);
	}

	-(void) layoutSubviews
	{
		MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_14 (self, _cmd, &managed_method, 0x19926);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_15 (self, _cmd, &managed_method, p0, 0x101D16);
	}
	-(id) init
	{
		xamarin_throw_product_exception (4126, "Cannot construct an instance of the type 'Xamarin.Forms.Platform.iOS.VisualElementRenderer`1' from Objective-C because the type is generic.");

		return self;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_ViewRenderer_2 {
}

	-(void) layoutSubviews
	{
		MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_14 (self, _cmd, &managed_method, 0x15426);
	}

	-(CGSize) sizeThatFits:(CGSize)p0
	{
		MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, 0x15526);
	}
	-(id) init
	{
		xamarin_throw_product_exception (4126, "Cannot construct an instance of the type 'Xamarin.Forms.Platform.iOS.ViewRenderer`2' from Objective-C because the type is generic.");

		return self;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_PickerRendererBase_1 {
}
	-(id) init
	{
		xamarin_throw_product_exception (4126, "Cannot construct an instance of the type 'Xamarin.Forms.Platform.iOS.PickerRendererBase`1' from Objective-C because the type is generic.");

		return self;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_PickerRenderer {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x4E326);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_PickerRendererBase_1 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation FaultCodes_iOS_CenterPickeriOS {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x600);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_PickerRenderer class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation GLKViewDelegate {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x3FE16);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation CLLocationManagerDelegate {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x42716);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation WKNavigationDelegate {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x58216);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation WKUIDelegate {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x58C16);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

@interface UIKit_UIControlEventProxy : NSObject {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) BridgeSelector;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation UIKit_UIControlEventProxy {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) BridgeSelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x6A916);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end


#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation UIActionSheetDelegate {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0xAAC16);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation UIActivityItemSource {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0xAC216);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation UICollectionViewDelegateFlowLayout {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0xB1A16);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation UIGestureRecognizerDelegate {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0xB7616);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation UINavigationControllerDelegate {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0xB9D16);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation UIPickerViewModel {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0xBB616);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation UIScrollViewDelegate {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0xC2416);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation UISearchResultsUpdating {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0xC3416);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation UISplitViewControllerDelegate {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0xC6F16);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation UITableViewSource {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0xCEA16);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation UIWebViewDelegate {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0xDCD16);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

@interface Foundation_InternalNSNotificationHandler : NSObject {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) post:(NSNotification *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Foundation_InternalNSNotificationHandler {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) post:(NSNotification *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_17 (self, _cmd, &managed_method, p0, 0xF1916);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@interface Foundation_NSDispatcher : NSObject {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) xamarinApplySelector;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Foundation_NSDispatcher {
	XamarinObject __monoObjectGCHandle;
}
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
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0xFCC16);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0xFCB16);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface __MonoMac_NSActionDispatcher : Foundation_NSDispatcher {
}
	-(void) xamarinApplySelector;
@end

@implementation __MonoMac_NSActionDispatcher {
}

	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0xFCF16);
	}
@end

@interface __MonoMac_NSSynchronizationContextDispatcher : Foundation_NSDispatcher {
}
	-(void) xamarinApplySelector;
@end

@implementation __MonoMac_NSSynchronizationContextDispatcher {
}

	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0xFD116);
	}
@end

@interface __Xamarin_NSTimerActionDispatcher : NSObject {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) xamarinFireSelector:(NSTimer *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation __Xamarin_NSTimerActionDispatcher {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) xamarinFireSelector:(NSTimer *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_18 (self, _cmd, &managed_method, p0, 0xFD316);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@interface Foundation_NSAsyncDispatcher : Foundation_NSDispatcher {
}
	-(void) xamarinApplySelector;
	-(id) init;
@end

@implementation Foundation_NSAsyncDispatcher {
}

	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0xFD616);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0xFD516);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Foundation_NSDispatcher class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface __MonoMac_NSAsyncActionDispatcher : Foundation_NSAsyncDispatcher {
}
	-(void) xamarinApplySelector;
@end

@implementation __MonoMac_NSAsyncActionDispatcher {
}

	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0xFD816);
	}
@end

@interface __MonoMac_NSAsyncSynchronizationContextDispatcher : Foundation_NSAsyncDispatcher {
}
	-(void) xamarinApplySelector;
@end

@implementation __MonoMac_NSAsyncSynchronizationContextDispatcher {
}

	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0xFDA16);
	}
@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation NSURLSessionDataDelegate {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x10FA16);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation AVCaptureMetadataOutputObjectsDelegate {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x122F16);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation AVCaptureVideoDataOutputSampleBufferDelegate {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x125016);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

@interface System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream : NSInputStream {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(NSUInteger) streamStatus;
	-(void) open;
	-(void) close;
	-(NSInteger) read:(void *)p0 maxLength:(NSUInteger)p1;
	-(BOOL) hasBytesAvailable;
	-(BOOL) getBuffer:(void **)p0 length:(NSUInteger*)p1;
	-(NSObject *) propertyForKey:(NSString *)p0;
	-(BOOL) setProperty:(NSObject *)p0 forKey:(NSString *)p1;
	-(BOOL) _setCFClientFlags:(NSUInteger)p0 callback:(void *)p1 context:(void *)p2;
	-(void) scheduleInRunLoop:(NSRunLoop *)p0 forMode:(NSString *)p1;
	-(void) removeFromRunLoop:(NSRunLoop *)p0 forMode:(NSString *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream {
	XamarinObject __monoObjectGCHandle;
}
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


	-(NSUInteger) streamStatus
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_19 (self, _cmd, &managed_method, 0xDD16);
	}

	-(void) open
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0xDE16);
	}

	-(void) close
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0xDF16);
	}

	-(NSInteger) read:(void *)p0 maxLength:(NSUInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_20 (self, _cmd, &managed_method, p0, p1, 0xE016);
	}

	-(BOOL) hasBytesAvailable
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_21 (self, _cmd, &managed_method, 0xE116);
	}

	-(BOOL) getBuffer:(void **)p0 length:(NSUInteger*)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_22 (self, _cmd, &managed_method, p0, p1, 0xE216);
	}

	-(NSObject *) propertyForKey:(NSString *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_23 (self, _cmd, &managed_method, p0, 0xE316);
	}

	-(BOOL) setProperty:(NSObject *)p0 forKey:(NSString *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_24 (self, _cmd, &managed_method, p0, p1, 0xE416);
	}

	-(BOOL) _setCFClientFlags:(NSUInteger)p0 callback:(void *)p1 context:(void *)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_25 (self, _cmd, &managed_method, p0, p1, p2, 0xE516);
	}

	-(void) scheduleInRunLoop:(NSRunLoop *)p0 forMode:(NSString *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_26 (self, _cmd, &managed_method, p0, p1, 0xE616);
	}

	-(void) removeFromRunLoop:(NSRunLoop *)p0 forMode:(NSString *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_26 (self, _cmd, &managed_method, p0, p1, 0xE716);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@interface GLKit_GLKView__GLKViewDelegate : NSObject<GLKViewDelegate> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) glkView:(GLKView *)p0 drawInRect:(CGRect)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation GLKit_GLKView__GLKViewDelegate {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) glkView:(GLKView *)p0 drawInRect:(CGRect)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_27 (self, _cmd, &managed_method, p0, p1, 0x3F816);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@interface UIKit_UIBarButtonItem_Callback : NSObject {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) InvokeAction:(NSObject *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation UIKit_UIBarButtonItem_Callback {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) InvokeAction:(NSObject *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_28 (self, _cmd, &managed_method, p0, 0x60416);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x60316);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation UIKit_UIView_UIViewAppearance {
	XamarinObject __monoObjectGCHandle;
}
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


	-(UIColor *) backgroundColor
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_29 (self, _cmd, &managed_method, 0x99716);
	}

	-(UIColor *) tintColor
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_29 (self, _cmd, &managed_method, 0x99816);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation UIKit_UIControl_UIControlAppearance {
}
@end

@implementation UIKit_UIButton_UIButtonAppearance {
}

	-(UIImage *) backgroundImageForState:(NSUInteger)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_30 (self, _cmd, &managed_method, p0, 0x64316);
	}

	-(UIColor *) titleColorForState:(NSUInteger)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_31 (self, _cmd, &managed_method, p0, 0x64416);
	}

	-(UIColor *) titleShadowColorForState:(NSUInteger)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_31 (self, _cmd, &managed_method, p0, 0x64516);
	}
@end

@implementation __UIGestureRecognizerToken {
	XamarinObject __monoObjectGCHandle;
}
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


	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x71C16);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation __UIGestureRecognizerParameterlessToken {
}

	-(void) target
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x71E16);
	}
@end

@interface UIKit_UIGestureRecognizer__UIGestureRecognizerDelegate : NSObject<UIGestureRecognizerDelegate> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(BOOL) gestureRecognizer:(UIGestureRecognizer *)p0 shouldBeRequiredToFailByGestureRecognizer:(UIGestureRecognizer *)p1;
	-(BOOL) gestureRecognizerShouldBegin:(UIGestureRecognizer *)p0;
	-(BOOL) gestureRecognizer:(UIGestureRecognizer *)p0 shouldReceivePress:(UIPress *)p1;
	-(BOOL) gestureRecognizer:(UIGestureRecognizer *)p0 shouldReceiveTouch:(UITouch *)p1;
	-(BOOL) gestureRecognizer:(UIGestureRecognizer *)p0 shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)p1;
	-(BOOL) gestureRecognizer:(UIGestureRecognizer *)p0 shouldRequireFailureOfGestureRecognizer:(UIGestureRecognizer *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation UIKit_UIGestureRecognizer__UIGestureRecognizerDelegate {
	XamarinObject __monoObjectGCHandle;
}
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


	-(BOOL) gestureRecognizer:(UIGestureRecognizer *)p0 shouldBeRequiredToFailByGestureRecognizer:(UIGestureRecognizer *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_32 (self, _cmd, &managed_method, p0, p1, 0x72016);
	}

	-(BOOL) gestureRecognizerShouldBegin:(UIGestureRecognizer *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_33 (self, _cmd, &managed_method, p0, 0x72116);
	}

	-(BOOL) gestureRecognizer:(UIGestureRecognizer *)p0 shouldReceivePress:(UIPress *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_34 (self, _cmd, &managed_method, p0, p1, 0x72216);
	}

	-(BOOL) gestureRecognizer:(UIGestureRecognizer *)p0 shouldReceiveTouch:(UITouch *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_35 (self, _cmd, &managed_method, p0, p1, 0x72316);
	}

	-(BOOL) gestureRecognizer:(UIGestureRecognizer *)p0 shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_32 (self, _cmd, &managed_method, p0, p1, 0x72416);
	}

	-(BOOL) gestureRecognizer:(UIGestureRecognizer *)p0 shouldRequireFailureOfGestureRecognizer:(UIGestureRecognizer *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_32 (self, _cmd, &managed_method, p0, p1, 0x72516);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x71F16);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface __UILongPressGestureRecognizer : __UIGestureRecognizerToken {
}
	-(void) target:(UILongPressGestureRecognizer *)p0;
@end

@implementation __UILongPressGestureRecognizer {
}

	-(void) target:(UILongPressGestureRecognizer *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_36 (self, _cmd, &managed_method, p0, 0x72E16);
	}
@end

@interface __UITapGestureRecognizer : __UIGestureRecognizerToken {
}
	-(void) target:(UITapGestureRecognizer *)p0;
@end

@implementation __UITapGestureRecognizer {
}

	-(void) target:(UITapGestureRecognizer *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_37 (self, _cmd, &managed_method, p0, 0x73916);
	}
@end

@interface __UIPanGestureRecognizer : __UIGestureRecognizerToken {
}
	-(void) target:(UIPanGestureRecognizer *)p0;
@end

@implementation __UIPanGestureRecognizer {
}

	-(void) target:(UIPanGestureRecognizer *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_38 (self, _cmd, &managed_method, p0, 0x74216);
	}
@end

@interface __UIPinchGestureRecognizer : __UIGestureRecognizerToken {
}
	-(void) target:(UIPinchGestureRecognizer *)p0;
@end

@implementation __UIPinchGestureRecognizer {
}

	-(void) target:(UIPinchGestureRecognizer *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_39 (self, _cmd, &managed_method, p0, 0x74916);
	}
@end

@implementation UIKit_UINavigationBar_UINavigationBarAppearance {
}

	-(UIColor *) barTintColor
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_29 (self, _cmd, &managed_method, 0x79516);
	}

	-(NSDictionary *) largeTitleTextAttributes
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_40 (self, _cmd, &managed_method, 0x79716);
	}

	-(NSDictionary *) titleTextAttributes
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_40 (self, _cmd, &managed_method, 0x79816);
	}
@end

@interface UIKit_UISearchBar__UISearchBarDelegate : NSObject<UISearchBarDelegate, UIBarPositioningDelegate> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) searchBarBookmarkButtonClicked:(UISearchBar *)p0;
	-(void) searchBarCancelButtonClicked:(UISearchBar *)p0;
	-(void) searchBarResultsListButtonClicked:(UISearchBar *)p0;
	-(void) searchBarTextDidBeginEditing:(UISearchBar *)p0;
	-(void) searchBarTextDidEndEditing:(UISearchBar *)p0;
	-(void) searchBarSearchButtonClicked:(UISearchBar *)p0;
	-(void) searchBar:(UISearchBar *)p0 selectedScopeButtonIndexDidChange:(NSInteger)p1;
	-(BOOL) searchBarShouldBeginEditing:(UISearchBar *)p0;
	-(BOOL) searchBar:(UISearchBar *)p0 shouldChangeTextInRange:(NSRange)p1 replacementText:(NSString *)p2;
	-(BOOL) searchBarShouldEndEditing:(UISearchBar *)p0;
	-(void) searchBar:(UISearchBar *)p0 textDidChange:(NSString *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation UIKit_UISearchBar__UISearchBarDelegate {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) searchBarBookmarkButtonClicked:(UISearchBar *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_41 (self, _cmd, &managed_method, p0, 0x80A16);
	}

	-(void) searchBarCancelButtonClicked:(UISearchBar *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_41 (self, _cmd, &managed_method, p0, 0x80B16);
	}

	-(void) searchBarResultsListButtonClicked:(UISearchBar *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_41 (self, _cmd, &managed_method, p0, 0x80C16);
	}

	-(void) searchBarTextDidBeginEditing:(UISearchBar *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_41 (self, _cmd, &managed_method, p0, 0x80D16);
	}

	-(void) searchBarTextDidEndEditing:(UISearchBar *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_41 (self, _cmd, &managed_method, p0, 0x80E16);
	}

	-(void) searchBarSearchButtonClicked:(UISearchBar *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_41 (self, _cmd, &managed_method, p0, 0x80F16);
	}

	-(void) searchBar:(UISearchBar *)p0 selectedScopeButtonIndexDidChange:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_42 (self, _cmd, &managed_method, p0, p1, 0x81016);
	}

	-(BOOL) searchBarShouldBeginEditing:(UISearchBar *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_43 (self, _cmd, &managed_method, p0, 0x81116);
	}

	-(BOOL) searchBar:(UISearchBar *)p0 shouldChangeTextInRange:(NSRange)p1 replacementText:(NSString *)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_44 (self, _cmd, &managed_method, p0, p1, p2, 0x81216);
	}

	-(BOOL) searchBarShouldEndEditing:(UISearchBar *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_43 (self, _cmd, &managed_method, p0, 0x81316);
	}

	-(void) searchBar:(UISearchBar *)p0 textDidChange:(NSString *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_45 (self, _cmd, &managed_method, p0, p1, 0x81416);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x80916);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface UIKit_UISearchController___Xamarin_UISearchResultsUpdating : NSObject<UISearchResultsUpdating> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) updateSearchResultsForSearchController:(UISearchController *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation UIKit_UISearchController___Xamarin_UISearchResultsUpdating {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) updateSearchResultsForSearchController:(UISearchController *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_46 (self, _cmd, &managed_method, p0, 0x82116);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation UIKit_UIScrollView_UIScrollViewAppearance {
}
@end

@implementation UIKit_UITableView_UITableViewAppearance {
}
@end

@interface UIKit_UITextField__UITextFieldDelegate : NSObject<UITextFieldDelegate> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) textFieldDidEndEditing:(UITextField *)p0;
	-(void) textFieldDidEndEditing:(UITextField *)p0 reason:(NSInteger)p1;
	-(void) textFieldDidBeginEditing:(UITextField *)p0;
	-(BOOL) textFieldShouldBeginEditing:(UITextField *)p0;
	-(BOOL) textField:(UITextField *)p0 shouldChangeCharactersInRange:(NSRange)p1 replacementString:(NSString *)p2;
	-(BOOL) textFieldShouldClear:(UITextField *)p0;
	-(BOOL) textFieldShouldEndEditing:(UITextField *)p0;
	-(BOOL) textFieldShouldReturn:(UITextField *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation UIKit_UITextField__UITextFieldDelegate {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) textFieldDidEndEditing:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_47 (self, _cmd, &managed_method, p0, 0x8C016);
	}

	-(void) textFieldDidEndEditing:(UITextField *)p0 reason:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_48 (self, _cmd, &managed_method, p0, p1, 0x8C116);
	}

	-(void) textFieldDidBeginEditing:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_47 (self, _cmd, &managed_method, p0, 0x8C216);
	}

	-(BOOL) textFieldShouldBeginEditing:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_49 (self, _cmd, &managed_method, p0, 0x8C316);
	}

	-(BOOL) textField:(UITextField *)p0 shouldChangeCharactersInRange:(NSRange)p1 replacementString:(NSString *)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_50 (self, _cmd, &managed_method, p0, p1, p2, 0x8C416);
	}

	-(BOOL) textFieldShouldClear:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_49 (self, _cmd, &managed_method, p0, 0x8C516);
	}

	-(BOOL) textFieldShouldEndEditing:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_49 (self, _cmd, &managed_method, p0, 0x8C616);
	}

	-(BOOL) textFieldShouldReturn:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_49 (self, _cmd, &managed_method, p0, 0x8C716);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x8BF16);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface UIKit_UIScrollView__UIScrollViewDelegate : NSObject<UIScrollViewDelegate> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) scrollViewDidEndDecelerating:(UIScrollView *)p0;
	-(void) scrollViewWillBeginDecelerating:(UIScrollView *)p0;
	-(void) scrollViewDidChangeAdjustedContentInset:(UIScrollView *)p0;
	-(void) scrollViewDidZoom:(UIScrollView *)p0;
	-(void) scrollViewDidEndDragging:(UIScrollView *)p0 willDecelerate:(BOOL)p1;
	-(void) scrollViewWillBeginDragging:(UIScrollView *)p0;
	-(void) scrollViewDidEndScrollingAnimation:(UIScrollView *)p0;
	-(void) scrollViewDidScroll:(UIScrollView *)p0;
	-(void) scrollViewDidScrollToTop:(UIScrollView *)p0;
	-(BOOL) scrollViewShouldScrollToTop:(UIScrollView *)p0;
	-(UIView *) viewForZoomingInScrollView:(UIScrollView *)p0;
	-(void) scrollViewWillEndDragging:(UIScrollView *)p0 withVelocity:(CGPoint)p1 targetContentOffset:(CGPoint*)p2;
	-(void) scrollViewDidEndZooming:(UIScrollView *)p0 withView:(UIView *)p1 atScale:(CGFloat)p2;
	-(void) scrollViewWillBeginZooming:(UIScrollView *)p0 withView:(UIView *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation UIKit_UIScrollView__UIScrollViewDelegate {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) scrollViewDidEndDecelerating:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_51 (self, _cmd, &managed_method, p0, 0xC0B16);
	}

	-(void) scrollViewWillBeginDecelerating:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_51 (self, _cmd, &managed_method, p0, 0xC0C16);
	}

	-(void) scrollViewDidChangeAdjustedContentInset:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_51 (self, _cmd, &managed_method, p0, 0xC0D16);
	}

	-(void) scrollViewDidZoom:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_51 (self, _cmd, &managed_method, p0, 0xC0E16);
	}

	-(void) scrollViewDidEndDragging:(UIScrollView *)p0 willDecelerate:(BOOL)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_52 (self, _cmd, &managed_method, p0, p1, 0xC0F16);
	}

	-(void) scrollViewWillBeginDragging:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_51 (self, _cmd, &managed_method, p0, 0xC1016);
	}

	-(void) scrollViewDidEndScrollingAnimation:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_51 (self, _cmd, &managed_method, p0, 0xC1116);
	}

	-(void) scrollViewDidScroll:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_51 (self, _cmd, &managed_method, p0, 0xC1216);
	}

	-(void) scrollViewDidScrollToTop:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_51 (self, _cmd, &managed_method, p0, 0xC1316);
	}

	-(BOOL) scrollViewShouldScrollToTop:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_53 (self, _cmd, &managed_method, p0, 0xC1416);
	}

	-(UIView *) viewForZoomingInScrollView:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_54 (self, _cmd, &managed_method, p0, 0xC1516);
	}

	-(void) scrollViewWillEndDragging:(UIScrollView *)p0 withVelocity:(CGPoint)p1 targetContentOffset:(CGPoint*)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_55 (self, _cmd, &managed_method, p0, p1, p2, 0xC1616);
	}

	-(void) scrollViewDidEndZooming:(UIScrollView *)p0 withView:(UIView *)p1 atScale:(CGFloat)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_56 (self, _cmd, &managed_method, p0, p1, p2, 0xC1716);
	}

	-(void) scrollViewWillBeginZooming:(UIScrollView *)p0 withView:(UIView *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_57 (self, _cmd, &managed_method, p0, p1, 0xC1816);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0xC0A16);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface UIKit_UITextView__UITextViewDelegate : UIKit_UIScrollView__UIScrollViewDelegate<UITextViewDelegate, UIScrollViewDelegate> {
}
	-(void) textViewDidChange:(UITextView *)p0;
	-(void) textViewDidEndEditing:(UITextView *)p0;
	-(void) textViewDidBeginEditing:(UITextView *)p0;
	-(void) textViewDidChangeSelection:(UITextView *)p0;
	-(BOOL) textViewShouldBeginEditing:(UITextView *)p0;
	-(BOOL) textView:(UITextView *)p0 shouldChangeTextInRange:(NSRange)p1 replacementText:(NSString *)p2;
	-(BOOL) textViewShouldEndEditing:(UITextView *)p0;
	-(BOOL) textView:(UITextView *)p0 shouldInteractWithTextAttachment:(NSTextAttachment *)p1 inRange:(NSRange)p2;
	-(BOOL) textView:(UITextView *)p0 shouldInteractWithTextAttachment:(NSTextAttachment *)p1 inRange:(NSRange)p2 interaction:(NSInteger)p3;
	-(BOOL) textView:(UITextView *)p0 shouldInteractWithURL:(NSURL *)p1 inRange:(NSRange)p2;
	-(BOOL) textView:(UITextView *)p0 shouldInteractWithURL:(NSURL *)p1 inRange:(NSRange)p2 interaction:(NSInteger)p3;
	-(id) init;
@end

@implementation UIKit_UITextView__UITextViewDelegate {
}

	-(void) textViewDidChange:(UITextView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_58 (self, _cmd, &managed_method, p0, 0x91616);
	}

	-(void) textViewDidEndEditing:(UITextView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_58 (self, _cmd, &managed_method, p0, 0x91716);
	}

	-(void) textViewDidBeginEditing:(UITextView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_58 (self, _cmd, &managed_method, p0, 0x91816);
	}

	-(void) textViewDidChangeSelection:(UITextView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_58 (self, _cmd, &managed_method, p0, 0x91916);
	}

	-(BOOL) textViewShouldBeginEditing:(UITextView *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_59 (self, _cmd, &managed_method, p0, 0x91A16);
	}

	-(BOOL) textView:(UITextView *)p0 shouldChangeTextInRange:(NSRange)p1 replacementText:(NSString *)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_60 (self, _cmd, &managed_method, p0, p1, p2, 0x91B16);
	}

	-(BOOL) textViewShouldEndEditing:(UITextView *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_59 (self, _cmd, &managed_method, p0, 0x91C16);
	}

	-(BOOL) textView:(UITextView *)p0 shouldInteractWithTextAttachment:(NSTextAttachment *)p1 inRange:(NSRange)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_61 (self, _cmd, &managed_method, p0, p1, p2, 0x91D16);
	}

	-(BOOL) textView:(UITextView *)p0 shouldInteractWithTextAttachment:(NSTextAttachment *)p1 inRange:(NSRange)p2 interaction:(NSInteger)p3
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_62 (self, _cmd, &managed_method, p0, p1, p2, p3, 0x91E16);
	}

	-(BOOL) textView:(UITextView *)p0 shouldInteractWithURL:(NSURL *)p1 inRange:(NSRange)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_63 (self, _cmd, &managed_method, p0, p1, p2, 0x91F16);
	}

	-(BOOL) textView:(UITextView *)p0 shouldInteractWithURL:(NSURL *)p1 inRange:(NSRange)p2 interaction:(NSInteger)p3
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_64 (self, _cmd, &managed_method, p0, p1, p2, p3, 0x92016);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x91516);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIKit_UIScrollView__UIScrollViewDelegate class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface UIKit_UISplitViewController__UISplitViewControllerDelegate : NSObject<UISplitViewControllerDelegate> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(BOOL) splitViewController:(UISplitViewController *)p0 collapseSecondaryViewController:(UIViewController *)p1 ontoPrimaryViewController:(UIViewController *)p2;
	-(BOOL) splitViewController:(UISplitViewController *)p0 showDetailViewController:(UIViewController *)p1 sender:(NSObject *)p2;
	-(BOOL) splitViewController:(UISplitViewController *)p0 showViewController:(UIViewController *)p1 sender:(NSObject *)p2;
	-(NSInteger) splitViewControllerPreferredInterfaceOrientationForPresentation:(UISplitViewController *)p0;
	-(UIViewController *) primaryViewControllerForCollapsingSplitViewController:(UISplitViewController *)p0;
	-(UIViewController *) primaryViewControllerForExpandingSplitViewController:(UISplitViewController *)p0;
	-(NSInteger) targetDisplayModeForActionInSplitViewController:(UISplitViewController *)p0;
	-(UIViewController *) splitViewController:(UISplitViewController *)p0 separateSecondaryViewControllerFromPrimaryViewController:(UIViewController *)p1;
	-(BOOL) splitViewController:(UISplitViewController *)p0 shouldHideViewController:(UIViewController *)p1 inOrientation:(NSInteger)p2;
	-(NSUInteger) splitViewControllerSupportedInterfaceOrientations:(UISplitViewController *)p0;
	-(void) splitViewController:(UISplitViewController *)p0 willChangeToDisplayMode:(NSInteger)p1;
	-(void) splitViewController:(UISplitViewController *)p0 willHideViewController:(UIViewController *)p1 withBarButtonItem:(UIBarButtonItem *)p2 forPopoverController:(UIPopoverController *)p3;
	-(void) splitViewController:(UISplitViewController *)p0 popoverController:(UIPopoverController *)p1 willPresentViewController:(UIViewController *)p2;
	-(void) splitViewController:(UISplitViewController *)p0 willShowViewController:(UIViewController *)p1 invalidatingBarButtonItem:(UIBarButtonItem *)p2;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation UIKit_UISplitViewController__UISplitViewControllerDelegate {
	XamarinObject __monoObjectGCHandle;
}
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


	-(BOOL) splitViewController:(UISplitViewController *)p0 collapseSecondaryViewController:(UIViewController *)p1 ontoPrimaryViewController:(UIViewController *)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_65 (self, _cmd, &managed_method, p0, p1, p2, 0xC5416);
	}

	-(BOOL) splitViewController:(UISplitViewController *)p0 showDetailViewController:(UIViewController *)p1 sender:(NSObject *)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_66 (self, _cmd, &managed_method, p0, p1, p2, 0xC5516);
	}

	-(BOOL) splitViewController:(UISplitViewController *)p0 showViewController:(UIViewController *)p1 sender:(NSObject *)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_66 (self, _cmd, &managed_method, p0, p1, p2, 0xC5616);
	}

	-(NSInteger) splitViewControllerPreferredInterfaceOrientationForPresentation:(UISplitViewController *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_67 (self, _cmd, &managed_method, p0, 0xC5716);
	}

	-(UIViewController *) primaryViewControllerForCollapsingSplitViewController:(UISplitViewController *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_68 (self, _cmd, &managed_method, p0, 0xC5816);
	}

	-(UIViewController *) primaryViewControllerForExpandingSplitViewController:(UISplitViewController *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_68 (self, _cmd, &managed_method, p0, 0xC5916);
	}

	-(NSInteger) targetDisplayModeForActionInSplitViewController:(UISplitViewController *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_67 (self, _cmd, &managed_method, p0, 0xC5A16);
	}

	-(UIViewController *) splitViewController:(UISplitViewController *)p0 separateSecondaryViewControllerFromPrimaryViewController:(UIViewController *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_69 (self, _cmd, &managed_method, p0, p1, 0xC5B16);
	}

	-(BOOL) splitViewController:(UISplitViewController *)p0 shouldHideViewController:(UIViewController *)p1 inOrientation:(NSInteger)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_70 (self, _cmd, &managed_method, p0, p1, p2, 0xC5C16);
	}

	-(NSUInteger) splitViewControllerSupportedInterfaceOrientations:(UISplitViewController *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_71 (self, _cmd, &managed_method, p0, 0xC5D16);
	}

	-(void) splitViewController:(UISplitViewController *)p0 willChangeToDisplayMode:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_72 (self, _cmd, &managed_method, p0, p1, 0xC5E16);
	}

	-(void) splitViewController:(UISplitViewController *)p0 willHideViewController:(UIViewController *)p1 withBarButtonItem:(UIBarButtonItem *)p2 forPopoverController:(UIPopoverController *)p3
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_73 (self, _cmd, &managed_method, p0, p1, p2, p3, 0xC5F16);
	}

	-(void) splitViewController:(UISplitViewController *)p0 popoverController:(UIPopoverController *)p1 willPresentViewController:(UIViewController *)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_74 (self, _cmd, &managed_method, p0, p1, p2, 0xC6016);
	}

	-(void) splitViewController:(UISplitViewController *)p0 willShowViewController:(UIViewController *)p1 invalidatingBarButtonItem:(UIBarButtonItem *)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_75 (self, _cmd, &managed_method, p0, p1, p2, 0xC6116);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation UIKit_UISwitch_UISwitchAppearance {
}

	-(UIColor *) onTintColor
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_29 (self, _cmd, &managed_method, 0xC9216);
	}

	-(UIColor *) thumbTintColor
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_29 (self, _cmd, &managed_method, 0xC9316);
	}
@end

@interface UIKit_UITabBarController__UITabBarControllerDelegate : NSObject<UITabBarControllerDelegate> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) tabBarController:(UITabBarController *)p0 didEndCustomizingViewControllers:(NSArray *)p1 changed:(BOOL)p2;
	-(id) tabBarController:(UITabBarController *)p0 animationControllerForTransitionFromViewController:(UIViewController *)p1 toViewController:(UIViewController *)p2;
	-(id) tabBarController:(UITabBarController *)p0 interactionControllerForAnimationController:(id)p1;
	-(NSInteger) tabBarControllerPreferredInterfaceOrientationForPresentation:(UITabBarController *)p0;
	-(void) tabBarController:(UITabBarController *)p0 willBeginCustomizingViewControllers:(NSArray *)p1;
	-(void) tabBarController:(UITabBarController *)p0 willEndCustomizingViewControllers:(NSArray *)p1 changed:(BOOL)p2;
	-(BOOL) tabBarController:(UITabBarController *)p0 shouldSelectViewController:(UIViewController *)p1;
	-(NSUInteger) tabBarControllerSupportedInterfaceOrientations:(UITabBarController *)p0;
	-(void) tabBarController:(UITabBarController *)p0 didSelectViewController:(UIViewController *)p1;
	-(BOOL) respondsToSelector:(SEL)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation UIKit_UITabBarController__UITabBarControllerDelegate {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) tabBarController:(UITabBarController *)p0 didEndCustomizingViewControllers:(NSArray *)p1 changed:(BOOL)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_76 (self, _cmd, &managed_method, p0, p1, p2, 0xCB816);
	}

	-(id) tabBarController:(UITabBarController *)p0 animationControllerForTransitionFromViewController:(UIViewController *)p1 toViewController:(UIViewController *)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_77 (self, _cmd, &managed_method, p0, p1, p2, 0xCB916);
	}

	-(id) tabBarController:(UITabBarController *)p0 interactionControllerForAnimationController:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_78 (self, _cmd, &managed_method, p0, p1, 0xCBA16);
	}

	-(NSInteger) tabBarControllerPreferredInterfaceOrientationForPresentation:(UITabBarController *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_79 (self, _cmd, &managed_method, p0, 0xCBB16);
	}

	-(void) tabBarController:(UITabBarController *)p0 willBeginCustomizingViewControllers:(NSArray *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_80 (self, _cmd, &managed_method, p0, p1, 0xCBC16);
	}

	-(void) tabBarController:(UITabBarController *)p0 willEndCustomizingViewControllers:(NSArray *)p1 changed:(BOOL)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_76 (self, _cmd, &managed_method, p0, p1, p2, 0xCBD16);
	}

	-(BOOL) tabBarController:(UITabBarController *)p0 shouldSelectViewController:(UIViewController *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_81 (self, _cmd, &managed_method, p0, p1, 0xCBE16);
	}

	-(NSUInteger) tabBarControllerSupportedInterfaceOrientations:(UITabBarController *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_82 (self, _cmd, &managed_method, p0, 0xCBF16);
	}

	-(void) tabBarController:(UITabBarController *)p0 didSelectViewController:(UIViewController *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_83 (self, _cmd, &managed_method, p0, p1, 0xCC016);
	}

	-(BOOL) respondsToSelector:(SEL)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_84 (self, _cmd, &managed_method, p0, 0xCC116);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0xCB716);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface UIKit_UIWebView__UIWebViewDelegate : NSObject<UIWebViewDelegate> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) webView:(UIWebView *)p0 didFailLoadWithError:(NSError *)p1;
	-(void) webViewDidStartLoad:(UIWebView *)p0;
	-(void) webViewDidFinishLoad:(UIWebView *)p0;
	-(BOOL) webView:(UIWebView *)p0 shouldStartLoadWithRequest:(NSURLRequest *)p1 navigationType:(NSInteger)p2;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation UIKit_UIWebView__UIWebViewDelegate {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) webView:(UIWebView *)p0 didFailLoadWithError:(NSError *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_85 (self, _cmd, &managed_method, p0, p1, 0xDC616);
	}

	-(void) webViewDidStartLoad:(UIWebView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_86 (self, _cmd, &managed_method, p0, 0xDC716);
	}

	-(void) webViewDidFinishLoad:(UIWebView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_86 (self, _cmd, &managed_method, p0, 0xDC816);
	}

	-(BOOL) webView:(UIWebView *)p0 shouldStartLoadWithRequest:(NSURLRequest *)p1 navigationType:(NSInteger)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_87 (self, _cmd, &managed_method, p0, p1, p2, 0xDC916);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@interface __NSObject_Disposer : NSObject {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	+(void) drain:(NSObject *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation __NSObject_Disposer {
	XamarinObject __monoObjectGCHandle;
}
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


	+(void) drain:(NSObject *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_88 (self, _cmd, &managed_method, p0, 0x105116);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x104F16);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface __XamarinObjectObserver : NSObject {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) observeValueForKeyPath:(NSString *)p0 ofObject:(NSObject *)p1 change:(NSDictionary *)p2 context:(void *)p3;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation __XamarinObjectObserver {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) observeValueForKeyPath:(NSString *)p0 ofObject:(NSObject *)p1 change:(NSDictionary *)p2 context:(void *)p3
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_89 (self, _cmd, &managed_method, p0, p1, p2, p3, 0x105416);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@interface System_Net_Http_NSUrlSessionHandler_NSUrlSessionHandlerDelegate : NSObject<NSURLSessionDataDelegate, NSURLSessionTaskDelegate, NSURLSessionDelegate> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) URLSession:(NSURLSession *)p0 dataTask:(NSURLSessionDataTask *)p1 didReceiveResponse:(NSURLResponse *)p2 completionHandler:(id)p3;
	-(void) URLSession:(NSURLSession *)p0 dataTask:(NSURLSessionDataTask *)p1 didReceiveData:(NSData *)p2;
	-(void) URLSession:(NSURLSession *)p0 task:(NSURLSessionTask *)p1 didCompleteWithError:(NSError *)p2;
	-(void) URLSession:(NSURLSession *)p0 dataTask:(NSURLSessionDataTask *)p1 willCacheResponse:(NSCachedURLResponse *)p2 completionHandler:(id)p3;
	-(void) URLSession:(NSURLSession *)p0 task:(NSURLSessionTask *)p1 willPerformHTTPRedirection:(NSHTTPURLResponse *)p2 newRequest:(NSURLRequest *)p3 completionHandler:(id)p4;
	-(void) URLSession:(NSURLSession *)p0 task:(NSURLSessionTask *)p1 didReceiveChallenge:(NSURLAuthenticationChallenge *)p2 completionHandler:(id)p3;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation System_Net_Http_NSUrlSessionHandler_NSUrlSessionHandlerDelegate {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) URLSession:(NSURLSession *)p0 dataTask:(NSURLSessionDataTask *)p1 didReceiveResponse:(NSURLResponse *)p2 completionHandler:(id)p3
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_90 (self, _cmd, &managed_method, p0, p1, p2, p3, 0x9C16);
	}

	-(void) URLSession:(NSURLSession *)p0 dataTask:(NSURLSessionDataTask *)p1 didReceiveData:(NSData *)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_91 (self, _cmd, &managed_method, p0, p1, p2, 0x9D16);
	}

	-(void) URLSession:(NSURLSession *)p0 task:(NSURLSessionTask *)p1 didCompleteWithError:(NSError *)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_92 (self, _cmd, &managed_method, p0, p1, p2, 0x9E16);
	}

	-(void) URLSession:(NSURLSession *)p0 dataTask:(NSURLSessionDataTask *)p1 willCacheResponse:(NSCachedURLResponse *)p2 completionHandler:(id)p3
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_93 (self, _cmd, &managed_method, p0, p1, p2, p3, 0xA016);
	}

	-(void) URLSession:(NSURLSession *)p0 task:(NSURLSessionTask *)p1 willPerformHTTPRedirection:(NSHTTPURLResponse *)p2 newRequest:(NSURLRequest *)p3 completionHandler:(id)p4
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_94 (self, _cmd, &managed_method, p0, p1, p2, p3, p4, 0xA116);
	}

	-(void) URLSession:(NSURLSession *)p0 task:(NSURLSessionTask *)p1 didReceiveChallenge:(NSURLAuthenticationChallenge *)p2 completionHandler:(id)p3
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_95 (self, _cmd, &managed_method, p0, p1, p2, p3, 0xA216);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@interface Xamarin_Forms_Platform_iOS_iOS7ButtonContainer : UIView {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) layoutSubviews;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Xamarin_Forms_Platform_iOS_iOS7ButtonContainer {
	XamarinObject __monoObjectGCHandle;
}
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
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x7026);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@interface Xamarin_Forms_Platform_iOS_GlobalCloseContextGestureRecognizer : UIGestureRecognizer {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) touchesBegan:(NSSet *)p0 withEvent:(UIEvent *)p1;
	-(void) touchesEnded:(NSSet *)p0 withEvent:(UIEvent *)p1;
	-(void) touchesMoved:(NSSet *)p0 withEvent:(UIEvent *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Xamarin_Forms_Platform_iOS_GlobalCloseContextGestureRecognizer {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) touchesBegan:(NSSet *)p0 withEvent:(UIEvent *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_96 (self, _cmd, &managed_method, p0, p1, 0x8826);
	}

	-(void) touchesEnded:(NSSet *)p0 withEvent:(UIEvent *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_96 (self, _cmd, &managed_method, p0, p1, 0x8926);
	}

	-(void) touchesMoved:(NSSet *)p0 withEvent:(UIEvent *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_96 (self, _cmd, &managed_method, p0, p1, 0x8A26);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@interface Xamarin_Forms_Platform_iOS_PlatformRenderer : UIViewController {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(NSUInteger) supportedInterfaceOrientations;
	-(NSInteger) preferredInterfaceOrientationForPresentation;
	-(UIViewController *) childViewControllerForStatusBarHidden;
	-(UIViewController *) childViewControllerForStatusBarStyle;
	-(UIViewController *) childViewControllerForHomeIndicatorAutoHidden;
	-(BOOL) shouldAutorotate;
	-(BOOL) shouldAutorotateToInterfaceOrientation:(NSInteger)p0;
	-(BOOL) shouldAutomaticallyForwardRotationMethods;
	-(void) viewDidAppear:(BOOL)p0;
	-(void) viewDidLayoutSubviews;
	-(void) viewWillAppear:(BOOL)p0;
	-(void) viewDidLoad;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Xamarin_Forms_Platform_iOS_PlatformRenderer {
	XamarinObject __monoObjectGCHandle;
}
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


	-(NSUInteger) supportedInterfaceOrientations
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_19 (self, _cmd, &managed_method, 0x12426);
	}

	-(NSInteger) preferredInterfaceOrientationForPresentation
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_97 (self, _cmd, &managed_method, 0x12526);
	}

	-(UIViewController *) childViewControllerForStatusBarHidden
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_98 (self, _cmd, &managed_method, 0x12626);
	}

	-(UIViewController *) childViewControllerForStatusBarStyle
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_98 (self, _cmd, &managed_method, 0x12726);
	}

	-(UIViewController *) childViewControllerForHomeIndicatorAutoHidden
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_98 (self, _cmd, &managed_method, 0x12826);
	}

	-(BOOL) shouldAutorotate
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_21 (self, _cmd, &managed_method, 0x12926);
	}

	-(BOOL) shouldAutorotateToInterfaceOrientation:(NSInteger)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_99 (self, _cmd, &managed_method, p0, 0x12A26);
	}

	-(BOOL) shouldAutomaticallyForwardRotationMethods
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_21 (self, _cmd, &managed_method, 0x12B26);
	}

	-(void) viewDidAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x12C26);
	}

	-(void) viewDidLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x12D26);
	}

	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x12E26);
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x12F26);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation Xamarin_Forms_Platform_iOS_ViewRenderer {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x14126);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_ViewRenderer_2 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_CellTableViewCell {
	XamarinObject __monoObjectGCHandle;
}
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


	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation Xamarin_Forms_Platform_iOS_ActivityIndicatorRenderer {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x25926);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_ViewRenderer_2 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_BoxRenderer {
}

	-(void) drawRect:(CGRect)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_101 (self, _cmd, &managed_method, p0, 0x25A26);
	}

	-(void) layoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x25B26);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x26026);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_VisualElementRenderer_1 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_ButtonRenderer {
}

	-(CGSize) sizeThatFits:(CGSize)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_102 (self, _cmd, &managed_method, p0, 0x26526);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x26426);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_ViewRenderer_2 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Xamarin_Forms_Platform_iOS_NoCaretField : UITextField {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(CGRect) caretRectForPosition:(UITextPosition *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Xamarin_Forms_Platform_iOS_NoCaretField {
	XamarinObject __monoObjectGCHandle;
}
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


	-(CGRect) caretRectForPosition:(UITextPosition *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_103 (self, _cmd, &managed_method, p0, 0x29E26);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x29D26);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UITextField class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_DatePickerRendererBase_1 {
}
	-(id) init
	{
		xamarin_throw_product_exception (4126, "Cannot construct an instance of the type 'Xamarin.Forms.Platform.iOS.DatePickerRendererBase`1' from Objective-C because the type is generic.");

		return self;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_DatePickerRenderer {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x2A026);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_DatePickerRendererBase_1 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_EditorRendererBase_1 {
}
	-(id) init
	{
		xamarin_throw_product_exception (4126, "Cannot construct an instance of the type 'Xamarin.Forms.Platform.iOS.EditorRendererBase`1' from Objective-C because the type is generic.");

		return self;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_EditorRenderer {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x2B226);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_EditorRendererBase_1 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_EntryRendererBase_1 {
}
	-(id) init
	{
		xamarin_throw_product_exception (4126, "Cannot construct an instance of the type 'Xamarin.Forms.Platform.iOS.EntryRendererBase`1' from Objective-C because the type is generic.");

		return self;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_EntryRenderer {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x2DA26);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_EntryRendererBase_1 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_FrameRenderer {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x30226);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_VisualElementRenderer_1 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_LabelRenderer {
}

	-(void) layoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x33526);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x34526);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_ViewRenderer_2 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Xamarin_Forms_Platform_iOS_HeaderWrapperView : UIView {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) layoutSubviews;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Xamarin_Forms_Platform_iOS_HeaderWrapperView {
	XamarinObject __monoObjectGCHandle;
}
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
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x3BD26);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x3BE26);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIView class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_FormsRefreshControl {
	XamarinObject __monoObjectGCHandle;
}
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


	-(BOOL) isHidden
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_21 (self, _cmd, &managed_method, 0x3D026);
	}

	-(void) setHidden:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x3D126);
	}

	-(void) beginRefreshing
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x3D226);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@interface Xamarin_Forms_Platform_iOS_ReadOnlyField : Xamarin_Forms_Platform_iOS_NoCaretField {
}
	-(BOOL) canPerformAction:(SEL)p0 withSender:(NSObject *)p1;
	-(id) init;
@end

@implementation Xamarin_Forms_Platform_iOS_ReadOnlyField {
}

	-(BOOL) canPerformAction:(SEL)p0 withSender:(NSObject *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_104 (self, _cmd, &managed_method, p0, p1, 0x4E126);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x4E026);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_NoCaretField class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_ProgressBarRenderer {
}

	-(CGSize) sizeThatFits:(CGSize)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_102 (self, _cmd, &managed_method, p0, 0x50126);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x50726);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_ViewRenderer_2 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_ScrollViewRenderer {
	XamarinObject __monoObjectGCHandle;
}
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
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x51326);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x50826);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIScrollView class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_SearchBarRenderer {
}

	-(CGSize) sizeThatFits:(CGSize)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_102 (self, _cmd, &managed_method, p0, 0x52D26);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x53F26);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_ViewRenderer_2 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_SliderRenderer {
}

	-(CGSize) sizeThatFits:(CGSize)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_102 (self, _cmd, &managed_method, p0, 0x54026);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x55026);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_ViewRenderer_2 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_StepperRenderer {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x55B26);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_ViewRenderer_2 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_SwitchRenderer {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x56326);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_ViewRenderer_2 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_TableViewModelRenderer {
	XamarinObject __monoObjectGCHandle;
}
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


	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_105 (self, _cmd, &managed_method, p0, p1, 0x59726);
	}

	-(CGFloat) tableView:(UITableView *)p0 heightForHeaderInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_106 (self, _cmd, &managed_method, p0, p1, 0x59826);
	}

	-(UIView *) tableView:(UITableView *)p0 viewForHeaderInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_107 (self, _cmd, &managed_method, p0, p1, 0x59926);
	}

	-(void) tableView:(UITableView *)p0 willDisplayHeaderView:(UIView *)p1 forSection:(NSInteger)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_108 (self, _cmd, &managed_method, p0, p1, p2, 0x59A26);
	}

	-(NSInteger) numberOfSectionsInTableView:(UITableView *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_109 (self, _cmd, &managed_method, p0, 0x59C26);
	}

	-(void) tableView:(UITableView *)p0 didSelectRowAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_110 (self, _cmd, &managed_method, p0, p1, 0x59D26);
	}

	-(NSInteger) tableView:(UITableView *)p0 numberOfRowsInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_111 (self, _cmd, &managed_method, p0, p1, 0x59E26);
	}

	-(NSArray *) sectionIndexTitlesForTableView:(UITableView *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_112 (self, _cmd, &managed_method, p0, 0x59F26);
	}

	-(NSString *) tableView:(UITableView *)p0 titleForHeaderInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_113 (self, _cmd, &managed_method, p0, p1, 0x5A026);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation Xamarin_Forms_Platform_iOS_UnEvenTableViewModelRenderer {
}

	-(CGFloat) tableView:(UITableView *)p0 heightForRowAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_114 (self, _cmd, &managed_method, p0, p1, 0x5A526);
	}
@end

@implementation Xamarin_Forms_Platform_iOS_TableViewRenderer {
}

	-(void) layoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x5A726);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x5B026);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_ViewRenderer_2 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Xamarin_Forms_Platform_iOS_ChildViewController : UIViewController {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) viewDidLayoutSubviews;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Xamarin_Forms_Platform_iOS_ChildViewController {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) viewDidLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x5B426);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x5B526);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIViewController class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Xamarin_Forms_Platform_iOS_EventedViewController : Xamarin_Forms_Platform_iOS_ChildViewController {
}
	-(void) viewWillAppear:(BOOL)p0;
	-(void) viewWillDisappear:(BOOL)p0;
	-(id) init;
@end

@implementation Xamarin_Forms_Platform_iOS_EventedViewController {
}

	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x5B626);
	}

	-(void) viewWillDisappear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x5B726);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x5BC26);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_ChildViewController class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_TimePickerRendererBase_1 {
}
	-(id) init
	{
		xamarin_throw_product_exception (4126, "Cannot construct an instance of the type 'Xamarin.Forms.Platform.iOS.TimePickerRendererBase`1' from Objective-C because the type is generic.");

		return self;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_TimePickerRenderer {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x5E826);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_TimePickerRendererBase_1 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_ItemsViewRenderer {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x9FB26);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_ViewRenderer_2 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_CarouselViewRenderer {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x62426);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_ItemsViewRenderer class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_SelectableItemsViewRenderer {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x6AD26);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_ItemsViewRenderer class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_GroupableItemsViewRenderer {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x64026);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_SelectableItemsViewRenderer class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_CollectionViewRenderer {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x62526);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_GroupableItemsViewRenderer class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_ItemsViewController {
	XamarinObject __monoObjectGCHandle;
}
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


	-(UICollectionViewCell *) collectionView:(UICollectionView *)p0 cellForItemAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_115 (self, _cmd, &managed_method, p0, p1, 0x66B26);
	}

	-(NSInteger) collectionView:(UICollectionView *)p0 numberOfItemsInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_116 (self, _cmd, &managed_method, p0, p1, 0x66C26);
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x66E26);
	}

	-(void) viewWillLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x66F26);
	}

	-(NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_117 (self, _cmd, &managed_method, p0, 0x67226);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation Xamarin_Forms_Platform_iOS_SelectableItemsViewController {
}

	-(void) collectionView:(UICollectionView *)p0 didSelectItemAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_118 (self, _cmd, &managed_method, p0, p1, 0x69E26);
	}

	-(void) collectionView:(UICollectionView *)p0 didDeselectItemAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_118 (self, _cmd, &managed_method, p0, p1, 0x69F26);
	}
@end

@implementation Xamarin_Forms_Platform_iOS_GroupableItemsViewController {
}

	-(UICollectionReusableView *) collectionView:(UICollectionView *)p0 viewForSupplementaryElementOfKind:(NSString *)p1 atIndexPath:(NSIndexPath *)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_119 (self, _cmd, &managed_method, p0, p1, p2, 0x63426);
	}
@end

@implementation Xamarin_Forms_Platform_iOS_ItemsViewCell {
	XamarinObject __monoObjectGCHandle;
}
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


	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) initWithFrame:(CGRect)p0
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_120 (self, _cmd, &managed_method, p0, &call_super, 0x65326);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UICollectionViewCell class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_DefaultCell {
}

	-(id) initWithFrame:(CGRect)p0
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_120 (self, _cmd, &managed_method, p0, &call_super, 0x65B26);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_ItemsViewCell class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@interface Xamarin_Forms_Platform_iOS_HorizontalDefaultSupplementalView : Xamarin_Forms_Platform_iOS_DefaultCell {
}
	-(id) initWithFrame:(CGRect)p0;
@end

@implementation Xamarin_Forms_Platform_iOS_HorizontalDefaultSupplementalView {
}

	-(id) initWithFrame:(CGRect)p0
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_120 (self, _cmd, &managed_method, p0, &call_super, 0x64126);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_DefaultCell class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_TemplatedCell {
}

	-(UICollectionViewLayoutAttributes *) preferredLayoutAttributesFittingAttributes:(UICollectionViewLayoutAttributes *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_121 (self, _cmd, &managed_method, p0, 0x72726);
	}

	-(void) prepareForReuse
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x72826);
	}

	-(BOOL) isSelected
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_21 (self, _cmd, &managed_method, 0x72C26);
	}

	-(void) setSelected:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x72D26);
	}

	-(id) initWithFrame:(CGRect)p0
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_120 (self, _cmd, &managed_method, p0, &call_super, 0x72326);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_ItemsViewCell class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_HorizontalTemplatedSupplementalView {
}

	-(id) initWithFrame:(CGRect)p0
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_120 (self, _cmd, &managed_method, p0, &call_super, 0x64526);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_TemplatedCell class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@interface Xamarin_Forms_Platform_iOS_HorizontalDefaultCell : Xamarin_Forms_Platform_iOS_DefaultCell {
}
	-(id) initWithFrame:(CGRect)p0;
@end

@implementation Xamarin_Forms_Platform_iOS_HorizontalDefaultCell {
}

	-(id) initWithFrame:(CGRect)p0
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_120 (self, _cmd, &managed_method, p0, &call_super, 0x65D26);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_DefaultCell class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@interface Xamarin_Forms_Platform_iOS_VerticalDefaultCell : Xamarin_Forms_Platform_iOS_DefaultCell {
}
	-(id) initWithFrame:(CGRect)p0;
@end

@implementation Xamarin_Forms_Platform_iOS_VerticalDefaultCell {
}

	-(id) initWithFrame:(CGRect)p0
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_120 (self, _cmd, &managed_method, p0, &call_super, 0x6C126);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_DefaultCell class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_ItemsViewLayout {
	XamarinObject __monoObjectGCHandle;
}
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


	-(BOOL) shouldInvalidateLayoutForBoundsChange:(CGRect)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_122 (self, _cmd, &managed_method, p0, 0x6DC26);
	}

	-(BOOL) shouldInvalidateLayoutForPreferredLayoutAttributes:(UICollectionViewLayoutAttributes *)p0 withOriginalAttributes:(UICollectionViewLayoutAttributes *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_123 (self, _cmd, &managed_method, p0, p1, 0x6DD26);
	}

	-(CGPoint) targetContentOffsetForProposedContentOffset:(CGPoint)p0 withScrollingVelocity:(CGPoint)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_124 (self, _cmd, &managed_method, p0, p1, 0x6E326);
	}

	-(UICollectionViewLayoutInvalidationContext *) invalidationContextForPreferredLayoutAttributes:(UICollectionViewLayoutAttributes *)p0 withOriginalAttributes:(UICollectionViewLayoutAttributes *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_125 (self, _cmd, &managed_method, p0, p1, 0x6E626);
	}

	-(UICollectionViewLayoutAttributes *) layoutAttributesForSupplementaryViewOfKind:(NSString *)p0 atIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_126 (self, _cmd, &managed_method, p0, p1, 0x6E726);
	}

	-(void) prepareLayout
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x6E826);
	}

	-(void) prepareForCollectionViewUpdates:(NSArray *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_127 (self, _cmd, &managed_method, p0, 0x6E926);
	}

	-(CGPoint) targetContentOffsetForProposedContentOffset:(CGPoint)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_128 (self, _cmd, &managed_method, p0, 0x6EA26);
	}

	-(void) finalizeCollectionViewUpdates
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x6EB26);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@interface Xamarin_Forms_Platform_iOS_GridViewLayout : Xamarin_Forms_Platform_iOS_ItemsViewLayout {
}
	-(CGSize) collectionViewContentSize;
	-(NSArray *) layoutAttributesForElementsInRect:(CGRect)p0;
@end

@implementation Xamarin_Forms_Platform_iOS_GridViewLayout {
}

	-(CGSize) collectionViewContentSize
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_129 (self, _cmd, &managed_method, 0x6C826);
	}

	-(NSArray *) layoutAttributesForElementsInRect:(CGRect)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_130 (self, _cmd, &managed_method, p0, 0x6C926);
	}
@end

@interface Xamarin_Forms_Platform_iOS_ListViewLayout : Xamarin_Forms_Platform_iOS_ItemsViewLayout {
}
@end

@implementation Xamarin_Forms_Platform_iOS_ListViewLayout {
}
@end

@interface Xamarin_Forms_Platform_iOS_HorizontalTemplatedCell : Xamarin_Forms_Platform_iOS_TemplatedCell {
}
	-(id) initWithFrame:(CGRect)p0;
@end

@implementation Xamarin_Forms_Platform_iOS_HorizontalTemplatedCell {
}

	-(id) initWithFrame:(CGRect)p0
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_120 (self, _cmd, &managed_method, p0, &call_super, 0x73126);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_TemplatedCell class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@interface Xamarin_Forms_Platform_iOS_VerticalDefaultSupplementalView : Xamarin_Forms_Platform_iOS_DefaultCell {
}
	-(id) initWithFrame:(CGRect)p0;
@end

@implementation Xamarin_Forms_Platform_iOS_VerticalDefaultSupplementalView {
}

	-(id) initWithFrame:(CGRect)p0
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_120 (self, _cmd, &managed_method, p0, &call_super, 0x73526);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_DefaultCell class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@interface Xamarin_Forms_Platform_iOS_VerticalTemplatedCell : Xamarin_Forms_Platform_iOS_TemplatedCell {
}
	-(id) initWithFrame:(CGRect)p0;
@end

@implementation Xamarin_Forms_Platform_iOS_VerticalTemplatedCell {
}

	-(id) initWithFrame:(CGRect)p0
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_120 (self, _cmd, &managed_method, p0, &call_super, 0x73926);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_TemplatedCell class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_VerticalTemplatedSupplementalView {
}

	-(id) initWithFrame:(CGRect)p0
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_120 (self, _cmd, &managed_method, p0, &call_super, 0x73D26);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_TemplatedCell class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@interface Xamarin_Forms_Platform_iOS_ModalWrapper : UIViewController {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) dismissViewControllerAnimated:(BOOL)p0 completion:(id)p1;
	-(NSUInteger) supportedInterfaceOrientations;
	-(NSInteger) preferredInterfaceOrientationForPresentation;
	-(BOOL) shouldAutorotate;
	-(BOOL) shouldAutorotateToInterfaceOrientation:(NSInteger)p0;
	-(BOOL) shouldAutomaticallyForwardRotationMethods;
	-(void) viewDidLayoutSubviews;
	-(void) viewWillAppear:(BOOL)p0;
	-(void) viewDidLoad;
	-(UIViewController *) childViewControllerForStatusBarStyle;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Xamarin_Forms_Platform_iOS_ModalWrapper {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) dismissViewControllerAnimated:(BOOL)p0 completion:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_131 (self, _cmd, &managed_method, p0, p1, 0x75926);
	}

	-(NSUInteger) supportedInterfaceOrientations
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_19 (self, _cmd, &managed_method, 0x75A26);
	}

	-(NSInteger) preferredInterfaceOrientationForPresentation
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_97 (self, _cmd, &managed_method, 0x75B26);
	}

	-(BOOL) shouldAutorotate
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_21 (self, _cmd, &managed_method, 0x75C26);
	}

	-(BOOL) shouldAutorotateToInterfaceOrientation:(NSInteger)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_99 (self, _cmd, &managed_method, p0, 0x75D26);
	}

	-(BOOL) shouldAutomaticallyForwardRotationMethods
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_21 (self, _cmd, &managed_method, 0x75E26);
	}

	-(void) viewDidLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x75F26);
	}

	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x76026);
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x76226);
	}

	-(UIViewController *) childViewControllerForStatusBarStyle
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_98 (self, _cmd, &managed_method, 0x76326);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation Xamarin_Forms_Platform_iOS_FormsCheckBox {
	XamarinObject __monoObjectGCHandle;
}
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


	-(BOOL) isEnabled
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_21 (self, _cmd, &managed_method, 0x77026);
	}

	-(void) setEnabled:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x77126);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x76626);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIButton class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_NativeViewWrapperRenderer {
}

	-(void) layoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x7A226);
	}

	-(CGSize) sizeThatFits:(CGSize)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_102 (self, _cmd, &managed_method, p0, 0x7A326);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x7A626);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_ViewRenderer_2 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Xamarin_Forms_Platform_iOS_PageContainer : UIView {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(NSInteger) accessibilityElementCount;
	-(NSObject *) accessibilityElementAtIndex:(NSInteger)p0;
	-(int) indexOfAccessibilityElement:(NSObject *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Xamarin_Forms_Platform_iOS_PageContainer {
	XamarinObject __monoObjectGCHandle;
}
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


	-(NSInteger) accessibilityElementCount
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_97 (self, _cmd, &managed_method, 0x7B226);
	}

	-(NSObject *) accessibilityElementAtIndex:(NSInteger)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_132 (self, _cmd, &managed_method, p0, 0x7B326);
	}

	-(int) indexOfAccessibilityElement:(NSObject *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_133 (self, _cmd, &managed_method, p0, 0x7B426);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x7AD26);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIView class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_CheckBoxRendererBase_1 {
}

	-(void) layoutSubviews
	{
		MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_14 (self, _cmd, &managed_method, 0x7B726);
	}

	-(CGSize) sizeThatFits:(CGSize)p0
	{
		MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, 0x7B926);
	}
	-(id) init
	{
		xamarin_throw_product_exception (4126, "Cannot construct an instance of the type 'Xamarin.Forms.Platform.iOS.CheckBoxRendererBase`1' from Objective-C because the type is generic.");

		return self;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_ShellItemRenderer {
	XamarinObject __monoObjectGCHandle;
}
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


	-(UIViewController *) selectedViewController
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_98 (self, _cmd, &managed_method, 0x87D26);
	}

	-(void) setSelectedViewController:(UIViewController *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_134 (self, _cmd, &managed_method, p0, 0x87E26);
	}

	-(void) viewDidLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x87F26);
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x88026);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation Xamarin_Forms_Platform_iOS_ShellSearchResultsRenderer {
	XamarinObject __monoObjectGCHandle;
}
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


	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_105 (self, _cmd, &managed_method, p0, p1, 0x92526);
	}

	-(void) tableView:(UITableView *)p0 didSelectRowAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_110 (self, _cmd, &managed_method, p0, p1, 0x92626);
	}

	-(NSInteger) numberOfSectionsInTableView:(UITableView *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_109 (self, _cmd, &managed_method, p0, 0x92726);
	}

	-(NSInteger) tableView:(UITableView *)p0 numberOfRowsInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_111 (self, _cmd, &managed_method, p0, p1, 0x92826);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation Xamarin_Forms_Platform_iOS_ShellTableViewController {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x99826);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation Xamarin_Forms_Platform_iOS_TabletShellFlyoutRenderer {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x9BE26);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x9C026);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UISplitViewController class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_UIContainerCell {
	XamarinObject __monoObjectGCHandle;
}
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
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x9C526);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation Xamarin_Forms_Platform_iOS_UIContainerView {
	XamarinObject __monoObjectGCHandle;
}
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
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x9D126);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@interface Xamarin_Forms_Platform_iOS_NativeViewPropertyListener : NSObject {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) observeValueForKeyPath:(NSString *)p0 ofObject:(NSObject *)p1 change:(NSDictionary *)p2 context:(void *)p3;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Xamarin_Forms_Platform_iOS_NativeViewPropertyListener {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) observeValueForKeyPath:(NSString *)p0 ofObject:(NSObject *)p1 change:(NSDictionary *)p2 context:(void *)p3
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_89 (self, _cmd, &managed_method, p0, p1, p2, p3, 0xA3B26);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation Xamarin_Forms_Platform_iOS_CheckBoxRenderer {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0xA8F26);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_CheckBoxRendererBase_1 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Xamarin_Forms_Platform_iOS_ContextActionsCell_SelectGestureRecognizer : UITapGestureRecognizer {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Xamarin_Forms_Platform_iOS_ContextActionsCell_SelectGestureRecognizer {
	XamarinObject __monoObjectGCHandle;
}
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


	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x6526);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UITapGestureRecognizer class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Xamarin_Forms_Platform_iOS_ContextActionsCell_MoreActionSheetController : UIAlertController {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(NSInteger) preferredStyle;
	-(void) willRotateToInterfaceOrientation:(NSInteger)p0 duration:(double)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Xamarin_Forms_Platform_iOS_ContextActionsCell_MoreActionSheetController {
	XamarinObject __monoObjectGCHandle;
}
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


	-(NSInteger) preferredStyle
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_97 (self, _cmd, &managed_method, 0x6826);
	}

	-(void) willRotateToInterfaceOrientation:(NSInteger)p0 duration:(double)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_135 (self, _cmd, &managed_method, p0, p1, 0x6926);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x6A26);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIAlertController class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Xamarin_Forms_Platform_iOS_ContextActionsCell_MoreActionSheetDelegate : NSObject<UIActionSheetDelegate> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) actionSheet:(UIActionSheet *)p0 clickedButtonAtIndex:(NSInteger)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Xamarin_Forms_Platform_iOS_ContextActionsCell_MoreActionSheetDelegate {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) actionSheet:(UIActionSheet *)p0 clickedButtonAtIndex:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_136 (self, _cmd, &managed_method, p0, p1, 0x6B26);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x6C26);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Xamarin_Forms_Platform_iOS_ContextActionsCell : UITableViewCell {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) layoutSubviews;
	-(CGSize) sizeThatFits:(CGSize)p0;
	-(void) removeFromSuperview;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Xamarin_Forms_Platform_iOS_ContextActionsCell {
	XamarinObject __monoObjectGCHandle;
}
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
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x5126);
	}

	-(CGSize) sizeThatFits:(CGSize)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_102 (self, _cmd, &managed_method, p0, 0x5326);
	}

	-(void) removeFromSuperview
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x5426);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x4926);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UITableViewCell class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Xamarin_Forms_Platform_iOS_ContextScrollViewDelegate : NSObject<UIScrollViewDelegate> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) scrollViewWillBeginDragging:(UIScrollView *)p0;
	-(void) scrollViewDidScroll:(UIScrollView *)p0;
	-(void) scrollViewWillEndDragging:(UIScrollView *)p0 withVelocity:(CGPoint)p1 targetContentOffset:(CGPoint*)p2;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Xamarin_Forms_Platform_iOS_ContextScrollViewDelegate {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) scrollViewWillBeginDragging:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_51 (self, _cmd, &managed_method, p0, 0x7726);
	}

	-(void) scrollViewDidScroll:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_51 (self, _cmd, &managed_method, p0, 0x7926);
	}

	-(void) scrollViewWillEndDragging:(UIScrollView *)p0 withVelocity:(CGPoint)p1 targetContentOffset:(CGPoint*)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_55 (self, _cmd, &managed_method, p0, p1, p2, 0x7B26);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@interface Xamarin_Forms_Platform_iOS_Platform_DefaultRenderer : Xamarin_Forms_Platform_iOS_VisualElementRenderer_1 {
}
	-(UIView *) hitTest:(CGPoint)p0 withEvent:(UIEvent *)p1;
	-(id) init;
@end

@implementation Xamarin_Forms_Platform_iOS_Platform_DefaultRenderer {
}

	-(UIView *) hitTest:(CGPoint)p0 withEvent:(UIEvent *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_137 (self, _cmd, &managed_method, p0, p1, 0x10626);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x10726);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_VisualElementRenderer_1 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Xamarin_Forms_Platform_iOS_EntryCellRenderer_EntryCellTableViewCell : Xamarin_Forms_Platform_iOS_CellTableViewCell {
}
	-(void) layoutSubviews;
@end

@implementation Xamarin_Forms_Platform_iOS_EntryCellRenderer_EntryCellTableViewCell {
}

	-(void) layoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x1E226);
	}
@end

@interface Xamarin_Forms_Platform_iOS_ViewCellRenderer_ViewTableCell : UITableViewCell {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) layoutSubviews;
	-(CGSize) sizeThatFits:(CGSize)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Xamarin_Forms_Platform_iOS_ViewCellRenderer_ViewTableCell {
	XamarinObject __monoObjectGCHandle;
}
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
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x20826);
	}

	-(CGSize) sizeThatFits:(CGSize)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_102 (self, _cmd, &managed_method, p0, 0x20926);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@interface Xamarin_Forms_Platform_iOS_CarouselPageRenderer_CarouselPageContainer : UIView {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) layoutSubviews;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Xamarin_Forms_Platform_iOS_CarouselPageRenderer_CarouselPageContainer {
	XamarinObject __monoObjectGCHandle;
}
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
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x29C26);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation Xamarin_Forms_Platform_iOS_CarouselPageRenderer {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) didRotateFromInterfaceOrientation:(NSInteger)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_138 (self, _cmd, &managed_method, p0, 0x28226);
	}

	-(void) viewDidAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x28326);
	}

	-(void) viewDidDisappear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x28426);
	}

	-(void) viewDidLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x28526);
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x28626);
	}

	-(void) viewDidUnload
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x28726);
	}

	-(void) willRotateToInterfaceOrientation:(NSInteger)p0 duration:(double)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_135 (self, _cmd, &managed_method, p0, p1, 0x28826);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x27326);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIViewController class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Xamarin_Forms_Platform_iOS_EditorRendererBase_1_FormsUITextView : UITextView {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(CGRect) frame;
	-(void) setFrame:(CGRect)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Xamarin_Forms_Platform_iOS_EditorRendererBase_1_FormsUITextView {
	XamarinObject __monoObjectGCHandle;
}
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


	-(CGRect) frame
	{
		MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_139 (self, _cmd, &managed_method, 0x2D626);
	}

	-(void) setFrame:(CGRect)p0
	{
		MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_140 (self, _cmd, &managed_method, p0, 0x2D726);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_15 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation Xamarin_Forms_Platform_iOS_ImageRenderer {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x30426);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_ViewRenderer_2 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Xamarin_Forms_Platform_iOS_ListViewRenderer_ListViewDataSource : NSObject<UIScrollViewDelegate> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) scrollViewDidEndDragging:(UIScrollView *)p0 willDecelerate:(BOOL)p1;
	-(void) scrollViewWillBeginDragging:(UIScrollView *)p0;
	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1;
	-(CGFloat) tableView:(UITableView *)p0 heightForHeaderInSection:(NSInteger)p1;
	-(UIView *) tableView:(UITableView *)p0 viewForHeaderInSection:(NSInteger)p1;
	-(void) tableView:(UITableView *)p0 didEndDisplayingHeaderView:(UIView *)p1 forSection:(NSInteger)p2;
	-(NSInteger) numberOfSectionsInTableView:(UITableView *)p0;
	-(void) tableView:(UITableView *)p0 didDeselectRowAtIndexPath:(NSIndexPath *)p1;
	-(void) tableView:(UITableView *)p0 didSelectRowAtIndexPath:(NSIndexPath *)p1;
	-(NSInteger) tableView:(UITableView *)p0 numberOfRowsInSection:(NSInteger)p1;
	-(void) scrollViewDidScroll:(UIScrollView *)p0;
	-(NSArray *) sectionIndexTitlesForTableView:(UITableView *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Xamarin_Forms_Platform_iOS_ListViewRenderer_ListViewDataSource {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) scrollViewDidEndDragging:(UIScrollView *)p0 willDecelerate:(BOOL)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_52 (self, _cmd, &managed_method, p0, p1, 0x38C26);
	}

	-(void) scrollViewWillBeginDragging:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_51 (self, _cmd, &managed_method, p0, 0x38D26);
	}

	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_105 (self, _cmd, &managed_method, p0, p1, 0x38F26);
	}

	-(CGFloat) tableView:(UITableView *)p0 heightForHeaderInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_106 (self, _cmd, &managed_method, p0, p1, 0x39026);
	}

	-(UIView *) tableView:(UITableView *)p0 viewForHeaderInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_107 (self, _cmd, &managed_method, p0, p1, 0x39126);
	}

	-(void) tableView:(UITableView *)p0 didEndDisplayingHeaderView:(UIView *)p1 forSection:(NSInteger)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_108 (self, _cmd, &managed_method, p0, p1, p2, 0x39226);
	}

	-(NSInteger) numberOfSectionsInTableView:(UITableView *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_109 (self, _cmd, &managed_method, p0, 0x39326);
	}

	-(void) tableView:(UITableView *)p0 didDeselectRowAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_110 (self, _cmd, &managed_method, p0, p1, 0x39526);
	}

	-(void) tableView:(UITableView *)p0 didSelectRowAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_110 (self, _cmd, &managed_method, p0, p1, 0x39626);
	}

	-(NSInteger) tableView:(UITableView *)p0 numberOfRowsInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_111 (self, _cmd, &managed_method, p0, p1, 0x39726);
	}

	-(void) scrollViewDidScroll:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_51 (self, _cmd, &managed_method, p0, 0x39826);
	}

	-(NSArray *) sectionIndexTitlesForTableView:(UITableView *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_112 (self, _cmd, &managed_method, p0, 0x39926);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@interface Xamarin_Forms_Platform_iOS_ListViewRenderer_UnevenListViewDataSource : Xamarin_Forms_Platform_iOS_ListViewRenderer_ListViewDataSource<UIScrollViewDelegate> {
}
	-(CGFloat) tableView:(UITableView *)p0 heightForRowAtIndexPath:(NSIndexPath *)p1;
@end

@implementation Xamarin_Forms_Platform_iOS_ListViewRenderer_UnevenListViewDataSource {
}

	-(CGFloat) tableView:(UITableView *)p0 heightForRowAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_114 (self, _cmd, &managed_method, p0, p1, 0x37E26);
	}
@end

@implementation Xamarin_Forms_Platform_iOS_ListViewRenderer {
}

	-(void) layoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x35326);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x37126);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_ViewRenderer_2 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Xamarin_Forms_Platform_iOS_FormsUITableViewController : UITableViewController {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) viewWillAppear:(BOOL)p0;
	-(void) viewWillLayoutSubviews;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Xamarin_Forms_Platform_iOS_FormsUITableViewController {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x3C426);
	}

	-(void) viewWillLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x3C526);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@interface Xamarin_Forms_Platform_iOS_NavigationRenderer_FormsNavigationBar : UINavigationBar {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) layoutSubviews;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Xamarin_Forms_Platform_iOS_NavigationRenderer_FormsNavigationBar {
	XamarinObject __monoObjectGCHandle;
}
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
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x45026);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x44726);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UINavigationBar class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Xamarin_Forms_Platform_iOS_NavigationRenderer_Container : UIView {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(CGSize) intrinsicContentSize;
	-(CGRect) frame;
	-(void) setFrame:(CGRect)p0;
	-(CGSize) sizeThatFits:(CGSize)p0;
	-(void) layoutSubviews;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Xamarin_Forms_Platform_iOS_NavigationRenderer_Container {
	XamarinObject __monoObjectGCHandle;
}
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


	-(CGSize) intrinsicContentSize
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_129 (self, _cmd, &managed_method, 0x45226);
	}

	-(CGRect) frame
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_141 (self, _cmd, &managed_method, 0x45626);
	}

	-(void) setFrame:(CGRect)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_101 (self, _cmd, &managed_method, p0, 0x45726);
	}

	-(CGSize) sizeThatFits:(CGSize)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_102 (self, _cmd, &managed_method, p0, 0x45926);
	}

	-(void) layoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x45A26);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation Xamarin_Forms_Platform_iOS_NavigationRenderer {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) didRotateFromInterfaceOrientation:(NSInteger)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_138 (self, _cmd, &managed_method, p0, 0x3E126);
	}

	-(NSArray *) popToRootViewControllerAnimated:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_142 (self, _cmd, &managed_method, p0, 0x3E326);
	}

	-(UIViewController *) popViewControllerAnimated:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_143 (self, _cmd, &managed_method, p0, 0x3E526);
	}

	-(void) viewDidAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x3E726);
	}

	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x3E826);
	}

	-(void) viewDidDisappear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x3E926);
	}

	-(void) viewDidLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x3EA26);
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x3EB26);
	}

	-(UIViewController *) childViewControllerForStatusBarHidden
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_98 (self, _cmd, &managed_method, 0x40F26);
	}

	-(UIViewController *) childViewControllerForHomeIndicatorAutoHidden
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_98 (self, _cmd, &managed_method, 0x41026);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x3D326);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UINavigationController class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Xamarin_Forms_Platform_iOS_OpenGLViewRenderer_Delegate : NSObject<GLKViewDelegate> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) glkView:(GLKView *)p0 drawInRect:(CGRect)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Xamarin_Forms_Platform_iOS_OpenGLViewRenderer_Delegate {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) glkView:(GLKView *)p0 drawInRect:(CGRect)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_27 (self, _cmd, &managed_method, p0, p1, 0x47A26);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@interface Xamarin_Forms_Platform_iOS_OpenGLViewRenderer : Xamarin_Forms_Platform_iOS_ViewRenderer_2 {
}
	-(id) init;
@end

@implementation Xamarin_Forms_Platform_iOS_OpenGLViewRenderer {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x47726);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_ViewRenderer_2 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_PageRenderer {
	XamarinObject __monoObjectGCHandle;
}
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
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x48B26);
	}

	-(void) viewWillLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x48C26);
	}

	-(void) viewDidLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x48D26);
	}

	-(void) viewSafeAreaInsetsDidChange
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x48E26);
	}

	-(void) viewDidAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x49026);
	}

	-(void) viewDidDisappear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x49126);
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x49226);
	}

	-(void) viewWillDisappear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x49326);
	}

	-(NSInteger) preferredStatusBarUpdateAnimation
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_97 (self, _cmd, &managed_method, 0x49826);
	}

	-(BOOL) prefersStatusBarHidden
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_21 (self, _cmd, &managed_method, 0x49E26);
	}

	-(BOOL) prefersHomeIndicatorAutoHidden
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_21 (self, _cmd, &managed_method, 0x4A426);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x48026);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIViewController class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Xamarin_Forms_Platform_iOS_PhoneMasterDetailRenderer_ChildViewController : UIViewController {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) viewDidLayoutSubviews;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Xamarin_Forms_Platform_iOS_PhoneMasterDetailRenderer_ChildViewController {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) viewDidLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x4D926);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x4DA26);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIViewController class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_PhoneMasterDetailRenderer {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) viewDidAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x4C126);
	}

	-(void) viewDidDisappear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x4C226);
	}

	-(void) viewDidLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x4C326);
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x4C426);
	}

	-(void) willRotateToInterfaceOrientation:(NSInteger)p0 duration:(double)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_135 (self, _cmd, &managed_method, p0, p1, 0x4C526);
	}

	-(UIViewController *) childViewControllerForStatusBarHidden
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_98 (self, _cmd, &managed_method, 0x4D326);
	}

	-(UIViewController *) childViewControllerForHomeIndicatorAutoHidden
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_98 (self, _cmd, &managed_method, 0x4D426);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x4B426);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIViewController class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Xamarin_Forms_Platform_iOS_PickerRendererBase_1_PickerSource : NSObject<UIPickerViewDelegate, UIPickerViewDataSource, UIPickerViewDelegate> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)p0;
	-(NSInteger) pickerView:(UIPickerView *)p0 numberOfRowsInComponent:(NSInteger)p1;
	-(NSString *) pickerView:(UIPickerView *)p0 titleForRow:(NSInteger)p1 forComponent:(NSInteger)p2;
	-(void) pickerView:(UIPickerView *)p0 didSelectRow:(NSInteger)p1 inComponent:(NSInteger)p2;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Xamarin_Forms_Platform_iOS_PickerRendererBase_1_PickerSource {
	XamarinObject __monoObjectGCHandle;
}
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


	-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)p0
	{
		MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_144 (self, _cmd, &managed_method, p0, 0x4FA26);
	}

	-(NSInteger) pickerView:(UIPickerView *)p0 numberOfRowsInComponent:(NSInteger)p1
	{
		MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_145 (self, _cmd, &managed_method, p0, p1, 0x4FB26);
	}

	-(NSString *) pickerView:(UIPickerView *)p0 titleForRow:(NSInteger)p1 forComponent:(NSInteger)p2
	{
		MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_146 (self, _cmd, &managed_method, p0, p1, p2, 0x4FC26);
	}

	-(void) pickerView:(UIPickerView *)p0 didSelectRow:(NSInteger)p1 inComponent:(NSInteger)p2
	{
		MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_147 (self, _cmd, &managed_method, p0, p1, p2, 0x4FD26);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_15 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation Xamarin_Forms_Platform_iOS_TabbedRenderer {
	XamarinObject __monoObjectGCHandle;
}
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


	-(UIViewController *) selectedViewController
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_98 (self, _cmd, &managed_method, 0x56526);
	}

	-(void) setSelectedViewController:(UIViewController *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_134 (self, _cmd, &managed_method, p0, 0x56626);
	}

	-(void) didRotateFromInterfaceOrientation:(NSInteger)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_138 (self, _cmd, &managed_method, p0, 0x57126);
	}

	-(void) viewDidAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x57226);
	}

	-(void) viewDidDisappear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x57326);
	}

	-(void) viewDidLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x57426);
	}

	-(UIViewController *) childViewControllerForStatusBarHidden
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_98 (self, _cmd, &managed_method, 0x57C26);
	}

	-(UIViewController *) childViewControllerForHomeIndicatorAutoHidden
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_98 (self, _cmd, &managed_method, 0x57F26);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x58D26);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UITabBarController class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Xamarin_Forms_Platform_iOS_TabletMasterDetailRenderer_InnerDelegate : NSObject<UISplitViewControllerDelegate> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(BOOL) splitViewController:(UISplitViewController *)p0 shouldHideViewController:(UIViewController *)p1 inOrientation:(NSInteger)p2;
	-(void) splitViewController:(UISplitViewController *)p0 willHideViewController:(UIViewController *)p1 withBarButtonItem:(UIBarButtonItem *)p2 forPopoverController:(UIPopoverController *)p3;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Xamarin_Forms_Platform_iOS_TabletMasterDetailRenderer_InnerDelegate {
	XamarinObject __monoObjectGCHandle;
}
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


	-(BOOL) splitViewController:(UISplitViewController *)p0 shouldHideViewController:(UIViewController *)p1 inOrientation:(NSInteger)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_70 (self, _cmd, &managed_method, p0, p1, p2, 0x5E526);
	}

	-(void) splitViewController:(UISplitViewController *)p0 willHideViewController:(UIViewController *)p1 withBarButtonItem:(UIBarButtonItem *)p2 forPopoverController:(UIPopoverController *)p3
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_73 (self, _cmd, &managed_method, p0, p1, p2, p3, 0x5E626);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation Xamarin_Forms_Platform_iOS_TabletMasterDetailRenderer {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) viewDidAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x5CB26);
	}

	-(void) viewDidDisappear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x5CC26);
	}

	-(void) viewDidLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x5CD26);
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x5CE26);
	}

	-(void) viewWillDisappear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x5CF26);
	}

	-(void) viewWillLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x5D026);
	}

	-(void) willRotateToInterfaceOrientation:(NSInteger)p0 duration:(double)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_135 (self, _cmd, &managed_method, p0, p1, 0x5D126);
	}

	-(UIViewController *) childViewControllerForStatusBarHidden
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_98 (self, _cmd, &managed_method, 0x5D226);
	}

	-(UIViewController *) childViewControllerForHomeIndicatorAutoHidden
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_98 (self, _cmd, &managed_method, 0x5D326);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x5E026);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UISplitViewController class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Xamarin_Forms_Platform_iOS_WebViewRenderer_CustomWebViewDelegate : NSObject<UIWebViewDelegate> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) webView:(UIWebView *)p0 didFailLoadWithError:(NSError *)p1;
	-(void) webViewDidFinishLoad:(UIWebView *)p0;
	-(void) webViewDidStartLoad:(UIWebView *)p0;
	-(BOOL) webView:(UIWebView *)p0 shouldStartLoadWithRequest:(NSURLRequest *)p1 navigationType:(NSInteger)p2;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Xamarin_Forms_Platform_iOS_WebViewRenderer_CustomWebViewDelegate {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) webView:(UIWebView *)p0 didFailLoadWithError:(NSError *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_85 (self, _cmd, &managed_method, p0, p1, 0x61326);
	}

	-(void) webViewDidFinishLoad:(UIWebView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_86 (self, _cmd, &managed_method, p0, 0x61426);
	}

	-(void) webViewDidStartLoad:(UIWebView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_86 (self, _cmd, &managed_method, p0, 0x61526);
	}

	-(BOOL) webView:(UIWebView *)p0 shouldStartLoadWithRequest:(NSURLRequest *)p1 navigationType:(NSInteger)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_87 (self, _cmd, &managed_method, p0, p1, p2, 0x61626);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation Xamarin_Forms_Platform_iOS_WebViewRenderer {
	XamarinObject __monoObjectGCHandle;
}
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
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x60326);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x5F826);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIWebView class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_UICollectionViewDelegator {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) scrollViewWillBeginDragging:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_51 (self, _cmd, &managed_method, p0, 0x6B326);
	}

	-(void) scrollViewDidEndDragging:(UIScrollView *)p0 willDecelerate:(BOOL)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_52 (self, _cmd, &managed_method, p0, p1, 0x6B426);
	}

	-(void) scrollViewDidScroll:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_51 (self, _cmd, &managed_method, p0, 0x6B526);
	}

	-(UIEdgeInsets) collectionView:(UICollectionView *)p0 layout:(UICollectionViewLayout *)p1 insetForSectionAtIndex:(NSInteger)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_148 (self, _cmd, &managed_method, p0, p1, p2, 0x6B626);
	}

	-(CGFloat) collectionView:(UICollectionView *)p0 layout:(UICollectionViewLayout *)p1 minimumInteritemSpacingForSectionAtIndex:(NSInteger)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_149 (self, _cmd, &managed_method, p0, p1, p2, 0x6B726);
	}

	-(CGFloat) collectionView:(UICollectionView *)p0 layout:(UICollectionViewLayout *)p1 minimumLineSpacingForSectionAtIndex:(NSInteger)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_149 (self, _cmd, &managed_method, p0, p1, p2, 0x6B826);
	}

	-(void) collectionView:(UICollectionView *)p0 didSelectItemAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_118 (self, _cmd, &managed_method, p0, p1, 0x6B926);
	}

	-(void) collectionView:(UICollectionView *)p0 didDeselectItemAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_118 (self, _cmd, &managed_method, p0, p1, 0x6BA26);
	}

	-(void) collectionView:(UICollectionView *)p0 didEndDisplayingCell:(UICollectionViewCell *)p1 forItemAtIndexPath:(NSIndexPath *)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_150 (self, _cmd, &managed_method, p0, p1, p2, 0x6BB26);
	}

	-(CGSize) collectionView:(UICollectionView *)p0 layout:(UICollectionViewLayout *)p1 referenceSizeForHeaderInSection:(NSInteger)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_151 (self, _cmd, &managed_method, p0, p1, p2, 0x6BC26);
	}

	-(CGSize) collectionView:(UICollectionView *)p0 layout:(UICollectionViewLayout *)p1 referenceSizeForFooterInSection:(NSInteger)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_151 (self, _cmd, &managed_method, p0, p1, p2, 0x6BD26);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@interface Xamarin_Forms_Platform_iOS_WkWebViewRenderer_CustomWebViewNavigationDelegate : NSObject<WKNavigationDelegate> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) webView:(WKWebView *)p0 didFailNavigation:(WKNavigation *)p1 withError:(NSError *)p2;
	-(void) webView:(WKWebView *)p0 didFinishNavigation:(WKNavigation *)p1;
	-(void) webView:(WKWebView *)p0 didStartProvisionalNavigation:(WKNavigation *)p1;
	-(void) webView:(WKWebView *)p0 decidePolicyForNavigationAction:(WKNavigationAction *)p1 decisionHandler:(id)p2;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Xamarin_Forms_Platform_iOS_WkWebViewRenderer_CustomWebViewNavigationDelegate {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) webView:(WKWebView *)p0 didFailNavigation:(WKNavigation *)p1 withError:(NSError *)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_152 (self, _cmd, &managed_method, p0, p1, p2, 0x7DE26);
	}

	-(void) webView:(WKWebView *)p0 didFinishNavigation:(WKNavigation *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_153 (self, _cmd, &managed_method, p0, p1, 0x7DF26);
	}

	-(void) webView:(WKWebView *)p0 didStartProvisionalNavigation:(WKNavigation *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_153 (self, _cmd, &managed_method, p0, p1, 0x7E026);
	}

	-(void) webView:(WKWebView *)p0 decidePolicyForNavigationAction:(WKNavigationAction *)p1 decisionHandler:(id)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_154 (self, _cmd, &managed_method, p0, p1, p2, 0x7E126);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation Xamarin_Forms_Platform_iOS_WkWebViewRenderer {
	XamarinObject __monoObjectGCHandle;
}
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
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x7CE26);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x7C226);
		if (call_super && rv) {
			struct objc_super super = {  rv, [WKWebView class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_ShellFlyoutContentRenderer {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) viewDidLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x84526);
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x84626);
	}

	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x84726);
	}

	-(void) viewWillDisappear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x84826);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation Xamarin_Forms_Platform_iOS_ShellFlyoutRenderer {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) viewDidLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x86426);
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x86526);
	}

	-(NSArray *) keyCommands
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_155 (self, _cmd, &managed_method, 0x86A26);
	}

	-(void) tabForward:(UIKeyCommand *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_156 (self, _cmd, &managed_method, p0, 0x86D26);
	}

	-(void) tabBackward:(UIKeyCommand *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_156 (self, _cmd, &managed_method, p0, 0x86E26);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x87226);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIViewController class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_ShellPageRendererTracker_TitleViewContainer {
}

	-(CGRect) frame
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_141 (self, _cmd, &managed_method, 0x8CB26);
	}

	-(void) setFrame:(CGRect)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_101 (self, _cmd, &managed_method, p0, 0x8CC26);
	}

	-(CGSize) intrinsicContentSize
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_129 (self, _cmd, &managed_method, 0x8CD26);
	}

	-(CGSize) sizeThatFits:(CGSize)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_102 (self, _cmd, &managed_method, p0, 0x8CE26);
	}
@end

@implementation Xamarin_Forms_Platform_iOS_ShellRenderer {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) viewDidLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x8F026);
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x8F126);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x90226);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIViewController class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_ShellSectionRootHeader_ShellSectionHeaderCell {
	XamarinObject __monoObjectGCHandle;
}
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
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x94826);
	}

	-(CGSize) sizeThatFits:(CGSize)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_102 (self, _cmd, &managed_method, p0, 0x94926);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) initWithFrame:(CGRect)p0
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_120 (self, _cmd, &managed_method, p0, &call_super, 0x94626);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UICollectionViewCell class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_ShellSectionRootHeader {
	XamarinObject __monoObjectGCHandle;
}
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


	-(BOOL) collectionView:(UICollectionView *)p0 canMoveItemAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_157 (self, _cmd, &managed_method, p0, p1, 0x93726);
	}

	-(UICollectionViewCell *) collectionView:(UICollectionView *)p0 cellForItemAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_115 (self, _cmd, &managed_method, p0, p1, 0x93826);
	}

	-(NSInteger) collectionView:(UICollectionView *)p0 numberOfItemsInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_116 (self, _cmd, &managed_method, p0, p1, 0x93926);
	}

	-(void) collectionView:(UICollectionView *)p0 didDeselectItemAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_118 (self, _cmd, &managed_method, p0, p1, 0x93A26);
	}

	-(void) collectionView:(UICollectionView *)p0 didSelectItemAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_118 (self, _cmd, &managed_method, p0, p1, 0x93B26);
	}

	-(NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_117 (self, _cmd, &managed_method, p0, 0x93C26);
	}

	-(BOOL) collectionView:(UICollectionView *)p0 shouldSelectItemAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_157 (self, _cmd, &managed_method, p0, p1, 0x93D26);
	}

	-(void) viewDidLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x93E26);
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x93F26);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation Xamarin_Forms_Platform_iOS_ShellSectionRootRenderer {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) viewDidLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x95126);
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x95226);
	}

	-(void) viewSafeAreaInsetsDidChange
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x95326);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@interface Xamarin_Forms_Platform_iOS_ShellSectionRenderer_GestureDelegate : NSObject<UIGestureRecognizerDelegate> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(BOOL) gestureRecognizerShouldBegin:(UIGestureRecognizer *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Xamarin_Forms_Platform_iOS_ShellSectionRenderer_GestureDelegate {
	XamarinObject __monoObjectGCHandle;
}
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


	-(BOOL) gestureRecognizerShouldBegin:(UIGestureRecognizer *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_33 (self, _cmd, &managed_method, p0, 0x98626);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@interface Xamarin_Forms_Platform_iOS_ShellSectionRenderer_NavDelegate : NSObject<UINavigationControllerDelegate> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) navigationController:(UINavigationController *)p0 didShowViewController:(UIViewController *)p1 animated:(BOOL)p2;
	-(void) navigationController:(UINavigationController *)p0 willShowViewController:(UIViewController *)p1 animated:(BOOL)p2;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Xamarin_Forms_Platform_iOS_ShellSectionRenderer_NavDelegate {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) navigationController:(UINavigationController *)p0 didShowViewController:(UIViewController *)p1 animated:(BOOL)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_158 (self, _cmd, &managed_method, p0, p1, p2, 0x98826);
	}

	-(void) navigationController:(UINavigationController *)p0 willShowViewController:(UIViewController *)p1 animated:(BOOL)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_158 (self, _cmd, &managed_method, p0, p1, p2, 0x98926);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation Xamarin_Forms_Platform_iOS_ShellSectionRenderer {
	XamarinObject __monoObjectGCHandle;
}
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


	-(UIViewController *) popViewControllerAnimated:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_143 (self, _cmd, &managed_method, p0, 0x96B26);
	}

	-(BOOL) navigationBar:(UINavigationBar *)p0 shouldPopItem:(UINavigationItem *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_159 (self, _cmd, &managed_method, p0, p1, 0x96C26);
	}

	-(void) viewDidLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x96D26);
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x96E26);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@interface Xamarin_Forms_Platform_iOS_ShellTableViewSource_SeparatorView : UIView {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) layoutSubviews;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Xamarin_Forms_Platform_iOS_ShellTableViewSource_SeparatorView {
	XamarinObject __monoObjectGCHandle;
}
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
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x9B026);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x9AF26);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIView class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Xamarin_Forms_Platform_iOS_ShellTableViewSource {
	XamarinObject __monoObjectGCHandle;
}
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


	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_105 (self, _cmd, &managed_method, p0, p1, 0x9A426);
	}

	-(CGFloat) tableView:(UITableView *)p0 heightForFooterInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_106 (self, _cmd, &managed_method, p0, p1, 0x9A526);
	}

	-(UIView *) tableView:(UITableView *)p0 viewForFooterInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_107 (self, _cmd, &managed_method, p0, p1, 0x9A626);
	}

	-(NSInteger) numberOfSectionsInTableView:(UITableView *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_109 (self, _cmd, &managed_method, p0, 0x9A726);
	}

	-(void) tableView:(UITableView *)p0 didSelectRowAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_110 (self, _cmd, &managed_method, p0, p1, 0x9A826);
	}

	-(NSInteger) tableView:(UITableView *)p0 numberOfRowsInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_111 (self, _cmd, &managed_method, p0, p1, 0x9A926);
	}

	-(void) scrollViewDidScroll:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_51 (self, _cmd, &managed_method, p0, 0x9AA26);
	}

	-(void) tableView:(UITableView *)p0 willDisplayCell:(UITableViewCell *)p1 forRowAtIndexPath:(NSIndexPath *)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_160 (self, _cmd, &managed_method, p0, p1, p2, 0x9AB26);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation Xamarin_Forms_Platform_iOS_ImageButtonRenderer {
}

	-(CGSize) sizeThatFits:(CGSize)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_102 (self, _cmd, &managed_method, p0, 0x9E826);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x9E726);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_ViewRenderer_2 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Xamarin_Forms_Platform_iOS_ToolbarItemExtensions_PrimaryToolbarItem : UIBarButtonItem {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Xamarin_Forms_Platform_iOS_ToolbarItemExtensions_PrimaryToolbarItem {
	XamarinObject __monoObjectGCHandle;
}
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


	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@interface Xamarin_Forms_Platform_iOS_ToolbarItemExtensions_SecondaryToolbarItem_SecondaryToolbarItemContent : UIControl {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(BOOL) isEnabled;
	-(void) setEnabled:(BOOL)p0;
	-(void) layoutSubviews;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Xamarin_Forms_Platform_iOS_ToolbarItemExtensions_SecondaryToolbarItem_SecondaryToolbarItemContent {
	XamarinObject __monoObjectGCHandle;
}
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


	-(BOOL) isEnabled
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_21 (self, _cmd, &managed_method, 0x23426);
	}

	-(void) setEnabled:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x23526);
	}

	-(void) layoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x23A26);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x23326);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIControl class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Xamarin_Forms_Platform_iOS_ToolbarItemExtensions_SecondaryToolbarItem : UIBarButtonItem {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Xamarin_Forms_Platform_iOS_ToolbarItemExtensions_SecondaryToolbarItem {
	XamarinObject __monoObjectGCHandle;
}
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


	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@interface Xamarin_Forms_Platform_iOS_NavigationRenderer_SecondaryToolbar : UIToolbar {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(NSArray *) items;
	-(void) setItems:(NSArray *)p0;
	-(void) layoutSubviews;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Xamarin_Forms_Platform_iOS_NavigationRenderer_SecondaryToolbar {
	XamarinObject __monoObjectGCHandle;
}
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


	-(NSArray *) items
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_155 (self, _cmd, &managed_method, 0x41726);
	}

	-(void) setItems:(NSArray *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_127 (self, _cmd, &managed_method, p0, 0x41826);
	}

	-(void) layoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x41926);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x41626);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIToolbar class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Xamarin_Forms_Platform_iOS_NavigationRenderer_ParentingViewController : UIViewController {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) didRotateFromInterfaceOrientation:(NSInteger)p0;
	-(void) viewDidAppear:(BOOL)p0;
	-(void) viewDidDisappear:(BOOL)p0;
	-(void) viewWillLayoutSubviews;
	-(void) viewDidLayoutSubviews;
	-(void) viewDidLoad;
	-(void) viewWillAppear:(BOOL)p0;
	-(NSUInteger) supportedInterfaceOrientations;
	-(NSInteger) preferredInterfaceOrientationForPresentation;
	-(BOOL) shouldAutorotate;
	-(BOOL) shouldAutorotateToInterfaceOrientation:(NSInteger)p0;
	-(BOOL) shouldAutomaticallyForwardRotationMethods;
	-(void) didMoveToParentViewController:(UIViewController *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Xamarin_Forms_Platform_iOS_NavigationRenderer_ParentingViewController {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) didRotateFromInterfaceOrientation:(NSInteger)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_138 (self, _cmd, &managed_method, p0, 0x42426);
	}

	-(void) viewDidAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x42726);
	}

	-(void) viewDidDisappear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x42826);
	}

	-(void) viewWillLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x42926);
	}

	-(void) viewDidLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x42A26);
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x42B26);
	}

	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x42C26);
	}

	-(NSUInteger) supportedInterfaceOrientations
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_19 (self, _cmd, &managed_method, 0x43C26);
	}

	-(NSInteger) preferredInterfaceOrientationForPresentation
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_97 (self, _cmd, &managed_method, 0x43D26);
	}

	-(BOOL) shouldAutorotate
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_21 (self, _cmd, &managed_method, 0x43E26);
	}

	-(BOOL) shouldAutorotateToInterfaceOrientation:(NSInteger)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_99 (self, _cmd, &managed_method, p0, 0x43F26);
	}

	-(BOOL) shouldAutomaticallyForwardRotationMethods
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_21 (self, _cmd, &managed_method, 0x44026);
	}

	-(void) didMoveToParentViewController:(UIViewController *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_134 (self, _cmd, &managed_method, p0, 0x44126);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@interface Xamarin_Forms_Platform_iOS_WkWebViewRenderer_CustomWebViewUIDelegate : NSObject<WKUIDelegate> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) webView:(WKWebView *)p0 runJavaScriptAlertPanelWithMessage:(NSString *)p1 initiatedByFrame:(WKFrameInfo *)p2 completionHandler:(id)p3;
	-(void) webView:(WKWebView *)p0 runJavaScriptConfirmPanelWithMessage:(NSString *)p1 initiatedByFrame:(WKFrameInfo *)p2 completionHandler:(id)p3;
	-(void) webView:(WKWebView *)p0 runJavaScriptTextInputPanelWithPrompt:(NSString *)p1 defaultText:(NSString *)p2 initiatedByFrame:(WKFrameInfo *)p3 completionHandler:(id)p4;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Xamarin_Forms_Platform_iOS_WkWebViewRenderer_CustomWebViewUIDelegate {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) webView:(WKWebView *)p0 runJavaScriptAlertPanelWithMessage:(NSString *)p1 initiatedByFrame:(WKFrameInfo *)p2 completionHandler:(id)p3
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_161 (self, _cmd, &managed_method, p0, p1, p2, p3, 0x7E326);
	}

	-(void) webView:(WKWebView *)p0 runJavaScriptConfirmPanelWithMessage:(NSString *)p1 initiatedByFrame:(WKFrameInfo *)p2 completionHandler:(id)p3
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_162 (self, _cmd, &managed_method, p0, p1, p2, p3, 0x7E426);
	}

	-(void) webView:(WKWebView *)p0 runJavaScriptTextInputPanelWithPrompt:(NSString *)p1 defaultText:(NSString *)p2 initiatedByFrame:(WKFrameInfo *)p3 completionHandler:(id)p4
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_163 (self, _cmd, &managed_method, p0, p1, p2, p3, p4, 0x7E526);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x7EB26);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation TTG_TTGSnackbar {
	XamarinObject __monoObjectGCHandle;
}
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


	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x2828);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIView class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation AIDatePickerController {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x4F28);
	}

	-(double) transitionDuration:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_164 (self, _cmd, &managed_method, p0, 0x5128);
	}

	-(void) animateTransition:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_165 (self, _cmd, &managed_method, p0, 0x5228);
	}

	-(id) animationControllerForPresentedController:(UIViewController *)p0 presentingController:(UIViewController *)p1 sourceController:(UIViewController *)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_166 (self, _cmd, &managed_method, p0, p1, p2, 0x5328);
	}

	-(id) animationControllerForDismissedController:(UIViewController *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_167 (self, _cmd, &managed_method, p0, 0x5428);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x4E28);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIViewController class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation BigTed_ProgressHUD {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) drawRect:(CGRect)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_101 (self, _cmd, &managed_method, p0, 0x2B2A);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x162A);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIView class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Xamarin_Essentials_SingleLocationListener : NSObject<CLLocationManagerDelegate, CLLocationManagerDelegate> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) locationManager:(CLLocationManager *)p0 didUpdateLocations:(NSArray *)p1;
	-(BOOL) locationManagerShouldDisplayHeadingCalibration:(CLLocationManager *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Xamarin_Essentials_SingleLocationListener {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) locationManager:(CLLocationManager *)p0 didUpdateLocations:(NSArray *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_168 (self, _cmd, &managed_method, p0, p1, 0x4032);
	}

	-(BOOL) locationManagerShouldDisplayHeadingCalibration:(CLLocationManager *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_169 (self, _cmd, &managed_method, p0, 0x4132);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x4232);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Xamarin_Essentials_ShareActivityItemSource : NSObject<UIActivityItemSource> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(NSObject *) activityViewController:(UIActivityViewController *)p0 itemForActivityType:(NSString *)p1;
	-(NSObject *) activityViewControllerPlaceholderItem:(UIActivityViewController *)p0;
	-(NSString *) activityViewController:(UIActivityViewController *)p0 subjectForActivityType:(NSString *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Xamarin_Essentials_ShareActivityItemSource {
	XamarinObject __monoObjectGCHandle;
}
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


	-(NSObject *) activityViewController:(UIActivityViewController *)p0 itemForActivityType:(NSString *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_170 (self, _cmd, &managed_method, p0, p1, 0x4432);
	}

	-(NSObject *) activityViewControllerPlaceholderItem:(UIActivityViewController *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_171 (self, _cmd, &managed_method, p0, 0x4532);
	}

	-(NSString *) activityViewController:(UIActivityViewController *)p0 subjectForActivityType:(NSString *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_172 (self, _cmd, &managed_method, p0, p1, 0x4632);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@interface OpenTK_Platform_iPhoneOS_CADisplayLinkTimeSource : NSObject {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) runIteration:(NSObject *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation OpenTK_Platform_iPhoneOS_CADisplayLinkTimeSource {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) runIteration:(NSObject *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_28 (self, _cmd, &managed_method, p0, 0x12C34);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation OpenTK_Platform_iPhoneOS_iPhoneOSGameView {
	XamarinObject __monoObjectGCHandle;
}
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
		return native_to_managed_trampoline_173 (self, _cmd, &managed_method, 0x13434);
	}

	-(void) layoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x17034);
	}

	-(void) willMoveToWindow:(UIWindow *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, 0x17C34);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) initWithCoder:(NSCoder *)p0
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_174 (self, _cmd, &managed_method, p0, &call_super, 0x13234);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIView class] };
			rv = ((id (*)(objc_super*, SEL, NSCoder *)) objc_msgSendSuper) (&super, @selector (initWithCoder:), p0);
		}
		return rv;
	}

	-(id) initWithFrame:(CGRect)p0
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_120 (self, _cmd, &managed_method, p0, &call_super, 0x13334);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIView class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@implementation ZXing_Net_Mobile_Forms_iOS_ZXingScannerViewRenderer {
}

	-(void) touchesEnded:(NSSet *)p0 withEvent:(UIEvent *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_96 (self, _cmd, &managed_method, p0, p1, 0x43C);
	}

	-(void) layoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x53C);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x63C);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_ViewRenderer_2 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation ZXing_Net_Mobile_Forms_iOS_ZXingBarcodeImageViewRenderer {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0xE3C);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Xamarin_Forms_Platform_iOS_ViewRenderer_2 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface ZXing_Mobile_CaptureDelegate : NSObject<AVCaptureMetadataOutputObjectsDelegate> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) captureOutput:(AVCaptureMetadataOutput *)p0 didOutputMetadataObjects:(NSArray *)p1 fromConnection:(AVCaptureConnection *)p2;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation ZXing_Mobile_CaptureDelegate {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) captureOutput:(AVCaptureMetadataOutput *)p0 didOutputMetadataObjects:(NSArray *)p1 fromConnection:(AVCaptureConnection *)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_175 (self, _cmd, &managed_method, p0, p1, p2, 0x343E);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation ZXing_Mobile_AVCaptureScannerViewController {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x403E);
	}

	-(void) viewDidAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x463E);
	}

	-(void) viewDidDisappear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x473E);
	}

	-(void) viewWillDisappear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0x483E);
	}

	-(void) didRotateFromInterfaceOrientation:(NSInteger)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_138 (self, _cmd, &managed_method, p0, 0x493E);
	}

	-(BOOL) shouldAutorotate
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_21 (self, _cmd, &managed_method, 0x4A3E);
	}

	-(NSUInteger) supportedInterfaceOrientations
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_19 (self, _cmd, &managed_method, 0x4B3E);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation ZXing_Mobile_ZXingScannerViewController {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0xCE3E);
	}

	-(void) viewDidAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0xD43E);
	}

	-(void) viewDidDisappear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0xD53E);
	}

	-(void) viewWillDisappear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_100 (self, _cmd, &managed_method, p0, 0xD63E);
	}

	-(void) didRotateFromInterfaceOrientation:(NSInteger)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_138 (self, _cmd, &managed_method, p0, 0xD73E);
	}

	-(BOOL) shouldAutorotate
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_21 (self, _cmd, &managed_method, 0xD83E);
	}

	-(NSUInteger) supportedInterfaceOrientations
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_19 (self, _cmd, &managed_method, 0xD93E);
	}

	-(BOOL) shouldAutorotateToInterfaceOrientation:(NSInteger)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_99 (self, _cmd, &managed_method, p0, 0xDA3E);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation ZXing_Mobile_AVCaptureScannerView {
	XamarinObject __monoObjectGCHandle;
}
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


	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x13E);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIView class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation ZXing_Mobile_ZXingDefaultOverlayView {
	XamarinObject __monoObjectGCHandle;
}
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
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, 0x863E);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation ZXing_Mobile_ZXingScannerView_OutputRecorder {
	XamarinObject __monoObjectGCHandle;
}
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


	-(void) captureOutput:(AVCaptureOutput *)p0 didDropSampleBuffer:(id)p1 fromConnection:(AVCaptureConnection *)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_176 (self, _cmd, &managed_method, p0, p1, p2, 0xB93E);
	}

	-(void) captureOutput:(AVCaptureOutput *)p0 didOutputSampleBuffer:(id)p1 fromConnection:(AVCaptureConnection *)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_176 (self, _cmd, &managed_method, p0, p1, p2, 0xBA3E);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}
@end

@implementation ZXing_Mobile_ZXingScannerView {
	XamarinObject __monoObjectGCHandle;
}
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


	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, 0x101D16);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x8F3E);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIView class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

	static MTClassMap __xamarin_class_map [] = {
		{ NULL, 0x28A16 /* #0 'NSObject' => 'Foundation.NSObject, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x17A16 /* #1 'UIApplicationDelegate' => 'UIKit.UIApplicationDelegate, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2D26 /* #2 'Xamarin_Forms_Platform_iOS_FormsApplicationDelegate' => 'Xamarin.Forms.Platform.iOS.FormsApplicationDelegate, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x300 /* #3 'AppDelegate' => 'FaultCodes.iOS.AppDelegate, FaultCodes.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1C916 /* #4 'UIResponder' => 'UIKit.UIResponder, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x13116 /* #5 'UIView' => 'UIKit.UIView, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4426 /* #6 'Xamarin_Forms_Platform_iOS_VisualElementRenderer_1' => 'Xamarin.Forms.Platform.iOS.VisualElementRenderer`1, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x4126 /* #7 'Xamarin_Forms_Platform_iOS_ViewRenderer_2' => 'Xamarin.Forms.Platform.iOS.ViewRenderer`2, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xAD26 /* #8 'Xamarin_Forms_Platform_iOS_PickerRendererBase_1' => 'Xamarin.Forms.Platform.iOS.PickerRendererBase`1, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xAC26 /* #9 'Xamarin_Forms_Platform_iOS_PickerRenderer' => 'Xamarin.Forms.Platform.iOS.PickerRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x400 /* #10 'FaultCodes_iOS_CenterPickeriOS' => 'FaultCodes.iOS.CenterPickeriOS, FaultCodes.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xA316 /* #11 'EAGLContext' => 'OpenGLES.EAGLContext, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xA716 /* #12 'EAGLSharegroup' => 'OpenGLES.EAGLSharegroup, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xA816 /* #13 'MPVolumeView' => 'MediaPlayer.MPVolumeView, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xAF16 /* #14 'GLKViewDelegate' => 'GLKit.GLKViewDelegate, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xB016 /* #15 'CSSearchableIndex' => 'CoreSpotlight.CSSearchableIndex, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xB116 /* #16 'CSSearchableItemAttributeSet' => 'CoreSpotlight.CSSearchableItemAttributeSet, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xB216 /* #17 'CSSearchableItem' => 'CoreSpotlight.CSSearchableItem, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xB416 /* #18 'CLLocation' => 'CoreLocation.CLLocation, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xB516 /* #19 'CLLocationManager' => 'CoreLocation.CLLocationManager, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xB616 /* #20 'CLLocationManagerDelegate' => 'CoreLocation.CLLocationManagerDelegate, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xCD16 /* #21 'CALayer' => 'CoreAnimation.CALayer, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xCE16 /* #22 'CADisplayLink' => 'CoreAnimation.CADisplayLink, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xCF16 /* #23 'CALayerDelegate' => 'CoreAnimation.CALayerDelegate, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xD116 /* #24 'CAEAGLLayer' => 'CoreAnimation.CAEAGLLayer, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xD216 /* #25 'CAShapeLayer' => 'CoreAnimation.CAShapeLayer, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xD316 /* #26 'CATransaction' => 'CoreAnimation.CATransaction, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xD716 /* #27 'WKFrameInfo' => 'WebKit.WKFrameInfo, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xD816 /* #28 'WKNavigation' => 'WebKit.WKNavigation, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xD916 /* #29 'WKNavigationAction' => 'WebKit.WKNavigationAction, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xDE16 /* #30 'WKNavigationDelegate' => 'WebKit.WKNavigationDelegate, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xE316 /* #31 'WKUIDelegate' => 'WebKit.WKUIDelegate, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xE416 /* #32 'WKWebViewConfiguration' => 'WebKit.WKWebViewConfiguration, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xE516 /* #33 'NSLayoutConstraint' => 'UIKit.NSLayoutConstraint, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xE616 /* #34 'UIPresentationController' => 'UIKit.UIPresentationController, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xE716 /* #35 'NSLayoutManager' => 'UIKit.NSLayoutManager, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x13616 /* #36 'UIViewController' => 'UIKit.UIViewController, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xEA16 /* #37 'UIActivityViewController' => 'UIKit.UIActivityViewController, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xEB16 /* #38 'UIAppearance' => 'UIKit.UIAppearance, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xF316 /* #39 'UIBarItem' => 'UIKit.UIBarItem, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xF416 /* #40 'UIBezierPath' => 'UIKit.UIBezierPath, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1CB16 /* #41 'UIScrollView' => 'UIKit.UIScrollView, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xF716 /* #42 'UICollectionView' => 'UIKit.UICollectionView, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xF816 /* #43 'UICollectionViewLayout' => 'UIKit.UICollectionViewLayout, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xF916 /* #44 'UICollectionViewLayoutAttributes' => 'UIKit.UICollectionViewLayoutAttributes, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xFA16 /* #45 'UIColor' => 'UIKit.UIColor, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xFB16 /* #46 'UIKit_UIControlEventProxy' => 'UIKit.UIControlEventProxy, Xamarin.iOS' */, (MTTypeFlags) (2) /* UserType */ },
		{ NULL, 0x10116 /* #47 'UIEvent' => 'UIKit.UIEvent, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x10216 /* #48 'UIFont' => 'UIKit.UIFont, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x10316 /* #49 'UIGestureRecognizer' => 'UIKit.UIGestureRecognizer, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x11016 /* #50 'UISwipeGestureRecognizer' => 'UIKit.UISwipeGestureRecognizer, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x11216 /* #51 'UIImage' => 'UIKit.UIImage, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x11A16 /* #52 'UINavigationController' => 'UIKit.UINavigationController, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x11B16 /* #53 'UIPickerView' => 'UIKit.UIPickerView, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x11C16 /* #54 'UIPopoverController' => 'UIKit.UIPopoverController, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x11D16 /* #55 'UIPopoverPresentationController' => 'UIKit.UIPopoverPresentationController, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x11E16 /* #56 'UIScreen' => 'UIKit.UIScreen, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x12716 /* #57 'UITableViewCell' => 'UIKit.UITableViewCell, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x13016 /* #58 'UIToolbar' => 'UIKit.UIToolbar, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x13A16 /* #59 'UIWindow' => 'UIKit.UIWindow, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x13B16 /* #60 'UIFontDescriptor' => 'UIKit.UIFontDescriptor, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x15716 /* #61 'NSLayoutAnchor' => 'UIKit.NSLayoutAnchor`1, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x15916 /* #62 'NSLayoutDimension' => 'UIKit.NSLayoutDimension, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x15C16 /* #63 'NSLayoutXAxisAnchor' => 'UIKit.NSLayoutXAxisAnchor, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x15D16 /* #64 'NSLayoutYAxisAnchor' => 'UIKit.NSLayoutYAxisAnchor, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x15F16 /* #65 'NSParagraphStyle' => 'UIKit.NSParagraphStyle, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x15E16 /* #66 'NSMutableParagraphStyle' => 'UIKit.NSMutableParagraphStyle, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x16016 /* #67 'NSShadow' => 'UIKit.NSShadow, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x16216 /* #68 'NSTextAttachment' => 'UIKit.NSTextAttachment, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x16316 /* #69 'NSTextContainer' => 'UIKit.NSTextContainer, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x23D16 /* #70 'NSAttributedString' => 'Foundation.NSAttributedString, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x24F16 /* #71 'NSMutableAttributedString' => 'Foundation.NSMutableAttributedString, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x16416 /* #72 'NSTextStorage' => 'UIKit.NSTextStorage, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x16C16 /* #73 'UIActionSheetDelegate' => 'UIKit.UIActionSheetDelegate, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x16D16 /* #74 'UIActivity' => 'UIKit.UIActivity, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x16E16 /* #75 'UIActivityIndicatorView' => 'UIKit.UIActivityIndicatorView, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x17216 /* #76 'UIActivityItemSource' => 'UIKit.UIActivityItemSource, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x17316 /* #77 'UIAlertAction' => 'UIKit.UIAlertAction, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x17516 /* #78 'UIAlertController' => 'UIKit.UIAlertController, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x17B16 /* #79 'UIBarButtonItemGroup' => 'UIKit.UIBarButtonItemGroup, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x22E16 /* #80 'UIVisualEffect' => 'UIKit.UIVisualEffect, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x18216 /* #81 'UIBlurEffect' => 'UIKit.UIBlurEffect, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x18716 /* #82 'UICollectionReusableView' => 'UIKit.UICollectionReusableView, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x18916 /* #83 'UICollectionViewCell' => 'UIKit.UICollectionViewCell, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x18A16 /* #84 'UICollectionViewController' => 'UIKit.UICollectionViewController, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x18F16 /* #85 'UICollectionViewDelegate' => 'UIKit.UICollectionViewDelegate, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x19016 /* #86 'UICollectionViewDelegateFlowLayout' => 'UIKit.UICollectionViewDelegateFlowLayout, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x19116 /* #87 'UICollectionViewFlowLayout' => 'UIKit.UICollectionViewFlowLayout, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x19416 /* #88 'UICollectionViewLayoutInvalidationContext' => 'UIKit.UICollectionViewLayoutInvalidationContext, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x19216 /* #89 'UICollectionViewFlowLayoutInvalidationContext' => 'UIKit.UICollectionViewFlowLayoutInvalidationContext, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x19716 /* #90 'UICollectionViewUpdateItem' => 'UIKit.UICollectionViewUpdateItem, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xFC16 /* #91 'UIControl' => 'UIKit.UIControl, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x19E16 /* #92 'UIDatePicker' => 'UIKit.UIDatePicker, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1AC16 /* #93 'UIGestureRecognizerDelegate' => 'UIKit.UIGestureRecognizerDelegate, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1AF16 /* #94 'UIImageView' => 'UIKit.UIImageView, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1B416 /* #95 'UIKeyCommand' => 'UIKit.UIKeyCommand, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1B616 /* #96 'UILabel' => 'UIKit.UILabel, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1BD16 /* #97 'UINavigationControllerDelegate' => 'UIKit.UINavigationControllerDelegate, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1BE16 /* #98 'UINavigationItem' => 'UIKit.UINavigationItem, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1C216 /* #99 'UIPickerViewModel' => 'UIKit.UIPickerViewModel, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1C416 /* #100 'UIPress' => 'UIKit.UIPress, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1C516 /* #101 'UIProgressView' => 'UIKit.UIProgressView, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1C816 /* #102 'UIRefreshControl' => 'UIKit.UIRefreshControl, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1D416 /* #103 'UIScrollViewDelegate' => 'UIKit.UIScrollViewDelegate, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1DC16 /* #104 'UISearchResultsUpdating' => 'UIKit.UISearchResultsUpdating, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1DE16 /* #105 'UISlider' => 'UIKit.UISlider, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1E716 /* #106 'UISplitViewControllerDelegate' => 'UIKit.UISplitViewControllerDelegate, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1EB16 /* #107 'UIStepper' => 'UIKit.UIStepper, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1F016 /* #108 'UITabBar' => 'UIKit.UITabBar, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1F816 /* #109 'UITabBarItem' => 'UIKit.UITabBarItem, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1FD16 /* #110 'UITableViewController' => 'UIKit.UITableViewController, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x20016 /* #111 'UITableViewHeaderFooterView' => 'UIKit.UITableViewHeaderFooterView, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x20316 /* #112 'UITableViewSource' => 'UIKit.UITableViewSource, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x20F16 /* #113 'UITextInputAssistantItem' => 'UIKit.UITextInputAssistantItem, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x21416 /* #114 'UITextPosition' => 'UIKit.UITextPosition, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x21516 /* #115 'UITextRange' => 'UIKit.UITextRange, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x21616 /* #116 'UITextSelectionRect' => 'UIKit.UITextSelectionRect, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x21C16 /* #117 'UITouch' => 'UIKit.UITouch, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x22F16 /* #118 'UIVisualEffectView' => 'UIKit.UIVisualEffectView, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x23516 /* #119 'UIWebViewDelegate' => 'UIKit.UIWebViewDelegate, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x23A16 /* #120 'NSUserActivity' => 'Foundation.NSUserActivity, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x23C16 /* #121 'NSArray' => 'Foundation.NSArray, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x23E16 /* #122 'NSBundle' => 'Foundation.NSBundle, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x23F16 /* #123 'NSCalendar' => 'Foundation.NSCalendar, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x24016 /* #124 'NSCoder' => 'Foundation.NSCoder, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x24616 /* #125 'NSDate' => 'Foundation.NSDate, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x24A16 /* #126 'NSFormatter' => 'Foundation.NSFormatter, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x24B16 /* #127 'NSHTTPCookie' => 'Foundation.NSHttpCookie, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x24C16 /* #128 'NSHTTPCookieStorage' => 'Foundation.NSHttpCookieStorage, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x26116 /* #129 'NSStream' => 'Foundation.NSStream, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x24D16 /* #130 'NSInputStream' => 'Foundation.NSInputStream, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x24E16 /* #131 'NSLocale' => 'Foundation.NSLocale, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x25516 /* #132 'NSURLRequest' => 'Foundation.NSUrlRequest, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x25616 /* #133 'NSMutableURLRequest' => 'Foundation.NSMutableUrlRequest, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x25716 /* #134 'Foundation_InternalNSNotificationHandler' => 'Foundation.InternalNSNotificationHandler, Xamarin.iOS' */, (MTTypeFlags) (2) /* UserType */ },
		{ NULL, 0x25B16 /* #135 'NSNull' => 'Foundation.NSNull, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x25C16 /* #136 'NSProxy' => 'Foundation.NSProxy, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x25D16 /* #137 'NSRunLoop' => 'Foundation.NSRunLoop, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x26216 /* #138 'NSString' => 'Foundation.NSString, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x26316 /* #139 'NSThread' => 'Foundation.NSThread, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x26416 /* #140 'NSTimer' => 'Foundation.NSTimer, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x26516 /* #141 'NSTimeZone' => 'Foundation.NSTimeZone, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x26616 /* #142 'NSUndoManager' => 'Foundation.NSUndoManager, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x26716 /* #143 'NSURL' => 'Foundation.NSUrl, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x26816 /* #144 'NSURLCredential' => 'Foundation.NSUrlCredential, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x26916 /* #145 'NSURLProtectionSpace' => 'Foundation.NSUrlProtectionSpace, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x26B16 /* #146 'NSUserDefaults' => 'Foundation.NSUserDefaults, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x27F16 /* #147 'Foundation_NSDispatcher' => 'Foundation.NSDispatcher, Xamarin.iOS' */, (MTTypeFlags) (2) /* UserType */ },
		{ NULL, 0x28016 /* #148 '__MonoMac_NSActionDispatcher' => 'Foundation.NSActionDispatcher, Xamarin.iOS' */, (MTTypeFlags) (2) /* UserType */ },
		{ NULL, 0x28116 /* #149 '__MonoMac_NSSynchronizationContextDispatcher' => 'Foundation.NSSynchronizationContextDispatcher, Xamarin.iOS' */, (MTTypeFlags) (2) /* UserType */ },
		{ NULL, 0x28216 /* #150 '__Xamarin_NSTimerActionDispatcher' => 'Foundation.NSTimerActionDispatcher, Xamarin.iOS' */, (MTTypeFlags) (2) /* UserType */ },
		{ NULL, 0x28316 /* #151 'Foundation_NSAsyncDispatcher' => 'Foundation.NSAsyncDispatcher, Xamarin.iOS' */, (MTTypeFlags) (2) /* UserType */ },
		{ NULL, 0x28416 /* #152 '__MonoMac_NSAsyncActionDispatcher' => 'Foundation.NSAsyncActionDispatcher, Xamarin.iOS' */, (MTTypeFlags) (2) /* UserType */ },
		{ NULL, 0x28516 /* #153 '__MonoMac_NSAsyncSynchronizationContextDispatcher' => 'Foundation.NSAsyncSynchronizationContextDispatcher, Xamarin.iOS' */, (MTTypeFlags) (2) /* UserType */ },
		{ NULL, 0x28616 /* #154 'NSAutoreleasePool' => 'Foundation.NSAutoreleasePool, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x28716 /* #155 'NSError' => 'Foundation.NSError, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x29116 /* #156 'NSValue' => 'Foundation.NSValue, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x28816 /* #157 'NSNumber' => 'Foundation.NSNumber, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x29716 /* #158 'NSDateComponents' => 'Foundation.NSDateComponents, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x29816 /* #159 'NSCache' => 'Foundation.NSCache, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x29916 /* #160 'NSCachedURLResponse' => 'Foundation.NSCachedUrlResponse, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x29A16 /* #161 'NSDateFormatter' => 'Foundation.NSDateFormatter, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x29B16 /* #162 'NSEnumerator' => 'Foundation.NSEnumerator, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x29C16 /* #163 'NSException' => 'Foundation.NSException, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2A616 /* #164 'NSURLResponse' => 'Foundation.NSUrlResponse, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x29D16 /* #165 'NSHTTPURLResponse' => 'Foundation.NSHttpUrlResponse, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x29E16 /* #166 'NSIndexSet' => 'Foundation.NSIndexSet, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x29F16 /* #167 'NSNotification' => 'Foundation.NSNotification, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2A216 /* #168 'NSOperationQueue' => 'Foundation.NSOperationQueue, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2A416 /* #169 'NSStringDrawingContext' => 'Foundation.NSStringDrawingContext, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2A516 /* #170 'NSURLAuthenticationChallenge' => 'Foundation.NSUrlAuthenticationChallenge, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2A716 /* #171 'NSURLSession' => 'Foundation.NSUrlSession, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2A816 /* #172 'NSURLSessionConfiguration' => 'Foundation.NSUrlSessionConfiguration, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2B016 /* #173 'NSURLSessionDelegate' => 'Foundation.NSUrlSessionDelegate, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2B516 /* #174 'NSURLSessionTaskDelegate' => 'Foundation.NSUrlSessionTaskDelegate, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2AC16 /* #175 'NSURLSessionDataDelegate' => 'Foundation.NSUrlSessionDataDelegate, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2B116 /* #176 'NSURLSessionTask' => 'Foundation.NSUrlSessionTask, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2AD16 /* #177 'NSURLSessionDataTask' => 'Foundation.NSUrlSessionDataTask, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2D916 /* #178 'AVCaptureConnection' => 'AVFoundation.AVCaptureConnection, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2E816 /* #179 'AVCaptureInput' => 'AVFoundation.AVCaptureInput, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2DA16 /* #180 'AVCaptureDeviceInput' => 'AVFoundation.AVCaptureDeviceInput, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2EC16 /* #181 'AVCaptureOutput' => 'AVFoundation.AVCaptureOutput, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2DB16 /* #182 'AVCaptureMetadataOutput' => 'AVFoundation.AVCaptureMetadataOutput, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2DF16 /* #183 'AVPlayerLayer' => 'AVFoundation.AVPlayerLayer, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2E116 /* #184 'AVMetadataObject' => 'AVFoundation.AVMetadataObject, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2E016 /* #185 'AVMetadataMachineReadableCodeObject' => 'AVFoundation.AVMetadataMachineReadableCodeObject, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2E316 /* #186 'AVCaptureDevice' => 'AVFoundation.AVCaptureDevice, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2EB16 /* #187 'AVCaptureMetadataOutputObjectsDelegate' => 'AVFoundation.AVCaptureMetadataOutputObjectsDelegate, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2ED16 /* #188 'AVCaptureSession' => 'AVFoundation.AVCaptureSession, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2EF16 /* #189 'AVCaptureVideoDataOutput' => 'AVFoundation.AVCaptureVideoDataOutput, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2F016 /* #190 'AVCaptureVideoDataOutputSampleBufferDelegate' => 'AVFoundation.AVCaptureVideoDataOutputSampleBufferDelegate, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1216 /* #191 'System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream' => 'System.Net.Http.NSUrlSessionHandler+WrappedNSInputStream, Xamarin.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xAB16 /* #192 'GLKit_GLKView__GLKViewDelegate' => 'GLKit.GLKView+_GLKViewDelegate, Xamarin.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xAA16 /* #193 'GLKView' => 'GLKit.GLKView, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xD416 /* #194 'WKWebView' => 'WebKit.WKWebView, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xE816 /* #195 'UIActionSheet' => 'UIKit.UIActionSheet, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xED16 /* #196 'UIApplication' => 'UIKit.UIApplication, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xF216 /* #197 'UIKit_UIBarButtonItem_Callback' => 'UIKit.UIBarButtonItem+Callback, Xamarin.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xF116 /* #198 'UIBarButtonItem' => 'UIKit.UIBarButtonItem, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x13216 /* #199 'UIKit_UIView_UIViewAppearance' => 'UIKit.UIView+UIViewAppearance, Xamarin.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xFD16 /* #200 'UIKit_UIControl_UIControlAppearance' => 'UIKit.UIControl+UIControlAppearance, Xamarin.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xF616 /* #201 'UIKit_UIButton_UIButtonAppearance' => 'UIKit.UIButton+UIButtonAppearance, Xamarin.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xF516 /* #202 'UIButton' => 'UIKit.UIButton, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xFE16 /* #203 'UIDevice' => 'UIKit.UIDevice, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x10416 /* #204 '__UIGestureRecognizerToken' => 'UIKit.UIGestureRecognizer+Token, Xamarin.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x10516 /* #205 '__UIGestureRecognizerParameterlessToken' => 'UIKit.UIGestureRecognizer+ParameterlessDispatch, Xamarin.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x10616 /* #206 'UIKit_UIGestureRecognizer__UIGestureRecognizerDelegate' => 'UIKit.UIGestureRecognizer+_UIGestureRecognizerDelegate, Xamarin.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x10916 /* #207 '__UILongPressGestureRecognizer' => 'UIKit.UILongPressGestureRecognizer+Callback, Xamarin.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x10816 /* #208 'UILongPressGestureRecognizer' => 'UIKit.UILongPressGestureRecognizer, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x10B16 /* #209 '__UITapGestureRecognizer' => 'UIKit.UITapGestureRecognizer+Callback, Xamarin.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x10A16 /* #210 'UITapGestureRecognizer' => 'UIKit.UITapGestureRecognizer, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x10D16 /* #211 '__UIPanGestureRecognizer' => 'UIKit.UIPanGestureRecognizer+Callback, Xamarin.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x10C16 /* #212 'UIPanGestureRecognizer' => 'UIKit.UIPanGestureRecognizer, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x10F16 /* #213 '__UIPinchGestureRecognizer' => 'UIKit.UIPinchGestureRecognizer+Callback, Xamarin.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x10E16 /* #214 'UIPinchGestureRecognizer' => 'UIKit.UIPinchGestureRecognizer, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x11916 /* #215 'UIKit_UINavigationBar_UINavigationBarAppearance' => 'UIKit.UINavigationBar+UINavigationBarAppearance, Xamarin.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x11816 /* #216 'UINavigationBar' => 'UIKit.UINavigationBar, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x12116 /* #217 'UIKit_UISearchBar__UISearchBarDelegate' => 'UIKit.UISearchBar+_UISearchBarDelegate, Xamarin.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x12016 /* #218 'UISearchBar' => 'UIKit.UISearchBar, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x12316 /* #219 'UIKit_UISearchController___Xamarin_UISearchResultsUpdating' => 'UIKit.UISearchController+__Xamarin_UISearchResultsUpdating, Xamarin.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x12216 /* #220 'UISearchController' => 'UIKit.UISearchController, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1CD16 /* #221 'UIKit_UIScrollView_UIScrollViewAppearance' => 'UIKit.UIScrollView+UIScrollViewAppearance, Xamarin.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x12616 /* #222 'UIKit_UITableView_UITableViewAppearance' => 'UIKit.UITableView+UITableViewAppearance, Xamarin.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x12516 /* #223 'UITableView' => 'UIKit.UITableView, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x12D16 /* #224 'UIKit_UITextField__UITextFieldDelegate' => 'UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x12C16 /* #225 'UITextField' => 'UIKit.UITextField, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1CC16 /* #226 'UIKit_UIScrollView__UIScrollViewDelegate' => 'UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x12F16 /* #227 'UIKit_UITextView__UITextViewDelegate' => 'UIKit.UITextView+_UITextViewDelegate, Xamarin.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x12E16 /* #228 'UITextView' => 'UIKit.UITextView, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1E016 /* #229 'UIKit_UISplitViewController__UISplitViewControllerDelegate' => 'UIKit.UISplitViewController+_UISplitViewControllerDelegate, Xamarin.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1DF16 /* #230 'UISplitViewController' => 'UIKit.UISplitViewController, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1EF16 /* #231 'UIKit_UISwitch_UISwitchAppearance' => 'UIKit.UISwitch+UISwitchAppearance, Xamarin.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1EE16 /* #232 'UISwitch' => 'UIKit.UISwitch, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1F216 /* #233 'UIKit_UITabBarController__UITabBarControllerDelegate' => 'UIKit.UITabBarController+_UITabBarControllerDelegate, Xamarin.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1F116 /* #234 'UITabBarController' => 'UIKit.UITabBarController, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x23116 /* #235 'UIKit_UIWebView__UIWebViewDelegate' => 'UIKit.UIWebView+_UIWebViewDelegate, Xamarin.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x23016 /* #236 'UIWebView' => 'UIKit.UIWebView, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x23816 /* #237 'NSIndexPath' => 'Foundation.NSIndexPath, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x24116 /* #238 'NSData' => 'Foundation.NSData, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x24716 /* #239 'NSDictionary' => 'Foundation.NSDictionary, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x25016 /* #240 'NSMutableData' => 'Foundation.NSMutableData, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x25316 /* #241 'NSMutableDictionary' => 'Foundation.NSMutableDictionary, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x25816 /* #242 'NSNotificationCenter' => 'Foundation.NSNotificationCenter, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x25F16 /* #243 'NSSet' => 'Foundation.NSSet, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x28C16 /* #244 '__NSObject_Disposer' => 'Foundation.NSObject+NSObject_Disposer, Xamarin.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x28D16 /* #245 '__XamarinObjectObserver' => 'Foundation.NSObject+Observer, Xamarin.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x2DC16 /* #246 'AVCaptureVideoPreviewLayer' => 'AVFoundation.AVCaptureVideoPreviewLayer, Xamarin.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xA16 /* #247 'System_Net_Http_NSUrlSessionHandler_NSUrlSessionHandlerDelegate' => 'System.Net.Http.NSUrlSessionHandler+NSUrlSessionHandlerDelegate, Xamarin.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1A26 /* #248 'Xamarin_Forms_Platform_iOS_iOS7ButtonContainer' => 'Xamarin.Forms.Platform.iOS.iOS7ButtonContainer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1E26 /* #249 'Xamarin_Forms_Platform_iOS_GlobalCloseContextGestureRecognizer' => 'Xamarin.Forms.Platform.iOS.GlobalCloseContextGestureRecognizer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x3B26 /* #250 'Xamarin_Forms_Platform_iOS_PlatformRenderer' => 'Xamarin.Forms.Platform.iOS.PlatformRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x4026 /* #251 'Xamarin_Forms_Platform_iOS_ViewRenderer' => 'Xamarin.Forms.Platform.iOS.ViewRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x4A26 /* #252 'Xamarin_Forms_Platform_iOS_CellTableViewCell' => 'Xamarin.Forms.Platform.iOS.CellTableViewCell, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x6426 /* #253 'Xamarin_Forms_Platform_iOS_ActivityIndicatorRenderer' => 'Xamarin.Forms.Platform.iOS.ActivityIndicatorRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x6526 /* #254 'Xamarin_Forms_Platform_iOS_BoxRenderer' => 'Xamarin.Forms.Platform.iOS.BoxRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x6626 /* #255 'Xamarin_Forms_Platform_iOS_ButtonRenderer' => 'Xamarin.Forms.Platform.iOS.ButtonRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x6926 /* #256 'Xamarin_Forms_Platform_iOS_NoCaretField' => 'Xamarin.Forms.Platform.iOS.NoCaretField, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x6B26 /* #257 'Xamarin_Forms_Platform_iOS_DatePickerRendererBase_1' => 'Xamarin.Forms.Platform.iOS.DatePickerRendererBase`1, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x6A26 /* #258 'Xamarin_Forms_Platform_iOS_DatePickerRenderer' => 'Xamarin.Forms.Platform.iOS.DatePickerRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x6E26 /* #259 'Xamarin_Forms_Platform_iOS_EditorRendererBase_1' => 'Xamarin.Forms.Platform.iOS.EditorRendererBase`1, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x6D26 /* #260 'Xamarin_Forms_Platform_iOS_EditorRenderer' => 'Xamarin.Forms.Platform.iOS.EditorRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x7226 /* #261 'Xamarin_Forms_Platform_iOS_EntryRendererBase_1' => 'Xamarin.Forms.Platform.iOS.EntryRendererBase`1, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x7126 /* #262 'Xamarin_Forms_Platform_iOS_EntryRenderer' => 'Xamarin.Forms.Platform.iOS.EntryRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x7426 /* #263 'Xamarin_Forms_Platform_iOS_FrameRenderer' => 'Xamarin.Forms.Platform.iOS.FrameRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x8426 /* #264 'Xamarin_Forms_Platform_iOS_LabelRenderer' => 'Xamarin.Forms.Platform.iOS.LabelRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x8D26 /* #265 'Xamarin_Forms_Platform_iOS_HeaderWrapperView' => 'Xamarin.Forms.Platform.iOS.HeaderWrapperView, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x9026 /* #266 'Xamarin_Forms_Platform_iOS_FormsRefreshControl' => 'Xamarin.Forms.Platform.iOS.FormsRefreshControl, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xAB26 /* #267 'Xamarin_Forms_Platform_iOS_ReadOnlyField' => 'Xamarin.Forms.Platform.iOS.ReadOnlyField, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xB026 /* #268 'Xamarin_Forms_Platform_iOS_ProgressBarRenderer' => 'Xamarin.Forms.Platform.iOS.ProgressBarRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xB126 /* #269 'Xamarin_Forms_Platform_iOS_ScrollViewRenderer' => 'Xamarin.Forms.Platform.iOS.ScrollViewRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xB226 /* #270 'Xamarin_Forms_Platform_iOS_SearchBarRenderer' => 'Xamarin.Forms.Platform.iOS.SearchBarRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xB326 /* #271 'Xamarin_Forms_Platform_iOS_SliderRenderer' => 'Xamarin.Forms.Platform.iOS.SliderRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xB426 /* #272 'Xamarin_Forms_Platform_iOS_StepperRenderer' => 'Xamarin.Forms.Platform.iOS.StepperRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xB526 /* #273 'Xamarin_Forms_Platform_iOS_SwitchRenderer' => 'Xamarin.Forms.Platform.iOS.SwitchRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xB926 /* #274 'Xamarin_Forms_Platform_iOS_TableViewModelRenderer' => 'Xamarin.Forms.Platform.iOS.TableViewModelRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xBA26 /* #275 'Xamarin_Forms_Platform_iOS_UnEvenTableViewModelRenderer' => 'Xamarin.Forms.Platform.iOS.UnEvenTableViewModelRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xBB26 /* #276 'Xamarin_Forms_Platform_iOS_TableViewRenderer' => 'Xamarin.Forms.Platform.iOS.TableViewRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xBC26 /* #277 'Xamarin_Forms_Platform_iOS_ChildViewController' => 'Xamarin.Forms.Platform.iOS.ChildViewController, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xBD26 /* #278 'Xamarin_Forms_Platform_iOS_EventedViewController' => 'Xamarin.Forms.Platform.iOS.EventedViewController, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xC126 /* #279 'Xamarin_Forms_Platform_iOS_TimePickerRendererBase_1' => 'Xamarin.Forms.Platform.iOS.TimePickerRendererBase`1, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xC026 /* #280 'Xamarin_Forms_Platform_iOS_TimePickerRenderer' => 'Xamarin.Forms.Platform.iOS.TimePickerRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x14E26 /* #281 'Xamarin_Forms_Platform_iOS_ItemsViewRenderer' => 'Xamarin.Forms.Platform.iOS.ItemsViewRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xC926 /* #282 'Xamarin_Forms_Platform_iOS_CarouselViewRenderer' => 'Xamarin.Forms.Platform.iOS.CarouselViewRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xDA26 /* #283 'Xamarin_Forms_Platform_iOS_SelectableItemsViewRenderer' => 'Xamarin.Forms.Platform.iOS.SelectableItemsViewRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xCD26 /* #284 'Xamarin_Forms_Platform_iOS_GroupableItemsViewRenderer' => 'Xamarin.Forms.Platform.iOS.GroupableItemsViewRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xCA26 /* #285 'Xamarin_Forms_Platform_iOS_CollectionViewRenderer' => 'Xamarin.Forms.Platform.iOS.CollectionViewRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xD626 /* #286 'Xamarin_Forms_Platform_iOS_ItemsViewController' => 'Xamarin.Forms.Platform.iOS.ItemsViewController, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xD926 /* #287 'Xamarin_Forms_Platform_iOS_SelectableItemsViewController' => 'Xamarin.Forms.Platform.iOS.SelectableItemsViewController, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xCC26 /* #288 'Xamarin_Forms_Platform_iOS_GroupableItemsViewController' => 'Xamarin.Forms.Platform.iOS.GroupableItemsViewController, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xD326 /* #289 'Xamarin_Forms_Platform_iOS_ItemsViewCell' => 'Xamarin.Forms.Platform.iOS.ItemsViewCell, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xD426 /* #290 'Xamarin_Forms_Platform_iOS_DefaultCell' => 'Xamarin.Forms.Platform.iOS.DefaultCell, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xCE26 /* #291 'Xamarin_Forms_Platform_iOS_HorizontalDefaultSupplementalView' => 'Xamarin.Forms.Platform.iOS.HorizontalDefaultSupplementalView, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xE726 /* #292 'Xamarin_Forms_Platform_iOS_TemplatedCell' => 'Xamarin.Forms.Platform.iOS.TemplatedCell, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xCF26 /* #293 'Xamarin_Forms_Platform_iOS_HorizontalTemplatedSupplementalView' => 'Xamarin.Forms.Platform.iOS.HorizontalTemplatedSupplementalView, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xD526 /* #294 'Xamarin_Forms_Platform_iOS_HorizontalDefaultCell' => 'Xamarin.Forms.Platform.iOS.HorizontalDefaultCell, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xDD26 /* #295 'Xamarin_Forms_Platform_iOS_VerticalDefaultCell' => 'Xamarin.Forms.Platform.iOS.VerticalDefaultCell, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xDF26 /* #296 'Xamarin_Forms_Platform_iOS_ItemsViewLayout' => 'Xamarin.Forms.Platform.iOS.ItemsViewLayout, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xDE26 /* #297 'Xamarin_Forms_Platform_iOS_GridViewLayout' => 'Xamarin.Forms.Platform.iOS.GridViewLayout, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xE126 /* #298 'Xamarin_Forms_Platform_iOS_ListViewLayout' => 'Xamarin.Forms.Platform.iOS.ListViewLayout, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xE826 /* #299 'Xamarin_Forms_Platform_iOS_HorizontalTemplatedCell' => 'Xamarin.Forms.Platform.iOS.HorizontalTemplatedCell, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xE926 /* #300 'Xamarin_Forms_Platform_iOS_VerticalDefaultSupplementalView' => 'Xamarin.Forms.Platform.iOS.VerticalDefaultSupplementalView, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xEA26 /* #301 'Xamarin_Forms_Platform_iOS_VerticalTemplatedCell' => 'Xamarin.Forms.Platform.iOS.VerticalTemplatedCell, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xEB26 /* #302 'Xamarin_Forms_Platform_iOS_VerticalTemplatedSupplementalView' => 'Xamarin.Forms.Platform.iOS.VerticalTemplatedSupplementalView, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xF426 /* #303 'Xamarin_Forms_Platform_iOS_ModalWrapper' => 'Xamarin.Forms.Platform.iOS.ModalWrapper, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xF526 /* #304 'Xamarin_Forms_Platform_iOS_FormsCheckBox' => 'Xamarin.Forms.Platform.iOS.FormsCheckBox, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xFE26 /* #305 'Xamarin_Forms_Platform_iOS_NativeViewWrapperRenderer' => 'Xamarin.Forms.Platform.iOS.NativeViewWrapperRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x10326 /* #306 'Xamarin_Forms_Platform_iOS_PageContainer' => 'Xamarin.Forms.Platform.iOS.PageContainer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x10426 /* #307 'Xamarin_Forms_Platform_iOS_CheckBoxRendererBase_1' => 'Xamarin.Forms.Platform.iOS.CheckBoxRendererBase`1, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x12226 /* #308 'Xamarin_Forms_Platform_iOS_ShellItemRenderer' => 'Xamarin.Forms.Platform.iOS.ShellItemRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x13226 /* #309 'Xamarin_Forms_Platform_iOS_ShellSearchResultsRenderer' => 'Xamarin.Forms.Platform.iOS.ShellSearchResultsRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x14026 /* #310 'Xamarin_Forms_Platform_iOS_ShellTableViewController' => 'Xamarin.Forms.Platform.iOS.ShellTableViewController, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x14426 /* #311 'Xamarin_Forms_Platform_iOS_TabletShellFlyoutRenderer' => 'Xamarin.Forms.Platform.iOS.TabletShellFlyoutRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x14526 /* #312 'Xamarin_Forms_Platform_iOS_UIContainerCell' => 'Xamarin.Forms.Platform.iOS.UIContainerCell, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x14626 /* #313 'Xamarin_Forms_Platform_iOS_UIContainerView' => 'Xamarin.Forms.Platform.iOS.UIContainerView, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x15C26 /* #314 'Xamarin_Forms_Platform_iOS_NativeViewPropertyListener' => 'Xamarin.Forms.Platform.iOS.NativeViewPropertyListener, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x16A26 /* #315 'Xamarin_Forms_Platform_iOS_CheckBoxRenderer' => 'Xamarin.Forms.Platform.iOS.CheckBoxRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1626 /* #316 'Xamarin_Forms_Platform_iOS_ContextActionsCell_SelectGestureRecognizer' => 'Xamarin.Forms.Platform.iOS.ContextActionsCell+SelectGestureRecognizer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1726 /* #317 'Xamarin_Forms_Platform_iOS_ContextActionsCell_MoreActionSheetController' => 'Xamarin.Forms.Platform.iOS.ContextActionsCell+MoreActionSheetController, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1826 /* #318 'Xamarin_Forms_Platform_iOS_ContextActionsCell_MoreActionSheetDelegate' => 'Xamarin.Forms.Platform.iOS.ContextActionsCell+MoreActionSheetDelegate, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1526 /* #319 'Xamarin_Forms_Platform_iOS_ContextActionsCell' => 'Xamarin.Forms.Platform.iOS.ContextActionsCell, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1B26 /* #320 'Xamarin_Forms_Platform_iOS_ContextScrollViewDelegate' => 'Xamarin.Forms.Platform.iOS.ContextScrollViewDelegate, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x3026 /* #321 'Xamarin_Forms_Platform_iOS_Platform_DefaultRenderer' => 'Xamarin.Forms.Platform.iOS.Platform+DefaultRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x4C26 /* #322 'Xamarin_Forms_Platform_iOS_EntryCellRenderer_EntryCellTableViewCell' => 'Xamarin.Forms.Platform.iOS.EntryCellRenderer+EntryCellTableViewCell, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x5326 /* #323 'Xamarin_Forms_Platform_iOS_ViewCellRenderer_ViewTableCell' => 'Xamarin.Forms.Platform.iOS.ViewCellRenderer+ViewTableCell, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x6826 /* #324 'Xamarin_Forms_Platform_iOS_CarouselPageRenderer_CarouselPageContainer' => 'Xamarin.Forms.Platform.iOS.CarouselPageRenderer+CarouselPageContainer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x6726 /* #325 'Xamarin_Forms_Platform_iOS_CarouselPageRenderer' => 'Xamarin.Forms.Platform.iOS.CarouselPageRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x6F26 /* #326 'Xamarin_Forms_Platform_iOS_EditorRendererBase_1_FormsUITextView' => 'Xamarin.Forms.Platform.iOS.EditorRendererBase`1+FormsUITextView, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x7626 /* #327 'Xamarin_Forms_Platform_iOS_ImageRenderer' => 'Xamarin.Forms.Platform.iOS.ImageRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x8726 /* #328 'Xamarin_Forms_Platform_iOS_ListViewRenderer_ListViewDataSource' => 'Xamarin.Forms.Platform.iOS.ListViewRenderer+ListViewDataSource, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x8626 /* #329 'Xamarin_Forms_Platform_iOS_ListViewRenderer_UnevenListViewDataSource' => 'Xamarin.Forms.Platform.iOS.ListViewRenderer+UnevenListViewDataSource, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x8526 /* #330 'Xamarin_Forms_Platform_iOS_ListViewRenderer' => 'Xamarin.Forms.Platform.iOS.ListViewRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x8E26 /* #331 'Xamarin_Forms_Platform_iOS_FormsUITableViewController' => 'Xamarin.Forms.Platform.iOS.FormsUITableViewController, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x9726 /* #332 'Xamarin_Forms_Platform_iOS_NavigationRenderer_FormsNavigationBar' => 'Xamarin.Forms.Platform.iOS.NavigationRenderer+FormsNavigationBar, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x9826 /* #333 'Xamarin_Forms_Platform_iOS_NavigationRenderer_Container' => 'Xamarin.Forms.Platform.iOS.NavigationRenderer+Container, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x9126 /* #334 'Xamarin_Forms_Platform_iOS_NavigationRenderer' => 'Xamarin.Forms.Platform.iOS.NavigationRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xA326 /* #335 'Xamarin_Forms_Platform_iOS_OpenGLViewRenderer_Delegate' => 'Xamarin.Forms.Platform.iOS.OpenGLViewRenderer+Delegate, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xA226 /* #336 'Xamarin_Forms_Platform_iOS_OpenGLViewRenderer' => 'Xamarin.Forms.Platform.iOS.OpenGLViewRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xA426 /* #337 'Xamarin_Forms_Platform_iOS_PageRenderer' => 'Xamarin.Forms.Platform.iOS.PageRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xA826 /* #338 'Xamarin_Forms_Platform_iOS_PhoneMasterDetailRenderer_ChildViewController' => 'Xamarin.Forms.Platform.iOS.PhoneMasterDetailRenderer+ChildViewController, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xA726 /* #339 'Xamarin_Forms_Platform_iOS_PhoneMasterDetailRenderer' => 'Xamarin.Forms.Platform.iOS.PhoneMasterDetailRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xAE26 /* #340 'Xamarin_Forms_Platform_iOS_PickerRendererBase_1_PickerSource' => 'Xamarin.Forms.Platform.iOS.PickerRendererBase`1+PickerSource, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xB626 /* #341 'Xamarin_Forms_Platform_iOS_TabbedRenderer' => 'Xamarin.Forms.Platform.iOS.TabbedRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xBF26 /* #342 'Xamarin_Forms_Platform_iOS_TabletMasterDetailRenderer_InnerDelegate' => 'Xamarin.Forms.Platform.iOS.TabletMasterDetailRenderer+InnerDelegate, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xBE26 /* #343 'Xamarin_Forms_Platform_iOS_TabletMasterDetailRenderer' => 'Xamarin.Forms.Platform.iOS.TabletMasterDetailRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xC426 /* #344 'Xamarin_Forms_Platform_iOS_WebViewRenderer_CustomWebViewDelegate' => 'Xamarin.Forms.Platform.iOS.WebViewRenderer+CustomWebViewDelegate, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xC326 /* #345 'Xamarin_Forms_Platform_iOS_WebViewRenderer' => 'Xamarin.Forms.Platform.iOS.WebViewRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xDB26 /* #346 'Xamarin_Forms_Platform_iOS_UICollectionViewDelegator' => 'Xamarin.Forms.Platform.iOS.UICollectionViewDelegator, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x10626 /* #347 'Xamarin_Forms_Platform_iOS_WkWebViewRenderer_CustomWebViewNavigationDelegate' => 'Xamarin.Forms.Platform.iOS.WkWebViewRenderer+CustomWebViewNavigationDelegate, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x10526 /* #348 'Xamarin_Forms_Platform_iOS_WkWebViewRenderer' => 'Xamarin.Forms.Platform.iOS.WkWebViewRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x11E26 /* #349 'Xamarin_Forms_Platform_iOS_ShellFlyoutContentRenderer' => 'Xamarin.Forms.Platform.iOS.ShellFlyoutContentRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x12026 /* #350 'Xamarin_Forms_Platform_iOS_ShellFlyoutRenderer' => 'Xamarin.Forms.Platform.iOS.ShellFlyoutRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x12726 /* #351 'Xamarin_Forms_Platform_iOS_ShellPageRendererTracker_TitleViewContainer' => 'Xamarin.Forms.Platform.iOS.ShellPageRendererTracker+TitleViewContainer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x12E26 /* #352 'Xamarin_Forms_Platform_iOS_ShellRenderer' => 'Xamarin.Forms.Platform.iOS.ShellRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x13426 /* #353 'Xamarin_Forms_Platform_iOS_ShellSectionRootHeader_ShellSectionHeaderCell' => 'Xamarin.Forms.Platform.iOS.ShellSectionRootHeader+ShellSectionHeaderCell, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x13326 /* #354 'Xamarin_Forms_Platform_iOS_ShellSectionRootHeader' => 'Xamarin.Forms.Platform.iOS.ShellSectionRootHeader, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x13626 /* #355 'Xamarin_Forms_Platform_iOS_ShellSectionRootRenderer' => 'Xamarin.Forms.Platform.iOS.ShellSectionRootRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x13A26 /* #356 'Xamarin_Forms_Platform_iOS_ShellSectionRenderer_GestureDelegate' => 'Xamarin.Forms.Platform.iOS.ShellSectionRenderer+GestureDelegate, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x13B26 /* #357 'Xamarin_Forms_Platform_iOS_ShellSectionRenderer_NavDelegate' => 'Xamarin.Forms.Platform.iOS.ShellSectionRenderer+NavDelegate, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x13926 /* #358 'Xamarin_Forms_Platform_iOS_ShellSectionRenderer' => 'Xamarin.Forms.Platform.iOS.ShellSectionRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x14226 /* #359 'Xamarin_Forms_Platform_iOS_ShellTableViewSource_SeparatorView' => 'Xamarin.Forms.Platform.iOS.ShellTableViewSource+SeparatorView, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x14126 /* #360 'Xamarin_Forms_Platform_iOS_ShellTableViewSource' => 'Xamarin.Forms.Platform.iOS.ShellTableViewSource, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x14A26 /* #361 'Xamarin_Forms_Platform_iOS_ImageButtonRenderer' => 'Xamarin.Forms.Platform.iOS.ImageButtonRenderer, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x5B26 /* #362 'Xamarin_Forms_Platform_iOS_ToolbarItemExtensions_PrimaryToolbarItem' => 'Xamarin.Forms.Platform.iOS.ToolbarItemExtensions+PrimaryToolbarItem, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x5E26 /* #363 'Xamarin_Forms_Platform_iOS_ToolbarItemExtensions_SecondaryToolbarItem_SecondaryToolbarItemContent' => 'Xamarin.Forms.Platform.iOS.ToolbarItemExtensions+SecondaryToolbarItem+SecondaryToolbarItemContent, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x5D26 /* #364 'Xamarin_Forms_Platform_iOS_ToolbarItemExtensions_SecondaryToolbarItem' => 'Xamarin.Forms.Platform.iOS.ToolbarItemExtensions+SecondaryToolbarItem, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x9226 /* #365 'Xamarin_Forms_Platform_iOS_NavigationRenderer_SecondaryToolbar' => 'Xamarin.Forms.Platform.iOS.NavigationRenderer+SecondaryToolbar, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x9426 /* #366 'Xamarin_Forms_Platform_iOS_NavigationRenderer_ParentingViewController' => 'Xamarin.Forms.Platform.iOS.NavigationRenderer+ParentingViewController, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x10726 /* #367 'Xamarin_Forms_Platform_iOS_WkWebViewRenderer_CustomWebViewUIDelegate' => 'Xamarin.Forms.Platform.iOS.WkWebViewRenderer+CustomWebViewUIDelegate, Xamarin.Forms.Platform.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x328 /* #368 'TTG_TTGSnackbar' => 'TTG.TTGSnackbar, Acr.UserDialogs' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x428 /* #369 'AIDatePickerController' => 'AI.AIDatePickerController, Acr.UserDialogs' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x62A /* #370 'BigTed_ProgressHUD' => 'BigTed.ProgressHUD, BTProgressHUD' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xF32 /* #371 'Xamarin_Essentials_SingleLocationListener' => 'Xamarin.Essentials.SingleLocationListener, Xamarin.Essentials' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1032 /* #372 'Xamarin_Essentials_ShareActivityItemSource' => 'Xamarin.Essentials.ShareActivityItemSource, Xamarin.Essentials' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x4634 /* #373 'OpenTK_Platform_iPhoneOS_CADisplayLinkTimeSource' => 'OpenTK.Platform.iPhoneOS.CADisplayLinkTimeSource, OpenTK-1.0' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x4834 /* #374 'OpenTK_Platform_iPhoneOS_iPhoneOSGameView' => 'OpenTK.Platform.iPhoneOS.iPhoneOSGameView, OpenTK-1.0' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x23C /* #375 'ZXing_Net_Mobile_Forms_iOS_ZXingScannerViewRenderer' => 'ZXing.Net.Mobile.Forms.iOS.ZXingScannerViewRenderer, ZXing.Net.Mobile.Forms.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x43C /* #376 'ZXing_Net_Mobile_Forms_iOS_ZXingBarcodeImageViewRenderer' => 'ZXing.Net.Mobile.Forms.iOS.ZXingBarcodeImageViewRenderer, ZXing.Net.Mobile.Forms.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x63E /* #377 'ZXing_Mobile_CaptureDelegate' => 'ZXing.Mobile.CaptureDelegate, ZXingNetMobile' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x73E /* #378 'ZXing_Mobile_AVCaptureScannerViewController' => 'ZXing.Mobile.AVCaptureScannerViewController, ZXingNetMobile' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x193E /* #379 'ZXing_Mobile_ZXingScannerViewController' => 'ZXing.Mobile.ZXingScannerViewController, ZXingNetMobile' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x23E /* #380 'ZXing_Mobile_AVCaptureScannerView' => 'ZXing.Mobile.AVCaptureScannerView, ZXingNetMobile' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x123E /* #381 'ZXing_Mobile_ZXingDefaultOverlayView' => 'ZXing.Mobile.ZXingDefaultOverlayView, ZXingNetMobile' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x163E /* #382 'ZXing_Mobile_ZXingScannerView_OutputRecorder' => 'ZXing.Mobile.ZXingScannerView+OutputRecorder, ZXingNetMobile' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x143E /* #383 'ZXing_Mobile_ZXingScannerView' => 'ZXing.Mobile.ZXingScannerView, ZXingNetMobile' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0 },
	};

	static const char *__xamarin_registration_assemblies []= {
		"FaultCodes.iOS", 
		"mscorlib", 
		"FaultCodes", 
		"System.Core", 
		"System", 
		"Mono.Security", 
		"System.Xml", 
		"System.Numerics", 
		"System.Data", 
		"System.Drawing.Common", 
		"System.Net.Http", 
		"Xamarin.iOS", 
		"System.Runtime.Serialization", 
		"System.ServiceModel.Internals", 
		"System.Web.Services", 
		"System.Xml.Linq", 
		"Xamarin.Forms.Xaml", 
		"Xamarin.Forms.Core", 
		"Xamarin.Forms.Platform", 
		"Xamarin.Forms.Platform.iOS", 
		"Acr.UserDialogs", 
		"BTProgressHUD", 
		"zxing.portable", 
		"ZXing.Net.Mobile.Forms", 
		"ZXing.Net.Mobile.Core", 
		"Xamarin.Essentials", 
		"OpenTK-1.0", 
		"Newtonsoft.Json", 
		"Plugin.Connectivity", 
		"Plugin.Connectivity.Abstractions", 
		"ZXing.Net.Mobile.Forms.iOS", 
		"ZXingNetMobile"
	};

	static const MTProtocolWrapperMap __xamarin_protocol_wrapper_map [] = {
		{ 0xA516 /* OpenGLES.IEAGLDrawable */, 0xA616 /* EAGLDrawableWrapper */ },
		{ 0xAD16 /* GLKit.IGLKViewDelegate */, 0xAE16 /* GLKViewDelegateWrapper */ },
		{ 0xDB16 /* WebKit.IWKNavigationDelegate */, 0xDD16 /* WKNavigationDelegateWrapper */ },
		{ 0xE016 /* WebKit.IWKUIDelegate */, 0xE216 /* WKUIDelegateWrapper */ },
		{ 0x16816 /* UIKit.IUIAccessibilityIdentification */, 0x16916 /* UIAccessibilityIdentificationWrapper */ },
		{ 0x16A16 /* UIKit.IUIActionSheetDelegate */, 0x16B16 /* UIActionSheetDelegateWrapper */ },
		{ 0x17016 /* UIKit.IUIActivityItemSource */, 0x17116 /* UIActivityItemSourceWrapper */ },
		{ 0x17716 /* UIKit.IUIApplicationDelegate */, 0x17916 /* UIApplicationDelegateWrapper */ },
		{ 0x18B16 /* UIKit.IUICollectionViewDataSource */, 0x18C16 /* UICollectionViewDataSourceWrapper */ },
		{ 0x18D16 /* UIKit.IUICollectionViewDelegate */, 0x18E16 /* UICollectionViewDelegateWrapper */ },
		{ 0x19C16 /* UIKit.IUICoordinateSpace */, 0x19D16 /* UICoordinateSpaceWrapper */ },
		{ 0x1A116 /* UIKit.IUIDynamicItem */, 0x1A216 /* UIDynamicItemWrapper */ },
		{ 0x1A516 /* UIKit.IUIFocusItemScrollableContainer */, 0x1A616 /* UIFocusItemScrollableContainerWrapper */ },
		{ 0x1AA16 /* UIKit.IUIGestureRecognizerDelegate */, 0x1AB16 /* UIGestureRecognizerDelegateWrapper */ },
		{ 0x1B716 /* UIKit.IUILayoutSupport */, 0x1B816 /* UILayoutSupportWrapper */ },
		{ 0x1BB16 /* UIKit.IUINavigationControllerDelegate */, 0x1BC16 /* UINavigationControllerDelegateWrapper */ },
		{ 0x1C016 /* UIKit.IUIPickerViewDataSource */, 0x1C116 /* UIPickerViewDataSourceWrapper */ },
		{ 0x1D216 /* UIKit.IUIScrollViewDelegate */, 0x1D316 /* UIScrollViewDelegateWrapper */ },
		{ 0x1D716 /* UIKit.IUISearchBarDelegate */, 0x1D816 /* UISearchBarDelegateWrapper */ },
		{ 0x1DA16 /* UIKit.IUISearchResultsUpdating */, 0x1DB16 /* UISearchResultsUpdatingWrapper */ },
		{ 0x1E516 /* UIKit.IUISplitViewControllerDelegate */, 0x1E616 /* UISplitViewControllerDelegateWrapper */ },
		{ 0x1F616 /* UIKit.IUITabBarControllerDelegate */, 0x1F716 /* UITabBarControllerDelegateWrapper */ },
		{ 0x1FE16 /* UIKit.IUITableViewDataSource */, 0x1FF16 /* UITableViewDataSourceWrapper */ },
		{ 0x20A16 /* UIKit.IUITextFieldDelegate */, 0x20B16 /* UITextFieldDelegateWrapper */ },
		{ 0x20D16 /* UIKit.IUITextInput */, 0x20E16 /* UITextInputWrapper */ },
		{ 0x21016 /* UIKit.IUITextInputTraits */, 0x21116 /* UITextInputTraitsWrapper */ },
		{ 0x21916 /* UIKit.IUITextViewDelegate */, 0x21A16 /* UITextViewDelegateWrapper */ },
		{ 0x22516 /* UIKit.IUIViewControllerAnimatedTransitioning */, 0x22616 /* UIViewControllerAnimatedTransitioningWrapper */ },
		{ 0x22716 /* UIKit.IUIViewControllerContextTransitioning */, 0x22816 /* UIViewControllerContextTransitioningWrapper */ },
		{ 0x22916 /* UIKit.IUIViewControllerInteractiveTransitioning */, 0x22A16 /* UIViewControllerInteractiveTransitioningWrapper */ },
		{ 0x22B16 /* UIKit.IUIViewControllerTransitioningDelegate */, 0x22C16 /* UIViewControllerTransitioningDelegateWrapper */ },
		{ 0x23316 /* UIKit.IUIWebViewDelegate */, 0x23416 /* UIWebViewDelegateWrapper */ },
		{ 0x2A016 /* Foundation.INSObjectProtocol */, 0x2A116 /* NSObjectProtocolWrapper */ },
		{ 0x2A916 /* Foundation.INSUrlSessionDataDelegate */, 0x2AB16 /* NSUrlSessionDataDelegateWrapper */ },
		{ 0x2AE16 /* Foundation.INSUrlSessionDelegate */, 0x2AF16 /* NSUrlSessionDelegateWrapper */ },
		{ 0x2B216 /* Foundation.INSUrlSessionTaskDelegate */, 0x2B416 /* NSUrlSessionTaskDelegateWrapper */ },
		{ 0x2E916 /* AVFoundation.IAVCaptureMetadataOutputObjectsDelegate */, 0x2EA16 /* AVCaptureMetadataOutputObjectsDelegateWrapper */ },
	};

	static struct MTRegistrationMap __xamarin_registration_map = {
		__xamarin_registration_assemblies,
		__xamarin_class_map,
		NULL,
		NULL,
		__xamarin_protocol_wrapper_map,
		{ NULL, NULL },
		32,
		384,
		0,
		0,
		37,
		0
	};

void xamarin_create_classes () {
	__xamarin_class_map [0].handle = objc_getClass ("NSObject");
	__xamarin_class_map [1].handle = objc_getClass ("UIApplicationDelegate");
	__xamarin_class_map [2].handle = [Xamarin_Forms_Platform_iOS_FormsApplicationDelegate class];
	__xamarin_class_map [3].handle = [AppDelegate class];
	__xamarin_class_map [4].handle = objc_getClass ("UIResponder");
	__xamarin_class_map [5].handle = objc_getClass ("UIView");
	__xamarin_class_map [6].handle = [Xamarin_Forms_Platform_iOS_VisualElementRenderer_1 class];
	__xamarin_class_map [7].handle = [Xamarin_Forms_Platform_iOS_ViewRenderer_2 class];
	__xamarin_class_map [8].handle = [Xamarin_Forms_Platform_iOS_PickerRendererBase_1 class];
	__xamarin_class_map [9].handle = [Xamarin_Forms_Platform_iOS_PickerRenderer class];
	__xamarin_class_map [10].handle = [FaultCodes_iOS_CenterPickeriOS class];
	__xamarin_class_map [11].handle = objc_getClass ("EAGLContext");
	__xamarin_class_map [12].handle = objc_getClass ("EAGLSharegroup");
	__xamarin_class_map [13].handle = objc_getClass ("MPVolumeView");
	__xamarin_class_map [14].handle = objc_getClass ("GLKViewDelegate");
	__xamarin_class_map [15].handle = objc_getClass ("CSSearchableIndex");
	__xamarin_class_map [16].handle = objc_getClass ("CSSearchableItemAttributeSet");
	__xamarin_class_map [17].handle = objc_getClass ("CSSearchableItem");
	__xamarin_class_map [18].handle = objc_getClass ("CLLocation");
	__xamarin_class_map [19].handle = objc_getClass ("CLLocationManager");
	__xamarin_class_map [20].handle = objc_getClass ("CLLocationManagerDelegate");
	__xamarin_class_map [21].handle = objc_getClass ("CALayer");
	__xamarin_class_map [22].handle = objc_getClass ("CADisplayLink");
	__xamarin_class_map [23].handle = objc_getClass ("CALayerDelegate");
	__xamarin_class_map [24].handle = objc_getClass ("CAEAGLLayer");
	__xamarin_class_map [25].handle = objc_getClass ("CAShapeLayer");
	__xamarin_class_map [26].handle = objc_getClass ("CATransaction");
	__xamarin_class_map [27].handle = objc_getClass ("WKFrameInfo");
	__xamarin_class_map [28].handle = objc_getClass ("WKNavigation");
	__xamarin_class_map [29].handle = objc_getClass ("WKNavigationAction");
	__xamarin_class_map [30].handle = objc_getClass ("WKNavigationDelegate");
	__xamarin_class_map [31].handle = objc_getClass ("WKUIDelegate");
	__xamarin_class_map [32].handle = objc_getClass ("WKWebViewConfiguration");
	__xamarin_class_map [33].handle = objc_getClass ("NSLayoutConstraint");
	__xamarin_class_map [34].handle = objc_getClass ("UIPresentationController");
	__xamarin_class_map [35].handle = objc_getClass ("NSLayoutManager");
	__xamarin_class_map [36].handle = objc_getClass ("UIViewController");
	__xamarin_class_map [37].handle = objc_getClass ("UIActivityViewController");
	__xamarin_class_map [38].handle = objc_getClass ("UIAppearance");
	__xamarin_class_map [39].handle = objc_getClass ("UIBarItem");
	__xamarin_class_map [40].handle = objc_getClass ("UIBezierPath");
	__xamarin_class_map [41].handle = objc_getClass ("UIScrollView");
	__xamarin_class_map [42].handle = objc_getClass ("UICollectionView");
	__xamarin_class_map [43].handle = objc_getClass ("UICollectionViewLayout");
	__xamarin_class_map [44].handle = objc_getClass ("UICollectionViewLayoutAttributes");
	__xamarin_class_map [45].handle = objc_getClass ("UIColor");
	__xamarin_class_map [46].handle = objc_getClass ("UIKit_UIControlEventProxy");
	__xamarin_class_map [47].handle = objc_getClass ("UIEvent");
	__xamarin_class_map [48].handle = objc_getClass ("UIFont");
	__xamarin_class_map [49].handle = objc_getClass ("UIGestureRecognizer");
	__xamarin_class_map [50].handle = objc_getClass ("UISwipeGestureRecognizer");
	__xamarin_class_map [51].handle = objc_getClass ("UIImage");
	__xamarin_class_map [52].handle = objc_getClass ("UINavigationController");
	__xamarin_class_map [53].handle = objc_getClass ("UIPickerView");
	__xamarin_class_map [54].handle = objc_getClass ("UIPopoverController");
	__xamarin_class_map [55].handle = objc_getClass ("UIPopoverPresentationController");
	__xamarin_class_map [56].handle = objc_getClass ("UIScreen");
	__xamarin_class_map [57].handle = objc_getClass ("UITableViewCell");
	__xamarin_class_map [58].handle = objc_getClass ("UIToolbar");
	__xamarin_class_map [59].handle = objc_getClass ("UIWindow");
	__xamarin_class_map [60].handle = objc_getClass ("UIFontDescriptor");
	__xamarin_class_map [61].handle = objc_getClass ("NSLayoutAnchor");
	__xamarin_class_map [62].handle = objc_getClass ("NSLayoutDimension");
	__xamarin_class_map [63].handle = objc_getClass ("NSLayoutXAxisAnchor");
	__xamarin_class_map [64].handle = objc_getClass ("NSLayoutYAxisAnchor");
	__xamarin_class_map [65].handle = objc_getClass ("NSParagraphStyle");
	__xamarin_class_map [66].handle = objc_getClass ("NSMutableParagraphStyle");
	__xamarin_class_map [67].handle = objc_getClass ("NSShadow");
	__xamarin_class_map [68].handle = objc_getClass ("NSTextAttachment");
	__xamarin_class_map [69].handle = objc_getClass ("NSTextContainer");
	__xamarin_class_map [70].handle = objc_getClass ("NSAttributedString");
	__xamarin_class_map [71].handle = objc_getClass ("NSMutableAttributedString");
	__xamarin_class_map [72].handle = objc_getClass ("NSTextStorage");
	__xamarin_class_map [73].handle = objc_getClass ("UIActionSheetDelegate");
	__xamarin_class_map [74].handle = objc_getClass ("UIActivity");
	__xamarin_class_map [75].handle = objc_getClass ("UIActivityIndicatorView");
	__xamarin_class_map [76].handle = objc_getClass ("UIActivityItemSource");
	__xamarin_class_map [77].handle = objc_getClass ("UIAlertAction");
	__xamarin_class_map [78].handle = objc_getClass ("UIAlertController");
	__xamarin_class_map [79].handle = objc_getClass ("UIBarButtonItemGroup");
	__xamarin_class_map [80].handle = objc_getClass ("UIVisualEffect");
	__xamarin_class_map [81].handle = objc_getClass ("UIBlurEffect");
	__xamarin_class_map [82].handle = objc_getClass ("UICollectionReusableView");
	__xamarin_class_map [83].handle = objc_getClass ("UICollectionViewCell");
	__xamarin_class_map [84].handle = objc_getClass ("UICollectionViewController");
	__xamarin_class_map [85].handle = objc_getClass ("UICollectionViewDelegate");
	__xamarin_class_map [86].handle = objc_getClass ("UICollectionViewDelegateFlowLayout");
	__xamarin_class_map [87].handle = objc_getClass ("UICollectionViewFlowLayout");
	__xamarin_class_map [88].handle = objc_getClass ("UICollectionViewLayoutInvalidationContext");
	__xamarin_class_map [89].handle = objc_getClass ("UICollectionViewFlowLayoutInvalidationContext");
	__xamarin_class_map [90].handle = objc_getClass ("UICollectionViewUpdateItem");
	__xamarin_class_map [91].handle = objc_getClass ("UIControl");
	__xamarin_class_map [92].handle = objc_getClass ("UIDatePicker");
	__xamarin_class_map [93].handle = objc_getClass ("UIGestureRecognizerDelegate");
	__xamarin_class_map [94].handle = objc_getClass ("UIImageView");
	__xamarin_class_map [95].handle = objc_getClass ("UIKeyCommand");
	__xamarin_class_map [96].handle = objc_getClass ("UILabel");
	__xamarin_class_map [97].handle = objc_getClass ("UINavigationControllerDelegate");
	__xamarin_class_map [98].handle = objc_getClass ("UINavigationItem");
	__xamarin_class_map [99].handle = objc_getClass ("UIPickerViewModel");
	__xamarin_class_map [100].handle = objc_getClass ("UIPress");
	__xamarin_class_map [101].handle = objc_getClass ("UIProgressView");
	__xamarin_class_map [102].handle = objc_getClass ("UIRefreshControl");
	__xamarin_class_map [103].handle = objc_getClass ("UIScrollViewDelegate");
	__xamarin_class_map [104].handle = objc_getClass ("UISearchResultsUpdating");
	__xamarin_class_map [105].handle = objc_getClass ("UISlider");
	__xamarin_class_map [106].handle = objc_getClass ("UISplitViewControllerDelegate");
	__xamarin_class_map [107].handle = objc_getClass ("UIStepper");
	__xamarin_class_map [108].handle = objc_getClass ("UITabBar");
	__xamarin_class_map [109].handle = objc_getClass ("UITabBarItem");
	__xamarin_class_map [110].handle = objc_getClass ("UITableViewController");
	__xamarin_class_map [111].handle = objc_getClass ("UITableViewHeaderFooterView");
	__xamarin_class_map [112].handle = objc_getClass ("UITableViewSource");
	__xamarin_class_map [113].handle = objc_getClass ("UITextInputAssistantItem");
	__xamarin_class_map [114].handle = objc_getClass ("UITextPosition");
	__xamarin_class_map [115].handle = objc_getClass ("UITextRange");
	__xamarin_class_map [116].handle = objc_getClass ("UITextSelectionRect");
	__xamarin_class_map [117].handle = objc_getClass ("UITouch");
	__xamarin_class_map [118].handle = objc_getClass ("UIVisualEffectView");
	__xamarin_class_map [119].handle = objc_getClass ("UIWebViewDelegate");
	__xamarin_class_map [120].handle = objc_getClass ("NSUserActivity");
	__xamarin_class_map [121].handle = objc_getClass ("NSArray");
	__xamarin_class_map [122].handle = objc_getClass ("NSBundle");
	__xamarin_class_map [123].handle = objc_getClass ("NSCalendar");
	__xamarin_class_map [124].handle = objc_getClass ("NSCoder");
	__xamarin_class_map [125].handle = objc_getClass ("NSDate");
	__xamarin_class_map [126].handle = objc_getClass ("NSFormatter");
	__xamarin_class_map [127].handle = objc_getClass ("NSHTTPCookie");
	__xamarin_class_map [128].handle = objc_getClass ("NSHTTPCookieStorage");
	__xamarin_class_map [129].handle = objc_getClass ("NSStream");
	__xamarin_class_map [130].handle = objc_getClass ("NSInputStream");
	__xamarin_class_map [131].handle = objc_getClass ("NSLocale");
	__xamarin_class_map [132].handle = objc_getClass ("NSURLRequest");
	__xamarin_class_map [133].handle = objc_getClass ("NSMutableURLRequest");
	__xamarin_class_map [134].handle = objc_getClass ("Foundation_InternalNSNotificationHandler");
	__xamarin_class_map [135].handle = objc_getClass ("NSNull");
	__xamarin_class_map [136].handle = objc_getClass ("NSProxy");
	__xamarin_class_map [137].handle = objc_getClass ("NSRunLoop");
	__xamarin_class_map [138].handle = objc_getClass ("NSString");
	__xamarin_class_map [139].handle = objc_getClass ("NSThread");
	__xamarin_class_map [140].handle = objc_getClass ("NSTimer");
	__xamarin_class_map [141].handle = objc_getClass ("NSTimeZone");
	__xamarin_class_map [142].handle = objc_getClass ("NSUndoManager");
	__xamarin_class_map [143].handle = objc_getClass ("NSURL");
	__xamarin_class_map [144].handle = objc_getClass ("NSURLCredential");
	__xamarin_class_map [145].handle = objc_getClass ("NSURLProtectionSpace");
	__xamarin_class_map [146].handle = objc_getClass ("NSUserDefaults");
	__xamarin_class_map [147].handle = objc_getClass ("Foundation_NSDispatcher");
	__xamarin_class_map [148].handle = objc_getClass ("__MonoMac_NSActionDispatcher");
	__xamarin_class_map [149].handle = objc_getClass ("__MonoMac_NSSynchronizationContextDispatcher");
	__xamarin_class_map [150].handle = objc_getClass ("__Xamarin_NSTimerActionDispatcher");
	__xamarin_class_map [151].handle = objc_getClass ("Foundation_NSAsyncDispatcher");
	__xamarin_class_map [152].handle = objc_getClass ("__MonoMac_NSAsyncActionDispatcher");
	__xamarin_class_map [153].handle = objc_getClass ("__MonoMac_NSAsyncSynchronizationContextDispatcher");
	__xamarin_class_map [154].handle = objc_getClass ("NSAutoreleasePool");
	__xamarin_class_map [155].handle = objc_getClass ("NSError");
	__xamarin_class_map [156].handle = objc_getClass ("NSValue");
	__xamarin_class_map [157].handle = objc_getClass ("NSNumber");
	__xamarin_class_map [158].handle = objc_getClass ("NSDateComponents");
	__xamarin_class_map [159].handle = objc_getClass ("NSCache");
	__xamarin_class_map [160].handle = objc_getClass ("NSCachedURLResponse");
	__xamarin_class_map [161].handle = objc_getClass ("NSDateFormatter");
	__xamarin_class_map [162].handle = objc_getClass ("NSEnumerator");
	__xamarin_class_map [163].handle = objc_getClass ("NSException");
	__xamarin_class_map [164].handle = objc_getClass ("NSURLResponse");
	__xamarin_class_map [165].handle = objc_getClass ("NSHTTPURLResponse");
	__xamarin_class_map [166].handle = objc_getClass ("NSIndexSet");
	__xamarin_class_map [167].handle = objc_getClass ("NSNotification");
	__xamarin_class_map [168].handle = objc_getClass ("NSOperationQueue");
	__xamarin_class_map [169].handle = objc_getClass ("NSStringDrawingContext");
	__xamarin_class_map [170].handle = objc_getClass ("NSURLAuthenticationChallenge");
	__xamarin_class_map [171].handle = objc_getClass ("NSURLSession");
	__xamarin_class_map [172].handle = objc_getClass ("NSURLSessionConfiguration");
	__xamarin_class_map [173].handle = objc_getClass ("NSURLSessionDelegate");
	__xamarin_class_map [174].handle = objc_getClass ("NSURLSessionTaskDelegate");
	__xamarin_class_map [175].handle = objc_getClass ("NSURLSessionDataDelegate");
	__xamarin_class_map [176].handle = objc_getClass ("NSURLSessionTask");
	__xamarin_class_map [177].handle = objc_getClass ("NSURLSessionDataTask");
	__xamarin_class_map [178].handle = objc_getClass ("AVCaptureConnection");
	__xamarin_class_map [179].handle = objc_getClass ("AVCaptureInput");
	__xamarin_class_map [180].handle = objc_getClass ("AVCaptureDeviceInput");
	__xamarin_class_map [181].handle = objc_getClass ("AVCaptureOutput");
	__xamarin_class_map [182].handle = objc_getClass ("AVCaptureMetadataOutput");
	__xamarin_class_map [183].handle = objc_getClass ("AVPlayerLayer");
	__xamarin_class_map [184].handle = objc_getClass ("AVMetadataObject");
	__xamarin_class_map [185].handle = objc_getClass ("AVMetadataMachineReadableCodeObject");
	__xamarin_class_map [186].handle = objc_getClass ("AVCaptureDevice");
	__xamarin_class_map [187].handle = objc_getClass ("AVCaptureMetadataOutputObjectsDelegate");
	__xamarin_class_map [188].handle = objc_getClass ("AVCaptureSession");
	__xamarin_class_map [189].handle = objc_getClass ("AVCaptureVideoDataOutput");
	__xamarin_class_map [190].handle = objc_getClass ("AVCaptureVideoDataOutputSampleBufferDelegate");
	__xamarin_class_map [191].handle = objc_getClass ("System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream");
	__xamarin_class_map [192].handle = objc_getClass ("GLKit_GLKView__GLKViewDelegate");
	__xamarin_class_map [193].handle = objc_getClass ("GLKView");
	__xamarin_class_map [194].handle = objc_getClass ("WKWebView");
	__xamarin_class_map [195].handle = objc_getClass ("UIActionSheet");
	__xamarin_class_map [196].handle = objc_getClass ("UIApplication");
	__xamarin_class_map [197].handle = objc_getClass ("UIKit_UIBarButtonItem_Callback");
	__xamarin_class_map [198].handle = objc_getClass ("UIBarButtonItem");
	__xamarin_class_map [199].handle = objc_getClass ("UIKit_UIView_UIViewAppearance");
	__xamarin_class_map [200].handle = objc_getClass ("UIKit_UIControl_UIControlAppearance");
	__xamarin_class_map [201].handle = objc_getClass ("UIKit_UIButton_UIButtonAppearance");
	__xamarin_class_map [202].handle = objc_getClass ("UIButton");
	__xamarin_class_map [203].handle = objc_getClass ("UIDevice");
	__xamarin_class_map [204].handle = objc_getClass ("__UIGestureRecognizerToken");
	__xamarin_class_map [205].handle = objc_getClass ("__UIGestureRecognizerParameterlessToken");
	__xamarin_class_map [206].handle = objc_getClass ("UIKit_UIGestureRecognizer__UIGestureRecognizerDelegate");
	__xamarin_class_map [207].handle = objc_getClass ("__UILongPressGestureRecognizer");
	__xamarin_class_map [208].handle = objc_getClass ("UILongPressGestureRecognizer");
	__xamarin_class_map [209].handle = objc_getClass ("__UITapGestureRecognizer");
	__xamarin_class_map [210].handle = objc_getClass ("UITapGestureRecognizer");
	__xamarin_class_map [211].handle = objc_getClass ("__UIPanGestureRecognizer");
	__xamarin_class_map [212].handle = objc_getClass ("UIPanGestureRecognizer");
	__xamarin_class_map [213].handle = objc_getClass ("__UIPinchGestureRecognizer");
	__xamarin_class_map [214].handle = objc_getClass ("UIPinchGestureRecognizer");
	__xamarin_class_map [215].handle = objc_getClass ("UIKit_UINavigationBar_UINavigationBarAppearance");
	__xamarin_class_map [216].handle = objc_getClass ("UINavigationBar");
	__xamarin_class_map [217].handle = objc_getClass ("UIKit_UISearchBar__UISearchBarDelegate");
	__xamarin_class_map [218].handle = objc_getClass ("UISearchBar");
	__xamarin_class_map [219].handle = objc_getClass ("UIKit_UISearchController___Xamarin_UISearchResultsUpdating");
	__xamarin_class_map [220].handle = objc_getClass ("UISearchController");
	__xamarin_class_map [221].handle = objc_getClass ("UIKit_UIScrollView_UIScrollViewAppearance");
	__xamarin_class_map [222].handle = objc_getClass ("UIKit_UITableView_UITableViewAppearance");
	__xamarin_class_map [223].handle = objc_getClass ("UITableView");
	__xamarin_class_map [224].handle = objc_getClass ("UIKit_UITextField__UITextFieldDelegate");
	__xamarin_class_map [225].handle = objc_getClass ("UITextField");
	__xamarin_class_map [226].handle = objc_getClass ("UIKit_UIScrollView__UIScrollViewDelegate");
	__xamarin_class_map [227].handle = objc_getClass ("UIKit_UITextView__UITextViewDelegate");
	__xamarin_class_map [228].handle = objc_getClass ("UITextView");
	__xamarin_class_map [229].handle = objc_getClass ("UIKit_UISplitViewController__UISplitViewControllerDelegate");
	__xamarin_class_map [230].handle = objc_getClass ("UISplitViewController");
	__xamarin_class_map [231].handle = objc_getClass ("UIKit_UISwitch_UISwitchAppearance");
	__xamarin_class_map [232].handle = objc_getClass ("UISwitch");
	__xamarin_class_map [233].handle = objc_getClass ("UIKit_UITabBarController__UITabBarControllerDelegate");
	__xamarin_class_map [234].handle = objc_getClass ("UITabBarController");
	__xamarin_class_map [235].handle = objc_getClass ("UIKit_UIWebView__UIWebViewDelegate");
	__xamarin_class_map [236].handle = objc_getClass ("UIWebView");
	__xamarin_class_map [237].handle = objc_getClass ("NSIndexPath");
	__xamarin_class_map [238].handle = objc_getClass ("NSData");
	__xamarin_class_map [239].handle = objc_getClass ("NSDictionary");
	__xamarin_class_map [240].handle = objc_getClass ("NSMutableData");
	__xamarin_class_map [241].handle = objc_getClass ("NSMutableDictionary");
	__xamarin_class_map [242].handle = objc_getClass ("NSNotificationCenter");
	__xamarin_class_map [243].handle = objc_getClass ("NSSet");
	__xamarin_class_map [244].handle = objc_getClass ("__NSObject_Disposer");
	__xamarin_class_map [245].handle = objc_getClass ("__XamarinObjectObserver");
	__xamarin_class_map [246].handle = objc_getClass ("AVCaptureVideoPreviewLayer");
	__xamarin_class_map [247].handle = objc_getClass ("System_Net_Http_NSUrlSessionHandler_NSUrlSessionHandlerDelegate");
	__xamarin_class_map [248].handle = [Xamarin_Forms_Platform_iOS_iOS7ButtonContainer class];
	__xamarin_class_map [249].handle = [Xamarin_Forms_Platform_iOS_GlobalCloseContextGestureRecognizer class];
	__xamarin_class_map [250].handle = [Xamarin_Forms_Platform_iOS_PlatformRenderer class];
	__xamarin_class_map [251].handle = [Xamarin_Forms_Platform_iOS_ViewRenderer class];
	__xamarin_class_map [252].handle = [Xamarin_Forms_Platform_iOS_CellTableViewCell class];
	__xamarin_class_map [253].handle = [Xamarin_Forms_Platform_iOS_ActivityIndicatorRenderer class];
	__xamarin_class_map [254].handle = [Xamarin_Forms_Platform_iOS_BoxRenderer class];
	__xamarin_class_map [255].handle = [Xamarin_Forms_Platform_iOS_ButtonRenderer class];
	__xamarin_class_map [256].handle = [Xamarin_Forms_Platform_iOS_NoCaretField class];
	__xamarin_class_map [257].handle = [Xamarin_Forms_Platform_iOS_DatePickerRendererBase_1 class];
	__xamarin_class_map [258].handle = [Xamarin_Forms_Platform_iOS_DatePickerRenderer class];
	__xamarin_class_map [259].handle = [Xamarin_Forms_Platform_iOS_EditorRendererBase_1 class];
	__xamarin_class_map [260].handle = [Xamarin_Forms_Platform_iOS_EditorRenderer class];
	__xamarin_class_map [261].handle = [Xamarin_Forms_Platform_iOS_EntryRendererBase_1 class];
	__xamarin_class_map [262].handle = [Xamarin_Forms_Platform_iOS_EntryRenderer class];
	__xamarin_class_map [263].handle = [Xamarin_Forms_Platform_iOS_FrameRenderer class];
	__xamarin_class_map [264].handle = [Xamarin_Forms_Platform_iOS_LabelRenderer class];
	__xamarin_class_map [265].handle = [Xamarin_Forms_Platform_iOS_HeaderWrapperView class];
	__xamarin_class_map [266].handle = [Xamarin_Forms_Platform_iOS_FormsRefreshControl class];
	__xamarin_class_map [267].handle = [Xamarin_Forms_Platform_iOS_ReadOnlyField class];
	__xamarin_class_map [268].handle = [Xamarin_Forms_Platform_iOS_ProgressBarRenderer class];
	__xamarin_class_map [269].handle = [Xamarin_Forms_Platform_iOS_ScrollViewRenderer class];
	__xamarin_class_map [270].handle = [Xamarin_Forms_Platform_iOS_SearchBarRenderer class];
	__xamarin_class_map [271].handle = [Xamarin_Forms_Platform_iOS_SliderRenderer class];
	__xamarin_class_map [272].handle = [Xamarin_Forms_Platform_iOS_StepperRenderer class];
	__xamarin_class_map [273].handle = [Xamarin_Forms_Platform_iOS_SwitchRenderer class];
	__xamarin_class_map [274].handle = [Xamarin_Forms_Platform_iOS_TableViewModelRenderer class];
	__xamarin_class_map [275].handle = [Xamarin_Forms_Platform_iOS_UnEvenTableViewModelRenderer class];
	__xamarin_class_map [276].handle = [Xamarin_Forms_Platform_iOS_TableViewRenderer class];
	__xamarin_class_map [277].handle = [Xamarin_Forms_Platform_iOS_ChildViewController class];
	__xamarin_class_map [278].handle = [Xamarin_Forms_Platform_iOS_EventedViewController class];
	__xamarin_class_map [279].handle = [Xamarin_Forms_Platform_iOS_TimePickerRendererBase_1 class];
	__xamarin_class_map [280].handle = [Xamarin_Forms_Platform_iOS_TimePickerRenderer class];
	__xamarin_class_map [281].handle = [Xamarin_Forms_Platform_iOS_ItemsViewRenderer class];
	__xamarin_class_map [282].handle = [Xamarin_Forms_Platform_iOS_CarouselViewRenderer class];
	__xamarin_class_map [283].handle = [Xamarin_Forms_Platform_iOS_SelectableItemsViewRenderer class];
	__xamarin_class_map [284].handle = [Xamarin_Forms_Platform_iOS_GroupableItemsViewRenderer class];
	__xamarin_class_map [285].handle = [Xamarin_Forms_Platform_iOS_CollectionViewRenderer class];
	__xamarin_class_map [286].handle = [Xamarin_Forms_Platform_iOS_ItemsViewController class];
	__xamarin_class_map [287].handle = [Xamarin_Forms_Platform_iOS_SelectableItemsViewController class];
	__xamarin_class_map [288].handle = [Xamarin_Forms_Platform_iOS_GroupableItemsViewController class];
	__xamarin_class_map [289].handle = [Xamarin_Forms_Platform_iOS_ItemsViewCell class];
	__xamarin_class_map [290].handle = [Xamarin_Forms_Platform_iOS_DefaultCell class];
	__xamarin_class_map [291].handle = [Xamarin_Forms_Platform_iOS_HorizontalDefaultSupplementalView class];
	__xamarin_class_map [292].handle = [Xamarin_Forms_Platform_iOS_TemplatedCell class];
	__xamarin_class_map [293].handle = [Xamarin_Forms_Platform_iOS_HorizontalTemplatedSupplementalView class];
	__xamarin_class_map [294].handle = [Xamarin_Forms_Platform_iOS_HorizontalDefaultCell class];
	__xamarin_class_map [295].handle = [Xamarin_Forms_Platform_iOS_VerticalDefaultCell class];
	__xamarin_class_map [296].handle = [Xamarin_Forms_Platform_iOS_ItemsViewLayout class];
	__xamarin_class_map [297].handle = [Xamarin_Forms_Platform_iOS_GridViewLayout class];
	__xamarin_class_map [298].handle = [Xamarin_Forms_Platform_iOS_ListViewLayout class];
	__xamarin_class_map [299].handle = [Xamarin_Forms_Platform_iOS_HorizontalTemplatedCell class];
	__xamarin_class_map [300].handle = [Xamarin_Forms_Platform_iOS_VerticalDefaultSupplementalView class];
	__xamarin_class_map [301].handle = [Xamarin_Forms_Platform_iOS_VerticalTemplatedCell class];
	__xamarin_class_map [302].handle = [Xamarin_Forms_Platform_iOS_VerticalTemplatedSupplementalView class];
	__xamarin_class_map [303].handle = [Xamarin_Forms_Platform_iOS_ModalWrapper class];
	__xamarin_class_map [304].handle = [Xamarin_Forms_Platform_iOS_FormsCheckBox class];
	__xamarin_class_map [305].handle = [Xamarin_Forms_Platform_iOS_NativeViewWrapperRenderer class];
	__xamarin_class_map [306].handle = [Xamarin_Forms_Platform_iOS_PageContainer class];
	__xamarin_class_map [307].handle = [Xamarin_Forms_Platform_iOS_CheckBoxRendererBase_1 class];
	__xamarin_class_map [308].handle = [Xamarin_Forms_Platform_iOS_ShellItemRenderer class];
	__xamarin_class_map [309].handle = [Xamarin_Forms_Platform_iOS_ShellSearchResultsRenderer class];
	__xamarin_class_map [310].handle = [Xamarin_Forms_Platform_iOS_ShellTableViewController class];
	__xamarin_class_map [311].handle = [Xamarin_Forms_Platform_iOS_TabletShellFlyoutRenderer class];
	__xamarin_class_map [312].handle = [Xamarin_Forms_Platform_iOS_UIContainerCell class];
	__xamarin_class_map [313].handle = [Xamarin_Forms_Platform_iOS_UIContainerView class];
	__xamarin_class_map [314].handle = [Xamarin_Forms_Platform_iOS_NativeViewPropertyListener class];
	__xamarin_class_map [315].handle = [Xamarin_Forms_Platform_iOS_CheckBoxRenderer class];
	__xamarin_class_map [316].handle = [Xamarin_Forms_Platform_iOS_ContextActionsCell_SelectGestureRecognizer class];
	__xamarin_class_map [317].handle = [Xamarin_Forms_Platform_iOS_ContextActionsCell_MoreActionSheetController class];
	__xamarin_class_map [318].handle = [Xamarin_Forms_Platform_iOS_ContextActionsCell_MoreActionSheetDelegate class];
	__xamarin_class_map [319].handle = [Xamarin_Forms_Platform_iOS_ContextActionsCell class];
	__xamarin_class_map [320].handle = [Xamarin_Forms_Platform_iOS_ContextScrollViewDelegate class];
	__xamarin_class_map [321].handle = [Xamarin_Forms_Platform_iOS_Platform_DefaultRenderer class];
	__xamarin_class_map [322].handle = [Xamarin_Forms_Platform_iOS_EntryCellRenderer_EntryCellTableViewCell class];
	__xamarin_class_map [323].handle = [Xamarin_Forms_Platform_iOS_ViewCellRenderer_ViewTableCell class];
	__xamarin_class_map [324].handle = [Xamarin_Forms_Platform_iOS_CarouselPageRenderer_CarouselPageContainer class];
	__xamarin_class_map [325].handle = [Xamarin_Forms_Platform_iOS_CarouselPageRenderer class];
	__xamarin_class_map [326].handle = [Xamarin_Forms_Platform_iOS_EditorRendererBase_1_FormsUITextView class];
	__xamarin_class_map [327].handle = [Xamarin_Forms_Platform_iOS_ImageRenderer class];
	__xamarin_class_map [328].handle = [Xamarin_Forms_Platform_iOS_ListViewRenderer_ListViewDataSource class];
	__xamarin_class_map [329].handle = [Xamarin_Forms_Platform_iOS_ListViewRenderer_UnevenListViewDataSource class];
	__xamarin_class_map [330].handle = [Xamarin_Forms_Platform_iOS_ListViewRenderer class];
	__xamarin_class_map [331].handle = [Xamarin_Forms_Platform_iOS_FormsUITableViewController class];
	__xamarin_class_map [332].handle = [Xamarin_Forms_Platform_iOS_NavigationRenderer_FormsNavigationBar class];
	__xamarin_class_map [333].handle = [Xamarin_Forms_Platform_iOS_NavigationRenderer_Container class];
	__xamarin_class_map [334].handle = [Xamarin_Forms_Platform_iOS_NavigationRenderer class];
	__xamarin_class_map [335].handle = [Xamarin_Forms_Platform_iOS_OpenGLViewRenderer_Delegate class];
	__xamarin_class_map [336].handle = [Xamarin_Forms_Platform_iOS_OpenGLViewRenderer class];
	__xamarin_class_map [337].handle = [Xamarin_Forms_Platform_iOS_PageRenderer class];
	__xamarin_class_map [338].handle = [Xamarin_Forms_Platform_iOS_PhoneMasterDetailRenderer_ChildViewController class];
	__xamarin_class_map [339].handle = [Xamarin_Forms_Platform_iOS_PhoneMasterDetailRenderer class];
	__xamarin_class_map [340].handle = [Xamarin_Forms_Platform_iOS_PickerRendererBase_1_PickerSource class];
	__xamarin_class_map [341].handle = [Xamarin_Forms_Platform_iOS_TabbedRenderer class];
	__xamarin_class_map [342].handle = [Xamarin_Forms_Platform_iOS_TabletMasterDetailRenderer_InnerDelegate class];
	__xamarin_class_map [343].handle = [Xamarin_Forms_Platform_iOS_TabletMasterDetailRenderer class];
	__xamarin_class_map [344].handle = [Xamarin_Forms_Platform_iOS_WebViewRenderer_CustomWebViewDelegate class];
	__xamarin_class_map [345].handle = [Xamarin_Forms_Platform_iOS_WebViewRenderer class];
	__xamarin_class_map [346].handle = [Xamarin_Forms_Platform_iOS_UICollectionViewDelegator class];
	__xamarin_class_map [347].handle = [Xamarin_Forms_Platform_iOS_WkWebViewRenderer_CustomWebViewNavigationDelegate class];
	__xamarin_class_map [348].handle = [Xamarin_Forms_Platform_iOS_WkWebViewRenderer class];
	__xamarin_class_map [349].handle = [Xamarin_Forms_Platform_iOS_ShellFlyoutContentRenderer class];
	__xamarin_class_map [350].handle = [Xamarin_Forms_Platform_iOS_ShellFlyoutRenderer class];
	__xamarin_class_map [351].handle = [Xamarin_Forms_Platform_iOS_ShellPageRendererTracker_TitleViewContainer class];
	__xamarin_class_map [352].handle = [Xamarin_Forms_Platform_iOS_ShellRenderer class];
	__xamarin_class_map [353].handle = [Xamarin_Forms_Platform_iOS_ShellSectionRootHeader_ShellSectionHeaderCell class];
	__xamarin_class_map [354].handle = [Xamarin_Forms_Platform_iOS_ShellSectionRootHeader class];
	__xamarin_class_map [355].handle = [Xamarin_Forms_Platform_iOS_ShellSectionRootRenderer class];
	__xamarin_class_map [356].handle = [Xamarin_Forms_Platform_iOS_ShellSectionRenderer_GestureDelegate class];
	__xamarin_class_map [357].handle = [Xamarin_Forms_Platform_iOS_ShellSectionRenderer_NavDelegate class];
	__xamarin_class_map [358].handle = [Xamarin_Forms_Platform_iOS_ShellSectionRenderer class];
	__xamarin_class_map [359].handle = [Xamarin_Forms_Platform_iOS_ShellTableViewSource_SeparatorView class];
	__xamarin_class_map [360].handle = [Xamarin_Forms_Platform_iOS_ShellTableViewSource class];
	__xamarin_class_map [361].handle = [Xamarin_Forms_Platform_iOS_ImageButtonRenderer class];
	__xamarin_class_map [362].handle = [Xamarin_Forms_Platform_iOS_ToolbarItemExtensions_PrimaryToolbarItem class];
	__xamarin_class_map [363].handle = [Xamarin_Forms_Platform_iOS_ToolbarItemExtensions_SecondaryToolbarItem_SecondaryToolbarItemContent class];
	__xamarin_class_map [364].handle = [Xamarin_Forms_Platform_iOS_ToolbarItemExtensions_SecondaryToolbarItem class];
	__xamarin_class_map [365].handle = [Xamarin_Forms_Platform_iOS_NavigationRenderer_SecondaryToolbar class];
	__xamarin_class_map [366].handle = [Xamarin_Forms_Platform_iOS_NavigationRenderer_ParentingViewController class];
	__xamarin_class_map [367].handle = [Xamarin_Forms_Platform_iOS_WkWebViewRenderer_CustomWebViewUIDelegate class];
	__xamarin_class_map [368].handle = [TTG_TTGSnackbar class];
	__xamarin_class_map [369].handle = [AIDatePickerController class];
	__xamarin_class_map [370].handle = [BigTed_ProgressHUD class];
	__xamarin_class_map [371].handle = [Xamarin_Essentials_SingleLocationListener class];
	__xamarin_class_map [372].handle = [Xamarin_Essentials_ShareActivityItemSource class];
	__xamarin_class_map [373].handle = [OpenTK_Platform_iPhoneOS_CADisplayLinkTimeSource class];
	__xamarin_class_map [374].handle = [OpenTK_Platform_iPhoneOS_iPhoneOSGameView class];
	__xamarin_class_map [375].handle = [ZXing_Net_Mobile_Forms_iOS_ZXingScannerViewRenderer class];
	__xamarin_class_map [376].handle = [ZXing_Net_Mobile_Forms_iOS_ZXingBarcodeImageViewRenderer class];
	__xamarin_class_map [377].handle = [ZXing_Mobile_CaptureDelegate class];
	__xamarin_class_map [378].handle = [ZXing_Mobile_AVCaptureScannerViewController class];
	__xamarin_class_map [379].handle = [ZXing_Mobile_ZXingScannerViewController class];
	__xamarin_class_map [380].handle = [ZXing_Mobile_AVCaptureScannerView class];
	__xamarin_class_map [381].handle = [ZXing_Mobile_ZXingDefaultOverlayView class];
	__xamarin_class_map [382].handle = [ZXing_Mobile_ZXingScannerView_OutputRecorder class];
	__xamarin_class_map [383].handle = [ZXing_Mobile_ZXingScannerView class];
	xamarin_add_registration_map (&__xamarin_registration_map, false);
}


} /* extern "C" */
