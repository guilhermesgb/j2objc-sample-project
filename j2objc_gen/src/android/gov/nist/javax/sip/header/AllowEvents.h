//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/header/AllowEvents.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidGovNistJavaxSipHeaderAllowEvents")
#ifdef RESTRICT_AndroidGovNistJavaxSipHeaderAllowEvents
#define INCLUDE_ALL_AndroidGovNistJavaxSipHeaderAllowEvents 0
#else
#define INCLUDE_ALL_AndroidGovNistJavaxSipHeaderAllowEvents 1
#endif
#undef RESTRICT_AndroidGovNistJavaxSipHeaderAllowEvents

#if !defined (AndroidGovNistJavaxSipHeaderAllowEvents_) && (INCLUDE_ALL_AndroidGovNistJavaxSipHeaderAllowEvents || defined(INCLUDE_AndroidGovNistJavaxSipHeaderAllowEvents))
#define AndroidGovNistJavaxSipHeaderAllowEvents_

#define RESTRICT_AndroidGovNistJavaxSipHeaderSIPHeader 1
#define INCLUDE_AndroidGovNistJavaxSipHeaderSIPHeader 1
#include "android/gov/nist/javax/sip/header/SIPHeader.h"

#define RESTRICT_AndroidJavaxSipHeaderAllowEventsHeader 1
#define INCLUDE_AndroidJavaxSipHeaderAllowEventsHeader 1
#include "android/javax/sip/header/AllowEventsHeader.h"

@class JavaLangStringBuilder;

@interface AndroidGovNistJavaxSipHeaderAllowEvents : AndroidGovNistJavaxSipHeaderSIPHeader < AndroidJavaxSipHeaderAllowEventsHeader > {
 @public
  NSString *eventType_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)m;

- (NSString *)getEventType;

- (void)setEventTypeWithNSString:(NSString *)eventType;

#pragma mark Protected

- (JavaLangStringBuilder *)encodeBodyWithJavaLangStringBuilder:(JavaLangStringBuilder *)buffer;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidGovNistJavaxSipHeaderAllowEvents)

J2OBJC_FIELD_SETTER(AndroidGovNistJavaxSipHeaderAllowEvents, eventType_, NSString *)

FOUNDATION_EXPORT void AndroidGovNistJavaxSipHeaderAllowEvents_init(AndroidGovNistJavaxSipHeaderAllowEvents *self);

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderAllowEvents *new_AndroidGovNistJavaxSipHeaderAllowEvents_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderAllowEvents *create_AndroidGovNistJavaxSipHeaderAllowEvents_init();

FOUNDATION_EXPORT void AndroidGovNistJavaxSipHeaderAllowEvents_initWithNSString_(AndroidGovNistJavaxSipHeaderAllowEvents *self, NSString *m);

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderAllowEvents *new_AndroidGovNistJavaxSipHeaderAllowEvents_initWithNSString_(NSString *m) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderAllowEvents *create_AndroidGovNistJavaxSipHeaderAllowEvents_initWithNSString_(NSString *m);

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSipHeaderAllowEvents)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidGovNistJavaxSipHeaderAllowEvents")