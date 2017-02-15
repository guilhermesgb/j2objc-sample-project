//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/stack/BlockingQueueDispatchAuditor.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "android/gov/nist/javax/sip/stack/BlockingQueueDispatchAuditor.h"
#include "android/gov/nist/javax/sip/stack/QueuedMessageDispatchBase.h"
#include "java/lang/Exception.h"
#include "java/lang/Runnable.h"
#include "java/lang/System.h"
#include "java/util/Queue.h"
#include "java/util/Timer.h"
#include "java/util/TimerTask.h"
#include "org/slf4j/Logger.h"
#include "org/slf4j/LoggerFactory.h"

@interface AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor () {
 @public
  JavaUtilTimer *timer_;
  jlong totalReject_;
  jboolean started_;
  id<JavaUtilQueue> queue_;
  jint timeout_;
}

@end

J2OBJC_FIELD_SETTER(AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor, timer_, JavaUtilTimer *)
J2OBJC_FIELD_SETTER(AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor, queue_, id<JavaUtilQueue>)

inline jint AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor_get_timerThreadCount();
inline jint AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor_set_timerThreadCount(jint value);
inline jint *AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor_getRef_timerThreadCount();
static jint AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor_timerThreadCount = 0;
J2OBJC_STATIC_FIELD_PRIMITIVE(AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor, timerThreadCount, jint)

inline id<OrgSlf4jLogger> AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor_get_logger();
inline id<OrgSlf4jLogger> AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor_set_logger(id<OrgSlf4jLogger> value);
static id<OrgSlf4jLogger> AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor_logger;
J2OBJC_STATIC_FIELD_OBJ(AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor, logger, id<OrgSlf4jLogger>)

J2OBJC_INITIALIZED_DEFN(AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor)

@implementation AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor

- (instancetype)initWithJavaUtilQueue:(id<JavaUtilQueue>)queue {
  AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor_initWithJavaUtilQueue_(self, queue);
  return self;
}

- (void)startWithInt:(jint)interval {
  if (started_) [self stop];
  started_ = true;
  JreStrongAssignAndConsume(&timer_, new_JavaUtilTimer_initWithNSString_withBoolean_(JreStrcat("$I", @"BlockingQueueDispatchAuditor-Timer-", AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor_timerThreadCount++), true));
  [timer_ scheduleAtFixedRateWithJavaUtilTimerTask:self withLong:interval withLong:interval];
}

- (jint)getTimeout {
  return timeout_;
}

- (void)setTimeoutWithInt:(jint)timeout {
  self->timeout_ = timeout;
}

- (void)stop {
  @try {
    [((JavaUtilTimer *) nil_chk(timer_)) cancel];
    JreStrongAssign(&timer_, nil);
  }
  @catch (JavaLangException *e) {
  }
  @finally {
    started_ = false;
  }
}

- (void)run {
  @try {
    jint removed = 0;
    @synchronized(self->queue_) {
      id<AndroidGovNistJavaxSipStackQueuedMessageDispatchBase> runnable = (id<AndroidGovNistJavaxSipStackQueuedMessageDispatchBase>) cast_check([((id<JavaUtilQueue>) nil_chk(self->queue_)) peek], AndroidGovNistJavaxSipStackQueuedMessageDispatchBase_class_());
      while (runnable != nil) {
        id<AndroidGovNistJavaxSipStackQueuedMessageDispatchBase> d = runnable;
        if (JavaLangSystem_currentTimeMillis() - [d getReceptionTime] > timeout_) {
          [((id<JavaUtilQueue>) nil_chk(queue_)) poll];
          runnable = (id<AndroidGovNistJavaxSipStackQueuedMessageDispatchBase>) cast_check([((id<JavaUtilQueue>) nil_chk(self->queue_)) peek], AndroidGovNistJavaxSipStackQueuedMessageDispatchBase_class_());
          removed++;
        }
        else {
          runnable = nil;
        }
      }
    }
    if (removed > 0) {
      totalReject_ += removed;
      [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor_logger)) warnWithNSString:JreStrcat("$I$J$I", @"Removed stuck messages=", removed, @" total rejected=", totalReject_, @" stil in queue=", [((id<JavaUtilQueue>) nil_chk(self->queue_)) size])];
    }
  }
  @catch (JavaLangException *e) {
    [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor_logger)) warnWithNSString:JreStrcat("$@", @"Problem reaping old requests. This is not a fatal error.", e)];
  }
}

- (void)dealloc {
  RELEASE_(timer_);
  RELEASE_(queue_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaUtilQueue:);
  methods[1].selector = @selector(startWithInt:);
  methods[2].selector = @selector(getTimeout);
  methods[3].selector = @selector(setTimeoutWithInt:);
  methods[4].selector = @selector(stop);
  methods[5].selector = @selector(run);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "timer_", "LJavaUtilTimer;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "timerThreadCount", "I", .constantValue.asLong = 0, 0xa, -1, 5, -1, -1 },
    { "logger", "LOrgSlf4jLogger;", .constantValue.asLong = 0, 0xa, -1, 6, -1, -1 },
    { "totalReject_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "started_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "queue_", "LJavaUtilQueue;", .constantValue.asLong = 0, 0x2, -1, -1, 7, -1 },
    { "timeout_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilQueue;", "(Ljava/util/Queue<+Ljava/lang/Runnable;>;)V", "start", "I", "setTimeout", &AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor_timerThreadCount, &AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor_logger, "Ljava/util/Queue<+Ljava/lang/Runnable;>;" };
  static const J2ObjcClassInfo _AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor = { "BlockingQueueDispatchAuditor", "android.gov.nist.javax.sip.stack", ptrTable, methods, fields, 7, 0x1, 6, 7, -1, -1, -1, -1, -1 };
  return &_AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor;
}

+ (void)initialize {
  if (self == [AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor class]) {
    JreStrongAssign(&AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor_logger, OrgSlf4jLoggerFactory_getLoggerWithIOSClass_(AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor_class_()));
    J2OBJC_SET_INITIALIZED(AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor)
  }
}

@end

void AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor_initWithJavaUtilQueue_(AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor *self, id<JavaUtilQueue> queue) {
  JavaUtilTimerTask_init(self);
  JreStrongAssign(&self->timer_, nil);
  self->totalReject_ = 0;
  self->started_ = false;
  self->timeout_ = 8000;
  JreStrongAssign(&self->queue_, queue);
}

AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor *new_AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor_initWithJavaUtilQueue_(id<JavaUtilQueue> queue) {
  J2OBJC_NEW_IMPL(AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor, initWithJavaUtilQueue_, queue)
}

AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor *create_AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor_initWithJavaUtilQueue_(id<JavaUtilQueue> queue) {
  J2OBJC_CREATE_IMPL(AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor, initWithJavaUtilQueue_, queue)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidGovNistJavaxSipStackBlockingQueueDispatchAuditor)