//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/javax/sip/address/Hop.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidJavaxSipAddressHop")
#ifdef RESTRICT_AndroidJavaxSipAddressHop
#define INCLUDE_ALL_AndroidJavaxSipAddressHop 0
#else
#define INCLUDE_ALL_AndroidJavaxSipAddressHop 1
#endif
#undef RESTRICT_AndroidJavaxSipAddressHop

#if !defined (AndroidJavaxSipAddressHop_) && (INCLUDE_ALL_AndroidJavaxSipAddressHop || defined(INCLUDE_AndroidJavaxSipAddressHop))
#define AndroidJavaxSipAddressHop_

@protocol AndroidJavaxSipAddressHop < JavaObject >

- (NSString *)getHost;

- (jint)getPort;

- (NSString *)getTransport;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidJavaxSipAddressHop)

J2OBJC_TYPE_LITERAL_HEADER(AndroidJavaxSipAddressHop)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidJavaxSipAddressHop")