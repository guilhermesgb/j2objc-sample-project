//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/javax/sip/header/AlertInfoHeader.java
//

#include "J2ObjC_source.h"
#include "android/javax/sip/header/AlertInfoHeader.h"

@interface AndroidJavaxSipHeaderAlertInfoHeader : NSObject

@end

NSString *AndroidJavaxSipHeaderAlertInfoHeader_NAME = @"Alert-Info";

@implementation AndroidJavaxSipHeaderAlertInfoHeader

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "LAndroidJavaxSipAddressURI;", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(setAlertInfoWithAndroidJavaxSipAddressURI:);
  methods[1].selector = @selector(getAlertInfo);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NAME", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 2, -1, -1 },
  };
  static const void *ptrTable[] = { "setAlertInfo", "LAndroidJavaxSipAddressURI;", &AndroidJavaxSipHeaderAlertInfoHeader_NAME };
  static const J2ObjcClassInfo _AndroidJavaxSipHeaderAlertInfoHeader = { "AlertInfoHeader", "android.javax.sip.header", ptrTable, methods, fields, 7, 0x609, 2, 1, -1, -1, -1, -1, -1 };
  return &_AndroidJavaxSipHeaderAlertInfoHeader;
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self java_clone] retain];
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(AndroidJavaxSipHeaderAlertInfoHeader)