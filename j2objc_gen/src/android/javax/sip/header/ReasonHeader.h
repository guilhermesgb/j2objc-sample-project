//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/javax/sip/header/ReasonHeader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidJavaxSipHeaderReasonHeader")
#ifdef RESTRICT_AndroidJavaxSipHeaderReasonHeader
#define INCLUDE_ALL_AndroidJavaxSipHeaderReasonHeader 0
#else
#define INCLUDE_ALL_AndroidJavaxSipHeaderReasonHeader 1
#endif
#undef RESTRICT_AndroidJavaxSipHeaderReasonHeader

#if !defined (AndroidJavaxSipHeaderReasonHeader_) && (INCLUDE_ALL_AndroidJavaxSipHeaderReasonHeader || defined(INCLUDE_AndroidJavaxSipHeaderReasonHeader))
#define AndroidJavaxSipHeaderReasonHeader_

#define RESTRICT_AndroidJavaxSipHeaderParameters 1
#define INCLUDE_AndroidJavaxSipHeaderParameters 1
#include "android/javax/sip/header/Parameters.h"

#define RESTRICT_AndroidJavaxSipHeaderHeader 1
#define INCLUDE_AndroidJavaxSipHeaderHeader 1
#include "android/javax/sip/header/Header.h"

@protocol AndroidJavaxSipHeaderReasonHeader < AndroidJavaxSipHeaderParameters, AndroidJavaxSipHeaderHeader, JavaObject >

- (jint)getCause;

- (void)setCauseWithInt:(jint)cause;

- (void)setProtocolWithNSString:(NSString *)protocol;

- (NSString *)getProtocol;

- (void)setTextWithNSString:(NSString *)text;

- (NSString *)getText;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidJavaxSipHeaderReasonHeader)

inline NSString *AndroidJavaxSipHeaderReasonHeader_get_NAME();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *AndroidJavaxSipHeaderReasonHeader_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(AndroidJavaxSipHeaderReasonHeader, NAME, NSString *)

J2OBJC_TYPE_LITERAL_HEADER(AndroidJavaxSipHeaderReasonHeader)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidJavaxSipHeaderReasonHeader")