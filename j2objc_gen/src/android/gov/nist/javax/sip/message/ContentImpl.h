//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/message/ContentImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidGovNistJavaxSipMessageContentImpl")
#ifdef RESTRICT_AndroidGovNistJavaxSipMessageContentImpl
#define INCLUDE_ALL_AndroidGovNistJavaxSipMessageContentImpl 0
#else
#define INCLUDE_ALL_AndroidGovNistJavaxSipMessageContentImpl 1
#endif
#undef RESTRICT_AndroidGovNistJavaxSipMessageContentImpl

#if !defined (AndroidGovNistJavaxSipMessageContentImpl_) && (INCLUDE_ALL_AndroidGovNistJavaxSipMessageContentImpl || defined(INCLUDE_AndroidGovNistJavaxSipMessageContentImpl))
#define AndroidGovNistJavaxSipMessageContentImpl_

#define RESTRICT_AndroidGovNistJavaxSipMessageContent 1
#define INCLUDE_AndroidGovNistJavaxSipMessageContent 1
#include "android/gov/nist/javax/sip/message/Content.h"

@protocol AndroidJavaxSipHeaderContentDispositionHeader;
@protocol AndroidJavaxSipHeaderContentTypeHeader;
@protocol AndroidJavaxSipHeaderHeader;
@protocol JavaUtilIterator;

@interface AndroidGovNistJavaxSipMessageContentImpl : NSObject < AndroidGovNistJavaxSipMessageContent >

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)content;

- (void)addExtensionHeaderWithAndroidJavaxSipHeaderHeader:(id<AndroidJavaxSipHeaderHeader>)header;

- (id)getContent;

- (id<AndroidJavaxSipHeaderContentDispositionHeader>)getContentDispositionHeader;

- (id<AndroidJavaxSipHeaderContentTypeHeader>)getContentTypeHeader;

- (id<JavaUtilIterator>)getExtensionHeaders;

- (void)setContentWithId:(id)content;

- (void)setContentDispositionHeaderWithAndroidJavaxSipHeaderContentDispositionHeader:(id<AndroidJavaxSipHeaderContentDispositionHeader>)contentDispositionHeader;

- (void)setContentTypeHeaderWithAndroidJavaxSipHeaderContentTypeHeader:(id<AndroidJavaxSipHeaderContentTypeHeader>)contentTypeHeader;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidGovNistJavaxSipMessageContentImpl)

FOUNDATION_EXPORT void AndroidGovNistJavaxSipMessageContentImpl_initWithNSString_(AndroidGovNistJavaxSipMessageContentImpl *self, NSString *content);

FOUNDATION_EXPORT AndroidGovNistJavaxSipMessageContentImpl *new_AndroidGovNistJavaxSipMessageContentImpl_initWithNSString_(NSString *content) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipMessageContentImpl *create_AndroidGovNistJavaxSipMessageContentImpl_initWithNSString_(NSString *content);

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSipMessageContentImpl)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidGovNistJavaxSipMessageContentImpl")