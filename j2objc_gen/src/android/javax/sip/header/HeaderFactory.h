//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/javax/sip/header/HeaderFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidJavaxSipHeaderHeaderFactory")
#ifdef RESTRICT_AndroidJavaxSipHeaderHeaderFactory
#define INCLUDE_ALL_AndroidJavaxSipHeaderHeaderFactory 0
#else
#define INCLUDE_ALL_AndroidJavaxSipHeaderHeaderFactory 1
#endif
#undef RESTRICT_AndroidJavaxSipHeaderHeaderFactory

#if !defined (AndroidJavaxSipHeaderHeaderFactory_) && (INCLUDE_ALL_AndroidJavaxSipHeaderHeaderFactory || defined(INCLUDE_AndroidJavaxSipHeaderHeaderFactory))
#define AndroidJavaxSipHeaderHeaderFactory_

@class JavaUtilCalendar;
@class JavaUtilLocale;
@protocol AndroidJavaxSipAddressAddress;
@protocol AndroidJavaxSipAddressURI;
@protocol AndroidJavaxSipHeaderAcceptEncodingHeader;
@protocol AndroidJavaxSipHeaderAcceptHeader;
@protocol AndroidJavaxSipHeaderAcceptLanguageHeader;
@protocol AndroidJavaxSipHeaderAlertInfoHeader;
@protocol AndroidJavaxSipHeaderAllowEventsHeader;
@protocol AndroidJavaxSipHeaderAllowHeader;
@protocol AndroidJavaxSipHeaderAuthenticationInfoHeader;
@protocol AndroidJavaxSipHeaderAuthorizationHeader;
@protocol AndroidJavaxSipHeaderCSeqHeader;
@protocol AndroidJavaxSipHeaderCallIdHeader;
@protocol AndroidJavaxSipHeaderCallInfoHeader;
@protocol AndroidJavaxSipHeaderContactHeader;
@protocol AndroidJavaxSipHeaderContentDispositionHeader;
@protocol AndroidJavaxSipHeaderContentEncodingHeader;
@protocol AndroidJavaxSipHeaderContentLanguageHeader;
@protocol AndroidJavaxSipHeaderContentLengthHeader;
@protocol AndroidJavaxSipHeaderContentTypeHeader;
@protocol AndroidJavaxSipHeaderDateHeader;
@protocol AndroidJavaxSipHeaderErrorInfoHeader;
@protocol AndroidJavaxSipHeaderEventHeader;
@protocol AndroidJavaxSipHeaderExpiresHeader;
@protocol AndroidJavaxSipHeaderFromHeader;
@protocol AndroidJavaxSipHeaderHeader;
@protocol AndroidJavaxSipHeaderInReplyToHeader;
@protocol AndroidJavaxSipHeaderMaxForwardsHeader;
@protocol AndroidJavaxSipHeaderMimeVersionHeader;
@protocol AndroidJavaxSipHeaderMinExpiresHeader;
@protocol AndroidJavaxSipHeaderOrganizationHeader;
@protocol AndroidJavaxSipHeaderPriorityHeader;
@protocol AndroidJavaxSipHeaderProxyAuthenticateHeader;
@protocol AndroidJavaxSipHeaderProxyAuthorizationHeader;
@protocol AndroidJavaxSipHeaderProxyRequireHeader;
@protocol AndroidJavaxSipHeaderRAckHeader;
@protocol AndroidJavaxSipHeaderRSeqHeader;
@protocol AndroidJavaxSipHeaderReasonHeader;
@protocol AndroidJavaxSipHeaderRecordRouteHeader;
@protocol AndroidJavaxSipHeaderReferToHeader;
@protocol AndroidJavaxSipHeaderReplyToHeader;
@protocol AndroidJavaxSipHeaderRequireHeader;
@protocol AndroidJavaxSipHeaderRetryAfterHeader;
@protocol AndroidJavaxSipHeaderRouteHeader;
@protocol AndroidJavaxSipHeaderSIPETagHeader;
@protocol AndroidJavaxSipHeaderSIPIfMatchHeader;
@protocol AndroidJavaxSipHeaderServerHeader;
@protocol AndroidJavaxSipHeaderSubjectHeader;
@protocol AndroidJavaxSipHeaderSubscriptionStateHeader;
@protocol AndroidJavaxSipHeaderSupportedHeader;
@protocol AndroidJavaxSipHeaderTimeStampHeader;
@protocol AndroidJavaxSipHeaderToHeader;
@protocol AndroidJavaxSipHeaderUnsupportedHeader;
@protocol AndroidJavaxSipHeaderUserAgentHeader;
@protocol AndroidJavaxSipHeaderViaHeader;
@protocol AndroidJavaxSipHeaderWWWAuthenticateHeader;
@protocol AndroidJavaxSipHeaderWarningHeader;
@protocol JavaUtilList;

@protocol AndroidJavaxSipHeaderHeaderFactory < JavaObject >

- (id<AndroidJavaxSipHeaderAcceptEncodingHeader>)createAcceptEncodingHeaderWithNSString:(NSString *)encoding;

- (id<AndroidJavaxSipHeaderAcceptHeader>)createAcceptHeaderWithNSString:(NSString *)contentType
                                                           withNSString:(NSString *)contentSubType;

- (id<AndroidJavaxSipHeaderAcceptLanguageHeader>)createAcceptLanguageHeaderWithJavaUtilLocale:(JavaUtilLocale *)language;

- (id<AndroidJavaxSipHeaderAlertInfoHeader>)createAlertInfoHeaderWithAndroidJavaxSipAddressURI:(id<AndroidJavaxSipAddressURI>)alertInfo;

- (id<AndroidJavaxSipHeaderAllowEventsHeader>)createAllowEventsHeaderWithNSString:(NSString *)eventType;

- (id<AndroidJavaxSipHeaderAllowHeader>)createAllowHeaderWithNSString:(NSString *)method;

- (id<AndroidJavaxSipHeaderAuthenticationInfoHeader>)createAuthenticationInfoHeaderWithNSString:(NSString *)response;

- (id<AndroidJavaxSipHeaderAuthorizationHeader>)createAuthorizationHeaderWithNSString:(NSString *)scheme;

- (id<AndroidJavaxSipHeaderCSeqHeader>)createCSeqHeaderWithInt:(jint)sequenceNumber
                                                  withNSString:(NSString *)method;

- (id<AndroidJavaxSipHeaderCSeqHeader>)createCSeqHeaderWithLong:(jlong)sequenceNumber
                                                   withNSString:(NSString *)method;

- (id<AndroidJavaxSipHeaderCallIdHeader>)createCallIdHeaderWithNSString:(NSString *)callId;

- (id<AndroidJavaxSipHeaderCallInfoHeader>)createCallInfoHeaderWithAndroidJavaxSipAddressURI:(id<AndroidJavaxSipAddressURI>)callInfo;

- (id<AndroidJavaxSipHeaderContactHeader>)createContactHeaderWithAndroidJavaxSipAddressAddress:(id<AndroidJavaxSipAddressAddress>)address;

- (id<AndroidJavaxSipHeaderContactHeader>)createContactHeader;

- (id<AndroidJavaxSipHeaderContentDispositionHeader>)createContentDispositionHeaderWithNSString:(NSString *)contentDispositionType;

- (id<AndroidJavaxSipHeaderContentEncodingHeader>)createContentEncodingHeaderWithNSString:(NSString *)encoding;

- (id<AndroidJavaxSipHeaderContentLanguageHeader>)createContentLanguageHeaderWithJavaUtilLocale:(JavaUtilLocale *)contentLanguage;

- (id<AndroidJavaxSipHeaderContentLengthHeader>)createContentLengthHeaderWithInt:(jint)contentLength;

- (id<AndroidJavaxSipHeaderContentTypeHeader>)createContentTypeHeaderWithNSString:(NSString *)contentType
                                                                     withNSString:(NSString *)contentSubType;

- (id<AndroidJavaxSipHeaderDateHeader>)createDateHeaderWithJavaUtilCalendar:(JavaUtilCalendar *)date;

- (id<AndroidJavaxSipHeaderErrorInfoHeader>)createErrorInfoHeaderWithAndroidJavaxSipAddressURI:(id<AndroidJavaxSipAddressURI>)errorInfo;

- (id<AndroidJavaxSipHeaderEventHeader>)createEventHeaderWithNSString:(NSString *)eventType;

- (id<AndroidJavaxSipHeaderExpiresHeader>)createExpiresHeaderWithInt:(jint)expires;

- (id<AndroidJavaxSipHeaderHeader>)createHeaderWithNSString:(NSString *)name
                                               withNSString:(NSString *)value;

- (id<JavaUtilList>)createHeadersWithNSString:(NSString *)headers;

- (id<AndroidJavaxSipHeaderFromHeader>)createFromHeaderWithAndroidJavaxSipAddressAddress:(id<AndroidJavaxSipAddressAddress>)address
                                                                            withNSString:(NSString *)tag;

- (id<AndroidJavaxSipHeaderInReplyToHeader>)createInReplyToHeaderWithNSString:(NSString *)callId;

- (id<AndroidJavaxSipHeaderMaxForwardsHeader>)createMaxForwardsHeaderWithInt:(jint)maxForwards;

- (id<AndroidJavaxSipHeaderMimeVersionHeader>)createMimeVersionHeaderWithInt:(jint)majorVersion
                                                                     withInt:(jint)minorVersion;

- (id<AndroidJavaxSipHeaderMinExpiresHeader>)createMinExpiresHeaderWithInt:(jint)minExpires;

- (id<AndroidJavaxSipHeaderOrganizationHeader>)createOrganizationHeaderWithNSString:(NSString *)organization;

- (id<AndroidJavaxSipHeaderPriorityHeader>)createPriorityHeaderWithNSString:(NSString *)priority;

- (id<AndroidJavaxSipHeaderProxyAuthenticateHeader>)createProxyAuthenticateHeaderWithNSString:(NSString *)scheme;

- (id<AndroidJavaxSipHeaderProxyAuthorizationHeader>)createProxyAuthorizationHeaderWithNSString:(NSString *)scheme;

- (id<AndroidJavaxSipHeaderProxyRequireHeader>)createProxyRequireHeaderWithNSString:(NSString *)optionTag;

- (id<AndroidJavaxSipHeaderRAckHeader>)createRAckHeaderWithInt:(jint)rSeqNumber
                                                       withInt:(jint)cSeqNumber
                                                  withNSString:(NSString *)method;

- (id<AndroidJavaxSipHeaderRSeqHeader>)createRSeqHeaderWithInt:(jint)sequenceNumber;

- (id<AndroidJavaxSipHeaderReasonHeader>)createReasonHeaderWithNSString:(NSString *)protocol
                                                                withInt:(jint)cause
                                                           withNSString:(NSString *)text;

- (id<AndroidJavaxSipHeaderRecordRouteHeader>)createRecordRouteHeaderWithAndroidJavaxSipAddressAddress:(id<AndroidJavaxSipAddressAddress>)address;

- (id<AndroidJavaxSipHeaderReplyToHeader>)createReplyToHeaderWithAndroidJavaxSipAddressAddress:(id<AndroidJavaxSipAddressAddress>)address;

- (id<AndroidJavaxSipHeaderReferToHeader>)createReferToHeaderWithAndroidJavaxSipAddressAddress:(id<AndroidJavaxSipAddressAddress>)address;

- (id<AndroidJavaxSipHeaderRequireHeader>)createRequireHeaderWithNSString:(NSString *)optionTag;

- (id<AndroidJavaxSipHeaderRetryAfterHeader>)createRetryAfterHeaderWithInt:(jint)retryAfter;

- (id<AndroidJavaxSipHeaderRouteHeader>)createRouteHeaderWithAndroidJavaxSipAddressAddress:(id<AndroidJavaxSipAddressAddress>)address;

- (id<AndroidJavaxSipHeaderServerHeader>)createServerHeaderWithJavaUtilList:(id<JavaUtilList>)product;

- (id<AndroidJavaxSipHeaderSubjectHeader>)createSubjectHeaderWithNSString:(NSString *)subject;

- (id<AndroidJavaxSipHeaderSubscriptionStateHeader>)createSubscriptionStateHeaderWithNSString:(NSString *)subscriptionState;

- (id<AndroidJavaxSipHeaderSupportedHeader>)createSupportedHeaderWithNSString:(NSString *)optionTag;

- (id<AndroidJavaxSipHeaderTimeStampHeader>)createTimeStampHeaderWithFloat:(jfloat)timeStamp;

- (id<AndroidJavaxSipHeaderToHeader>)createToHeaderWithAndroidJavaxSipAddressAddress:(id<AndroidJavaxSipAddressAddress>)address
                                                                        withNSString:(NSString *)tag;

- (id<AndroidJavaxSipHeaderUnsupportedHeader>)createUnsupportedHeaderWithNSString:(NSString *)optionTag;

- (id<AndroidJavaxSipHeaderUserAgentHeader>)createUserAgentHeaderWithJavaUtilList:(id<JavaUtilList>)product;

- (id<AndroidJavaxSipHeaderViaHeader>)createViaHeaderWithNSString:(NSString *)host
                                                          withInt:(jint)port
                                                     withNSString:(NSString *)transport
                                                     withNSString:(NSString *)branch;

- (id<AndroidJavaxSipHeaderWWWAuthenticateHeader>)createWWWAuthenticateHeaderWithNSString:(NSString *)scheme;

- (id<AndroidJavaxSipHeaderWarningHeader>)createWarningHeaderWithNSString:(NSString *)agent
                                                                  withInt:(jint)code
                                                             withNSString:(NSString *)comment;

- (id<AndroidJavaxSipHeaderSIPETagHeader>)createSIPETagHeaderWithNSString:(NSString *)etag;

- (id<AndroidJavaxSipHeaderSIPIfMatchHeader>)createSIPIfMatchHeaderWithNSString:(NSString *)etag;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidJavaxSipHeaderHeaderFactory)

J2OBJC_TYPE_LITERAL_HEADER(AndroidJavaxSipHeaderHeaderFactory)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidJavaxSipHeaderHeaderFactory")