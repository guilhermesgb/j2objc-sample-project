//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/javax/sip/header/ContentLengthHeader.java
//

#include "J2ObjC_source.h"
#include "android/javax/sip/header/ContentLengthHeader.h"

@interface AndroidJavaxSipHeaderContentLengthHeader : NSObject

@end

NSString *AndroidJavaxSipHeaderContentLengthHeader_NAME = @"Content-Length";

@implementation AndroidJavaxSipHeaderContentLengthHeader

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, 2, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(setContentLengthWithInt:);
  methods[1].selector = @selector(getContentLength);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NAME", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 3, -1, -1 },
  };
  static const void *ptrTable[] = { "setContentLength", "I", "LAndroidJavaxSipInvalidArgumentException;", &AndroidJavaxSipHeaderContentLengthHeader_NAME };
  static const J2ObjcClassInfo _AndroidJavaxSipHeaderContentLengthHeader = { "ContentLengthHeader", "android.javax.sip.header", ptrTable, methods, fields, 7, 0x609, 2, 1, -1, -1, -1, -1, -1 };
  return &_AndroidJavaxSipHeaderContentLengthHeader;
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self java_clone] retain];
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(AndroidJavaxSipHeaderContentLengthHeader)