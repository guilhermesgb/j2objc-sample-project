//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/stack/TCPMessageProcessor.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "android/gov/nist/core/HostPort.h"
#include "android/gov/nist/core/InternalErrorHandler.h"
#include "android/gov/nist/core/net/NetworkLayer.h"
#include "android/gov/nist/javax/sip/stack/ConnectionOrientedMessageChannel.h"
#include "android/gov/nist/javax/sip/stack/ConnectionOrientedMessageProcessor.h"
#include "android/gov/nist/javax/sip/stack/MessageChannel.h"
#include "android/gov/nist/javax/sip/stack/MessageProcessor.h"
#include "android/gov/nist/javax/sip/stack/SIPTransactionStack.h"
#include "android/gov/nist/javax/sip/stack/TCPMessageChannel.h"
#include "android/gov/nist/javax/sip/stack/TCPMessageProcessor.h"
#include "java/io/IOException.h"
#include "java/lang/Exception.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/Thread.h"
#include "java/net/InetAddress.h"
#include "java/net/ServerSocket.h"
#include "java/net/Socket.h"
#include "java/net/SocketException.h"
#include "java/net/UnknownHostException.h"
#include "java/util/Collection.h"
#include "java/util/Iterator.h"
#include "java/util/Map.h"
#include "org/slf4j/Logger.h"
#include "org/slf4j/LoggerFactory.h"

inline id<OrgSlf4jLogger> AndroidGovNistJavaxSipStackTCPMessageProcessor_get_logger();
inline id<OrgSlf4jLogger> AndroidGovNistJavaxSipStackTCPMessageProcessor_set_logger(id<OrgSlf4jLogger> value);
static id<OrgSlf4jLogger> AndroidGovNistJavaxSipStackTCPMessageProcessor_logger;
J2OBJC_STATIC_FIELD_OBJ(AndroidGovNistJavaxSipStackTCPMessageProcessor, logger, id<OrgSlf4jLogger>)

J2OBJC_INITIALIZED_DEFN(AndroidGovNistJavaxSipStackTCPMessageProcessor)

@implementation AndroidGovNistJavaxSipStackTCPMessageProcessor

- (instancetype)initWithJavaNetInetAddress:(JavaNetInetAddress *)ipAddress
withAndroidGovNistJavaxSipStackSIPTransactionStack:(AndroidGovNistJavaxSipStackSIPTransactionStack *)sipStack
                                   withInt:(jint)port {
  AndroidGovNistJavaxSipStackTCPMessageProcessor_initWithJavaNetInetAddress_withAndroidGovNistJavaxSipStackSIPTransactionStack_withInt_(self, ipAddress, sipStack, port);
  return self;
}

- (void)start {
  JavaLangThread *thread = create_JavaLangThread_initWithJavaLangRunnable_(self);
  [thread setNameWithNSString:JreStrcat("$$CI", @"MessageProcessorThread-TCP-", [((JavaNetInetAddress *) nil_chk([self getIpAddress])) getHostAddress], '/', [self getPort])];
  [thread setPriorityWithInt:[((AndroidGovNistJavaxSipStackSIPTransactionStack *) nil_chk(sipStack_)) getThreadPriority]];
  [thread setDaemonWithBoolean:true];
  JreStrongAssign(&self->sock_, [((id<AndroidGovNistCoreNetNetworkLayer>) nil_chk([((AndroidGovNistJavaxSipStackSIPTransactionStack *) nil_chk(sipStack_)) getNetworkLayer])) createServerSocketWithInt:[self getPort] withInt:0 withJavaNetInetAddress:[self getIpAddress]]);
  if ([((NSString *) nil_chk([((JavaNetInetAddress *) nil_chk([self getIpAddress])) getHostAddress])) isEqual:AndroidGovNistJavaxSipStackMessageProcessor_IN_ADDR_ANY] || [((NSString *) nil_chk([((JavaNetInetAddress *) nil_chk([self getIpAddress])) getHostAddress])) isEqual:AndroidGovNistJavaxSipStackMessageProcessor_IN6_ADDR_ANY]) {
    [super setIpAddressWithJavaNetInetAddress:[((JavaNetServerSocket *) nil_chk(sock_)) getInetAddress]];
  }
  self->isRunning_ = true;
  [thread start];
}

- (void)run {
  while (self->isRunning_) {
    @try {
      @synchronized(self) {
        while (((AndroidGovNistJavaxSipStackSIPTransactionStack *) nil_chk(sipStack_))->maxConnections_ != -1 && self->nConnections_ >= sipStack_->maxConnections_) {
          @try {
            [self java_wait];
            if (!self->isRunning_) return;
          }
          @catch (JavaLangInterruptedException *ex) {
            break;
          }
        }
        self->nConnections_++;
      }
      JavaNetSocket *newsock = [((JavaNetServerSocket *) nil_chk(sock_)) accept];
      [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipStackTCPMessageProcessor_logger)) debugWithNSString:@"Accepting new connection!"];
      AndroidGovNistJavaxSipStackTCPMessageChannel *newChannel = create_AndroidGovNistJavaxSipStackTCPMessageChannel_initWithJavaNetSocket_withAndroidGovNistJavaxSipStackSIPTransactionStack_withAndroidGovNistJavaxSipStackTCPMessageProcessor_withNSString_(newsock, sipStack_, self, JreStrcat("$I", @"TCPMessageChannelThread-", nConnections_));
      [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipStackTCPMessageProcessor_logger)) debugWithNSString:JreStrcat("@$$$@CIC$", JavaLangThread_currentThread(), @" adding incoming channel ", [newChannel getKey], @" for processor ", [self getIpAddress], ':', [self getPort], '/', [self getTransport])];
      [((id<JavaUtilMap>) nil_chk(incomingMessageChannels_)) putWithId:[newChannel getKey] withId:newChannel];
    }
    @catch (JavaNetSocketException *ex) {
      self->isRunning_ = false;
    }
    @catch (JavaIoIOException *ex) {
      [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipStackTCPMessageProcessor_logger)) errorWithNSString:@"IOException" withNSException:ex];
      continue;
    }
    @catch (JavaLangException *ex) {
      AndroidGovNistCoreInternalErrorHandler_handleExceptionWithJavaLangException_(ex);
    }
  }
}

- (NSString *)getTransport {
  return @"tcp";
}

- (void)stop {
  @synchronized(self) {
    isRunning_ = false;
    @try {
      [((JavaNetServerSocket *) nil_chk(sock_)) close];
    }
    @catch (JavaIoIOException *e) {
      [((JavaIoIOException *) nil_chk(e)) printStackTrace];
    }
    id<JavaUtilCollection> en = [((id<JavaUtilMap>) nil_chk(messageChannels_)) values];
    for (id<JavaUtilIterator> it = [((id<JavaUtilCollection>) nil_chk(en)) iterator]; [((id<JavaUtilIterator>) nil_chk(it)) hasNext]; ) {
      AndroidGovNistJavaxSipStackTCPMessageChannel *next = (AndroidGovNistJavaxSipStackTCPMessageChannel *) cast_chk([it next], [AndroidGovNistJavaxSipStackTCPMessageChannel class]);
      [((AndroidGovNistJavaxSipStackTCPMessageChannel *) nil_chk(next)) close];
    }
    for (id<JavaUtilIterator> incomingMCIterator = [((id<JavaUtilCollection>) nil_chk([((id<JavaUtilMap>) nil_chk(incomingMessageChannels_)) values])) iterator]; [((id<JavaUtilIterator>) nil_chk(incomingMCIterator)) hasNext]; ) {
      AndroidGovNistJavaxSipStackTCPMessageChannel *next = (AndroidGovNistJavaxSipStackTCPMessageChannel *) cast_chk([incomingMCIterator next], [AndroidGovNistJavaxSipStackTCPMessageChannel class]);
      [((AndroidGovNistJavaxSipStackTCPMessageChannel *) nil_chk(next)) close];
    }
    [self java_notify];
  }
}

- (AndroidGovNistJavaxSipStackMessageChannel *)createMessageChannelWithAndroidGovNistCoreHostPort:(AndroidGovNistCoreHostPort *)targetHostPort {
  @synchronized(self) {
    NSString *key = AndroidGovNistJavaxSipStackMessageChannel_getKeyWithAndroidGovNistCoreHostPort_withNSString_(targetHostPort, @"TCP");
    if ([((id<JavaUtilMap>) nil_chk(messageChannels_)) getWithId:key] != nil) {
      return (AndroidGovNistJavaxSipStackTCPMessageChannel *) cast_chk([self->messageChannels_ getWithId:key], [AndroidGovNistJavaxSipStackTCPMessageChannel class]);
    }
    else {
      AndroidGovNistJavaxSipStackTCPMessageChannel *retval = create_AndroidGovNistJavaxSipStackTCPMessageChannel_initWithJavaNetInetAddress_withInt_withAndroidGovNistJavaxSipStackSIPTransactionStack_withAndroidGovNistJavaxSipStackTCPMessageProcessor_([((AndroidGovNistCoreHostPort *) nil_chk(targetHostPort)) getInetAddress], [targetHostPort getPort], sipStack_, self);
      [self->messageChannels_ putWithId:key withId:retval];
      retval->isCached_ = true;
      [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipStackTCPMessageProcessor_logger)) debugWithNSString:JreStrcat("$$", @"key ", key)];
      [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipStackTCPMessageProcessor_logger)) debugWithNSString:JreStrcat("$@", @"Creating ", retval)];
      return retval;
    }
  }
}

- (AndroidGovNistJavaxSipStackMessageChannel *)createMessageChannelWithJavaNetInetAddress:(JavaNetInetAddress *)host
                                                                                  withInt:(jint)port {
  @synchronized(self) {
    @try {
      NSString *key = AndroidGovNistJavaxSipStackMessageChannel_getKeyWithJavaNetInetAddress_withInt_withNSString_(host, port, @"TCP");
      if ([((id<JavaUtilMap>) nil_chk(messageChannels_)) getWithId:key] != nil) {
        return (AndroidGovNistJavaxSipStackTCPMessageChannel *) cast_chk([self->messageChannels_ getWithId:key], [AndroidGovNistJavaxSipStackTCPMessageChannel class]);
      }
      else {
        AndroidGovNistJavaxSipStackTCPMessageChannel *retval = create_AndroidGovNistJavaxSipStackTCPMessageChannel_initWithJavaNetInetAddress_withInt_withAndroidGovNistJavaxSipStackSIPTransactionStack_withAndroidGovNistJavaxSipStackTCPMessageProcessor_(host, port, sipStack_, self);
        [self->messageChannels_ putWithId:key withId:retval];
        retval->isCached_ = true;
        [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipStackTCPMessageProcessor_logger)) debugWithNSString:JreStrcat("$$", @"key ", key)];
        [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipStackTCPMessageProcessor_logger)) debugWithNSString:JreStrcat("$@", @"Creating ", retval)];
        return retval;
      }
    }
    @catch (JavaNetUnknownHostException *ex) {
      @throw create_JavaIoIOException_initWithNSString_([((JavaNetUnknownHostException *) nil_chk(ex)) getMessage]);
    }
  }
}

- (jint)getDefaultTargetPort {
  return 5060;
}

- (jboolean)isSecure {
  return false;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "LAndroidGovNistJavaxSipStackMessageChannel;", 0x21, 2, 3, 1, -1, -1, -1 },
    { NULL, "LAndroidGovNistJavaxSipStackMessageChannel;", 0x21, 2, 4, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaNetInetAddress:withAndroidGovNistJavaxSipStackSIPTransactionStack:withInt:);
  methods[1].selector = @selector(start);
  methods[2].selector = @selector(run);
  methods[3].selector = @selector(getTransport);
  methods[4].selector = @selector(stop);
  methods[5].selector = @selector(createMessageChannelWithAndroidGovNistCoreHostPort:);
  methods[6].selector = @selector(createMessageChannelWithJavaNetInetAddress:withInt:);
  methods[7].selector = @selector(getDefaultTargetPort);
  methods[8].selector = @selector(isSecure);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "logger", "LOrgSlf4jLogger;", .constantValue.asLong = 0, 0xa, -1, 5, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaNetInetAddress;LAndroidGovNistJavaxSipStackSIPTransactionStack;I", "LJavaIoIOException;", "createMessageChannel", "LAndroidGovNistCoreHostPort;", "LJavaNetInetAddress;I", &AndroidGovNistJavaxSipStackTCPMessageProcessor_logger };
  static const J2ObjcClassInfo _AndroidGovNistJavaxSipStackTCPMessageProcessor = { "TCPMessageProcessor", "android.gov.nist.javax.sip.stack", ptrTable, methods, fields, 7, 0x1, 9, 1, -1, -1, -1, -1, -1 };
  return &_AndroidGovNistJavaxSipStackTCPMessageProcessor;
}

+ (void)initialize {
  if (self == [AndroidGovNistJavaxSipStackTCPMessageProcessor class]) {
    JreStrongAssign(&AndroidGovNistJavaxSipStackTCPMessageProcessor_logger, OrgSlf4jLoggerFactory_getLoggerWithIOSClass_(AndroidGovNistJavaxSipStackTCPMessageProcessor_class_()));
    J2OBJC_SET_INITIALIZED(AndroidGovNistJavaxSipStackTCPMessageProcessor)
  }
}

@end

void AndroidGovNistJavaxSipStackTCPMessageProcessor_initWithJavaNetInetAddress_withAndroidGovNistJavaxSipStackSIPTransactionStack_withInt_(AndroidGovNistJavaxSipStackTCPMessageProcessor *self, JavaNetInetAddress *ipAddress, AndroidGovNistJavaxSipStackSIPTransactionStack *sipStack, jint port) {
  AndroidGovNistJavaxSipStackConnectionOrientedMessageProcessor_initWithJavaNetInetAddress_withInt_withNSString_withAndroidGovNistJavaxSipStackSIPTransactionStack_(self, ipAddress, port, @"tcp", sipStack);
}

AndroidGovNistJavaxSipStackTCPMessageProcessor *new_AndroidGovNistJavaxSipStackTCPMessageProcessor_initWithJavaNetInetAddress_withAndroidGovNistJavaxSipStackSIPTransactionStack_withInt_(JavaNetInetAddress *ipAddress, AndroidGovNistJavaxSipStackSIPTransactionStack *sipStack, jint port) {
  J2OBJC_NEW_IMPL(AndroidGovNistJavaxSipStackTCPMessageProcessor, initWithJavaNetInetAddress_withAndroidGovNistJavaxSipStackSIPTransactionStack_withInt_, ipAddress, sipStack, port)
}

AndroidGovNistJavaxSipStackTCPMessageProcessor *create_AndroidGovNistJavaxSipStackTCPMessageProcessor_initWithJavaNetInetAddress_withAndroidGovNistJavaxSipStackSIPTransactionStack_withInt_(JavaNetInetAddress *ipAddress, AndroidGovNistJavaxSipStackSIPTransactionStack *sipStack, jint port) {
  J2OBJC_CREATE_IMPL(AndroidGovNistJavaxSipStackTCPMessageProcessor, initWithJavaNetInetAddress_withAndroidGovNistJavaxSipStackSIPTransactionStack_withInt_, ipAddress, sipStack, port)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidGovNistJavaxSipStackTCPMessageProcessor)