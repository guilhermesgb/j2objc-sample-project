//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/javax/sdp/EMail.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidJavaxSdpEMail")
#ifdef RESTRICT_AndroidJavaxSdpEMail
#define INCLUDE_ALL_AndroidJavaxSdpEMail 0
#else
#define INCLUDE_ALL_AndroidJavaxSdpEMail 1
#endif
#undef RESTRICT_AndroidJavaxSdpEMail

#if !defined (AndroidJavaxSdpEMail_) && (INCLUDE_ALL_AndroidJavaxSdpEMail || defined(INCLUDE_AndroidJavaxSdpEMail))
#define AndroidJavaxSdpEMail_

#define RESTRICT_AndroidJavaxSdpField 1
#define INCLUDE_AndroidJavaxSdpField 1
#include "android/javax/sdp/Field.h"

@protocol AndroidJavaxSdpEMail < AndroidJavaxSdpField, JavaObject >

- (NSString *)getValue;

- (void)setValueWithNSString:(NSString *)value;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidJavaxSdpEMail)

J2OBJC_TYPE_LITERAL_HEADER(AndroidJavaxSdpEMail)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidJavaxSdpEMail")