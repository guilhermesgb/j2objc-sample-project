//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/stack/SIPServerTransactionImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidGovNistJavaxSipStackSIPServerTransactionImpl")
#ifdef RESTRICT_AndroidGovNistJavaxSipStackSIPServerTransactionImpl
#define INCLUDE_ALL_AndroidGovNistJavaxSipStackSIPServerTransactionImpl 0
#else
#define INCLUDE_ALL_AndroidGovNistJavaxSipStackSIPServerTransactionImpl 1
#endif
#undef RESTRICT_AndroidGovNistJavaxSipStackSIPServerTransactionImpl

#if !defined (AndroidGovNistJavaxSipStackSIPServerTransactionImpl_) && (INCLUDE_ALL_AndroidGovNistJavaxSipStackSIPServerTransactionImpl || defined(INCLUDE_AndroidGovNistJavaxSipStackSIPServerTransactionImpl))
#define AndroidGovNistJavaxSipStackSIPServerTransactionImpl_

#define RESTRICT_AndroidGovNistJavaxSipStackSIPTransactionImpl 1
#define INCLUDE_AndroidGovNistJavaxSipStackSIPTransactionImpl 1
#include "android/gov/nist/javax/sip/stack/SIPTransactionImpl.h"

#define RESTRICT_AndroidGovNistJavaxSipStackSIPServerTransaction 1
#define INCLUDE_AndroidGovNistJavaxSipStackSIPServerTransaction 1
#include "android/gov/nist/javax/sip/stack/SIPServerTransaction.h"

@class AndroidGovNistJavaxSipMessageSIPMessage;
@class AndroidGovNistJavaxSipMessageSIPRequest;
@class AndroidGovNistJavaxSipMessageSIPResponse;
@class AndroidGovNistJavaxSipStackMessageChannel;
@class AndroidGovNistJavaxSipStackSIPDialog;
@class AndroidGovNistJavaxSipStackSIPTransactionStack;
@class AndroidJavaxSipTransactionState;
@class IOSByteArray;
@protocol AndroidGovNistJavaxSipStackSIPClientTransaction;
@protocol AndroidGovNistJavaxSipStackServerRequestInterface;
@protocol AndroidJavaxSipDialog;
@protocol AndroidJavaxSipMessageResponse;

@interface AndroidGovNistJavaxSipStackSIPServerTransactionImpl : AndroidGovNistJavaxSipStackSIPTransactionImpl < AndroidGovNistJavaxSipStackSIPServerTransaction > {
 @public
  NSString *dialogId_;
  jboolean isAckSeen_;
}

#pragma mark Public

- (jboolean)ackSeen;

- (void)cleanUp;

- (void)disableRetransmissionAlerts;

- (void)enableRetransmissionAlerts;

- (jboolean)isEqual:(id)other;

- (void)fireRetransmissionTimer;

- (void)fireTimeoutTimer;

- (id<AndroidGovNistJavaxSipStackSIPServerTransaction>)getCanceledInviteTransaction;

- (id<AndroidJavaxSipDialog>)getDialog;

- (jint)getLastResponseStatusCode;

- (jlong)getPendingReliableCSeqNumber;

- (NSString *)getPendingReliableResponseMethod;

- (jlong)getPendingReliableRSeqNumber;

- (IOSByteArray *)getReliableProvisionalResponse;

- (AndroidGovNistJavaxSipStackMessageChannel *)getResponseChannel;

- (AndroidJavaxSipTransactionState *)getState;

- (NSString *)getViaHost;

- (jint)getViaPort;

- (jboolean)isMessagePartOfTransactionWithAndroidGovNistJavaxSipMessageSIPMessage:(AndroidGovNistJavaxSipMessageSIPMessage *)messageToTest;

- (jboolean)isRetransmissionAlertEnabled;

- (void)map;

- (jboolean)prackRecieved;

- (void)processRequestWithAndroidGovNistJavaxSipMessageSIPRequest:(AndroidGovNistJavaxSipMessageSIPRequest *)transactionRequest
                    withAndroidGovNistJavaxSipStackMessageChannel:(AndroidGovNistJavaxSipStackMessageChannel *)sourceChannel;

- (void)releaseSem;

- (void)resendLastResponseAsBytes;

- (void)scheduleAckRemoval;

- (void)sendMessageWithAndroidGovNistJavaxSipMessageSIPMessage:(AndroidGovNistJavaxSipMessageSIPMessage *)messageToSend;

- (void)sendReliableProvisionalResponseWithAndroidJavaxSipMessageResponse:(id<AndroidJavaxSipMessageResponse>)relResponse;

- (void)sendResponseWithAndroidJavaxSipMessageResponse:(id<AndroidJavaxSipMessageResponse>)response;

- (void)setAckSeen;

- (void)setDialogWithAndroidGovNistJavaxSipStackSIPDialog:(AndroidGovNistJavaxSipStackSIPDialog *)sipDialog
                                             withNSString:(NSString *)dialogId;

- (void)setInviteTransactionWithAndroidGovNistJavaxSipStackSIPServerTransaction:(id<AndroidGovNistJavaxSipStackSIPServerTransaction>)st;

- (void)setMappedWithBoolean:(jboolean)b;

- (void)setOriginalRequestWithAndroidGovNistJavaxSipMessageSIPRequest:(AndroidGovNistJavaxSipMessageSIPRequest *)originalRequest;

- (void)setPendingSubscribeWithAndroidGovNistJavaxSipStackSIPClientTransaction:(id<AndroidGovNistJavaxSipStackSIPClientTransaction>)pendingSubscribeClientTx;

- (void)setRequestInterfaceWithAndroidGovNistJavaxSipStackServerRequestInterface:(id<AndroidGovNistJavaxSipStackServerRequestInterface>)newRequestOf;

- (void)setStateWithInt:(jint)newState;

- (void)startTransactionTimer;

- (void)terminate;

- (void)waitForTermination;

#pragma mark Protected

- (instancetype)initWithAndroidGovNistJavaxSipStackSIPTransactionStack:(AndroidGovNistJavaxSipStackSIPTransactionStack *)sipStack
                         withAndroidGovNistJavaxSipStackMessageChannel:(AndroidGovNistJavaxSipStackMessageChannel *)newChannelToUse;

- (void)cleanUpOnTimer;

- (jint)getRealState;

- (void)sendResponseWithAndroidGovNistJavaxSipMessageSIPResponse:(AndroidGovNistJavaxSipMessageSIPResponse *)transactionResponse;

- (void)startTransactionTimerJWithLong:(jlong)time;

@end

J2OBJC_STATIC_INIT(AndroidGovNistJavaxSipStackSIPServerTransactionImpl)

J2OBJC_FIELD_SETTER(AndroidGovNistJavaxSipStackSIPServerTransactionImpl, dialogId_, NSString *)

FOUNDATION_EXPORT void AndroidGovNistJavaxSipStackSIPServerTransactionImpl_initWithAndroidGovNistJavaxSipStackSIPTransactionStack_withAndroidGovNistJavaxSipStackMessageChannel_(AndroidGovNistJavaxSipStackSIPServerTransactionImpl *self, AndroidGovNistJavaxSipStackSIPTransactionStack *sipStack, AndroidGovNistJavaxSipStackMessageChannel *newChannelToUse);

FOUNDATION_EXPORT AndroidGovNistJavaxSipStackSIPServerTransactionImpl *new_AndroidGovNistJavaxSipStackSIPServerTransactionImpl_initWithAndroidGovNistJavaxSipStackSIPTransactionStack_withAndroidGovNistJavaxSipStackMessageChannel_(AndroidGovNistJavaxSipStackSIPTransactionStack *sipStack, AndroidGovNistJavaxSipStackMessageChannel *newChannelToUse) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipStackSIPServerTransactionImpl *create_AndroidGovNistJavaxSipStackSIPServerTransactionImpl_initWithAndroidGovNistJavaxSipStackSIPTransactionStack_withAndroidGovNistJavaxSipStackMessageChannel_(AndroidGovNistJavaxSipStackSIPTransactionStack *sipStack, AndroidGovNistJavaxSipStackMessageChannel *newChannelToUse);

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSipStackSIPServerTransactionImpl)

#endif

#if !defined (AndroidGovNistJavaxSipStackSIPServerTransactionImpl_RetransmissionAlertTimerTask_) && (INCLUDE_ALL_AndroidGovNistJavaxSipStackSIPServerTransactionImpl || defined(INCLUDE_AndroidGovNistJavaxSipStackSIPServerTransactionImpl_RetransmissionAlertTimerTask))
#define AndroidGovNistJavaxSipStackSIPServerTransactionImpl_RetransmissionAlertTimerTask_

#define RESTRICT_AndroidGovNistJavaxSipStackSIPStackTimerTask 1
#define INCLUDE_AndroidGovNistJavaxSipStackSIPStackTimerTask 1
#include "android/gov/nist/javax/sip/stack/SIPStackTimerTask.h"

@class AndroidGovNistJavaxSipStackSIPServerTransactionImpl;

@interface AndroidGovNistJavaxSipStackSIPServerTransactionImpl_RetransmissionAlertTimerTask : AndroidGovNistJavaxSipStackSIPStackTimerTask {
 @public
  NSString *dialogId_;
  jint ticks_;
  jint ticksLeft_;
}

#pragma mark Public

- (instancetype)initWithAndroidGovNistJavaxSipStackSIPServerTransactionImpl:(AndroidGovNistJavaxSipStackSIPServerTransactionImpl *)outer$
                                                               withNSString:(NSString *)dialogId;

- (void)runTask;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidGovNistJavaxSipStackSIPServerTransactionImpl_RetransmissionAlertTimerTask)

J2OBJC_FIELD_SETTER(AndroidGovNistJavaxSipStackSIPServerTransactionImpl_RetransmissionAlertTimerTask, dialogId_, NSString *)

FOUNDATION_EXPORT void AndroidGovNistJavaxSipStackSIPServerTransactionImpl_RetransmissionAlertTimerTask_initWithAndroidGovNistJavaxSipStackSIPServerTransactionImpl_withNSString_(AndroidGovNistJavaxSipStackSIPServerTransactionImpl_RetransmissionAlertTimerTask *self, AndroidGovNistJavaxSipStackSIPServerTransactionImpl *outer$, NSString *dialogId);

FOUNDATION_EXPORT AndroidGovNistJavaxSipStackSIPServerTransactionImpl_RetransmissionAlertTimerTask *new_AndroidGovNistJavaxSipStackSIPServerTransactionImpl_RetransmissionAlertTimerTask_initWithAndroidGovNistJavaxSipStackSIPServerTransactionImpl_withNSString_(AndroidGovNistJavaxSipStackSIPServerTransactionImpl *outer$, NSString *dialogId) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipStackSIPServerTransactionImpl_RetransmissionAlertTimerTask *create_AndroidGovNistJavaxSipStackSIPServerTransactionImpl_RetransmissionAlertTimerTask_initWithAndroidGovNistJavaxSipStackSIPServerTransactionImpl_withNSString_(AndroidGovNistJavaxSipStackSIPServerTransactionImpl *outer$, NSString *dialogId);

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSipStackSIPServerTransactionImpl_RetransmissionAlertTimerTask)

#endif

#if !defined (AndroidGovNistJavaxSipStackSIPServerTransactionImpl_ProvisionalResponseTask_) && (INCLUDE_ALL_AndroidGovNistJavaxSipStackSIPServerTransactionImpl || defined(INCLUDE_AndroidGovNistJavaxSipStackSIPServerTransactionImpl_ProvisionalResponseTask))
#define AndroidGovNistJavaxSipStackSIPServerTransactionImpl_ProvisionalResponseTask_

#define RESTRICT_AndroidGovNistJavaxSipStackSIPStackTimerTask 1
#define INCLUDE_AndroidGovNistJavaxSipStackSIPStackTimerTask 1
#include "android/gov/nist/javax/sip/stack/SIPStackTimerTask.h"

@class AndroidGovNistJavaxSipStackSIPServerTransactionImpl;

@interface AndroidGovNistJavaxSipStackSIPServerTransactionImpl_ProvisionalResponseTask : AndroidGovNistJavaxSipStackSIPStackTimerTask {
 @public
  jint ticks_;
  jint ticksLeft_;
}

#pragma mark Public

- (instancetype)initWithAndroidGovNistJavaxSipStackSIPServerTransactionImpl:(AndroidGovNistJavaxSipStackSIPServerTransactionImpl *)outer$;

- (void)runTask;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidGovNistJavaxSipStackSIPServerTransactionImpl_ProvisionalResponseTask)

FOUNDATION_EXPORT void AndroidGovNistJavaxSipStackSIPServerTransactionImpl_ProvisionalResponseTask_initWithAndroidGovNistJavaxSipStackSIPServerTransactionImpl_(AndroidGovNistJavaxSipStackSIPServerTransactionImpl_ProvisionalResponseTask *self, AndroidGovNistJavaxSipStackSIPServerTransactionImpl *outer$);

FOUNDATION_EXPORT AndroidGovNistJavaxSipStackSIPServerTransactionImpl_ProvisionalResponseTask *new_AndroidGovNistJavaxSipStackSIPServerTransactionImpl_ProvisionalResponseTask_initWithAndroidGovNistJavaxSipStackSIPServerTransactionImpl_(AndroidGovNistJavaxSipStackSIPServerTransactionImpl *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipStackSIPServerTransactionImpl_ProvisionalResponseTask *create_AndroidGovNistJavaxSipStackSIPServerTransactionImpl_ProvisionalResponseTask_initWithAndroidGovNistJavaxSipStackSIPServerTransactionImpl_(AndroidGovNistJavaxSipStackSIPServerTransactionImpl *outer$);

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSipStackSIPServerTransactionImpl_ProvisionalResponseTask)

#endif

#if !defined (AndroidGovNistJavaxSipStackSIPServerTransactionImpl_SendTrying_) && (INCLUDE_ALL_AndroidGovNistJavaxSipStackSIPServerTransactionImpl || defined(INCLUDE_AndroidGovNistJavaxSipStackSIPServerTransactionImpl_SendTrying))
#define AndroidGovNistJavaxSipStackSIPServerTransactionImpl_SendTrying_

#define RESTRICT_AndroidGovNistJavaxSipStackSIPStackTimerTask 1
#define INCLUDE_AndroidGovNistJavaxSipStackSIPStackTimerTask 1
#include "android/gov/nist/javax/sip/stack/SIPStackTimerTask.h"

@class AndroidGovNistJavaxSipStackSIPServerTransactionImpl;

@interface AndroidGovNistJavaxSipStackSIPServerTransactionImpl_SendTrying : AndroidGovNistJavaxSipStackSIPStackTimerTask

#pragma mark Public

- (void)runTask;

#pragma mark Protected

- (instancetype)initWithAndroidGovNistJavaxSipStackSIPServerTransactionImpl:(AndroidGovNistJavaxSipStackSIPServerTransactionImpl *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidGovNistJavaxSipStackSIPServerTransactionImpl_SendTrying)

FOUNDATION_EXPORT void AndroidGovNistJavaxSipStackSIPServerTransactionImpl_SendTrying_initWithAndroidGovNistJavaxSipStackSIPServerTransactionImpl_(AndroidGovNistJavaxSipStackSIPServerTransactionImpl_SendTrying *self, AndroidGovNistJavaxSipStackSIPServerTransactionImpl *outer$);

FOUNDATION_EXPORT AndroidGovNistJavaxSipStackSIPServerTransactionImpl_SendTrying *new_AndroidGovNistJavaxSipStackSIPServerTransactionImpl_SendTrying_initWithAndroidGovNistJavaxSipStackSIPServerTransactionImpl_(AndroidGovNistJavaxSipStackSIPServerTransactionImpl *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipStackSIPServerTransactionImpl_SendTrying *create_AndroidGovNistJavaxSipStackSIPServerTransactionImpl_SendTrying_initWithAndroidGovNistJavaxSipStackSIPServerTransactionImpl_(AndroidGovNistJavaxSipStackSIPServerTransactionImpl *outer$);

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSipStackSIPServerTransactionImpl_SendTrying)

#endif

#if !defined (AndroidGovNistJavaxSipStackSIPServerTransactionImpl_TransactionTimer_) && (INCLUDE_ALL_AndroidGovNistJavaxSipStackSIPServerTransactionImpl || defined(INCLUDE_AndroidGovNistJavaxSipStackSIPServerTransactionImpl_TransactionTimer))
#define AndroidGovNistJavaxSipStackSIPServerTransactionImpl_TransactionTimer_

#define RESTRICT_AndroidGovNistJavaxSipStackSIPStackTimerTask 1
#define INCLUDE_AndroidGovNistJavaxSipStackSIPStackTimerTask 1
#include "android/gov/nist/javax/sip/stack/SIPStackTimerTask.h"

@class AndroidGovNistJavaxSipStackSIPServerTransactionImpl;

@interface AndroidGovNistJavaxSipStackSIPServerTransactionImpl_TransactionTimer : AndroidGovNistJavaxSipStackSIPStackTimerTask

#pragma mark Public

- (instancetype)initWithAndroidGovNistJavaxSipStackSIPServerTransactionImpl:(AndroidGovNistJavaxSipStackSIPServerTransactionImpl *)outer$;

- (void)runTask;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidGovNistJavaxSipStackSIPServerTransactionImpl_TransactionTimer)

FOUNDATION_EXPORT void AndroidGovNistJavaxSipStackSIPServerTransactionImpl_TransactionTimer_initWithAndroidGovNistJavaxSipStackSIPServerTransactionImpl_(AndroidGovNistJavaxSipStackSIPServerTransactionImpl_TransactionTimer *self, AndroidGovNistJavaxSipStackSIPServerTransactionImpl *outer$);

FOUNDATION_EXPORT AndroidGovNistJavaxSipStackSIPServerTransactionImpl_TransactionTimer *new_AndroidGovNistJavaxSipStackSIPServerTransactionImpl_TransactionTimer_initWithAndroidGovNistJavaxSipStackSIPServerTransactionImpl_(AndroidGovNistJavaxSipStackSIPServerTransactionImpl *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipStackSIPServerTransactionImpl_TransactionTimer *create_AndroidGovNistJavaxSipStackSIPServerTransactionImpl_TransactionTimer_initWithAndroidGovNistJavaxSipStackSIPServerTransactionImpl_(AndroidGovNistJavaxSipStackSIPServerTransactionImpl *outer$);

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSipStackSIPServerTransactionImpl_TransactionTimer)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidGovNistJavaxSipStackSIPServerTransactionImpl")