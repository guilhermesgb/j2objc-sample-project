//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/header/Supported.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidGovNistJavaxSipHeaderSupported")
#ifdef RESTRICT_AndroidGovNistJavaxSipHeaderSupported
#define INCLUDE_ALL_AndroidGovNistJavaxSipHeaderSupported 0
#else
#define INCLUDE_ALL_AndroidGovNistJavaxSipHeaderSupported 1
#endif
#undef RESTRICT_AndroidGovNistJavaxSipHeaderSupported

#if !defined (AndroidGovNistJavaxSipHeaderSupported_) && (INCLUDE_ALL_AndroidGovNistJavaxSipHeaderSupported || defined(INCLUDE_AndroidGovNistJavaxSipHeaderSupported))
#define AndroidGovNistJavaxSipHeaderSupported_

#define RESTRICT_AndroidGovNistJavaxSipHeaderSIPHeader 1
#define INCLUDE_AndroidGovNistJavaxSipHeaderSIPHeader 1
#include "android/gov/nist/javax/sip/header/SIPHeader.h"

#define RESTRICT_AndroidJavaxSipHeaderSupportedHeader 1
#define INCLUDE_AndroidJavaxSipHeaderSupportedHeader 1
#include "android/javax/sip/header/SupportedHeader.h"

@class JavaLangStringBuilder;

@interface AndroidGovNistJavaxSipHeaderSupported : AndroidGovNistJavaxSipHeaderSIPHeader < AndroidJavaxSipHeaderSupportedHeader > {
 @public
  NSString *optionTag_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)option_tag;

- (NSString *)encode;

- (JavaLangStringBuilder *)encodeBodyWithJavaLangStringBuilder:(JavaLangStringBuilder *)retval;

- (NSString *)getOptionTag;

- (void)setOptionTagWithNSString:(NSString *)optionTag;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidGovNistJavaxSipHeaderSupported)

J2OBJC_FIELD_SETTER(AndroidGovNistJavaxSipHeaderSupported, optionTag_, NSString *)

FOUNDATION_EXPORT void AndroidGovNistJavaxSipHeaderSupported_init(AndroidGovNistJavaxSipHeaderSupported *self);

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderSupported *new_AndroidGovNistJavaxSipHeaderSupported_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderSupported *create_AndroidGovNistJavaxSipHeaderSupported_init();

FOUNDATION_EXPORT void AndroidGovNistJavaxSipHeaderSupported_initWithNSString_(AndroidGovNistJavaxSipHeaderSupported *self, NSString *option_tag);

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderSupported *new_AndroidGovNistJavaxSipHeaderSupported_initWithNSString_(NSString *option_tag) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderSupported *create_AndroidGovNistJavaxSipHeaderSupported_initWithNSString_(NSString *option_tag);

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSipHeaderSupported)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidGovNistJavaxSipHeaderSupported")