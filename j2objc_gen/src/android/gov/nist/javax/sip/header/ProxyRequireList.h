//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/header/ProxyRequireList.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidGovNistJavaxSipHeaderProxyRequireList")
#ifdef RESTRICT_AndroidGovNistJavaxSipHeaderProxyRequireList
#define INCLUDE_ALL_AndroidGovNistJavaxSipHeaderProxyRequireList 0
#else
#define INCLUDE_ALL_AndroidGovNistJavaxSipHeaderProxyRequireList 1
#endif
#undef RESTRICT_AndroidGovNistJavaxSipHeaderProxyRequireList

#if !defined (AndroidGovNistJavaxSipHeaderProxyRequireList_) && (INCLUDE_ALL_AndroidGovNistJavaxSipHeaderProxyRequireList || defined(INCLUDE_AndroidGovNistJavaxSipHeaderProxyRequireList))
#define AndroidGovNistJavaxSipHeaderProxyRequireList_

#define RESTRICT_AndroidGovNistJavaxSipHeaderSIPHeaderList 1
#define INCLUDE_AndroidGovNistJavaxSipHeaderSIPHeaderList 1
#include "android/gov/nist/javax/sip/header/SIPHeaderList.h"

@class AndroidGovNistJavaxSipHeaderProxyRequire;

@interface AndroidGovNistJavaxSipHeaderProxyRequireList : AndroidGovNistJavaxSipHeaderSIPHeaderList

#pragma mark Public

- (instancetype)init;

- (id)java_clone;

- (AndroidGovNistJavaxSipHeaderProxyRequire *)getWithInt:(jint)arg0;

- (AndroidGovNistJavaxSipHeaderProxyRequire *)removeWithInt:(jint)arg0;

- (AndroidGovNistJavaxSipHeaderProxyRequire *)setWithInt:(jint)arg0
                                                  withId:(AndroidGovNistJavaxSipHeaderProxyRequire *)arg1;

#pragma mark Package-Private

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidGovNistJavaxSipHeaderProxyRequireList)

FOUNDATION_EXPORT void AndroidGovNistJavaxSipHeaderProxyRequireList_init(AndroidGovNistJavaxSipHeaderProxyRequireList *self);

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderProxyRequireList *new_AndroidGovNistJavaxSipHeaderProxyRequireList_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderProxyRequireList *create_AndroidGovNistJavaxSipHeaderProxyRequireList_init();

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSipHeaderProxyRequireList)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidGovNistJavaxSipHeaderProxyRequireList")