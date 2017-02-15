//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sdp/fields/AttributeField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidGovNistJavaxSdpFieldsAttributeField")
#ifdef RESTRICT_AndroidGovNistJavaxSdpFieldsAttributeField
#define INCLUDE_ALL_AndroidGovNistJavaxSdpFieldsAttributeField 0
#else
#define INCLUDE_ALL_AndroidGovNistJavaxSdpFieldsAttributeField 1
#endif
#undef RESTRICT_AndroidGovNistJavaxSdpFieldsAttributeField

#if !defined (AndroidGovNistJavaxSdpFieldsAttributeField_) && (INCLUDE_ALL_AndroidGovNistJavaxSdpFieldsAttributeField || defined(INCLUDE_AndroidGovNistJavaxSdpFieldsAttributeField))
#define AndroidGovNistJavaxSdpFieldsAttributeField_

#define RESTRICT_AndroidGovNistJavaxSdpFieldsSDPField 1
#define INCLUDE_AndroidGovNistJavaxSdpFieldsSDPField 1
#include "android/gov/nist/javax/sdp/fields/SDPField.h"

#define RESTRICT_AndroidJavaxSdpAttribute 1
#define INCLUDE_AndroidJavaxSdpAttribute 1
#include "android/javax/sdp/Attribute.h"

@class AndroidGovNistCoreNameValue;

@interface AndroidGovNistJavaxSdpFieldsAttributeField : AndroidGovNistJavaxSdpFieldsSDPField < AndroidJavaxSdpAttribute > {
 @public
  AndroidGovNistCoreNameValue *attribute_;
}

#pragma mark Public

- (instancetype)init;

- (id)java_clone;

- (NSString *)encode;

- (jboolean)isEqual:(id)that;

- (AndroidGovNistCoreNameValue *)getAttribute;

- (NSString *)getName;

- (NSString *)getValue;

- (NSUInteger)hash;

- (jboolean)hasValue;

- (void)setAttributeWithAndroidGovNistCoreNameValue:(AndroidGovNistCoreNameValue *)a;

- (void)setNameWithNSString:(NSString *)name;

- (void)setValueWithNSString:(NSString *)value;

- (void)setValueAllowNullWithNSString:(NSString *)value;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidGovNistJavaxSdpFieldsAttributeField)

J2OBJC_FIELD_SETTER(AndroidGovNistJavaxSdpFieldsAttributeField, attribute_, AndroidGovNistCoreNameValue *)

FOUNDATION_EXPORT void AndroidGovNistJavaxSdpFieldsAttributeField_init(AndroidGovNistJavaxSdpFieldsAttributeField *self);

FOUNDATION_EXPORT AndroidGovNistJavaxSdpFieldsAttributeField *new_AndroidGovNistJavaxSdpFieldsAttributeField_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSdpFieldsAttributeField *create_AndroidGovNistJavaxSdpFieldsAttributeField_init();

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSdpFieldsAttributeField)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidGovNistJavaxSdpFieldsAttributeField")