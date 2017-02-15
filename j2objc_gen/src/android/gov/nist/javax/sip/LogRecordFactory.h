//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/LogRecordFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidGovNistJavaxSipLogRecordFactory")
#ifdef RESTRICT_AndroidGovNistJavaxSipLogRecordFactory
#define INCLUDE_ALL_AndroidGovNistJavaxSipLogRecordFactory 0
#else
#define INCLUDE_ALL_AndroidGovNistJavaxSipLogRecordFactory 1
#endif
#undef RESTRICT_AndroidGovNistJavaxSipLogRecordFactory

#if !defined (AndroidGovNistJavaxSipLogRecordFactory_) && (INCLUDE_ALL_AndroidGovNistJavaxSipLogRecordFactory || defined(INCLUDE_AndroidGovNistJavaxSipLogRecordFactory))
#define AndroidGovNistJavaxSipLogRecordFactory_

@protocol AndroidGovNistJavaxSipLogRecord;

@protocol AndroidGovNistJavaxSipLogRecordFactory < JavaObject >

- (id<AndroidGovNistJavaxSipLogRecord>)createLogRecordWithNSString:(NSString *)message
                                                      withNSString:(NSString *)source
                                                      withNSString:(NSString *)destination
                                                          withLong:(jlong)timeStamp
                                                       withBoolean:(jboolean)isSender
                                                      withNSString:(NSString *)firstLine
                                                      withNSString:(NSString *)tid
                                                      withNSString:(NSString *)callId
                                                          withLong:(jlong)timestampVal;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidGovNistJavaxSipLogRecordFactory)

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSipLogRecordFactory)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidGovNistJavaxSipLogRecordFactory")