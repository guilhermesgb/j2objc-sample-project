//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/address/UserInfo.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "android/gov/nist/core/GenericObject.h"
#include "android/gov/nist/javax/sip/address/NetObject.h"
#include "android/gov/nist/javax/sip/address/UserInfo.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/StringBuilder.h"

inline jlong AndroidGovNistJavaxSipAddressUserInfo_get_serialVersionUID();
#define AndroidGovNistJavaxSipAddressUserInfo_serialVersionUID 7268593273924256144LL
J2OBJC_STATIC_FIELD_CONSTANT(AndroidGovNistJavaxSipAddressUserInfo, serialVersionUID, jlong)

@implementation AndroidGovNistJavaxSipAddressUserInfo

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  AndroidGovNistJavaxSipAddressUserInfo_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jboolean)isEqual:(id)obj {
  if ([self java_getClass] != [nil_chk(obj) java_getClass]) {
    return false;
  }
  AndroidGovNistJavaxSipAddressUserInfo *other = (AndroidGovNistJavaxSipAddressUserInfo *) cast_chk(obj, [AndroidGovNistJavaxSipAddressUserInfo class]);
  if (self->userType_ != other->userType_) {
    return false;
  }
  if (![((NSString *) nil_chk(self->user_)) java_equalsIgnoreCase:other->user_]) {
    return false;
  }
  if (self->password_ != nil && other->password_ == nil) return false;
  if (other->password_ != nil && self->password_ == nil) return false;
  if (self->password_ == other->password_) return true;
  return ([((NSString *) nil_chk(self->password_)) isEqual:other->password_]);
}

- (NSString *)encode {
  return [((JavaLangStringBuilder *) nil_chk([self encodeWithJavaLangStringBuilder:create_JavaLangStringBuilder_init()])) description];
}

- (JavaLangStringBuilder *)encodeWithJavaLangStringBuilder:(JavaLangStringBuilder *)buffer {
  if (password_ != nil) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk(buffer)) appendWithNSString:user_])) appendWithNSString:AndroidGovNistCoreGenericObject_COLON])) appendWithNSString:password_];
  else [((JavaLangStringBuilder *) nil_chk(buffer)) appendWithNSString:user_];
  return buffer;
}

- (void)clearPassword {
  JreStrongAssign(&self->password_, nil);
}

- (jint)getUserType {
  return userType_;
}

- (NSString *)getUser {
  return user_;
}

- (NSString *)getPassword {
  return password_;
}

- (void)setUserWithNSString:(NSString *)user {
  if (user == nil || [@"" isEqual:user]) return;
  JreStrongAssign(&self->user_, user);
  if (user != nil && ([user java_indexOfString:AndroidGovNistCoreGenericObject_POUND] >= 0 || [user java_indexOfString:AndroidGovNistCoreGenericObject_SEMICOLON] >= 0)) {
    [self setUserTypeWithInt:AndroidGovNistJavaxSipAddressUserInfo_TELEPHONE_SUBSCRIBER];
  }
  else {
    [self setUserTypeWithInt:AndroidGovNistJavaxSipAddressUserInfo_USER];
  }
}

- (void)setPasswordWithNSString:(NSString *)p {
  JreStrongAssign(&password_, p);
}

- (void)setUserTypeWithInt:(jint)type {
  if (type != AndroidGovNistJavaxSipAddressUserInfo_TELEPHONE_SUBSCRIBER && type != AndroidGovNistJavaxSipAddressUserInfo_USER) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"Parameter not in range");
  }
  userType_ = type;
}

- (void)dealloc {
  RELEASE_(user_);
  RELEASE_(password_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangStringBuilder;", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, 9, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(isEqual:);
  methods[2].selector = @selector(encode);
  methods[3].selector = @selector(encodeWithJavaLangStringBuilder:);
  methods[4].selector = @selector(clearPassword);
  methods[5].selector = @selector(getUserType);
  methods[6].selector = @selector(getUser);
  methods[7].selector = @selector(getPassword);
  methods[8].selector = @selector(setUserWithNSString:);
  methods[9].selector = @selector(setPasswordWithNSString:);
  methods[10].selector = @selector(setUserTypeWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = AndroidGovNistJavaxSipAddressUserInfo_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "user_", "LNSString;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "password_", "LNSString;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "userType_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "TELEPHONE_SUBSCRIBER", "I", .constantValue.asInt = AndroidGovNistJavaxSipAddressUserInfo_TELEPHONE_SUBSCRIBER, 0x19, -1, -1, -1, -1 },
    { "USER", "I", .constantValue.asInt = AndroidGovNistJavaxSipAddressUserInfo_USER, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "equals", "LNSObject;", "encode", "LJavaLangStringBuilder;", "setUser", "LNSString;", "setPassword", "setUserType", "I", "LJavaLangIllegalArgumentException;" };
  static const J2ObjcClassInfo _AndroidGovNistJavaxSipAddressUserInfo = { "UserInfo", "android.gov.nist.javax.sip.address", ptrTable, methods, fields, 7, 0x11, 11, 6, -1, -1, -1, -1, -1 };
  return &_AndroidGovNistJavaxSipAddressUserInfo;
}

@end

void AndroidGovNistJavaxSipAddressUserInfo_init(AndroidGovNistJavaxSipAddressUserInfo *self) {
  AndroidGovNistJavaxSipAddressNetObject_init(self);
}

AndroidGovNistJavaxSipAddressUserInfo *new_AndroidGovNistJavaxSipAddressUserInfo_init() {
  J2OBJC_NEW_IMPL(AndroidGovNistJavaxSipAddressUserInfo, init)
}

AndroidGovNistJavaxSipAddressUserInfo *create_AndroidGovNistJavaxSipAddressUserInfo_init() {
  J2OBJC_CREATE_IMPL(AndroidGovNistJavaxSipAddressUserInfo, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidGovNistJavaxSipAddressUserInfo)