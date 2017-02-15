//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/javax/sip/header/SubscriptionStateHeader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidJavaxSipHeaderSubscriptionStateHeader")
#ifdef RESTRICT_AndroidJavaxSipHeaderSubscriptionStateHeader
#define INCLUDE_ALL_AndroidJavaxSipHeaderSubscriptionStateHeader 0
#else
#define INCLUDE_ALL_AndroidJavaxSipHeaderSubscriptionStateHeader 1
#endif
#undef RESTRICT_AndroidJavaxSipHeaderSubscriptionStateHeader

#if !defined (AndroidJavaxSipHeaderSubscriptionStateHeader_) && (INCLUDE_ALL_AndroidJavaxSipHeaderSubscriptionStateHeader || defined(INCLUDE_AndroidJavaxSipHeaderSubscriptionStateHeader))
#define AndroidJavaxSipHeaderSubscriptionStateHeader_

#define RESTRICT_AndroidJavaxSipHeaderParameters 1
#define INCLUDE_AndroidJavaxSipHeaderParameters 1
#include "android/javax/sip/header/Parameters.h"

#define RESTRICT_AndroidJavaxSipHeaderHeader 1
#define INCLUDE_AndroidJavaxSipHeaderHeader 1
#include "android/javax/sip/header/Header.h"

@protocol AndroidJavaxSipHeaderSubscriptionStateHeader < AndroidJavaxSipHeaderParameters, AndroidJavaxSipHeaderHeader, JavaObject >

- (void)setExpiresWithInt:(jint)expires;

- (jint)getExpires;

- (void)setRetryAfterWithInt:(jint)retryAfter;

- (jint)getRetryAfter;

- (NSString *)getReasonCode;

- (void)setReasonCodeWithNSString:(NSString *)reasonCode;

- (NSString *)getState;

- (void)setStateWithNSString:(NSString *)state;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidJavaxSipHeaderSubscriptionStateHeader)

inline NSString *AndroidJavaxSipHeaderSubscriptionStateHeader_get_NAME();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *AndroidJavaxSipHeaderSubscriptionStateHeader_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(AndroidJavaxSipHeaderSubscriptionStateHeader, NAME, NSString *)

inline NSString *AndroidJavaxSipHeaderSubscriptionStateHeader_get_UNKNOWN();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *AndroidJavaxSipHeaderSubscriptionStateHeader_UNKNOWN;
J2OBJC_STATIC_FIELD_OBJ_FINAL(AndroidJavaxSipHeaderSubscriptionStateHeader, UNKNOWN, NSString *)

inline NSString *AndroidJavaxSipHeaderSubscriptionStateHeader_get_DEACTIVATED();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *AndroidJavaxSipHeaderSubscriptionStateHeader_DEACTIVATED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(AndroidJavaxSipHeaderSubscriptionStateHeader, DEACTIVATED, NSString *)

inline NSString *AndroidJavaxSipHeaderSubscriptionStateHeader_get_PROBATION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *AndroidJavaxSipHeaderSubscriptionStateHeader_PROBATION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(AndroidJavaxSipHeaderSubscriptionStateHeader, PROBATION, NSString *)

inline NSString *AndroidJavaxSipHeaderSubscriptionStateHeader_get_REJECTED();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *AndroidJavaxSipHeaderSubscriptionStateHeader_REJECTED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(AndroidJavaxSipHeaderSubscriptionStateHeader, REJECTED, NSString *)

inline NSString *AndroidJavaxSipHeaderSubscriptionStateHeader_get_TIMEOUT();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *AndroidJavaxSipHeaderSubscriptionStateHeader_TIMEOUT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(AndroidJavaxSipHeaderSubscriptionStateHeader, TIMEOUT, NSString *)

inline NSString *AndroidJavaxSipHeaderSubscriptionStateHeader_get_GIVE_UP();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *AndroidJavaxSipHeaderSubscriptionStateHeader_GIVE_UP;
J2OBJC_STATIC_FIELD_OBJ_FINAL(AndroidJavaxSipHeaderSubscriptionStateHeader, GIVE_UP, NSString *)

inline NSString *AndroidJavaxSipHeaderSubscriptionStateHeader_get_NO_RESOURCE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *AndroidJavaxSipHeaderSubscriptionStateHeader_NO_RESOURCE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(AndroidJavaxSipHeaderSubscriptionStateHeader, NO_RESOURCE, NSString *)

inline NSString *AndroidJavaxSipHeaderSubscriptionStateHeader_get_ACTIVE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *AndroidJavaxSipHeaderSubscriptionStateHeader_ACTIVE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(AndroidJavaxSipHeaderSubscriptionStateHeader, ACTIVE, NSString *)

inline NSString *AndroidJavaxSipHeaderSubscriptionStateHeader_get_TERMINATED();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *AndroidJavaxSipHeaderSubscriptionStateHeader_TERMINATED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(AndroidJavaxSipHeaderSubscriptionStateHeader, TERMINATED, NSString *)

inline NSString *AndroidJavaxSipHeaderSubscriptionStateHeader_get_PENDING();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *AndroidJavaxSipHeaderSubscriptionStateHeader_PENDING;
J2OBJC_STATIC_FIELD_OBJ_FINAL(AndroidJavaxSipHeaderSubscriptionStateHeader, PENDING, NSString *)

J2OBJC_TYPE_LITERAL_HEADER(AndroidJavaxSipHeaderSubscriptionStateHeader)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidJavaxSipHeaderSubscriptionStateHeader")