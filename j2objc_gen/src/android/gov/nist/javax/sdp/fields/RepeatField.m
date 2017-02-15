//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sdp/fields/RepeatField.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "android/gov/nist/core/Separators.h"
#include "android/gov/nist/javax/sdp/fields/RepeatField.h"
#include "android/gov/nist/javax/sdp/fields/SDPField.h"
#include "android/gov/nist/javax/sdp/fields/SDPFieldNames.h"
#include "android/gov/nist/javax/sdp/fields/SDPObjectList.h"
#include "android/gov/nist/javax/sdp/fields/TypedTime.h"
#include "android/javax/sdp/SdpException.h"
#include "java/lang/StringBuilder.h"
#include "java/util/LinkedList.h"
#include "java/util/ListIterator.h"

inline jlong AndroidGovNistJavaxSdpFieldsRepeatField_get_serialVersionUID();
#define AndroidGovNistJavaxSdpFieldsRepeatField_serialVersionUID -6415338212212641819LL
J2OBJC_STATIC_FIELD_CONSTANT(AndroidGovNistJavaxSdpFieldsRepeatField, serialVersionUID, jlong)

@implementation AndroidGovNistJavaxSdpFieldsRepeatField

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  AndroidGovNistJavaxSdpFieldsRepeatField_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setRepeatIntervalWithAndroidGovNistJavaxSdpFieldsTypedTime:(AndroidGovNistJavaxSdpFieldsTypedTime *)interval {
  JreStrongAssign(&repeatInterval_, interval);
}

- (void)setActiveDurationWithAndroidGovNistJavaxSdpFieldsTypedTime:(AndroidGovNistJavaxSdpFieldsTypedTime *)duration {
  JreStrongAssign(&activeDuration_, duration);
}

- (void)addOffsetWithAndroidGovNistJavaxSdpFieldsTypedTime:(AndroidGovNistJavaxSdpFieldsTypedTime *)offset {
  [((AndroidGovNistJavaxSdpFieldsSDPObjectList *) nil_chk(offsets_)) addWithAndroidGovNistJavaxSdpFieldsSDPObject:offset];
}

- (JavaUtilLinkedList *)getOffsets {
  return offsets_;
}

- (jint)getRepeatInterval {
  if (repeatInterval_ == nil) return -1;
  else {
    return [repeatInterval_ getTime];
  }
}

- (void)setRepeatIntervalWithInt:(jint)repeatInterval {
  if (repeatInterval < 0) @throw create_AndroidJavaxSdpSdpException_initWithNSString_(@"The repeat interval is <0");
  else {
    if (self->repeatInterval_ == nil) JreStrongAssignAndConsume(&self->repeatInterval_, new_AndroidGovNistJavaxSdpFieldsTypedTime_init());
    [self->repeatInterval_ setTimeWithInt:repeatInterval];
  }
}

- (jint)getActiveDuration {
  if (activeDuration_ == nil) return -1;
  else {
    return [activeDuration_ getTime];
  }
}

- (void)setActiveDurationWithInt:(jint)activeDuration {
  if (activeDuration < 0) @throw create_AndroidJavaxSdpSdpException_initWithNSString_(@"The active Duration is <0");
  else {
    if (self->activeDuration_ == nil) JreStrongAssignAndConsume(&self->activeDuration_, new_AndroidGovNistJavaxSdpFieldsTypedTime_init());
    [self->activeDuration_ setTimeWithInt:activeDuration];
  }
}

- (IOSIntArray *)getOffsetArray {
  JavaUtilLinkedList *linkedList = [self getOffsets];
  IOSIntArray *result = [IOSIntArray arrayWithLength:[((JavaUtilLinkedList *) nil_chk(linkedList)) size]];
  for (jint i = 0; i < [linkedList size]; i++) {
    AndroidGovNistJavaxSdpFieldsTypedTime *typedTime = (AndroidGovNistJavaxSdpFieldsTypedTime *) cast_chk([linkedList getWithInt:i], [AndroidGovNistJavaxSdpFieldsTypedTime class]);
    *IOSIntArray_GetRef(result, i) = [((AndroidGovNistJavaxSdpFieldsTypedTime *) nil_chk(typedTime)) getTime];
  }
  return result;
}

- (void)setOffsetArrayWithIntArray:(IOSIntArray *)offsets {
  for (jint i = 0; i < ((IOSIntArray *) nil_chk(offsets))->size_; i++) {
    AndroidGovNistJavaxSdpFieldsTypedTime *typedTime = create_AndroidGovNistJavaxSdpFieldsTypedTime_init();
    [typedTime setTimeWithInt:IOSIntArray_Get(offsets, i)];
    [self addOffsetWithAndroidGovNistJavaxSdpFieldsTypedTime:typedTime];
  }
}

- (jboolean)getTypedTime {
  return true;
}

- (void)setTypedTimeWithBoolean:(jboolean)typedTime {
}

- (NSString *)encode {
  JavaLangStringBuilder *retval = create_JavaLangStringBuilder_init();
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([retval appendWithNSString:AndroidGovNistJavaxSdpFieldsSDPFieldNames_REPEAT_FIELD])) appendWithNSString:[((AndroidGovNistJavaxSdpFieldsTypedTime *) nil_chk(repeatInterval_)) encode]])) appendWithNSString:AndroidGovNistCoreSeparators_SP])) appendWithNSString:[((AndroidGovNistJavaxSdpFieldsTypedTime *) nil_chk(activeDuration_)) encode]];
  id<JavaUtilListIterator> li = [((AndroidGovNistJavaxSdpFieldsSDPObjectList *) nil_chk(offsets_)) listIterator];
  while ([((id<JavaUtilListIterator>) nil_chk(li)) hasNext]) {
    AndroidGovNistJavaxSdpFieldsTypedTime *off = (AndroidGovNistJavaxSdpFieldsTypedTime *) cast_chk([li next], [AndroidGovNistJavaxSdpFieldsTypedTime class]);
    [((JavaLangStringBuilder *) nil_chk([retval appendWithNSString:AndroidGovNistCoreSeparators_SP])) appendWithNSString:[((AndroidGovNistJavaxSdpFieldsTypedTime *) nil_chk(off)) encode]];
  }
  [retval appendWithNSString:AndroidGovNistCoreSeparators_NEWLINE];
  return [retval description];
}

- (id)java_clone {
  AndroidGovNistJavaxSdpFieldsRepeatField *retval = (AndroidGovNistJavaxSdpFieldsRepeatField *) cast_chk([super java_clone], [AndroidGovNistJavaxSdpFieldsRepeatField class]);
  if (self->repeatInterval_ != nil) JreStrongAssign(&((AndroidGovNistJavaxSdpFieldsRepeatField *) nil_chk(retval))->repeatInterval_, (AndroidGovNistJavaxSdpFieldsTypedTime *) cast_chk([self->repeatInterval_ java_clone], [AndroidGovNistJavaxSdpFieldsTypedTime class]));
  if (self->activeDuration_ != nil) JreStrongAssign(&((AndroidGovNistJavaxSdpFieldsRepeatField *) nil_chk(retval))->activeDuration_, (AndroidGovNistJavaxSdpFieldsTypedTime *) cast_chk([self->activeDuration_ java_clone], [AndroidGovNistJavaxSdpFieldsTypedTime class]));
  if (self->offsets_ != nil) JreStrongAssign(&((AndroidGovNistJavaxSdpFieldsRepeatField *) nil_chk(retval))->offsets_, (AndroidGovNistJavaxSdpFieldsSDPObjectList *) cast_chk([self->offsets_ java_clone], [AndroidGovNistJavaxSdpFieldsSDPObjectList class]));
  return retval;
}

- (void)dealloc {
  RELEASE_(repeatInterval_);
  RELEASE_(activeDuration_);
  RELEASE_(offsets_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilLinkedList;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 4, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 5, 6, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 4, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 5, 6, -1, -1, -1 },
    { NULL, "[I", 0x1, -1, -1, 4, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, 6, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 4, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 11, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setRepeatIntervalWithAndroidGovNistJavaxSdpFieldsTypedTime:);
  methods[2].selector = @selector(setActiveDurationWithAndroidGovNistJavaxSdpFieldsTypedTime:);
  methods[3].selector = @selector(addOffsetWithAndroidGovNistJavaxSdpFieldsTypedTime:);
  methods[4].selector = @selector(getOffsets);
  methods[5].selector = @selector(getRepeatInterval);
  methods[6].selector = @selector(setRepeatIntervalWithInt:);
  methods[7].selector = @selector(getActiveDuration);
  methods[8].selector = @selector(setActiveDurationWithInt:);
  methods[9].selector = @selector(getOffsetArray);
  methods[10].selector = @selector(setOffsetArrayWithIntArray:);
  methods[11].selector = @selector(getTypedTime);
  methods[12].selector = @selector(setTypedTimeWithBoolean:);
  methods[13].selector = @selector(encode);
  methods[14].selector = @selector(java_clone);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = AndroidGovNistJavaxSdpFieldsRepeatField_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "repeatInterval_", "LAndroidGovNistJavaxSdpFieldsTypedTime;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "activeDuration_", "LAndroidGovNistJavaxSdpFieldsTypedTime;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "offsets_", "LAndroidGovNistJavaxSdpFieldsSDPObjectList;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setRepeatInterval", "LAndroidGovNistJavaxSdpFieldsTypedTime;", "setActiveDuration", "addOffset", "LAndroidJavaxSdpSdpParseException;", "I", "LAndroidJavaxSdpSdpException;", "setOffsetArray", "[I", "setTypedTime", "Z", "clone" };
  static const J2ObjcClassInfo _AndroidGovNistJavaxSdpFieldsRepeatField = { "RepeatField", "android.gov.nist.javax.sdp.fields", ptrTable, methods, fields, 7, 0x1, 15, 4, -1, -1, -1, -1, -1 };
  return &_AndroidGovNistJavaxSdpFieldsRepeatField;
}

@end

void AndroidGovNistJavaxSdpFieldsRepeatField_init(AndroidGovNistJavaxSdpFieldsRepeatField *self) {
  AndroidGovNistJavaxSdpFieldsSDPField_initWithNSString_(self, AndroidGovNistJavaxSdpFieldsSDPFieldNames_REPEAT_FIELD);
  JreStrongAssignAndConsume(&self->offsets_, new_AndroidGovNistJavaxSdpFieldsSDPObjectList_init());
}

AndroidGovNistJavaxSdpFieldsRepeatField *new_AndroidGovNistJavaxSdpFieldsRepeatField_init() {
  J2OBJC_NEW_IMPL(AndroidGovNistJavaxSdpFieldsRepeatField, init)
}

AndroidGovNistJavaxSdpFieldsRepeatField *create_AndroidGovNistJavaxSdpFieldsRepeatField_init() {
  J2OBJC_CREATE_IMPL(AndroidGovNistJavaxSdpFieldsRepeatField, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidGovNistJavaxSdpFieldsRepeatField)