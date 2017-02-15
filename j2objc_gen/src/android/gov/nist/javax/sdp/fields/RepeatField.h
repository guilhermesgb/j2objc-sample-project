//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sdp/fields/RepeatField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidGovNistJavaxSdpFieldsRepeatField")
#ifdef RESTRICT_AndroidGovNistJavaxSdpFieldsRepeatField
#define INCLUDE_ALL_AndroidGovNistJavaxSdpFieldsRepeatField 0
#else
#define INCLUDE_ALL_AndroidGovNistJavaxSdpFieldsRepeatField 1
#endif
#undef RESTRICT_AndroidGovNistJavaxSdpFieldsRepeatField

#if !defined (AndroidGovNistJavaxSdpFieldsRepeatField_) && (INCLUDE_ALL_AndroidGovNistJavaxSdpFieldsRepeatField || defined(INCLUDE_AndroidGovNistJavaxSdpFieldsRepeatField))
#define AndroidGovNistJavaxSdpFieldsRepeatField_

#define RESTRICT_AndroidGovNistJavaxSdpFieldsSDPField 1
#define INCLUDE_AndroidGovNistJavaxSdpFieldsSDPField 1
#include "android/gov/nist/javax/sdp/fields/SDPField.h"

#define RESTRICT_AndroidJavaxSdpRepeatTime 1
#define INCLUDE_AndroidJavaxSdpRepeatTime 1
#include "android/javax/sdp/RepeatTime.h"

@class AndroidGovNistJavaxSdpFieldsSDPObjectList;
@class AndroidGovNistJavaxSdpFieldsTypedTime;
@class IOSIntArray;
@class JavaUtilLinkedList;

@interface AndroidGovNistJavaxSdpFieldsRepeatField : AndroidGovNistJavaxSdpFieldsSDPField < AndroidJavaxSdpRepeatTime > {
 @public
  AndroidGovNistJavaxSdpFieldsTypedTime *repeatInterval_;
  AndroidGovNistJavaxSdpFieldsTypedTime *activeDuration_;
  AndroidGovNistJavaxSdpFieldsSDPObjectList *offsets_;
}

#pragma mark Public

- (instancetype)init;

- (void)addOffsetWithAndroidGovNistJavaxSdpFieldsTypedTime:(AndroidGovNistJavaxSdpFieldsTypedTime *)offset;

- (id)java_clone;

- (NSString *)encode;

- (jint)getActiveDuration;

- (IOSIntArray *)getOffsetArray;

- (JavaUtilLinkedList *)getOffsets;

- (jint)getRepeatInterval;

- (jboolean)getTypedTime;

- (void)setActiveDurationWithInt:(jint)activeDuration;

- (void)setActiveDurationWithAndroidGovNistJavaxSdpFieldsTypedTime:(AndroidGovNistJavaxSdpFieldsTypedTime *)duration;

- (void)setOffsetArrayWithIntArray:(IOSIntArray *)offsets;

- (void)setRepeatIntervalWithInt:(jint)repeatInterval;

- (void)setRepeatIntervalWithAndroidGovNistJavaxSdpFieldsTypedTime:(AndroidGovNistJavaxSdpFieldsTypedTime *)interval;

- (void)setTypedTimeWithBoolean:(jboolean)typedTime;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidGovNistJavaxSdpFieldsRepeatField)

J2OBJC_FIELD_SETTER(AndroidGovNistJavaxSdpFieldsRepeatField, repeatInterval_, AndroidGovNistJavaxSdpFieldsTypedTime *)
J2OBJC_FIELD_SETTER(AndroidGovNistJavaxSdpFieldsRepeatField, activeDuration_, AndroidGovNistJavaxSdpFieldsTypedTime *)
J2OBJC_FIELD_SETTER(AndroidGovNistJavaxSdpFieldsRepeatField, offsets_, AndroidGovNistJavaxSdpFieldsSDPObjectList *)

FOUNDATION_EXPORT void AndroidGovNistJavaxSdpFieldsRepeatField_init(AndroidGovNistJavaxSdpFieldsRepeatField *self);

FOUNDATION_EXPORT AndroidGovNistJavaxSdpFieldsRepeatField *new_AndroidGovNistJavaxSdpFieldsRepeatField_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSdpFieldsRepeatField *create_AndroidGovNistJavaxSdpFieldsRepeatField_init();

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSdpFieldsRepeatField)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidGovNistJavaxSdpFieldsRepeatField")