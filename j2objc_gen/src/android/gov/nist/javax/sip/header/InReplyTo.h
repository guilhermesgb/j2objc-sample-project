//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/header/InReplyTo.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidGovNistJavaxSipHeaderInReplyTo")
#ifdef RESTRICT_AndroidGovNistJavaxSipHeaderInReplyTo
#define INCLUDE_ALL_AndroidGovNistJavaxSipHeaderInReplyTo 0
#else
#define INCLUDE_ALL_AndroidGovNistJavaxSipHeaderInReplyTo 1
#endif
#undef RESTRICT_AndroidGovNistJavaxSipHeaderInReplyTo

#if !defined (AndroidGovNistJavaxSipHeaderInReplyTo_) && (INCLUDE_ALL_AndroidGovNistJavaxSipHeaderInReplyTo || defined(INCLUDE_AndroidGovNistJavaxSipHeaderInReplyTo))
#define AndroidGovNistJavaxSipHeaderInReplyTo_

#define RESTRICT_AndroidGovNistJavaxSipHeaderSIPHeader 1
#define INCLUDE_AndroidGovNistJavaxSipHeaderSIPHeader 1
#include "android/gov/nist/javax/sip/header/SIPHeader.h"

#define RESTRICT_AndroidJavaxSipHeaderInReplyToHeader 1
#define INCLUDE_AndroidJavaxSipHeaderInReplyToHeader 1
#include "android/javax/sip/header/InReplyToHeader.h"

@class AndroidGovNistJavaxSipHeaderCallIdentifier;
@class JavaLangStringBuilder;

@interface AndroidGovNistJavaxSipHeaderInReplyTo : AndroidGovNistJavaxSipHeaderSIPHeader < AndroidJavaxSipHeaderInReplyToHeader > {
 @public
  AndroidGovNistJavaxSipHeaderCallIdentifier *callId_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithAndroidGovNistJavaxSipHeaderCallIdentifier:(AndroidGovNistJavaxSipHeaderCallIdentifier *)cid;

- (id)java_clone;

- (JavaLangStringBuilder *)encodeBodyWithJavaLangStringBuilder:(JavaLangStringBuilder *)retval;

- (NSString *)getCallId;

- (void)setCallIdWithNSString:(NSString *)callId;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidGovNistJavaxSipHeaderInReplyTo)

J2OBJC_FIELD_SETTER(AndroidGovNistJavaxSipHeaderInReplyTo, callId_, AndroidGovNistJavaxSipHeaderCallIdentifier *)

FOUNDATION_EXPORT void AndroidGovNistJavaxSipHeaderInReplyTo_init(AndroidGovNistJavaxSipHeaderInReplyTo *self);

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderInReplyTo *new_AndroidGovNistJavaxSipHeaderInReplyTo_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderInReplyTo *create_AndroidGovNistJavaxSipHeaderInReplyTo_init();

FOUNDATION_EXPORT void AndroidGovNistJavaxSipHeaderInReplyTo_initWithAndroidGovNistJavaxSipHeaderCallIdentifier_(AndroidGovNistJavaxSipHeaderInReplyTo *self, AndroidGovNistJavaxSipHeaderCallIdentifier *cid);

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderInReplyTo *new_AndroidGovNistJavaxSipHeaderInReplyTo_initWithAndroidGovNistJavaxSipHeaderCallIdentifier_(AndroidGovNistJavaxSipHeaderCallIdentifier *cid) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderInReplyTo *create_AndroidGovNistJavaxSipHeaderInReplyTo_initWithAndroidGovNistJavaxSipHeaderCallIdentifier_(AndroidGovNistJavaxSipHeaderCallIdentifier *cid);

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSipHeaderInReplyTo)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidGovNistJavaxSipHeaderInReplyTo")