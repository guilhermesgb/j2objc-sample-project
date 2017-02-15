//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/javax/sip/header/AuthorizationHeader.java
//

#include "J2ObjC_source.h"
#include "android/javax/sip/header/AuthorizationHeader.h"

@interface AndroidJavaxSipHeaderAuthorizationHeader : NSObject

@end

NSString *AndroidJavaxSipHeaderAuthorizationHeader_NAME = @"Authorization";

@implementation AndroidJavaxSipHeaderAuthorizationHeader

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 2, 1, 3, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 4, 1, 3, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 5, 1, 3, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 6, 7, -1, -1, -1, -1 },
    { NULL, "LAndroidJavaxSipAddressURI;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 8, 1, 3, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 9, 1, 3, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 10, 1, 3, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 11, 1, 3, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 12, 1, 3, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 13, 14, 3, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(setSchemeWithNSString:);
  methods[1].selector = @selector(getScheme);
  methods[2].selector = @selector(setRealmWithNSString:);
  methods[3].selector = @selector(getRealm);
  methods[4].selector = @selector(setUsernameWithNSString:);
  methods[5].selector = @selector(getUsername);
  methods[6].selector = @selector(setNonceWithNSString:);
  methods[7].selector = @selector(getNonce);
  methods[8].selector = @selector(setURIWithAndroidJavaxSipAddressURI:);
  methods[9].selector = @selector(getURI);
  methods[10].selector = @selector(setResponseWithNSString:);
  methods[11].selector = @selector(getResponse);
  methods[12].selector = @selector(setAlgorithmWithNSString:);
  methods[13].selector = @selector(getAlgorithm);
  methods[14].selector = @selector(setCNonceWithNSString:);
  methods[15].selector = @selector(getCNonce);
  methods[16].selector = @selector(setOpaqueWithNSString:);
  methods[17].selector = @selector(getOpaque);
  methods[18].selector = @selector(setQopWithNSString:);
  methods[19].selector = @selector(getQop);
  methods[20].selector = @selector(setNonceCountWithInt:);
  methods[21].selector = @selector(getNonceCount);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NAME", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 15, -1, -1 },
  };
  static const void *ptrTable[] = { "setScheme", "LNSString;", "setRealm", "LJavaTextParseException;", "setUsername", "setNonce", "setURI", "LAndroidJavaxSipAddressURI;", "setResponse", "setAlgorithm", "setCNonce", "setOpaque", "setQop", "setNonceCount", "I", &AndroidJavaxSipHeaderAuthorizationHeader_NAME };
  static const J2ObjcClassInfo _AndroidJavaxSipHeaderAuthorizationHeader = { "AuthorizationHeader", "android.javax.sip.header", ptrTable, methods, fields, 7, 0x609, 22, 1, -1, -1, -1, -1, -1 };
  return &_AndroidJavaxSipHeaderAuthorizationHeader;
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self java_clone] retain];
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(AndroidJavaxSipHeaderAuthorizationHeader)