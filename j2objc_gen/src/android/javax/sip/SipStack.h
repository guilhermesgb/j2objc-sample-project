//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/javax/sip/SipStack.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidJavaxSipSipStack")
#ifdef RESTRICT_AndroidJavaxSipSipStack
#define INCLUDE_ALL_AndroidJavaxSipSipStack 0
#else
#define INCLUDE_ALL_AndroidJavaxSipSipStack 1
#endif
#undef RESTRICT_AndroidJavaxSipSipStack

#if !defined (AndroidJavaxSipSipStack_) && (INCLUDE_ALL_AndroidJavaxSipSipStack || defined(INCLUDE_AndroidJavaxSipSipStack))
#define AndroidJavaxSipSipStack_

@protocol AndroidJavaxSipAddressRouter;
@protocol AndroidJavaxSipListeningPoint;
@protocol AndroidJavaxSipSipProvider;
@protocol JavaUtilIterator;

@protocol AndroidJavaxSipSipStack < JavaObject >

- (id<AndroidJavaxSipSipProvider>)createSipProviderWithAndroidJavaxSipListeningPoint:(id<AndroidJavaxSipListeningPoint>)listeningPoint;

- (void)deleteSipProviderWithAndroidJavaxSipSipProvider:(id<AndroidJavaxSipSipProvider>)sipProvider;

- (id<JavaUtilIterator>)getSipProviders;

- (id<AndroidJavaxSipListeningPoint>)createListeningPointWithInt:(jint)port
                                                    withNSString:(NSString *)transport;

- (id<AndroidJavaxSipListeningPoint>)createListeningPointWithNSString:(NSString *)ipAddress
                                                              withInt:(jint)port
                                                         withNSString:(NSString *)transport;

- (void)deleteListeningPointWithAndroidJavaxSipListeningPoint:(id<AndroidJavaxSipListeningPoint>)listeningPoint;

- (id<JavaUtilIterator>)getListeningPoints;

- (NSString *)getStackName;

- (NSString *)getIPAddress;

- (id<AndroidJavaxSipAddressRouter>)getRouter;

- (void)stop;

- (void)start;

- (jboolean)isRetransmissionFilterActive;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidJavaxSipSipStack)

J2OBJC_TYPE_LITERAL_HEADER(AndroidJavaxSipSipStack)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidJavaxSipSipStack")