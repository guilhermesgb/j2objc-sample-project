//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/header/ContentLength.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidGovNistJavaxSipHeaderContentLength")
#ifdef RESTRICT_AndroidGovNistJavaxSipHeaderContentLength
#define INCLUDE_ALL_AndroidGovNistJavaxSipHeaderContentLength 0
#else
#define INCLUDE_ALL_AndroidGovNistJavaxSipHeaderContentLength 1
#endif
#undef RESTRICT_AndroidGovNistJavaxSipHeaderContentLength

#if !defined (AndroidGovNistJavaxSipHeaderContentLength_) && (INCLUDE_ALL_AndroidGovNistJavaxSipHeaderContentLength || defined(INCLUDE_AndroidGovNistJavaxSipHeaderContentLength))
#define AndroidGovNistJavaxSipHeaderContentLength_

#define RESTRICT_AndroidGovNistJavaxSipHeaderSIPHeader 1
#define INCLUDE_AndroidGovNistJavaxSipHeaderSIPHeader 1
#include "android/gov/nist/javax/sip/header/SIPHeader.h"

#define RESTRICT_AndroidJavaxSipHeaderContentLengthHeader 1
#define INCLUDE_AndroidJavaxSipHeaderContentLengthHeader 1
#include "android/javax/sip/header/ContentLengthHeader.h"

@class JavaLangStringBuilder;

@interface AndroidGovNistJavaxSipHeaderContentLength : AndroidGovNistJavaxSipHeaderSIPHeader < AndroidJavaxSipHeaderContentLengthHeader > {
 @public
  jint contentLength_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)length;

- (NSString *)encodeBody;

- (jboolean)isEqual:(id)other;

- (jint)getContentLength;

- (jboolean)matchWithId:(id)other;

- (void)setContentLengthWithInt:(jint)contentLength;

#pragma mark Protected

- (JavaLangStringBuilder *)encodeBodyWithJavaLangStringBuilder:(JavaLangStringBuilder *)buffer;

@end

J2OBJC_STATIC_INIT(AndroidGovNistJavaxSipHeaderContentLength)

inline NSString *AndroidGovNistJavaxSipHeaderContentLength_get_NAME_LOWER();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *AndroidGovNistJavaxSipHeaderContentLength_NAME_LOWER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(AndroidGovNistJavaxSipHeaderContentLength, NAME_LOWER, NSString *)

FOUNDATION_EXPORT void AndroidGovNistJavaxSipHeaderContentLength_init(AndroidGovNistJavaxSipHeaderContentLength *self);

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderContentLength *new_AndroidGovNistJavaxSipHeaderContentLength_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderContentLength *create_AndroidGovNistJavaxSipHeaderContentLength_init();

FOUNDATION_EXPORT void AndroidGovNistJavaxSipHeaderContentLength_initWithInt_(AndroidGovNistJavaxSipHeaderContentLength *self, jint length);

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderContentLength *new_AndroidGovNistJavaxSipHeaderContentLength_initWithInt_(jint length) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipHeaderContentLength *create_AndroidGovNistJavaxSipHeaderContentLength_initWithInt_(jint length);

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSipHeaderContentLength)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidGovNistJavaxSipHeaderContentLength")