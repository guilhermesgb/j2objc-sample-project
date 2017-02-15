//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/header/ims/PAccessNetworkInfo.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidGovNistJavaxSipHeaderImsPAccessNetworkInfo")
#ifdef RESTRICT_AndroidGovNistJavaxSipHeaderImsPAccessNetworkInfo
#define INCLUDE_ALL_AndroidGovNistJavaxSipHeaderImsPAccessNetworkInfo 0
#else
#define INCLUDE_ALL_AndroidGovNistJavaxSipHeaderImsPAccessNetworkInfo 1
#endif
#undef RESTRICT_AndroidGovNistJavaxSipHeaderImsPAccessNetworkInfo

#if !defined (AndroidGovNistJavaxSipHeaderImsPAccessNetworkInfo_) && (INCLUDE_ALL_AndroidGovNistJavaxSipHeaderImsPAccessNetworkInfo || defined(INCLUDE_AndroidGovNistJavaxSipHeaderImsPAccessNetworkInfo))
#define AndroidGovNistJavaxSipHeaderImsPAccessNetworkInfo_

#define RESTRICT_AndroidGovNistJavaxSipHeaderParametersHeader 1
#define INCLUDE_AndroidGovNistJavaxSipHeaderParametersHeader 1
#include "android/gov/nist/javax/sip/header/ParametersHeader.h"

#define RESTRICT_AndroidGovNistJavaxSipHeaderImsPAccessNetworkInfoHeader 1
#define INCLUDE_AndroidGovNistJavaxSipHeaderImsPAccessNetworkInfoHeader 1
#include "android/gov/nist/javax/sip/header/ims/PAccessNetworkInfoHeader.h"

#define RESTRICT_AndroidJavaxSipHeaderExtensionHeader 1
#define INCLUDE_AndroidJavaxSipHeaderExtensionHeader 1
#include "android/javax/sip/header/ExtensionHeader.h"

@class JavaLangStringBuilder;

@interface AndroidGovNistJavaxSipHeaderImsPAccessNetworkInfo : AndroidGovNistJavaxSipHeaderParametersHeader < AndroidGovNistJavaxSipHeaderImsPAccessNetworkInfoHeader, AndroidJavaxSipHeaderExtensionHeader >

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)accessTypeVal;

- (id)java_clone;

- (JavaLangStringBuilder *)encodeBodyWithJavaLangStringBuilder:(JavaLangStringBuilder *)encoding;

- (jboolean)isEqual:(id)other;

- (NSString *)getAccessType;

- (NSString *)getCGI3GPP;

- (NSString *)getCI3GPP2;

- (NSString *)getDSLLocation;

- (id)getExtensionAccessInfo;

- (NSString *)getUtranCellID3GPP;

- (void)setAccessTypeWithNSString:(NSString *)accessTypeVal;

- (void)setCGI3GPPWithNSString:(NSString *)cgi;

- (void)setCI3GPP2WithNSString:(NSString *)ci3Gpp2;

- (void)setDSLLocationWithNSString:(NSString *)dslLocation;

- (void)setExtensionAccessInfoWithId:(id)extendAccessInfo;

- (void)setParameterWithNSString:(NSString *)name
                          withId:(id)value;

- (void)setUtranCellID3GPPWithNSString:(NSString *)utranCellID;

- (void)setValueWithNSString:(NSString *)value;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidGovNistJavaxSipHeaderImsPAccessNetworkInfo)

FOUNDATION_EXPORT void AndroidGovNistJavaxSipHeaderImsPAccessNetworkInfo_init(AndroidGovNistJavaxSipHeaderImsPAccessNetworkInfo *self);

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderImsPAccessNetworkInfo *new_AndroidGovNistJavaxSipHeaderImsPAccessNetworkInfo_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderImsPAccessNetworkInfo *create_AndroidGovNistJavaxSipHeaderImsPAccessNetworkInfo_init();

FOUNDATION_EXPORT void AndroidGovNistJavaxSipHeaderImsPAccessNetworkInfo_initWithNSString_(AndroidGovNistJavaxSipHeaderImsPAccessNetworkInfo *self, NSString *accessTypeVal);

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderImsPAccessNetworkInfo *new_AndroidGovNistJavaxSipHeaderImsPAccessNetworkInfo_initWithNSString_(NSString *accessTypeVal) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderImsPAccessNetworkInfo *create_AndroidGovNistJavaxSipHeaderImsPAccessNetworkInfo_initWithNSString_(NSString *accessTypeVal);

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSipHeaderImsPAccessNetworkInfo)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidGovNistJavaxSipHeaderImsPAccessNetworkInfo")