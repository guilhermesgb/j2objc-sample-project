//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/header/RouteList.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidGovNistJavaxSipHeaderRouteList")
#ifdef RESTRICT_AndroidGovNistJavaxSipHeaderRouteList
#define INCLUDE_ALL_AndroidGovNistJavaxSipHeaderRouteList 0
#else
#define INCLUDE_ALL_AndroidGovNistJavaxSipHeaderRouteList 1
#endif
#undef RESTRICT_AndroidGovNistJavaxSipHeaderRouteList

#if !defined (AndroidGovNistJavaxSipHeaderRouteList_) && (INCLUDE_ALL_AndroidGovNistJavaxSipHeaderRouteList || defined(INCLUDE_AndroidGovNistJavaxSipHeaderRouteList))
#define AndroidGovNistJavaxSipHeaderRouteList_

#define RESTRICT_AndroidGovNistJavaxSipHeaderSIPHeaderList 1
#define INCLUDE_AndroidGovNistJavaxSipHeaderSIPHeaderList 1
#include "android/gov/nist/javax/sip/header/SIPHeaderList.h"

@class AndroidGovNistJavaxSipHeaderRoute;

@interface AndroidGovNistJavaxSipHeaderRouteList : AndroidGovNistJavaxSipHeaderSIPHeaderList

#pragma mark Public

- (instancetype)init;

- (id)java_clone;

- (NSString *)encode;

- (jboolean)isEqual:(id)other;

- (AndroidGovNistJavaxSipHeaderRoute *)getWithInt:(jint)arg0;

- (AndroidGovNistJavaxSipHeaderRoute *)removeWithInt:(jint)arg0;

- (AndroidGovNistJavaxSipHeaderRoute *)setWithInt:(jint)arg0
                                           withId:(AndroidGovNistJavaxSipHeaderRoute *)arg1;

#pragma mark Package-Private

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidGovNistJavaxSipHeaderRouteList)

FOUNDATION_EXPORT void AndroidGovNistJavaxSipHeaderRouteList_init(AndroidGovNistJavaxSipHeaderRouteList *self);

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderRouteList *new_AndroidGovNistJavaxSipHeaderRouteList_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderRouteList *create_AndroidGovNistJavaxSipHeaderRouteList_init();

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSipHeaderRouteList)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidGovNistJavaxSipHeaderRouteList")