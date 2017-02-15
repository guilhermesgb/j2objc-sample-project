//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/header/RSeq.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidGovNistJavaxSipHeaderRSeq")
#ifdef RESTRICT_AndroidGovNistJavaxSipHeaderRSeq
#define INCLUDE_ALL_AndroidGovNistJavaxSipHeaderRSeq 0
#else
#define INCLUDE_ALL_AndroidGovNistJavaxSipHeaderRSeq 1
#endif
#undef RESTRICT_AndroidGovNistJavaxSipHeaderRSeq

#if !defined (AndroidGovNistJavaxSipHeaderRSeq_) && (INCLUDE_ALL_AndroidGovNistJavaxSipHeaderRSeq || defined(INCLUDE_AndroidGovNistJavaxSipHeaderRSeq))
#define AndroidGovNistJavaxSipHeaderRSeq_

#define RESTRICT_AndroidGovNistJavaxSipHeaderSIPHeader 1
#define INCLUDE_AndroidGovNistJavaxSipHeaderSIPHeader 1
#include "android/gov/nist/javax/sip/header/SIPHeader.h"

#define RESTRICT_AndroidJavaxSipHeaderRSeqHeader 1
#define INCLUDE_AndroidJavaxSipHeaderRSeqHeader 1
#include "android/javax/sip/header/RSeqHeader.h"

@class JavaLangStringBuilder;

@interface AndroidGovNistJavaxSipHeaderRSeq : AndroidGovNistJavaxSipHeaderSIPHeader < AndroidJavaxSipHeaderRSeqHeader > {
 @public
  jlong sequenceNumber_;
}

#pragma mark Public

- (instancetype)init;

- (JavaLangStringBuilder *)encodeBodyWithJavaLangStringBuilder:(JavaLangStringBuilder *)retval;

- (jlong)getSeqNumber;

- (jint)getSequenceNumber;

- (void)setSeqNumberWithLong:(jlong)sequenceNumber;

- (void)setSequenceNumberWithInt:(jint)sequenceNumber;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidGovNistJavaxSipHeaderRSeq)

FOUNDATION_EXPORT void AndroidGovNistJavaxSipHeaderRSeq_init(AndroidGovNistJavaxSipHeaderRSeq *self);

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderRSeq *new_AndroidGovNistJavaxSipHeaderRSeq_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderRSeq *create_AndroidGovNistJavaxSipHeaderRSeq_init();

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSipHeaderRSeq)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidGovNistJavaxSipHeaderRSeq")