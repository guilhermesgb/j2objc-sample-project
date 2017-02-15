//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/header/ims/Path.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidGovNistJavaxSipHeaderImsPath")
#ifdef RESTRICT_AndroidGovNistJavaxSipHeaderImsPath
#define INCLUDE_ALL_AndroidGovNistJavaxSipHeaderImsPath 0
#else
#define INCLUDE_ALL_AndroidGovNistJavaxSipHeaderImsPath 1
#endif
#undef RESTRICT_AndroidGovNistJavaxSipHeaderImsPath

#if !defined (AndroidGovNistJavaxSipHeaderImsPath_) && (INCLUDE_ALL_AndroidGovNistJavaxSipHeaderImsPath || defined(INCLUDE_AndroidGovNistJavaxSipHeaderImsPath))
#define AndroidGovNistJavaxSipHeaderImsPath_

#define RESTRICT_AndroidGovNistJavaxSipHeaderAddressParametersHeader 1
#define INCLUDE_AndroidGovNistJavaxSipHeaderAddressParametersHeader 1
#include "android/gov/nist/javax/sip/header/AddressParametersHeader.h"

#define RESTRICT_AndroidGovNistJavaxSipHeaderImsPathHeader 1
#define INCLUDE_AndroidGovNistJavaxSipHeaderImsPathHeader 1
#include "android/gov/nist/javax/sip/header/ims/PathHeader.h"

#define RESTRICT_AndroidGovNistJavaxSipHeaderImsSIPHeaderNamesIms 1
#define INCLUDE_AndroidGovNistJavaxSipHeaderImsSIPHeaderNamesIms 1
#include "android/gov/nist/javax/sip/header/ims/SIPHeaderNamesIms.h"

#define RESTRICT_AndroidJavaxSipHeaderExtensionHeader 1
#define INCLUDE_AndroidJavaxSipHeaderExtensionHeader 1
#include "android/javax/sip/header/ExtensionHeader.h"

@class AndroidGovNistJavaxSipAddressAddressImpl;
@class JavaLangStringBuilder;

@interface AndroidGovNistJavaxSipHeaderImsPath : AndroidGovNistJavaxSipHeaderAddressParametersHeader < AndroidGovNistJavaxSipHeaderImsPathHeader, AndroidGovNistJavaxSipHeaderImsSIPHeaderNamesIms, AndroidJavaxSipHeaderExtensionHeader >

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithAndroidGovNistJavaxSipAddressAddressImpl:(AndroidGovNistJavaxSipAddressAddressImpl *)address;

- (JavaLangStringBuilder *)encodeBodyWithJavaLangStringBuilder:(JavaLangStringBuilder *)retval;

- (void)setValueWithNSString:(NSString *)value;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidGovNistJavaxSipHeaderImsPath)

FOUNDATION_EXPORT void AndroidGovNistJavaxSipHeaderImsPath_initWithAndroidGovNistJavaxSipAddressAddressImpl_(AndroidGovNistJavaxSipHeaderImsPath *self, AndroidGovNistJavaxSipAddressAddressImpl *address);

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderImsPath *new_AndroidGovNistJavaxSipHeaderImsPath_initWithAndroidGovNistJavaxSipAddressAddressImpl_(AndroidGovNistJavaxSipAddressAddressImpl *address) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderImsPath *create_AndroidGovNistJavaxSipHeaderImsPath_initWithAndroidGovNistJavaxSipAddressAddressImpl_(AndroidGovNistJavaxSipAddressAddressImpl *address);

FOUNDATION_EXPORT void AndroidGovNistJavaxSipHeaderImsPath_init(AndroidGovNistJavaxSipHeaderImsPath *self);

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderImsPath *new_AndroidGovNistJavaxSipHeaderImsPath_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderImsPath *create_AndroidGovNistJavaxSipHeaderImsPath_init();

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSipHeaderImsPath)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidGovNistJavaxSipHeaderImsPath")