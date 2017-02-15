//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/EventScanner.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "android/gov/nist/core/ThreadAuditor.h"
#include "android/gov/nist/javax/sip/DialogTimeoutEvent.h"
#include "android/gov/nist/javax/sip/EventScanner.h"
#include "android/gov/nist/javax/sip/EventWrapper.h"
#include "android/gov/nist/javax/sip/SipListenerExt.h"
#include "android/gov/nist/javax/sip/SipProviderImpl.h"
#include "android/gov/nist/javax/sip/SipStackImpl.h"
#include "android/gov/nist/javax/sip/message/SIPRequest.h"
#include "android/gov/nist/javax/sip/message/SIPResponse.h"
#include "android/gov/nist/javax/sip/stack/SIPClientTransaction.h"
#include "android/gov/nist/javax/sip/stack/SIPDialog.h"
#include "android/gov/nist/javax/sip/stack/SIPServerTransaction.h"
#include "android/gov/nist/javax/sip/stack/SIPTransaction.h"
#include "android/javax/sip/ClientTransaction.h"
#include "android/javax/sip/Dialog.h"
#include "android/javax/sip/DialogState.h"
#include "android/javax/sip/DialogTerminatedEvent.h"
#include "android/javax/sip/IOExceptionEvent.h"
#include "android/javax/sip/RequestEvent.h"
#include "android/javax/sip/ResponseEvent.h"
#include "android/javax/sip/ServerTransaction.h"
#include "android/javax/sip/SipListener.h"
#include "android/javax/sip/TimeoutEvent.h"
#include "android/javax/sip/TransactionState.h"
#include "android/javax/sip/TransactionTerminatedEvent.h"
#include "android/javax/sip/header/CSeqHeader.h"
#include "android/javax/sip/message/Request.h"
#include "android/javax/sip/message/Response.h"
#include "java/lang/AbstractMethodError.h"
#include "java/lang/Exception.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/Thread.h"
#include "java/util/EventObject.h"
#include "java/util/concurrent/BlockingQueue.h"
#include "java/util/concurrent/LinkedBlockingQueue.h"
#include "java/util/concurrent/atomic/AtomicInteger.h"
#include "org/slf4j/Logger.h"
#include "org/slf4j/LoggerFactory.h"

@interface AndroidGovNistJavaxSipEventScanner () {
 @public
  jboolean isStopped_;
  id<JavaUtilConcurrentBlockingQueue> pendingEvents_;
  JavaUtilConcurrentAtomicAtomicInteger *refCount_;
  AndroidGovNistJavaxSipSipStackImpl *sipStack_;
}

- (void)deliverRequestEventWithAndroidJavaxSipRequestEvent:(AndroidJavaxSipRequestEvent *)sipEvent
                    withAndroidGovNistJavaxSipEventWrapper:(AndroidGovNistJavaxSipEventWrapper *)eventWrapper
                            withAndroidJavaxSipSipListener:(id<AndroidJavaxSipSipListener>)sipListener;

- (void)deliverResponseEventWithAndroidJavaxSipResponseEvent:(AndroidJavaxSipResponseEvent *)responseEvent
                      withAndroidGovNistJavaxSipEventWrapper:(AndroidGovNistJavaxSipEventWrapper *)eventWrapper
                              withAndroidJavaxSipSipListener:(id<AndroidJavaxSipSipListener>)sipListener;

- (void)deliverTimeoutEventWithAndroidJavaxSipTimeoutEvent:(AndroidJavaxSipTimeoutEvent *)timeoutEvent
                    withAndroidGovNistJavaxSipEventWrapper:(AndroidGovNistJavaxSipEventWrapper *)eventWrapper
                            withAndroidJavaxSipSipListener:(id<AndroidJavaxSipSipListener>)sipListener;

- (void)deliverDialogTimeoutEventWithAndroidGovNistJavaxSipDialogTimeoutEvent:(AndroidGovNistJavaxSipDialogTimeoutEvent *)dialogTimeoutEvent
                                       withAndroidGovNistJavaxSipEventWrapper:(AndroidGovNistJavaxSipEventWrapper *)eventWrapper
                                               withAndroidJavaxSipSipListener:(id<AndroidJavaxSipSipListener>)sipListener;

- (void)deliverIOExceptionEventWithAndroidJavaxSipIOExceptionEvent:(AndroidJavaxSipIOExceptionEvent *)sipEvent
                            withAndroidGovNistJavaxSipEventWrapper:(AndroidGovNistJavaxSipEventWrapper *)eventWrapper
                                    withAndroidJavaxSipSipListener:(id<AndroidJavaxSipSipListener>)sipListener;

- (void)deliverTransactionTerminatedEventWithAndroidJavaxSipTransactionTerminatedEvent:(AndroidJavaxSipTransactionTerminatedEvent *)sipEvent
                                                withAndroidGovNistJavaxSipEventWrapper:(AndroidGovNistJavaxSipEventWrapper *)eventWrapper
                                                        withAndroidJavaxSipSipListener:(id<AndroidJavaxSipSipListener>)sipListener;

- (void)deliverDialogTerminatedEventWithAndroidJavaxSipDialogTerminatedEvent:(AndroidJavaxSipDialogTerminatedEvent *)sipEvent
                                      withAndroidGovNistJavaxSipEventWrapper:(AndroidGovNistJavaxSipEventWrapper *)eventWrapper
                                              withAndroidJavaxSipSipListener:(id<AndroidJavaxSipSipListener>)sipListener;

@end

J2OBJC_FIELD_SETTER(AndroidGovNistJavaxSipEventScanner, pendingEvents_, id<JavaUtilConcurrentBlockingQueue>)
J2OBJC_FIELD_SETTER(AndroidGovNistJavaxSipEventScanner, refCount_, JavaUtilConcurrentAtomicAtomicInteger *)
J2OBJC_FIELD_SETTER(AndroidGovNistJavaxSipEventScanner, sipStack_, AndroidGovNistJavaxSipSipStackImpl *)

inline id<OrgSlf4jLogger> AndroidGovNistJavaxSipEventScanner_get_logger();
inline id<OrgSlf4jLogger> AndroidGovNistJavaxSipEventScanner_set_logger(id<OrgSlf4jLogger> value);
static id<OrgSlf4jLogger> AndroidGovNistJavaxSipEventScanner_logger;
J2OBJC_STATIC_FIELD_OBJ(AndroidGovNistJavaxSipEventScanner, logger, id<OrgSlf4jLogger>)

__attribute__((unused)) static void AndroidGovNistJavaxSipEventScanner_deliverRequestEventWithAndroidJavaxSipRequestEvent_withAndroidGovNistJavaxSipEventWrapper_withAndroidJavaxSipSipListener_(AndroidGovNistJavaxSipEventScanner *self, AndroidJavaxSipRequestEvent *sipEvent, AndroidGovNistJavaxSipEventWrapper *eventWrapper, id<AndroidJavaxSipSipListener> sipListener);

__attribute__((unused)) static void AndroidGovNistJavaxSipEventScanner_deliverResponseEventWithAndroidJavaxSipResponseEvent_withAndroidGovNistJavaxSipEventWrapper_withAndroidJavaxSipSipListener_(AndroidGovNistJavaxSipEventScanner *self, AndroidJavaxSipResponseEvent *responseEvent, AndroidGovNistJavaxSipEventWrapper *eventWrapper, id<AndroidJavaxSipSipListener> sipListener);

__attribute__((unused)) static void AndroidGovNistJavaxSipEventScanner_deliverTimeoutEventWithAndroidJavaxSipTimeoutEvent_withAndroidGovNistJavaxSipEventWrapper_withAndroidJavaxSipSipListener_(AndroidGovNistJavaxSipEventScanner *self, AndroidJavaxSipTimeoutEvent *timeoutEvent, AndroidGovNistJavaxSipEventWrapper *eventWrapper, id<AndroidJavaxSipSipListener> sipListener);

__attribute__((unused)) static void AndroidGovNistJavaxSipEventScanner_deliverDialogTimeoutEventWithAndroidGovNistJavaxSipDialogTimeoutEvent_withAndroidGovNistJavaxSipEventWrapper_withAndroidJavaxSipSipListener_(AndroidGovNistJavaxSipEventScanner *self, AndroidGovNistJavaxSipDialogTimeoutEvent *dialogTimeoutEvent, AndroidGovNistJavaxSipEventWrapper *eventWrapper, id<AndroidJavaxSipSipListener> sipListener);

__attribute__((unused)) static void AndroidGovNistJavaxSipEventScanner_deliverIOExceptionEventWithAndroidJavaxSipIOExceptionEvent_withAndroidGovNistJavaxSipEventWrapper_withAndroidJavaxSipSipListener_(AndroidGovNistJavaxSipEventScanner *self, AndroidJavaxSipIOExceptionEvent *sipEvent, AndroidGovNistJavaxSipEventWrapper *eventWrapper, id<AndroidJavaxSipSipListener> sipListener);

__attribute__((unused)) static void AndroidGovNistJavaxSipEventScanner_deliverTransactionTerminatedEventWithAndroidJavaxSipTransactionTerminatedEvent_withAndroidGovNistJavaxSipEventWrapper_withAndroidJavaxSipSipListener_(AndroidGovNistJavaxSipEventScanner *self, AndroidJavaxSipTransactionTerminatedEvent *sipEvent, AndroidGovNistJavaxSipEventWrapper *eventWrapper, id<AndroidJavaxSipSipListener> sipListener);

__attribute__((unused)) static void AndroidGovNistJavaxSipEventScanner_deliverDialogTerminatedEventWithAndroidJavaxSipDialogTerminatedEvent_withAndroidGovNistJavaxSipEventWrapper_withAndroidJavaxSipSipListener_(AndroidGovNistJavaxSipEventScanner *self, AndroidJavaxSipDialogTerminatedEvent *sipEvent, AndroidGovNistJavaxSipEventWrapper *eventWrapper, id<AndroidJavaxSipSipListener> sipListener);

J2OBJC_INITIALIZED_DEFN(AndroidGovNistJavaxSipEventScanner)

@implementation AndroidGovNistJavaxSipEventScanner

- (void)incrementRefcount {
  [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(self->refCount_)) incrementAndGet];
}

- (instancetype)initWithAndroidGovNistJavaxSipSipStackImpl:(AndroidGovNistJavaxSipSipStackImpl *)sipStackImpl {
  AndroidGovNistJavaxSipEventScanner_initWithAndroidGovNistJavaxSipSipStackImpl_(self, sipStackImpl);
  return self;
}

- (void)addEventWithAndroidGovNistJavaxSipEventWrapper:(AndroidGovNistJavaxSipEventWrapper *)eventWrapper {
  [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) debugWithNSString:JreStrcat("$@", @"addEvent ", eventWrapper)];
  jboolean added = [((id<JavaUtilConcurrentBlockingQueue>) nil_chk(pendingEvents_)) offerWithId:eventWrapper];
  if (!added) [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) warnWithNSString:JreStrcat("$@", @"reached queue capacity limit couldn't addEvent ", eventWrapper)];
}

- (void)stop {
  if ([((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(refCount_)) get] == 0) {
    isStopped_ = true;
  }
}

- (void)forceStop {
  self->isStopped_ = true;
  [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(self->refCount_)) setWithInt:0];
}

- (void)deliverEventWithAndroidGovNistJavaxSipEventWrapper:(AndroidGovNistJavaxSipEventWrapper *)eventWrapper {
  JavaUtilEventObject *sipEvent = ((AndroidGovNistJavaxSipEventWrapper *) nil_chk(eventWrapper))->sipEvent_;
  [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) debugWithNSString:JreStrcat("$@$@", @"sipEvent = ", sipEvent, @"source = ", [((JavaUtilEventObject *) nil_chk(sipEvent)) getSource])];
  id<AndroidJavaxSipSipListener> sipListener = nil;
  if (!([sipEvent isKindOfClass:[AndroidJavaxSipIOExceptionEvent class]])) {
    sipListener = [((AndroidGovNistJavaxSipSipProviderImpl *) nil_chk(((AndroidGovNistJavaxSipSipProviderImpl *) cast_chk([sipEvent getSource], [AndroidGovNistJavaxSipSipProviderImpl class])))) getSipListener];
  }
  else {
    sipListener = [((AndroidGovNistJavaxSipSipStackImpl *) nil_chk(sipStack_)) getSipListener];
  }
  if ([sipEvent isKindOfClass:[AndroidJavaxSipRequestEvent class]]) {
    AndroidGovNistJavaxSipEventScanner_deliverRequestEventWithAndroidJavaxSipRequestEvent_withAndroidGovNistJavaxSipEventWrapper_withAndroidJavaxSipSipListener_(self, (AndroidJavaxSipRequestEvent *) cast_chk(sipEvent, [AndroidJavaxSipRequestEvent class]), eventWrapper, sipListener);
  }
  else if ([sipEvent isKindOfClass:[AndroidJavaxSipResponseEvent class]]) {
    AndroidGovNistJavaxSipEventScanner_deliverResponseEventWithAndroidJavaxSipResponseEvent_withAndroidGovNistJavaxSipEventWrapper_withAndroidJavaxSipSipListener_(self, (AndroidJavaxSipResponseEvent *) cast_chk(sipEvent, [AndroidJavaxSipResponseEvent class]), eventWrapper, sipListener);
  }
  else if ([sipEvent isKindOfClass:[AndroidJavaxSipTimeoutEvent class]]) {
    AndroidGovNistJavaxSipEventScanner_deliverTimeoutEventWithAndroidJavaxSipTimeoutEvent_withAndroidGovNistJavaxSipEventWrapper_withAndroidJavaxSipSipListener_(self, (AndroidJavaxSipTimeoutEvent *) cast_chk(sipEvent, [AndroidJavaxSipTimeoutEvent class]), eventWrapper, sipListener);
  }
  else if ([sipEvent isKindOfClass:[AndroidGovNistJavaxSipDialogTimeoutEvent class]]) {
    AndroidGovNistJavaxSipEventScanner_deliverDialogTimeoutEventWithAndroidGovNistJavaxSipDialogTimeoutEvent_withAndroidGovNistJavaxSipEventWrapper_withAndroidJavaxSipSipListener_(self, (AndroidGovNistJavaxSipDialogTimeoutEvent *) cast_chk(sipEvent, [AndroidGovNistJavaxSipDialogTimeoutEvent class]), eventWrapper, sipListener);
  }
  else if ([sipEvent isKindOfClass:[AndroidJavaxSipIOExceptionEvent class]]) {
    AndroidGovNistJavaxSipEventScanner_deliverIOExceptionEventWithAndroidJavaxSipIOExceptionEvent_withAndroidGovNistJavaxSipEventWrapper_withAndroidJavaxSipSipListener_(self, (AndroidJavaxSipIOExceptionEvent *) cast_chk(sipEvent, [AndroidJavaxSipIOExceptionEvent class]), eventWrapper, sipListener);
  }
  else if ([sipEvent isKindOfClass:[AndroidJavaxSipTransactionTerminatedEvent class]]) {
    AndroidGovNistJavaxSipEventScanner_deliverTransactionTerminatedEventWithAndroidJavaxSipTransactionTerminatedEvent_withAndroidGovNistJavaxSipEventWrapper_withAndroidJavaxSipSipListener_(self, (AndroidJavaxSipTransactionTerminatedEvent *) cast_chk(sipEvent, [AndroidJavaxSipTransactionTerminatedEvent class]), eventWrapper, sipListener);
  }
  else if ([sipEvent isKindOfClass:[AndroidJavaxSipDialogTerminatedEvent class]]) {
    AndroidGovNistJavaxSipEventScanner_deliverDialogTerminatedEventWithAndroidJavaxSipDialogTerminatedEvent_withAndroidGovNistJavaxSipEventWrapper_withAndroidJavaxSipSipListener_(self, (AndroidJavaxSipDialogTerminatedEvent *) cast_chk(sipEvent, [AndroidJavaxSipDialogTerminatedEvent class]), eventWrapper, sipListener);
  }
  else {
    [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) errorWithNSString:JreStrcat("$@", @"bad event", sipEvent)];
  }
}

- (void)deliverRequestEventWithAndroidJavaxSipRequestEvent:(AndroidJavaxSipRequestEvent *)sipEvent
                    withAndroidGovNistJavaxSipEventWrapper:(AndroidGovNistJavaxSipEventWrapper *)eventWrapper
                            withAndroidJavaxSipSipListener:(id<AndroidJavaxSipSipListener>)sipListener {
  AndroidGovNistJavaxSipEventScanner_deliverRequestEventWithAndroidJavaxSipRequestEvent_withAndroidGovNistJavaxSipEventWrapper_withAndroidJavaxSipSipListener_(self, sipEvent, eventWrapper, sipListener);
}

- (void)deliverResponseEventWithAndroidJavaxSipResponseEvent:(AndroidJavaxSipResponseEvent *)responseEvent
                      withAndroidGovNistJavaxSipEventWrapper:(AndroidGovNistJavaxSipEventWrapper *)eventWrapper
                              withAndroidJavaxSipSipListener:(id<AndroidJavaxSipSipListener>)sipListener {
  AndroidGovNistJavaxSipEventScanner_deliverResponseEventWithAndroidJavaxSipResponseEvent_withAndroidGovNistJavaxSipEventWrapper_withAndroidJavaxSipSipListener_(self, responseEvent, eventWrapper, sipListener);
}

- (void)deliverTimeoutEventWithAndroidJavaxSipTimeoutEvent:(AndroidJavaxSipTimeoutEvent *)timeoutEvent
                    withAndroidGovNistJavaxSipEventWrapper:(AndroidGovNistJavaxSipEventWrapper *)eventWrapper
                            withAndroidJavaxSipSipListener:(id<AndroidJavaxSipSipListener>)sipListener {
  AndroidGovNistJavaxSipEventScanner_deliverTimeoutEventWithAndroidJavaxSipTimeoutEvent_withAndroidGovNistJavaxSipEventWrapper_withAndroidJavaxSipSipListener_(self, timeoutEvent, eventWrapper, sipListener);
}

- (void)deliverDialogTimeoutEventWithAndroidGovNistJavaxSipDialogTimeoutEvent:(AndroidGovNistJavaxSipDialogTimeoutEvent *)dialogTimeoutEvent
                                       withAndroidGovNistJavaxSipEventWrapper:(AndroidGovNistJavaxSipEventWrapper *)eventWrapper
                                               withAndroidJavaxSipSipListener:(id<AndroidJavaxSipSipListener>)sipListener {
  AndroidGovNistJavaxSipEventScanner_deliverDialogTimeoutEventWithAndroidGovNistJavaxSipDialogTimeoutEvent_withAndroidGovNistJavaxSipEventWrapper_withAndroidJavaxSipSipListener_(self, dialogTimeoutEvent, eventWrapper, sipListener);
}

- (void)deliverIOExceptionEventWithAndroidJavaxSipIOExceptionEvent:(AndroidJavaxSipIOExceptionEvent *)sipEvent
                            withAndroidGovNistJavaxSipEventWrapper:(AndroidGovNistJavaxSipEventWrapper *)eventWrapper
                                    withAndroidJavaxSipSipListener:(id<AndroidJavaxSipSipListener>)sipListener {
  AndroidGovNistJavaxSipEventScanner_deliverIOExceptionEventWithAndroidJavaxSipIOExceptionEvent_withAndroidGovNistJavaxSipEventWrapper_withAndroidJavaxSipSipListener_(self, sipEvent, eventWrapper, sipListener);
}

- (void)deliverTransactionTerminatedEventWithAndroidJavaxSipTransactionTerminatedEvent:(AndroidJavaxSipTransactionTerminatedEvent *)sipEvent
                                                withAndroidGovNistJavaxSipEventWrapper:(AndroidGovNistJavaxSipEventWrapper *)eventWrapper
                                                        withAndroidJavaxSipSipListener:(id<AndroidJavaxSipSipListener>)sipListener {
  AndroidGovNistJavaxSipEventScanner_deliverTransactionTerminatedEventWithAndroidJavaxSipTransactionTerminatedEvent_withAndroidGovNistJavaxSipEventWrapper_withAndroidJavaxSipSipListener_(self, sipEvent, eventWrapper, sipListener);
}

- (void)deliverDialogTerminatedEventWithAndroidJavaxSipDialogTerminatedEvent:(AndroidJavaxSipDialogTerminatedEvent *)sipEvent
                                      withAndroidGovNistJavaxSipEventWrapper:(AndroidGovNistJavaxSipEventWrapper *)eventWrapper
                                              withAndroidJavaxSipSipListener:(id<AndroidJavaxSipSipListener>)sipListener {
  AndroidGovNistJavaxSipEventScanner_deliverDialogTerminatedEventWithAndroidJavaxSipDialogTerminatedEvent_withAndroidGovNistJavaxSipEventWrapper_withAndroidJavaxSipSipListener_(self, sipEvent, eventWrapper, sipListener);
}

- (void)run {
  @try {
    AndroidGovNistCoreThreadAuditor_ThreadHandle *threadHandle = nil;
    if ([((AndroidGovNistJavaxSipSipStackImpl *) nil_chk(sipStack_)) getThreadAuditor] != nil) {
      threadHandle = [((AndroidGovNistCoreThreadAuditor *) nil_chk([((AndroidGovNistJavaxSipSipStackImpl *) nil_chk(sipStack_)) getThreadAuditor])) addCurrentThread];
    }
    while (true) {
      AndroidGovNistJavaxSipEventWrapper *eventWrapper = nil;
      if (self->isStopped_) {
        [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) debugWithNSString:@"Stopped event scanner!!"];
        return;
      }
      if (threadHandle != nil) {
        [threadHandle ping];
      }
      @try {
        eventWrapper = [((id<JavaUtilConcurrentBlockingQueue>) nil_chk(pendingEvents_)) take];
        [self deliverEventWithAndroidGovNistJavaxSipEventWrapper:eventWrapper];
      }
      @catch (JavaLangInterruptedException *ex) {
        [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) errorWithNSString:@"Interrupted!" withNSException:ex];
        return;
      }
      @catch (JavaLangException *e) {
        [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) errorWithNSString:@"Unexpected exception caught while delivering event -- carrying on bravely" withNSException:e];
      }
    }
  }
  @finally {
    if (!self->isStopped_) {
      [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) errorWithNSString:@"Event scanner exited abnormally"];
    }
  }
}

- (void)dealloc {
  RELEASE_(pendingEvents_);
  RELEASE_(refCount_);
  RELEASE_(sipStack_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 8, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 10, 11, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 12, 13, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 14, 15, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 16, 17, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(incrementRefcount);
  methods[1].selector = @selector(initWithAndroidGovNistJavaxSipSipStackImpl:);
  methods[2].selector = @selector(addEventWithAndroidGovNistJavaxSipEventWrapper:);
  methods[3].selector = @selector(stop);
  methods[4].selector = @selector(forceStop);
  methods[5].selector = @selector(deliverEventWithAndroidGovNistJavaxSipEventWrapper:);
  methods[6].selector = @selector(deliverRequestEventWithAndroidJavaxSipRequestEvent:withAndroidGovNistJavaxSipEventWrapper:withAndroidJavaxSipSipListener:);
  methods[7].selector = @selector(deliverResponseEventWithAndroidJavaxSipResponseEvent:withAndroidGovNistJavaxSipEventWrapper:withAndroidJavaxSipSipListener:);
  methods[8].selector = @selector(deliverTimeoutEventWithAndroidJavaxSipTimeoutEvent:withAndroidGovNistJavaxSipEventWrapper:withAndroidJavaxSipSipListener:);
  methods[9].selector = @selector(deliverDialogTimeoutEventWithAndroidGovNistJavaxSipDialogTimeoutEvent:withAndroidGovNistJavaxSipEventWrapper:withAndroidJavaxSipSipListener:);
  methods[10].selector = @selector(deliverIOExceptionEventWithAndroidJavaxSipIOExceptionEvent:withAndroidGovNistJavaxSipEventWrapper:withAndroidJavaxSipSipListener:);
  methods[11].selector = @selector(deliverTransactionTerminatedEventWithAndroidJavaxSipTransactionTerminatedEvent:withAndroidGovNistJavaxSipEventWrapper:withAndroidJavaxSipSipListener:);
  methods[12].selector = @selector(deliverDialogTerminatedEventWithAndroidJavaxSipDialogTerminatedEvent:withAndroidGovNistJavaxSipEventWrapper:withAndroidJavaxSipSipListener:);
  methods[13].selector = @selector(run);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "logger", "LOrgSlf4jLogger;", .constantValue.asLong = 0, 0xa, -1, 18, -1, -1 },
    { "isStopped_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "pendingEvents_", "LJavaUtilConcurrentBlockingQueue;", .constantValue.asLong = 0, 0x2, -1, -1, 19, -1 },
    { "refCount_", "LJavaUtilConcurrentAtomicAtomicInteger;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "sipStack_", "LAndroidGovNistJavaxSipSipStackImpl;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LAndroidGovNistJavaxSipSipStackImpl;", "addEvent", "LAndroidGovNistJavaxSipEventWrapper;", "deliverEvent", "deliverRequestEvent", "LAndroidJavaxSipRequestEvent;LAndroidGovNistJavaxSipEventWrapper;LAndroidJavaxSipSipListener;", "deliverResponseEvent", "LAndroidJavaxSipResponseEvent;LAndroidGovNistJavaxSipEventWrapper;LAndroidJavaxSipSipListener;", "deliverTimeoutEvent", "LAndroidJavaxSipTimeoutEvent;LAndroidGovNistJavaxSipEventWrapper;LAndroidJavaxSipSipListener;", "deliverDialogTimeoutEvent", "LAndroidGovNistJavaxSipDialogTimeoutEvent;LAndroidGovNistJavaxSipEventWrapper;LAndroidJavaxSipSipListener;", "deliverIOExceptionEvent", "LAndroidJavaxSipIOExceptionEvent;LAndroidGovNistJavaxSipEventWrapper;LAndroidJavaxSipSipListener;", "deliverTransactionTerminatedEvent", "LAndroidJavaxSipTransactionTerminatedEvent;LAndroidGovNistJavaxSipEventWrapper;LAndroidJavaxSipSipListener;", "deliverDialogTerminatedEvent", "LAndroidJavaxSipDialogTerminatedEvent;LAndroidGovNistJavaxSipEventWrapper;LAndroidJavaxSipSipListener;", &AndroidGovNistJavaxSipEventScanner_logger, "Ljava/util/concurrent/BlockingQueue<Landroid/gov/nist/javax/sip/EventWrapper;>;" };
  static const J2ObjcClassInfo _AndroidGovNistJavaxSipEventScanner = { "EventScanner", "android.gov.nist.javax.sip", ptrTable, methods, fields, 7, 0x1, 14, 5, -1, -1, -1, -1, -1 };
  return &_AndroidGovNistJavaxSipEventScanner;
}

+ (void)initialize {
  if (self == [AndroidGovNistJavaxSipEventScanner class]) {
    JreStrongAssign(&AndroidGovNistJavaxSipEventScanner_logger, OrgSlf4jLoggerFactory_getLoggerWithIOSClass_(AndroidGovNistJavaxSipEventScanner_class_()));
    J2OBJC_SET_INITIALIZED(AndroidGovNistJavaxSipEventScanner)
  }
}

@end

void AndroidGovNistJavaxSipEventScanner_initWithAndroidGovNistJavaxSipSipStackImpl_(AndroidGovNistJavaxSipEventScanner *self, AndroidGovNistJavaxSipSipStackImpl *sipStackImpl) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->refCount_, new_JavaUtilConcurrentAtomicAtomicInteger_initWithInt_(0));
  JreStrongAssignAndConsume(&self->pendingEvents_, new_JavaUtilConcurrentLinkedBlockingQueue_init());
  JavaLangThread *myThread = create_JavaLangThread_initWithJavaLangRunnable_(self);
  [myThread setDaemonWithBoolean:false];
  JreStrongAssign(&self->sipStack_, sipStackImpl);
  [myThread setNameWithNSString:@"EventScannerThread"];
  [myThread start];
}

AndroidGovNistJavaxSipEventScanner *new_AndroidGovNistJavaxSipEventScanner_initWithAndroidGovNistJavaxSipSipStackImpl_(AndroidGovNistJavaxSipSipStackImpl *sipStackImpl) {
  J2OBJC_NEW_IMPL(AndroidGovNistJavaxSipEventScanner, initWithAndroidGovNistJavaxSipSipStackImpl_, sipStackImpl)
}

AndroidGovNistJavaxSipEventScanner *create_AndroidGovNistJavaxSipEventScanner_initWithAndroidGovNistJavaxSipSipStackImpl_(AndroidGovNistJavaxSipSipStackImpl *sipStackImpl) {
  J2OBJC_CREATE_IMPL(AndroidGovNistJavaxSipEventScanner, initWithAndroidGovNistJavaxSipSipStackImpl_, sipStackImpl)
}

void AndroidGovNistJavaxSipEventScanner_deliverRequestEventWithAndroidJavaxSipRequestEvent_withAndroidGovNistJavaxSipEventWrapper_withAndroidJavaxSipSipListener_(AndroidGovNistJavaxSipEventScanner *self, AndroidJavaxSipRequestEvent *sipEvent, AndroidGovNistJavaxSipEventWrapper *eventWrapper, id<AndroidJavaxSipSipListener> sipListener) {
  @try {
    AndroidGovNistJavaxSipMessageSIPRequest *sipRequest = (AndroidGovNistJavaxSipMessageSIPRequest *) cast_chk([((AndroidJavaxSipRequestEvent *) nil_chk(sipEvent)) getRequest], [AndroidGovNistJavaxSipMessageSIPRequest class]);
    [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) debugWithNSString:JreStrcat("$$$@$@", @"deliverEvent : ", [((AndroidGovNistJavaxSipMessageSIPRequest *) nil_chk(sipRequest)) getFirstLine], @" transaction ", ((AndroidGovNistJavaxSipEventWrapper *) nil_chk(eventWrapper))->transaction_, @" sipEvent.serverTx = ", [(sipEvent) getServerTransaction])];
    id<AndroidGovNistJavaxSipStackSIPServerTransaction> tx = (id<AndroidGovNistJavaxSipStackSIPServerTransaction>) cast_check([((AndroidGovNistJavaxSipSipStackImpl *) nil_chk(self->sipStack_)) findTransactionWithAndroidGovNistJavaxSipMessageSIPMessage:sipRequest withBoolean:true], AndroidGovNistJavaxSipStackSIPServerTransaction_class_());
    if (tx != nil && ![tx passToListener]) {
      if ([((NSString *) nil_chk([sipRequest getMethod])) isEqual:AndroidJavaxSipMessageRequest_ACK] && [tx isInviteTransaction] && ([tx getLastResponseStatusCode] / 100 == 2 || [((AndroidGovNistJavaxSipSipStackImpl *) nil_chk(self->sipStack_)) isNon2XXAckPassedToListener])) {
        if (![((AndroidGovNistJavaxSipSipStackImpl *) nil_chk(self->sipStack_)) isNon2XXAckPassedToListener]) {
          [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) debugWithNSString:@"Detected broken client sending ACK with same branch! Passing..."];
        }
      }
      else {
        [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) debugWithNSString:JreStrcat("$@", @"transaction already exists! ", tx)];
        return;
      }
    }
    else if ([((AndroidGovNistJavaxSipSipStackImpl *) nil_chk(self->sipStack_)) findPendingTransactionWithNSString:[sipRequest getTransactionId]] != nil) {
      [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) debugWithNSString:@"transaction already exists!!"];
      return;
    }
    else {
      id<AndroidGovNistJavaxSipStackSIPServerTransaction> st = (id<AndroidGovNistJavaxSipStackSIPServerTransaction>) cast_check(eventWrapper->transaction_, AndroidGovNistJavaxSipStackSIPServerTransaction_class_());
      [((AndroidGovNistJavaxSipSipStackImpl *) nil_chk(self->sipStack_)) putPendingTransactionWithAndroidGovNistJavaxSipStackSIPServerTransaction:st];
    }
    [sipRequest setTransactionWithId:eventWrapper->transaction_];
    @try {
      [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) debugWithNSString:JreStrcat("$$", @"Calling listener ", [sipRequest getFirstLine])];
      [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) debugWithNSString:JreStrcat("$@", @"Calling listener ", eventWrapper->transaction_)];
      if (sipListener != nil) [sipListener processRequestWithAndroidJavaxSipRequestEvent:sipEvent];
      [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) debugWithNSString:JreStrcat("$$", @"Done processing Message ", [sipRequest getFirstLine])];
      if (eventWrapper->transaction_ != nil) {
        AndroidGovNistJavaxSipStackSIPDialog *dialog = (AndroidGovNistJavaxSipStackSIPDialog *) cast_chk([eventWrapper->transaction_ getDialog], [AndroidGovNistJavaxSipStackSIPDialog class]);
        if (dialog != nil) [dialog requestConsumed];
      }
    }
    @catch (JavaLangException *ex) {
      [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) errorWithNSString:@"Exception" withNSException:ex];
    }
  }
  @finally {
    [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) debugWithNSString:JreStrcat("$$", @"Done processing Message ", [((AndroidGovNistJavaxSipMessageSIPRequest *) nil_chk(((AndroidGovNistJavaxSipMessageSIPRequest *) cast_chk(([(sipEvent) getRequest]), [AndroidGovNistJavaxSipMessageSIPRequest class])))) getFirstLine])];
    if (((AndroidGovNistJavaxSipEventWrapper *) nil_chk(eventWrapper))->transaction_ != nil && [((id<AndroidGovNistJavaxSipStackSIPServerTransaction>) cast_check(eventWrapper->transaction_, AndroidGovNistJavaxSipStackSIPServerTransaction_class_())) passToListener]) {
      [((id<AndroidGovNistJavaxSipStackSIPServerTransaction>) cast_check(eventWrapper->transaction_, AndroidGovNistJavaxSipStackSIPServerTransaction_class_())) releaseSem];
    }
    if (eventWrapper->transaction_ != nil) [((AndroidGovNistJavaxSipSipStackImpl *) nil_chk(self->sipStack_)) removePendingTransactionWithAndroidGovNistJavaxSipStackSIPServerTransaction:(id<AndroidGovNistJavaxSipStackSIPServerTransaction>) cast_check(eventWrapper->transaction_, AndroidGovNistJavaxSipStackSIPServerTransaction_class_())];
    if ([((NSString *) nil_chk([((id<AndroidGovNistJavaxSipStackSIPTransaction>) nil_chk(eventWrapper->transaction_)) getMethod])) isEqual:AndroidJavaxSipMessageRequest_ACK]) {
      [((id<AndroidGovNistJavaxSipStackSIPTransaction>) nil_chk(eventWrapper->transaction_)) setStateWithInt:AndroidJavaxSipTransactionState__TERMINATED];
    }
  }
}

void AndroidGovNistJavaxSipEventScanner_deliverResponseEventWithAndroidJavaxSipResponseEvent_withAndroidGovNistJavaxSipEventWrapper_withAndroidJavaxSipSipListener_(AndroidGovNistJavaxSipEventScanner *self, AndroidJavaxSipResponseEvent *responseEvent, AndroidGovNistJavaxSipEventWrapper *eventWrapper, id<AndroidJavaxSipSipListener> sipListener) {
  @try {
    AndroidGovNistJavaxSipMessageSIPResponse *sipResponse = (AndroidGovNistJavaxSipMessageSIPResponse *) cast_chk([((AndroidJavaxSipResponseEvent *) nil_chk(responseEvent)) getResponse], [AndroidGovNistJavaxSipMessageSIPResponse class]);
    AndroidGovNistJavaxSipStackSIPDialog *sipDialog = ((AndroidGovNistJavaxSipStackSIPDialog *) cast_chk([responseEvent getDialog], [AndroidGovNistJavaxSipStackSIPDialog class]));
    @try {
      [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) debugWithNSString:JreStrcat("$@$$", @"Calling listener ", sipListener, @" for ", [((AndroidGovNistJavaxSipMessageSIPResponse *) nil_chk(sipResponse)) getFirstLine])];
      if (sipListener != nil) {
        id<AndroidGovNistJavaxSipStackSIPTransaction> tx = ((AndroidGovNistJavaxSipEventWrapper *) nil_chk(eventWrapper))->transaction_;
        if (tx != nil) {
          [tx setPassToListener];
        }
        [sipListener processResponseWithAndroidJavaxSipResponseEvent:responseEvent];
      }
      if ((sipDialog != nil && ([sipDialog getState] == nil || ![((AndroidJavaxSipDialogState *) nil_chk([sipDialog getState])) isEqual:JreLoadStatic(AndroidJavaxSipDialogState, TERMINATED)])) && ([sipResponse getStatusCode] == AndroidJavaxSipMessageResponse_CALL_OR_TRANSACTION_DOES_NOT_EXIST || [sipResponse getStatusCode] == AndroidJavaxSipMessageResponse_REQUEST_TIMEOUT)) {
        [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) debugWithNSString:@"Removing dialog on 408 or 481 response"];
        [((AndroidGovNistJavaxSipStackSIPDialog *) nil_chk(sipDialog)) doDeferredDelete];
      }
      if ([((NSString *) nil_chk([((id<AndroidJavaxSipHeaderCSeqHeader>) nil_chk([sipResponse getCSeq])) getMethod])) isEqual:AndroidJavaxSipMessageRequest_INVITE] && sipDialog != nil && [sipResponse getStatusCode] == 200) {
        [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) debugWithNSString:JreStrcat("$@", @"Warning! unacknowledged dialog. ", [sipDialog getState])];
        [sipDialog doDeferredDeleteIfNoAckSentWithLong:[((id<AndroidJavaxSipHeaderCSeqHeader>) nil_chk([sipResponse getCSeq])) getSeqNumber]];
      }
    }
    @catch (JavaLangException *ex) {
      [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) errorWithNSString:@"Exception" withNSException:ex];
    }
    id<AndroidGovNistJavaxSipStackSIPClientTransaction> ct = (id<AndroidGovNistJavaxSipStackSIPClientTransaction>) cast_check(((AndroidGovNistJavaxSipEventWrapper *) nil_chk(eventWrapper))->transaction_, AndroidGovNistJavaxSipStackSIPClientTransaction_class_());
    if (ct != nil && AndroidJavaxSipTransactionState__COMPLETED == [ct getInternalState] && ![((NSString *) nil_chk([ct getMethod])) isEqual:AndroidJavaxSipMessageRequest_INVITE]) {
      [ct clearState];
    }
  }
  @finally {
    if (((AndroidGovNistJavaxSipEventWrapper *) nil_chk(eventWrapper))->transaction_ != nil && [eventWrapper->transaction_ passToListener]) {
      [eventWrapper->transaction_ releaseSem];
    }
  }
}

void AndroidGovNistJavaxSipEventScanner_deliverTimeoutEventWithAndroidJavaxSipTimeoutEvent_withAndroidGovNistJavaxSipEventWrapper_withAndroidJavaxSipSipListener_(AndroidGovNistJavaxSipEventScanner *self, AndroidJavaxSipTimeoutEvent *timeoutEvent, AndroidGovNistJavaxSipEventWrapper *eventWrapper, id<AndroidJavaxSipSipListener> sipListener) {
  @try {
    if (sipListener != nil) [sipListener processTimeoutWithAndroidJavaxSipTimeoutEvent:timeoutEvent];
  }
  @catch (JavaLangException *ex) {
    [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) errorWithNSString:@"Exception" withNSException:ex];
  }
}

void AndroidGovNistJavaxSipEventScanner_deliverDialogTimeoutEventWithAndroidGovNistJavaxSipDialogTimeoutEvent_withAndroidGovNistJavaxSipEventWrapper_withAndroidJavaxSipSipListener_(AndroidGovNistJavaxSipEventScanner *self, AndroidGovNistJavaxSipDialogTimeoutEvent *dialogTimeoutEvent, AndroidGovNistJavaxSipEventWrapper *eventWrapper, id<AndroidJavaxSipSipListener> sipListener) {
  @try {
    if (sipListener != nil && [AndroidGovNistJavaxSipSipListenerExt_class_() isInstance:sipListener]) {
      [((id<AndroidGovNistJavaxSipSipListenerExt>) cast_check(sipListener, AndroidGovNistJavaxSipSipListenerExt_class_())) processDialogTimeoutWithAndroidGovNistJavaxSipDialogTimeoutEvent:dialogTimeoutEvent];
    }
    else {
      [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) debugWithNSString:@"DialogTimeoutEvent not delivered"];
    }
  }
  @catch (JavaLangException *ex) {
    [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) errorWithNSString:@"Exception" withNSException:ex];
  }
}

void AndroidGovNistJavaxSipEventScanner_deliverIOExceptionEventWithAndroidJavaxSipIOExceptionEvent_withAndroidGovNistJavaxSipEventWrapper_withAndroidJavaxSipSipListener_(AndroidGovNistJavaxSipEventScanner *self, AndroidJavaxSipIOExceptionEvent *sipEvent, AndroidGovNistJavaxSipEventWrapper *eventWrapper, id<AndroidJavaxSipSipListener> sipListener) {
  @try {
    if (sipListener != nil) [sipListener processIOExceptionWithAndroidJavaxSipIOExceptionEvent:sipEvent];
  }
  @catch (JavaLangException *ex) {
    [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) errorWithNSString:@"Exception" withNSException:ex];
  }
}

void AndroidGovNistJavaxSipEventScanner_deliverTransactionTerminatedEventWithAndroidJavaxSipTransactionTerminatedEvent_withAndroidGovNistJavaxSipEventWrapper_withAndroidJavaxSipSipListener_(AndroidGovNistJavaxSipEventScanner *self, AndroidJavaxSipTransactionTerminatedEvent *sipEvent, AndroidGovNistJavaxSipEventWrapper *eventWrapper, id<AndroidJavaxSipSipListener> sipListener) {
  @try {
    [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) debugWithNSString:@"About to deliver transactionTerminatedEvent"];
    [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) debugWithNSString:JreStrcat("$@", @"tx = ", [((AndroidJavaxSipTransactionTerminatedEvent *) nil_chk(sipEvent)) getClientTransaction])];
    [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) debugWithNSString:JreStrcat("$@", @"tx = ", [sipEvent getServerTransaction])];
    if (sipListener != nil) [sipListener processTransactionTerminatedWithAndroidJavaxSipTransactionTerminatedEvent:sipEvent];
  }
  @catch (JavaLangAbstractMethodError *ame) {
    [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) warnWithNSString:@"Unable to call sipListener.processTransactionTerminated"];
  }
  @catch (JavaLangException *ex) {
    [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) errorWithNSString:@"Exception" withNSException:ex];
  }
}

void AndroidGovNistJavaxSipEventScanner_deliverDialogTerminatedEventWithAndroidJavaxSipDialogTerminatedEvent_withAndroidGovNistJavaxSipEventWrapper_withAndroidJavaxSipSipListener_(AndroidGovNistJavaxSipEventScanner *self, AndroidJavaxSipDialogTerminatedEvent *sipEvent, AndroidGovNistJavaxSipEventWrapper *eventWrapper, id<AndroidJavaxSipSipListener> sipListener) {
  @try {
    if (sipListener != nil) [sipListener processDialogTerminatedWithAndroidJavaxSipDialogTerminatedEvent:sipEvent];
  }
  @catch (JavaLangAbstractMethodError *ame) {
    [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) warnWithNSString:@"Unable to call sipListener.processDialogTerminated"];
  }
  @catch (JavaLangException *ex) {
    [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipEventScanner_logger)) errorWithNSString:@"Exception" withNSException:ex];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidGovNistJavaxSipEventScanner)