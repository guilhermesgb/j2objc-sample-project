//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/address/AddressImpl.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "android/gov/nist/core/GenericObject.h"
#include "android/gov/nist/core/Host.h"
#include "android/gov/nist/core/HostPort.h"
#include "android/gov/nist/core/Match.h"
#include "android/gov/nist/javax/sip/address/AddressImpl.h"
#include "android/gov/nist/javax/sip/address/GenericURI.h"
#include "android/gov/nist/javax/sip/address/NetObject.h"
#include "android/gov/nist/javax/sip/address/SipUri.h"
#include "android/javax/sip/address/Address.h"
#include "android/javax/sip/address/URI.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/StringBuilder.h"

inline jlong AndroidGovNistJavaxSipAddressAddressImpl_get_serialVersionUID();
#define AndroidGovNistJavaxSipAddressAddressImpl_serialVersionUID 429592779568617259LL
J2OBJC_STATIC_FIELD_CONSTANT(AndroidGovNistJavaxSipAddressAddressImpl, serialVersionUID, jlong)

@implementation AndroidGovNistJavaxSipAddressAddressImpl

- (jboolean)matchWithId:(id)other {
  if (other == nil) return true;
  if (!([AndroidJavaxSipAddressAddress_class_() isInstance:other])) return false;
  else {
    AndroidGovNistJavaxSipAddressAddressImpl *that = (AndroidGovNistJavaxSipAddressAddressImpl *) cast_chk(other, [AndroidGovNistJavaxSipAddressAddressImpl class]);
    if ([that getMatcher] != nil) return [((id<AndroidGovNistCoreMatch>) nil_chk([that getMatcher])) matchWithNSString:[self encode]];
    else if (that->displayName_ != nil && self->displayName_ == nil) return false;
    else if (that->displayName_ == nil) return [((AndroidGovNistJavaxSipAddressGenericURI *) nil_chk(address_)) matchWithId:that->address_];
    else return [displayName_ java_equalsIgnoreCase:that->displayName_] && [((AndroidGovNistJavaxSipAddressGenericURI *) nil_chk(address_)) matchWithId:that->address_];
  }
}

- (AndroidGovNistCoreHostPort *)getHostPort {
  if (!([address_ isKindOfClass:[AndroidGovNistJavaxSipAddressSipUri class]])) @throw create_JavaLangRuntimeException_initWithNSString_(@"address is not a SipUri");
  AndroidGovNistJavaxSipAddressSipUri *uri = (AndroidGovNistJavaxSipAddressSipUri *) cast_chk(address_, [AndroidGovNistJavaxSipAddressSipUri class]);
  return [((AndroidGovNistJavaxSipAddressSipUri *) nil_chk(uri)) getHostPort];
}

- (jint)getPort {
  if (!([address_ isKindOfClass:[AndroidGovNistJavaxSipAddressSipUri class]])) @throw create_JavaLangRuntimeException_initWithNSString_(@"address is not a SipUri");
  AndroidGovNistJavaxSipAddressSipUri *uri = (AndroidGovNistJavaxSipAddressSipUri *) cast_chk(address_, [AndroidGovNistJavaxSipAddressSipUri class]);
  return [((AndroidGovNistCoreHostPort *) nil_chk([((AndroidGovNistJavaxSipAddressSipUri *) nil_chk(uri)) getHostPort])) getPort];
}

- (NSString *)getUserAtHostPort {
  if ([address_ isKindOfClass:[AndroidGovNistJavaxSipAddressSipUri class]]) {
    AndroidGovNistJavaxSipAddressSipUri *uri = (AndroidGovNistJavaxSipAddressSipUri *) cast_chk(address_, [AndroidGovNistJavaxSipAddressSipUri class]);
    return [((AndroidGovNistJavaxSipAddressSipUri *) nil_chk(uri)) getUserAtHostPort];
  }
  else return [((AndroidGovNistJavaxSipAddressGenericURI *) nil_chk(address_)) description];
}

- (NSString *)getHost {
  if (!([address_ isKindOfClass:[AndroidGovNistJavaxSipAddressSipUri class]])) @throw create_JavaLangRuntimeException_initWithNSString_(@"address is not a SipUri");
  AndroidGovNistJavaxSipAddressSipUri *uri = (AndroidGovNistJavaxSipAddressSipUri *) cast_chk(address_, [AndroidGovNistJavaxSipAddressSipUri class]);
  return [((AndroidGovNistCoreHost *) nil_chk([((AndroidGovNistCoreHostPort *) nil_chk([((AndroidGovNistJavaxSipAddressSipUri *) nil_chk(uri)) getHostPort])) getHost])) getHostname];
}

- (void)removeParameterWithNSString:(NSString *)parameterName {
  if (!([address_ isKindOfClass:[AndroidGovNistJavaxSipAddressSipUri class]])) @throw create_JavaLangRuntimeException_initWithNSString_(@"address is not a SipUri");
  AndroidGovNistJavaxSipAddressSipUri *uri = (AndroidGovNistJavaxSipAddressSipUri *) cast_chk(address_, [AndroidGovNistJavaxSipAddressSipUri class]);
  [((AndroidGovNistJavaxSipAddressSipUri *) nil_chk(uri)) removeParameterWithNSString:parameterName];
}

- (NSString *)encode {
  return [((JavaLangStringBuilder *) nil_chk([self encodeWithJavaLangStringBuilder:create_JavaLangStringBuilder_init()])) description];
}

- (JavaLangStringBuilder *)encodeWithJavaLangStringBuilder:(JavaLangStringBuilder *)buffer {
  if (self->addressType_ == AndroidGovNistJavaxSipAddressAddressImpl_WILD_CARD) {
    [((JavaLangStringBuilder *) nil_chk(buffer)) appendWithChar:'*'];
  }
  else {
    if (displayName_ != nil) {
      [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk(buffer)) appendWithNSString:AndroidGovNistCoreGenericObject_DOUBLE_QUOTE])) appendWithNSString:displayName_])) appendWithNSString:AndroidGovNistCoreGenericObject_DOUBLE_QUOTE])) appendWithNSString:AndroidGovNistCoreGenericObject_SP];
    }
    if (address_ != nil) {
      if (addressType_ == AndroidGovNistJavaxSipAddressAddressImpl_NAME_ADDR || displayName_ != nil) [((JavaLangStringBuilder *) nil_chk(buffer)) appendWithNSString:AndroidGovNistCoreGenericObject_LESS_THAN];
      [((AndroidGovNistJavaxSipAddressGenericURI *) nil_chk(address_)) encodeWithJavaLangStringBuilder:buffer];
      if (addressType_ == AndroidGovNistJavaxSipAddressAddressImpl_NAME_ADDR || displayName_ != nil) [((JavaLangStringBuilder *) nil_chk(buffer)) appendWithNSString:AndroidGovNistCoreGenericObject_GREATER_THAN];
    }
  }
  return buffer;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  AndroidGovNistJavaxSipAddressAddressImpl_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)getAddressType {
  return addressType_;
}

- (void)setAddressTypeWithInt:(jint)atype {
  addressType_ = atype;
}

- (NSString *)getDisplayName {
  return displayName_;
}

- (void)setDisplayNameWithNSString:(NSString *)displayName {
  JreStrongAssign(&self->displayName_, displayName);
  self->addressType_ = AndroidGovNistJavaxSipAddressAddressImpl_NAME_ADDR;
}

- (void)setAddessWithAndroidJavaxSipAddressURI:(id<AndroidJavaxSipAddressURI>)address {
  JreStrongAssign(&self->address_, (AndroidGovNistJavaxSipAddressGenericURI *) cast_chk(address, [AndroidGovNistJavaxSipAddressGenericURI class]));
}

- (NSUInteger)hash {
  return ((jint) [((AndroidGovNistJavaxSipAddressGenericURI *) nil_chk(self->address_)) hash]);
}

- (jboolean)isEqual:(id)other {
  if (self == other) return true;
  if ([AndroidJavaxSipAddressAddress_class_() isInstance:other]) {
    id<AndroidJavaxSipAddressAddress> o = (id<AndroidJavaxSipAddressAddress>) cast_check(other, AndroidJavaxSipAddressAddress_class_());
    return [((id<AndroidJavaxSipAddressURI>) nil_chk([self getURI])) isEqual:[((id<AndroidJavaxSipAddressAddress>) nil_chk(o)) getURI]];
  }
  return false;
}

- (jboolean)hasDisplayName {
  return (displayName_ != nil);
}

- (void)removeDisplayName {
  JreStrongAssign(&displayName_, nil);
}

- (jboolean)isSIPAddress {
  return [address_ isKindOfClass:[AndroidGovNistJavaxSipAddressSipUri class]];
}

- (id<AndroidJavaxSipAddressURI>)getURI {
  return self->address_;
}

- (jboolean)isWildcard {
  return self->addressType_ == AndroidGovNistJavaxSipAddressAddressImpl_WILD_CARD;
}

- (void)setURIWithAndroidJavaxSipAddressURI:(id<AndroidJavaxSipAddressURI>)address {
  JreStrongAssign(&self->address_, (AndroidGovNistJavaxSipAddressGenericURI *) cast_chk(address, [AndroidGovNistJavaxSipAddressGenericURI class]));
}

- (void)setUserWithNSString:(NSString *)user {
  [((AndroidGovNistJavaxSipAddressSipUri *) nil_chk(((AndroidGovNistJavaxSipAddressSipUri *) cast_chk(self->address_, [AndroidGovNistJavaxSipAddressSipUri class])))) setUserWithNSString:user];
}

- (void)setWildCardFlag {
  self->addressType_ = AndroidGovNistJavaxSipAddressAddressImpl_WILD_CARD;
  JreStrongAssignAndConsume(&self->address_, new_AndroidGovNistJavaxSipAddressSipUri_init());
  [((AndroidGovNistJavaxSipAddressSipUri *) cast_chk(self->address_, [AndroidGovNistJavaxSipAddressSipUri class])) setUserWithNSString:@"*"];
}

- (id)java_clone {
  AndroidGovNistJavaxSipAddressAddressImpl *retval = (AndroidGovNistJavaxSipAddressAddressImpl *) cast_chk([super java_clone], [AndroidGovNistJavaxSipAddressAddressImpl class]);
  if (self->address_ != nil) JreStrongAssign(&((AndroidGovNistJavaxSipAddressAddressImpl *) nil_chk(retval))->address_, (AndroidGovNistJavaxSipAddressGenericURI *) cast_chk([self->address_ java_clone], [AndroidGovNistJavaxSipAddressGenericURI class]));
  return retval;
}

- (void)dealloc {
  RELEASE_(displayName_);
  RELEASE_(address_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "Z", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LAndroidGovNistCoreHostPort;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangStringBuilder;", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 11, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 12, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LAndroidJavaxSipAddressURI;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 13, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 14, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 15, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(matchWithId:);
  methods[1].selector = @selector(getHostPort);
  methods[2].selector = @selector(getPort);
  methods[3].selector = @selector(getUserAtHostPort);
  methods[4].selector = @selector(getHost);
  methods[5].selector = @selector(removeParameterWithNSString:);
  methods[6].selector = @selector(encode);
  methods[7].selector = @selector(encodeWithJavaLangStringBuilder:);
  methods[8].selector = @selector(init);
  methods[9].selector = @selector(getAddressType);
  methods[10].selector = @selector(setAddressTypeWithInt:);
  methods[11].selector = @selector(getDisplayName);
  methods[12].selector = @selector(setDisplayNameWithNSString:);
  methods[13].selector = @selector(setAddessWithAndroidJavaxSipAddressURI:);
  methods[14].selector = @selector(hash);
  methods[15].selector = @selector(isEqual:);
  methods[16].selector = @selector(hasDisplayName);
  methods[17].selector = @selector(removeDisplayName);
  methods[18].selector = @selector(isSIPAddress);
  methods[19].selector = @selector(getURI);
  methods[20].selector = @selector(isWildcard);
  methods[21].selector = @selector(setURIWithAndroidJavaxSipAddressURI:);
  methods[22].selector = @selector(setUserWithNSString:);
  methods[23].selector = @selector(setWildCardFlag);
  methods[24].selector = @selector(java_clone);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = AndroidGovNistJavaxSipAddressAddressImpl_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "NAME_ADDR", "I", .constantValue.asInt = AndroidGovNistJavaxSipAddressAddressImpl_NAME_ADDR, 0x19, -1, -1, -1, -1 },
    { "ADDRESS_SPEC", "I", .constantValue.asInt = AndroidGovNistJavaxSipAddressAddressImpl_ADDRESS_SPEC, 0x19, -1, -1, -1, -1 },
    { "WILD_CARD", "I", .constantValue.asInt = AndroidGovNistJavaxSipAddressAddressImpl_WILD_CARD, 0x19, -1, -1, -1, -1 },
    { "addressType_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "displayName_", "LNSString;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "address_", "LAndroidGovNistJavaxSipAddressGenericURI;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "match", "LNSObject;", "removeParameter", "LNSString;", "encode", "LJavaLangStringBuilder;", "setAddressType", "I", "setDisplayName", "setAddess", "LAndroidJavaxSipAddressURI;", "hashCode", "equals", "setURI", "setUser", "clone" };
  static const J2ObjcClassInfo _AndroidGovNistJavaxSipAddressAddressImpl = { "AddressImpl", "android.gov.nist.javax.sip.address", ptrTable, methods, fields, 7, 0x11, 25, 7, -1, -1, -1, -1, -1 };
  return &_AndroidGovNistJavaxSipAddressAddressImpl;
}

@end

void AndroidGovNistJavaxSipAddressAddressImpl_init(AndroidGovNistJavaxSipAddressAddressImpl *self) {
  AndroidGovNistJavaxSipAddressNetObject_init(self);
  self->addressType_ = AndroidGovNistJavaxSipAddressAddressImpl_NAME_ADDR;
}

AndroidGovNistJavaxSipAddressAddressImpl *new_AndroidGovNistJavaxSipAddressAddressImpl_init() {
  J2OBJC_NEW_IMPL(AndroidGovNistJavaxSipAddressAddressImpl, init)
}

AndroidGovNistJavaxSipAddressAddressImpl *create_AndroidGovNistJavaxSipAddressAddressImpl_init() {
  J2OBJC_CREATE_IMPL(AndroidGovNistJavaxSipAddressAddressImpl, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidGovNistJavaxSipAddressAddressImpl)