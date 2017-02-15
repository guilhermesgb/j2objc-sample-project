//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/header/To.java
//

#include "J2ObjC_source.h"
#include "android/gov/nist/core/GenericObject.h"
#include "android/gov/nist/core/HostPort.h"
#include "android/gov/nist/core/NameValueList.h"
#include "android/gov/nist/javax/sip/address/AddressImpl.h"
#include "android/gov/nist/javax/sip/header/AddressParametersHeader.h"
#include "android/gov/nist/javax/sip/header/From.h"
#include "android/gov/nist/javax/sip/header/ParameterNames.h"
#include "android/gov/nist/javax/sip/header/ParametersHeader.h"
#include "android/gov/nist/javax/sip/header/SIPHeaderNames.h"
#include "android/gov/nist/javax/sip/header/To.h"
#include "android/gov/nist/javax/sip/parser/Parser.h"
#include "android/javax/sip/header/ToHeader.h"
#include "java/lang/StringBuilder.h"

inline jlong AndroidGovNistJavaxSipHeaderTo_get_serialVersionUID();
#define AndroidGovNistJavaxSipHeaderTo_serialVersionUID -4057413800584586316LL
J2OBJC_STATIC_FIELD_CONSTANT(AndroidGovNistJavaxSipHeaderTo, serialVersionUID, jlong)

@implementation AndroidGovNistJavaxSipHeaderTo

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  AndroidGovNistJavaxSipHeaderTo_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithAndroidGovNistJavaxSipHeaderFrom:(AndroidGovNistJavaxSipHeaderFrom *)from {
  AndroidGovNistJavaxSipHeaderTo_initWithAndroidGovNistJavaxSipHeaderFrom_(self, from);
  return self;
}

- (NSString *)encode {
  return JreStrcat("$$$$$", headerName_, AndroidGovNistCoreGenericObject_COLON, AndroidGovNistCoreGenericObject_SP, [self encodeBody], AndroidGovNistCoreGenericObject_NEWLINE);
}

- (NSString *)encodeBody {
  return [((JavaLangStringBuilder *) nil_chk([self encodeBodyWithJavaLangStringBuilder:create_JavaLangStringBuilder_init()])) description];
}

- (JavaLangStringBuilder *)encodeBodyWithJavaLangStringBuilder:(JavaLangStringBuilder *)buffer {
  if (address_ != nil) {
    if ([address_ getAddressType] == AndroidGovNistJavaxSipAddressAddressImpl_ADDRESS_SPEC) {
      [((JavaLangStringBuilder *) nil_chk(buffer)) appendWithNSString:AndroidGovNistCoreGenericObject_LESS_THAN];
    }
    [((AndroidGovNistJavaxSipAddressAddressImpl *) nil_chk(address_)) encodeWithJavaLangStringBuilder:buffer];
    if ([((AndroidGovNistJavaxSipAddressAddressImpl *) nil_chk(address_)) getAddressType] == AndroidGovNistJavaxSipAddressAddressImpl_ADDRESS_SPEC) {
      [((JavaLangStringBuilder *) nil_chk(buffer)) appendWithNSString:AndroidGovNistCoreGenericObject_GREATER_THAN];
    }
    if (![((AndroidGovNistCoreNameValueList *) nil_chk(parameters_)) isEmpty]) {
      [((JavaLangStringBuilder *) nil_chk(buffer)) appendWithNSString:AndroidGovNistCoreGenericObject_SEMICOLON];
      [((AndroidGovNistCoreNameValueList *) nil_chk(parameters_)) encodeWithJavaLangStringBuilder:buffer];
    }
  }
  return buffer;
}

- (AndroidGovNistCoreHostPort *)getHostPort {
  if (address_ == nil) return nil;
  return [address_ getHostPort];
}

- (NSString *)getDisplayName {
  if (address_ == nil) return nil;
  return [address_ getDisplayName];
}

- (NSString *)getTag {
  if (parameters_ == nil) return nil;
  return [self getParameterWithNSString:AndroidGovNistJavaxSipHeaderParameterNames_TAG];
}

- (jboolean)hasTag {
  if (parameters_ == nil) return false;
  return [self hasParameterWithNSString:AndroidGovNistJavaxSipHeaderParameterNames_TAG];
}

- (void)removeTag {
  if (parameters_ != nil) [parameters_ delete__WithNSString:AndroidGovNistJavaxSipHeaderParameterNames_TAG];
}

- (void)setTagWithNSString:(NSString *)t {
  AndroidGovNistJavaxSipParserParser_checkTokenWithNSString_(t);
  [self setParameterWithNSString:AndroidGovNistJavaxSipHeaderParameterNames_TAG withNSString:t];
}

- (NSString *)getUserAtHostPort {
  if (address_ == nil) return nil;
  return [address_ getUserAtHostPort];
}

- (jboolean)isEqual:(id)other {
  return ([AndroidJavaxSipHeaderToHeader_class_() isInstance:other]) && [super isEqual:other];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangStringBuilder;", 0x4, 1, 2, -1, -1, -1, -1 },
    { NULL, "LAndroidGovNistCoreHostPort;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, 5, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 6, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithAndroidGovNistJavaxSipHeaderFrom:);
  methods[2].selector = @selector(encode);
  methods[3].selector = @selector(encodeBody);
  methods[4].selector = @selector(encodeBodyWithJavaLangStringBuilder:);
  methods[5].selector = @selector(getHostPort);
  methods[6].selector = @selector(getDisplayName);
  methods[7].selector = @selector(getTag);
  methods[8].selector = @selector(hasTag);
  methods[9].selector = @selector(removeTag);
  methods[10].selector = @selector(setTagWithNSString:);
  methods[11].selector = @selector(getUserAtHostPort);
  methods[12].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = AndroidGovNistJavaxSipHeaderTo_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LAndroidGovNistJavaxSipHeaderFrom;", "encodeBody", "LJavaLangStringBuilder;", "setTag", "LNSString;", "LJavaTextParseException;", "equals", "LNSObject;" };
  static const J2ObjcClassInfo _AndroidGovNistJavaxSipHeaderTo = { "To", "android.gov.nist.javax.sip.header", ptrTable, methods, fields, 7, 0x11, 13, 1, -1, -1, -1, -1, -1 };
  return &_AndroidGovNistJavaxSipHeaderTo;
}

@end

void AndroidGovNistJavaxSipHeaderTo_init(AndroidGovNistJavaxSipHeaderTo *self) {
  AndroidGovNistJavaxSipHeaderAddressParametersHeader_initWithNSString_withBoolean_(self, AndroidGovNistJavaxSipHeaderSIPHeaderNames_TO, true);
}

AndroidGovNistJavaxSipHeaderTo *new_AndroidGovNistJavaxSipHeaderTo_init() {
  J2OBJC_NEW_IMPL(AndroidGovNistJavaxSipHeaderTo, init)
}

AndroidGovNistJavaxSipHeaderTo *create_AndroidGovNistJavaxSipHeaderTo_init() {
  J2OBJC_CREATE_IMPL(AndroidGovNistJavaxSipHeaderTo, init)
}

void AndroidGovNistJavaxSipHeaderTo_initWithAndroidGovNistJavaxSipHeaderFrom_(AndroidGovNistJavaxSipHeaderTo *self, AndroidGovNistJavaxSipHeaderFrom *from) {
  AndroidGovNistJavaxSipHeaderAddressParametersHeader_initWithNSString_(self, AndroidGovNistJavaxSipHeaderSIPHeaderNames_TO);
  [self setAddressWithAndroidJavaxSipAddressAddress:((AndroidGovNistJavaxSipHeaderAddressParametersHeader *) nil_chk(from))->address_];
  [self setParametersWithAndroidGovNistCoreNameValueList:from->parameters_];
}

AndroidGovNistJavaxSipHeaderTo *new_AndroidGovNistJavaxSipHeaderTo_initWithAndroidGovNistJavaxSipHeaderFrom_(AndroidGovNistJavaxSipHeaderFrom *from) {
  J2OBJC_NEW_IMPL(AndroidGovNistJavaxSipHeaderTo, initWithAndroidGovNistJavaxSipHeaderFrom_, from)
}

AndroidGovNistJavaxSipHeaderTo *create_AndroidGovNistJavaxSipHeaderTo_initWithAndroidGovNistJavaxSipHeaderFrom_(AndroidGovNistJavaxSipHeaderFrom *from) {
  J2OBJC_CREATE_IMPL(AndroidGovNistJavaxSipHeaderTo, initWithAndroidGovNistJavaxSipHeaderFrom_, from)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidGovNistJavaxSipHeaderTo)