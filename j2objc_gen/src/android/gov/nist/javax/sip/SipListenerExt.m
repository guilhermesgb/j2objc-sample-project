//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/SipListenerExt.java
//

#include "J2ObjC_source.h"
#include "android/gov/nist/javax/sip/SipListenerExt.h"

@interface AndroidGovNistJavaxSipSipListenerExt : NSObject

@end

@implementation AndroidGovNistJavaxSipSipListenerExt

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(processDialogTimeoutWithAndroidGovNistJavaxSipDialogTimeoutEvent:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "processDialogTimeout", "LAndroidGovNistJavaxSipDialogTimeoutEvent;" };
  static const J2ObjcClassInfo _AndroidGovNistJavaxSipSipListenerExt = { "SipListenerExt", "android.gov.nist.javax.sip", ptrTable, methods, NULL, 7, 0x609, 1, 0, -1, -1, -1, -1, -1 };
  return &_AndroidGovNistJavaxSipSipListenerExt;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(AndroidGovNistJavaxSipSipListenerExt)