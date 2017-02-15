//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/header/To.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidGovNistJavaxSipHeaderTo")
#ifdef RESTRICT_AndroidGovNistJavaxSipHeaderTo
#define INCLUDE_ALL_AndroidGovNistJavaxSipHeaderTo 0
#else
#define INCLUDE_ALL_AndroidGovNistJavaxSipHeaderTo 1
#endif
#undef RESTRICT_AndroidGovNistJavaxSipHeaderTo

#if !defined (AndroidGovNistJavaxSipHeaderTo_) && (INCLUDE_ALL_AndroidGovNistJavaxSipHeaderTo || defined(INCLUDE_AndroidGovNistJavaxSipHeaderTo))
#define AndroidGovNistJavaxSipHeaderTo_

#define RESTRICT_AndroidGovNistJavaxSipHeaderAddressParametersHeader 1
#define INCLUDE_AndroidGovNistJavaxSipHeaderAddressParametersHeader 1
#include "android/gov/nist/javax/sip/header/AddressParametersHeader.h"

#define RESTRICT_AndroidJavaxSipHeaderToHeader 1
#define INCLUDE_AndroidJavaxSipHeaderToHeader 1
#include "android/javax/sip/header/ToHeader.h"

@class AndroidGovNistCoreHostPort;
@class AndroidGovNistJavaxSipHeaderFrom;
@class JavaLangStringBuilder;

@interface AndroidGovNistJavaxSipHeaderTo : AndroidGovNistJavaxSipHeaderAddressParametersHeader < AndroidJavaxSipHeaderToHeader >

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithAndroidGovNistJavaxSipHeaderFrom:(AndroidGovNistJavaxSipHeaderFrom *)from;

- (NSString *)encode;

- (jboolean)isEqual:(id)other;

- (NSString *)getDisplayName;

- (AndroidGovNistCoreHostPort *)getHostPort;

- (NSString *)getTag;

- (NSString *)getUserAtHostPort;

- (jboolean)hasTag;

- (void)removeTag;

- (void)setTagWithNSString:(NSString *)t;

#pragma mark Protected

- (NSString *)encodeBody;

- (JavaLangStringBuilder *)encodeBodyWithJavaLangStringBuilder:(JavaLangStringBuilder *)buffer;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidGovNistJavaxSipHeaderTo)

FOUNDATION_EXPORT void AndroidGovNistJavaxSipHeaderTo_init(AndroidGovNistJavaxSipHeaderTo *self);

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderTo *new_AndroidGovNistJavaxSipHeaderTo_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderTo *create_AndroidGovNistJavaxSipHeaderTo_init();

FOUNDATION_EXPORT void AndroidGovNistJavaxSipHeaderTo_initWithAndroidGovNistJavaxSipHeaderFrom_(AndroidGovNistJavaxSipHeaderTo *self, AndroidGovNistJavaxSipHeaderFrom *from);

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderTo *new_AndroidGovNistJavaxSipHeaderTo_initWithAndroidGovNistJavaxSipHeaderFrom_(AndroidGovNistJavaxSipHeaderFrom *from) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderTo *create_AndroidGovNistJavaxSipHeaderTo_initWithAndroidGovNistJavaxSipHeaderFrom_(AndroidGovNistJavaxSipHeaderFrom *from);

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSipHeaderTo)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidGovNistJavaxSipHeaderTo")