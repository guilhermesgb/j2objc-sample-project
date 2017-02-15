//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/header/ViaList.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "android/gov/nist/javax/sip/header/SIPHeaderList.h"
#include "android/gov/nist/javax/sip/header/Via.h"
#include "android/gov/nist/javax/sip/header/ViaList.h"
#include "android/javax/sip/header/ViaHeader.h"
#include "java/util/List.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

inline jlong AndroidGovNistJavaxSipHeaderViaList_get_serialVersionUID();
#define AndroidGovNistJavaxSipHeaderViaList_serialVersionUID 3899679374556152313LL
J2OBJC_STATIC_FIELD_CONSTANT(AndroidGovNistJavaxSipHeaderViaList, serialVersionUID, jlong)

@implementation AndroidGovNistJavaxSipHeaderViaList

- (id)java_clone {
  AndroidGovNistJavaxSipHeaderViaList *retval = create_AndroidGovNistJavaxSipHeaderViaList_init();
  return [retval clonehlistWithJavaUtilList:self->hlist_];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  AndroidGovNistJavaxSipHeaderViaList_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSObject;", 0x1, 0, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(java_clone);
  methods[1].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = AndroidGovNistJavaxSipHeaderViaList_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "clone", "Landroid/gov/nist/javax/sip/header/SIPHeaderList<Landroid/gov/nist/javax/sip/header/Via;>;" };
  static const J2ObjcClassInfo _AndroidGovNistJavaxSipHeaderViaList = { "ViaList", "android.gov.nist.javax.sip.header", ptrTable, methods, fields, 7, 0x11, 2, 1, -1, -1, -1, 1, -1 };
  return &_AndroidGovNistJavaxSipHeaderViaList;
}

@end

void AndroidGovNistJavaxSipHeaderViaList_init(AndroidGovNistJavaxSipHeaderViaList *self) {
  AndroidGovNistJavaxSipHeaderSIPHeaderList_initWithIOSClass_withNSString_(self, AndroidGovNistJavaxSipHeaderVia_class_(), AndroidJavaxSipHeaderViaHeader_NAME);
}

AndroidGovNistJavaxSipHeaderViaList *new_AndroidGovNistJavaxSipHeaderViaList_init() {
  J2OBJC_NEW_IMPL(AndroidGovNistJavaxSipHeaderViaList, init)
}

AndroidGovNistJavaxSipHeaderViaList *create_AndroidGovNistJavaxSipHeaderViaList_init() {
  J2OBJC_CREATE_IMPL(AndroidGovNistJavaxSipHeaderViaList, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidGovNistJavaxSipHeaderViaList)