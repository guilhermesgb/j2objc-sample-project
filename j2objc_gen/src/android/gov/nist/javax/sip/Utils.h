//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/Utils.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidGovNistJavaxSipUtils")
#ifdef RESTRICT_AndroidGovNistJavaxSipUtils
#define INCLUDE_ALL_AndroidGovNistJavaxSipUtils 0
#else
#define INCLUDE_ALL_AndroidGovNistJavaxSipUtils 1
#endif
#undef RESTRICT_AndroidGovNistJavaxSipUtils

#if !defined (AndroidGovNistJavaxSipUtils_) && (INCLUDE_ALL_AndroidGovNistJavaxSipUtils || defined(INCLUDE_AndroidGovNistJavaxSipUtils))
#define AndroidGovNistJavaxSipUtils_

#define RESTRICT_AndroidGovNistJavaxSipUtilsExt 1
#define INCLUDE_AndroidGovNistJavaxSipUtilsExt 1
#include "android/gov/nist/javax/sip/UtilsExt.h"

@class AndroidGovNistJavaxSipMessageSIPResponse;
@class IOSByteArray;
@class IOSObjectArray;

@interface AndroidGovNistJavaxSipUtils : NSObject < AndroidGovNistJavaxSipUtilsExt >

#pragma mark Public

- (instancetype)init;

- (NSString *)generateBranchId;

- (NSString *)generateCallIdentifierWithNSString:(NSString *)address;

- (NSString *)generateTag;

+ (AndroidGovNistJavaxSipUtils *)getInstance;

+ (NSString *)getQuotedStringWithNSString:(NSString *)str;

+ (NSString *)getSignature;

+ (void)mainWithNSStringArray:(IOSObjectArray *)args;

- (jboolean)responseBelongsToUsWithAndroidGovNistJavaxSipMessageSIPResponse:(AndroidGovNistJavaxSipMessageSIPResponse *)response;

+ (NSString *)toHexStringWithByteArray:(IOSByteArray *)b;

+ (NSString *)toUpperCaseWithNSString:(NSString *)str;

#pragma mark Protected

+ (NSString *)reduceStringWithNSString:(NSString *)input;

@end

J2OBJC_STATIC_INIT(AndroidGovNistJavaxSipUtils)

FOUNDATION_EXPORT void AndroidGovNistJavaxSipUtils_init(AndroidGovNistJavaxSipUtils *self);

FOUNDATION_EXPORT AndroidGovNistJavaxSipUtils *new_AndroidGovNistJavaxSipUtils_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipUtils *create_AndroidGovNistJavaxSipUtils_init();

FOUNDATION_EXPORT AndroidGovNistJavaxSipUtils *AndroidGovNistJavaxSipUtils_getInstance();

FOUNDATION_EXPORT NSString *AndroidGovNistJavaxSipUtils_toHexStringWithByteArray_(IOSByteArray *b);

FOUNDATION_EXPORT NSString *AndroidGovNistJavaxSipUtils_getQuotedStringWithNSString_(NSString *str);

FOUNDATION_EXPORT NSString *AndroidGovNistJavaxSipUtils_reduceStringWithNSString_(NSString *input);

FOUNDATION_EXPORT NSString *AndroidGovNistJavaxSipUtils_toUpperCaseWithNSString_(NSString *str);

FOUNDATION_EXPORT NSString *AndroidGovNistJavaxSipUtils_getSignature();

FOUNDATION_EXPORT void AndroidGovNistJavaxSipUtils_mainWithNSStringArray_(IOSObjectArray *args);

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSipUtils)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidGovNistJavaxSipUtils")