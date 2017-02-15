//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/core/Token.java
//

#include "J2ObjC_source.h"
#include "android/gov/nist/core/Token.h"

@implementation AndroidGovNistCoreToken

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  AndroidGovNistCoreToken_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSString *)getTokenValue {
  return self->tokenValue_;
}

- (jint)getTokenType {
  return self->tokenType_;
}

- (NSString *)description {
  return JreStrcat("$$$I", @"tokenValue = ", tokenValue_, @"/tokenType = ", tokenType_);
}

- (void)dealloc {
  RELEASE_(tokenValue_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 0, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getTokenValue);
  methods[2].selector = @selector(getTokenType);
  methods[3].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "tokenValue_", "LNSString;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "tokenType_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "toString" };
  static const J2ObjcClassInfo _AndroidGovNistCoreToken = { "Token", "android.gov.nist.core", ptrTable, methods, fields, 7, 0x1, 4, 2, -1, -1, -1, -1, -1 };
  return &_AndroidGovNistCoreToken;
}

@end

void AndroidGovNistCoreToken_init(AndroidGovNistCoreToken *self) {
  NSObject_init(self);
}

AndroidGovNistCoreToken *new_AndroidGovNistCoreToken_init() {
  J2OBJC_NEW_IMPL(AndroidGovNistCoreToken, init)
}

AndroidGovNistCoreToken *create_AndroidGovNistCoreToken_init() {
  J2OBJC_CREATE_IMPL(AndroidGovNistCoreToken, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidGovNistCoreToken)