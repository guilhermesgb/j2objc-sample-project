//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/header/ims/PAssociatedURIList.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidGovNistJavaxSipHeaderImsPAssociatedURIList")
#ifdef RESTRICT_AndroidGovNistJavaxSipHeaderImsPAssociatedURIList
#define INCLUDE_ALL_AndroidGovNistJavaxSipHeaderImsPAssociatedURIList 0
#else
#define INCLUDE_ALL_AndroidGovNistJavaxSipHeaderImsPAssociatedURIList 1
#endif
#undef RESTRICT_AndroidGovNistJavaxSipHeaderImsPAssociatedURIList

#if !defined (AndroidGovNistJavaxSipHeaderImsPAssociatedURIList_) && (INCLUDE_ALL_AndroidGovNistJavaxSipHeaderImsPAssociatedURIList || defined(INCLUDE_AndroidGovNistJavaxSipHeaderImsPAssociatedURIList))
#define AndroidGovNistJavaxSipHeaderImsPAssociatedURIList_

#define RESTRICT_AndroidGovNistJavaxSipHeaderSIPHeaderList 1
#define INCLUDE_AndroidGovNistJavaxSipHeaderSIPHeaderList 1
#include "android/gov/nist/javax/sip/header/SIPHeaderList.h"

@class AndroidGovNistJavaxSipHeaderImsPAssociatedURI;

@interface AndroidGovNistJavaxSipHeaderImsPAssociatedURIList : AndroidGovNistJavaxSipHeaderSIPHeaderList

#pragma mark Public

- (instancetype)init;

- (id)java_clone;

- (AndroidGovNistJavaxSipHeaderImsPAssociatedURI *)getWithInt:(jint)arg0;

- (AndroidGovNistJavaxSipHeaderImsPAssociatedURI *)removeWithInt:(jint)arg0;

- (AndroidGovNistJavaxSipHeaderImsPAssociatedURI *)setWithInt:(jint)arg0
                                                       withId:(AndroidGovNistJavaxSipHeaderImsPAssociatedURI *)arg1;

#pragma mark Package-Private

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidGovNistJavaxSipHeaderImsPAssociatedURIList)

FOUNDATION_EXPORT void AndroidGovNistJavaxSipHeaderImsPAssociatedURIList_init(AndroidGovNistJavaxSipHeaderImsPAssociatedURIList *self);

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderImsPAssociatedURIList *new_AndroidGovNistJavaxSipHeaderImsPAssociatedURIList_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderImsPAssociatedURIList *create_AndroidGovNistJavaxSipHeaderImsPAssociatedURIList_init();

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSipHeaderImsPAssociatedURIList)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidGovNistJavaxSipHeaderImsPAssociatedURIList")