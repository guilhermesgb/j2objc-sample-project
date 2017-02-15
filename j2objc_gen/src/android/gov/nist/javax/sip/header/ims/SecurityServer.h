//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/header/ims/SecurityServer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidGovNistJavaxSipHeaderImsSecurityServer")
#ifdef RESTRICT_AndroidGovNistJavaxSipHeaderImsSecurityServer
#define INCLUDE_ALL_AndroidGovNistJavaxSipHeaderImsSecurityServer 0
#else
#define INCLUDE_ALL_AndroidGovNistJavaxSipHeaderImsSecurityServer 1
#endif
#undef RESTRICT_AndroidGovNistJavaxSipHeaderImsSecurityServer

#if !defined (AndroidGovNistJavaxSipHeaderImsSecurityServer_) && (INCLUDE_ALL_AndroidGovNistJavaxSipHeaderImsSecurityServer || defined(INCLUDE_AndroidGovNistJavaxSipHeaderImsSecurityServer))
#define AndroidGovNistJavaxSipHeaderImsSecurityServer_

#define RESTRICT_AndroidGovNistJavaxSipHeaderImsSecurityAgree 1
#define INCLUDE_AndroidGovNistJavaxSipHeaderImsSecurityAgree 1
#include "android/gov/nist/javax/sip/header/ims/SecurityAgree.h"

#define RESTRICT_AndroidGovNistJavaxSipHeaderImsSecurityServerHeader 1
#define INCLUDE_AndroidGovNistJavaxSipHeaderImsSecurityServerHeader 1
#include "android/gov/nist/javax/sip/header/ims/SecurityServerHeader.h"

#define RESTRICT_AndroidJavaxSipHeaderExtensionHeader 1
#define INCLUDE_AndroidJavaxSipHeaderExtensionHeader 1
#include "android/javax/sip/header/ExtensionHeader.h"

@interface AndroidGovNistJavaxSipHeaderImsSecurityServer : AndroidGovNistJavaxSipHeaderImsSecurityAgree < AndroidGovNistJavaxSipHeaderImsSecurityServerHeader, AndroidJavaxSipHeaderExtensionHeader >

#pragma mark Public

- (instancetype)init;

- (void)setValueWithNSString:(NSString *)value;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidGovNistJavaxSipHeaderImsSecurityServer)

FOUNDATION_EXPORT void AndroidGovNistJavaxSipHeaderImsSecurityServer_init(AndroidGovNistJavaxSipHeaderImsSecurityServer *self);

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderImsSecurityServer *new_AndroidGovNistJavaxSipHeaderImsSecurityServer_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderImsSecurityServer *create_AndroidGovNistJavaxSipHeaderImsSecurityServer_init();

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSipHeaderImsSecurityServer)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidGovNistJavaxSipHeaderImsSecurityServer")