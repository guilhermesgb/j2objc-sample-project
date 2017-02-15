//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/stack/timers/ScheduledExecutorSipTimer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidGovNistJavaxSipStackTimersScheduledExecutorSipTimer")
#ifdef RESTRICT_AndroidGovNistJavaxSipStackTimersScheduledExecutorSipTimer
#define INCLUDE_ALL_AndroidGovNistJavaxSipStackTimersScheduledExecutorSipTimer 0
#else
#define INCLUDE_ALL_AndroidGovNistJavaxSipStackTimersScheduledExecutorSipTimer 1
#endif
#undef RESTRICT_AndroidGovNistJavaxSipStackTimersScheduledExecutorSipTimer

#if !defined (AndroidGovNistJavaxSipStackTimersScheduledExecutorSipTimer_) && (INCLUDE_ALL_AndroidGovNistJavaxSipStackTimersScheduledExecutorSipTimer || defined(INCLUDE_AndroidGovNistJavaxSipStackTimersScheduledExecutorSipTimer))
#define AndroidGovNistJavaxSipStackTimersScheduledExecutorSipTimer_

#define RESTRICT_AndroidGovNistJavaxSipStackTimersSipTimer 1
#define INCLUDE_AndroidGovNistJavaxSipStackTimersSipTimer 1
#include "android/gov/nist/javax/sip/stack/timers/SipTimer.h"

@class AndroidGovNistJavaxSipSipStackImpl;
@class AndroidGovNistJavaxSipStackSIPStackTimerTask;
@class JavaUtilConcurrentScheduledThreadPoolExecutor;
@class JavaUtilProperties;

@interface AndroidGovNistJavaxSipStackTimersScheduledExecutorSipTimer : NSObject < AndroidGovNistJavaxSipStackTimersSipTimer > {
 @public
  AndroidGovNistJavaxSipSipStackImpl *sipStackImpl_;
  JavaUtilConcurrentScheduledThreadPoolExecutor *threadPoolExecutor_;
}

#pragma mark Public

- (instancetype)init;

- (jboolean)cancelWithAndroidGovNistJavaxSipStackSIPStackTimerTask:(AndroidGovNistJavaxSipStackSIPStackTimerTask *)task;

- (jboolean)isStarted;

- (jboolean)scheduleWithAndroidGovNistJavaxSipStackSIPStackTimerTask:(AndroidGovNistJavaxSipStackSIPStackTimerTask *)task
                                                            withLong:(jlong)delay;

- (jboolean)scheduleWithFixedDelayWithAndroidGovNistJavaxSipStackSIPStackTimerTask:(AndroidGovNistJavaxSipStackSIPStackTimerTask *)task
                                                                          withLong:(jlong)delay
                                                                          withLong:(jlong)period;

- (void)startWithAndroidGovNistJavaxSipSipStackImpl:(AndroidGovNistJavaxSipSipStackImpl *)sipStack
                             withJavaUtilProperties:(JavaUtilProperties *)configurationProperties;

- (void)stop;

@end

J2OBJC_STATIC_INIT(AndroidGovNistJavaxSipStackTimersScheduledExecutorSipTimer)

J2OBJC_FIELD_SETTER(AndroidGovNistJavaxSipStackTimersScheduledExecutorSipTimer, sipStackImpl_, AndroidGovNistJavaxSipSipStackImpl *)
J2OBJC_FIELD_SETTER(AndroidGovNistJavaxSipStackTimersScheduledExecutorSipTimer, threadPoolExecutor_, JavaUtilConcurrentScheduledThreadPoolExecutor *)

FOUNDATION_EXPORT void AndroidGovNistJavaxSipStackTimersScheduledExecutorSipTimer_init(AndroidGovNistJavaxSipStackTimersScheduledExecutorSipTimer *self);

FOUNDATION_EXPORT AndroidGovNistJavaxSipStackTimersScheduledExecutorSipTimer *new_AndroidGovNistJavaxSipStackTimersScheduledExecutorSipTimer_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipStackTimersScheduledExecutorSipTimer *create_AndroidGovNistJavaxSipStackTimersScheduledExecutorSipTimer_init();

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSipStackTimersScheduledExecutorSipTimer)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidGovNistJavaxSipStackTimersScheduledExecutorSipTimer")