//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/header/RecordRouteList.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidGovNistJavaxSipHeaderRecordRouteList")
#ifdef RESTRICT_AndroidGovNistJavaxSipHeaderRecordRouteList
#define INCLUDE_ALL_AndroidGovNistJavaxSipHeaderRecordRouteList 0
#else
#define INCLUDE_ALL_AndroidGovNistJavaxSipHeaderRecordRouteList 1
#endif
#undef RESTRICT_AndroidGovNistJavaxSipHeaderRecordRouteList

#if !defined (AndroidGovNistJavaxSipHeaderRecordRouteList_) && (INCLUDE_ALL_AndroidGovNistJavaxSipHeaderRecordRouteList || defined(INCLUDE_AndroidGovNistJavaxSipHeaderRecordRouteList))
#define AndroidGovNistJavaxSipHeaderRecordRouteList_

#define RESTRICT_AndroidGovNistJavaxSipHeaderSIPHeaderList 1
#define INCLUDE_AndroidGovNistJavaxSipHeaderSIPHeaderList 1
#include "android/gov/nist/javax/sip/header/SIPHeaderList.h"

@class AndroidGovNistJavaxSipHeaderRecordRoute;

@interface AndroidGovNistJavaxSipHeaderRecordRouteList : AndroidGovNistJavaxSipHeaderSIPHeaderList

#pragma mark Public

- (instancetype)init;

- (id)java_clone;

- (AndroidGovNistJavaxSipHeaderRecordRoute *)getWithInt:(jint)arg0;

- (AndroidGovNistJavaxSipHeaderRecordRoute *)removeWithInt:(jint)arg0;

- (AndroidGovNistJavaxSipHeaderRecordRoute *)setWithInt:(jint)arg0
                                                 withId:(AndroidGovNistJavaxSipHeaderRecordRoute *)arg1;

#pragma mark Package-Private

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidGovNistJavaxSipHeaderRecordRouteList)

FOUNDATION_EXPORT void AndroidGovNistJavaxSipHeaderRecordRouteList_init(AndroidGovNistJavaxSipHeaderRecordRouteList *self);

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderRecordRouteList *new_AndroidGovNistJavaxSipHeaderRecordRouteList_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderRecordRouteList *create_AndroidGovNistJavaxSipHeaderRecordRouteList_init();

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSipHeaderRecordRouteList)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidGovNistJavaxSipHeaderRecordRouteList")