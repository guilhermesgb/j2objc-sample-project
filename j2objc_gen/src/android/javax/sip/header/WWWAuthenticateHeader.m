//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/javax/sip/header/WWWAuthenticateHeader.java
//

#include "J2ObjC_source.h"
#include "android/javax/sip/header/WWWAuthenticateHeader.h"

@interface AndroidJavaxSipHeaderWWWAuthenticateHeader : NSObject

@end

NSString *AndroidJavaxSipHeaderWWWAuthenticateHeader_NAME = @"WWW-Authenticate";

@implementation AndroidJavaxSipHeaderWWWAuthenticateHeader

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 2, 1, 3, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 4, 1, 3, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 5, 6, -1, -1, -1, -1 },
    { NULL, "LAndroidJavaxSipAddressURI;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 7, 1, 3, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 8, 1, 3, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 9, 1, 3, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 10, 1, 3, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 11, 12, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(setSchemeWithNSString:);
  methods[1].selector = @selector(getScheme);
  methods[2].selector = @selector(setRealmWithNSString:);
  methods[3].selector = @selector(getRealm);
  methods[4].selector = @selector(setNonceWithNSString:);
  methods[5].selector = @selector(getNonce);
  methods[6].selector = @selector(setURIWithAndroidJavaxSipAddressURI:);
  methods[7].selector = @selector(getURI);
  methods[8].selector = @selector(setAlgorithmWithNSString:);
  methods[9].selector = @selector(getAlgorithm);
  methods[10].selector = @selector(setQopWithNSString:);
  methods[11].selector = @selector(getQop);
  methods[12].selector = @selector(setOpaqueWithNSString:);
  methods[13].selector = @selector(getOpaque);
  methods[14].selector = @selector(setDomainWithNSString:);
  methods[15].selector = @selector(getDomain);
  methods[16].selector = @selector(setStaleWithBoolean:);
  methods[17].selector = @selector(isStale);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NAME", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 13, -1, -1 },
  };
  static const void *ptrTable[] = { "setScheme", "LNSString;", "setRealm", "LJavaTextParseException;", "setNonce", "setURI", "LAndroidJavaxSipAddressURI;", "setAlgorithm", "setQop", "setOpaque", "setDomain", "setStale", "Z", &AndroidJavaxSipHeaderWWWAuthenticateHeader_NAME };
  static const J2ObjcClassInfo _AndroidJavaxSipHeaderWWWAuthenticateHeader = { "WWWAuthenticateHeader", "android.javax.sip.header", ptrTable, methods, fields, 7, 0x609, 18, 1, -1, -1, -1, -1, -1 };
  return &_AndroidJavaxSipHeaderWWWAuthenticateHeader;
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self java_clone] retain];
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(AndroidJavaxSipHeaderWWWAuthenticateHeader)