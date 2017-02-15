//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/stack/UDPMessageProcessor.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidGovNistJavaxSipStackUDPMessageProcessor")
#ifdef RESTRICT_AndroidGovNistJavaxSipStackUDPMessageProcessor
#define INCLUDE_ALL_AndroidGovNistJavaxSipStackUDPMessageProcessor 0
#else
#define INCLUDE_ALL_AndroidGovNistJavaxSipStackUDPMessageProcessor 1
#endif
#undef RESTRICT_AndroidGovNistJavaxSipStackUDPMessageProcessor

#if !defined (AndroidGovNistJavaxSipStackUDPMessageProcessor_) && (INCLUDE_ALL_AndroidGovNistJavaxSipStackUDPMessageProcessor || defined(INCLUDE_AndroidGovNistJavaxSipStackUDPMessageProcessor))
#define AndroidGovNistJavaxSipStackUDPMessageProcessor_

#define RESTRICT_AndroidGovNistJavaxSipStackMessageProcessor 1
#define INCLUDE_AndroidGovNistJavaxSipStackMessageProcessor 1
#include "android/gov/nist/javax/sip/stack/MessageProcessor.h"

#define RESTRICT_JavaLangRunnable 1
#define INCLUDE_JavaLangRunnable 1
#include "java/lang/Runnable.h"

@class AndroidGovNistCoreHostPort;
@class AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor;
@class AndroidGovNistJavaxSipStackMessageChannel;
@class AndroidGovNistJavaxSipStackSIPTransactionStack;
@class JavaNetDatagramSocket;
@class JavaNetInetAddress;
@class JavaUtilLinkedList;
@protocol JavaUtilConcurrentBlockingQueue;

@interface AndroidGovNistJavaxSipStackUDPMessageProcessor : AndroidGovNistJavaxSipStackMessageProcessor < JavaLangRunnable > {
 @public
  id<JavaUtilConcurrentBlockingQueue> messageQueue_;
  AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor *congestionAuditor_;
  JavaUtilLinkedList *messageChannels_;
  jint threadPoolSize_;
  JavaNetDatagramSocket *sock_;
  jboolean isRunning_;
}

#pragma mark Public

- (AndroidGovNistJavaxSipStackMessageChannel *)createMessageChannelWithAndroidGovNistCoreHostPort:(AndroidGovNistCoreHostPort *)targetHostPort;

- (AndroidGovNistJavaxSipStackMessageChannel *)createMessageChannelWithJavaNetInetAddress:(JavaNetInetAddress *)host
                                                                                  withInt:(jint)port;

- (jint)getDefaultTargetPort;

- (jint)getMaximumMessageSize;

- (jint)getPort;

- (AndroidGovNistJavaxSipStackSIPTransactionStack *)getSIPStack;

- (NSString *)getTransport;

- (jboolean)inUse;

- (jboolean)isSecure;

- (void)run;

- (void)start;

- (void)stop;

#pragma mark Protected

- (instancetype)initWithJavaNetInetAddress:(JavaNetInetAddress *)ipAddress
withAndroidGovNistJavaxSipStackSIPTransactionStack:(AndroidGovNistJavaxSipStackSIPTransactionStack *)sipStack
                                   withInt:(jint)port;

@end

J2OBJC_STATIC_INIT(AndroidGovNistJavaxSipStackUDPMessageProcessor)

J2OBJC_FIELD_SETTER(AndroidGovNistJavaxSipStackUDPMessageProcessor, messageQueue_, id<JavaUtilConcurrentBlockingQueue>)
J2OBJC_FIELD_SETTER(AndroidGovNistJavaxSipStackUDPMessageProcessor, congestionAuditor_, AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor *)
J2OBJC_FIELD_SETTER(AndroidGovNistJavaxSipStackUDPMessageProcessor, messageChannels_, JavaUtilLinkedList *)
J2OBJC_FIELD_SETTER(AndroidGovNistJavaxSipStackUDPMessageProcessor, sock_, JavaNetDatagramSocket *)

FOUNDATION_EXPORT void AndroidGovNistJavaxSipStackUDPMessageProcessor_initWithJavaNetInetAddress_withAndroidGovNistJavaxSipStackSIPTransactionStack_withInt_(AndroidGovNistJavaxSipStackUDPMessageProcessor *self, JavaNetInetAddress *ipAddress, AndroidGovNistJavaxSipStackSIPTransactionStack *sipStack, jint port);

FOUNDATION_EXPORT AndroidGovNistJavaxSipStackUDPMessageProcessor *new_AndroidGovNistJavaxSipStackUDPMessageProcessor_initWithJavaNetInetAddress_withAndroidGovNistJavaxSipStackSIPTransactionStack_withInt_(JavaNetInetAddress *ipAddress, AndroidGovNistJavaxSipStackSIPTransactionStack *sipStack, jint port) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipStackUDPMessageProcessor *create_AndroidGovNistJavaxSipStackUDPMessageProcessor_initWithJavaNetInetAddress_withAndroidGovNistJavaxSipStackSIPTransactionStack_withInt_(JavaNetInetAddress *ipAddress, AndroidGovNistJavaxSipStackSIPTransactionStack *sipStack, jint port);

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSipStackUDPMessageProcessor)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidGovNistJavaxSipStackUDPMessageProcessor")