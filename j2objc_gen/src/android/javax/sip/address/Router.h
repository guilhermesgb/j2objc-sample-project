//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/javax/sip/address/Router.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidJavaxSipAddressRouter")
#ifdef RESTRICT_AndroidJavaxSipAddressRouter
#define INCLUDE_ALL_AndroidJavaxSipAddressRouter 0
#else
#define INCLUDE_ALL_AndroidJavaxSipAddressRouter 1
#endif
#undef RESTRICT_AndroidJavaxSipAddressRouter

#if !defined (AndroidJavaxSipAddressRouter_) && (INCLUDE_ALL_AndroidJavaxSipAddressRouter || defined(INCLUDE_AndroidJavaxSipAddressRouter))
#define AndroidJavaxSipAddressRouter_

@protocol AndroidJavaxSipAddressHop;
@protocol AndroidJavaxSipMessageRequest;
@protocol JavaUtilListIterator;

@protocol AndroidJavaxSipAddressRouter < JavaObject >

- (id<AndroidJavaxSipAddressHop>)getOutboundProxy;

- (id<JavaUtilListIterator>)getNextHopsWithAndroidJavaxSipMessageRequest:(id<AndroidJavaxSipMessageRequest>)request;

- (id<AndroidJavaxSipAddressHop>)getNextHopWithAndroidJavaxSipMessageRequest:(id<AndroidJavaxSipMessageRequest>)request;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidJavaxSipAddressRouter)

J2OBJC_TYPE_LITERAL_HEADER(AndroidJavaxSipAddressRouter)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidJavaxSipAddressRouter")