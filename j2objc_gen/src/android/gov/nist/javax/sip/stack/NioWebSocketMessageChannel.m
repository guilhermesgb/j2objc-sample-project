//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/stack/NioWebSocketMessageChannel.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "android/gov/nist/javax/sip/message/SIPMessage.h"
#include "android/gov/nist/javax/sip/message/SIPRequest.h"
#include "android/gov/nist/javax/sip/parser/NioPipelineParser.h"
#include "android/gov/nist/javax/sip/stack/MessageProcessor.h"
#include "android/gov/nist/javax/sip/stack/NIOHandler.h"
#include "android/gov/nist/javax/sip/stack/NioTcpMessageChannel.h"
#include "android/gov/nist/javax/sip/stack/NioTcpMessageProcessor.h"
#include "android/gov/nist/javax/sip/stack/NioWebSocketMessageChannel.h"
#include "android/gov/nist/javax/sip/stack/NioWebSocketMessageProcessor.h"
#include "android/gov/nist/javax/sip/stack/SIPTransactionStack.h"
#include "android/gov/nist/javax/sip/stack/WebSocketCodec.h"
#include "android/gov/nist/javax/sip/stack/WebSocketHttpHandshake.h"
#include "android/javax/sip/address/Address.h"
#include "android/javax/sip/address/SipURI.h"
#include "android/javax/sip/address/URI.h"
#include "android/javax/sip/header/ContactHeader.h"
#include "android/javax/sip/header/Header.h"
#include "android/javax/sip/header/RecordRouteHeader.h"
#include "android/javax/sip/header/ViaHeader.h"
#include "android/javax/sip/message/Request.h"
#include "java/io/ByteArrayInputStream.h"
#include "java/io/InputStream.h"
#include "java/lang/Exception.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/System.h"
#include "java/lang/Thread.h"
#include "java/net/InetAddress.h"
#include "java/net/Socket.h"
#include "java/nio/ByteBuffer.h"
#include "java/nio/channels/SocketChannel.h"
#include "java/text/ParseException.h"
#include "java/util/HashMap.h"
#include "java/util/concurrent/atomic/AtomicBoolean.h"
#include "org/slf4j/Logger.h"
#include "org/slf4j/LoggerFactory.h"

@interface AndroidGovNistJavaxSipStackNioWebSocketMessageChannel () {
 @public
  AndroidGovNistJavaxSipStackWebSocketCodec *codec_;
  AndroidGovNistJavaxSipStackSIPTransactionStack *stack_;
}

@end

J2OBJC_FIELD_SETTER(AndroidGovNistJavaxSipStackNioWebSocketMessageChannel, codec_, AndroidGovNistJavaxSipStackWebSocketCodec *)
J2OBJC_FIELD_SETTER(AndroidGovNistJavaxSipStackNioWebSocketMessageChannel, stack_, AndroidGovNistJavaxSipStackSIPTransactionStack *)

inline id<OrgSlf4jLogger> AndroidGovNistJavaxSipStackNioWebSocketMessageChannel_get_logger();
inline id<OrgSlf4jLogger> AndroidGovNistJavaxSipStackNioWebSocketMessageChannel_set_logger(id<OrgSlf4jLogger> value);
static id<OrgSlf4jLogger> AndroidGovNistJavaxSipStackNioWebSocketMessageChannel_logger;
J2OBJC_STATIC_FIELD_OBJ(AndroidGovNistJavaxSipStackNioWebSocketMessageChannel, logger, id<OrgSlf4jLogger>)

J2OBJC_INITIALIZED_DEFN(AndroidGovNistJavaxSipStackNioWebSocketMessageChannel)

@implementation AndroidGovNistJavaxSipStackNioWebSocketMessageChannel

+ (AndroidGovNistJavaxSipStackNioWebSocketMessageChannel *)createWithAndroidGovNistJavaxSipStackSIPTransactionStack:(AndroidGovNistJavaxSipStackSIPTransactionStack *)stack
                                                        withAndroidGovNistJavaxSipStackNioWebSocketMessageProcessor:(AndroidGovNistJavaxSipStackNioWebSocketMessageProcessor *)nioTcpMessageProcessor
                                                                                   withJavaNioChannelsSocketChannel:(JavaNioChannelsSocketChannel *)socketChannel {
  return AndroidGovNistJavaxSipStackNioWebSocketMessageChannel_createWithAndroidGovNistJavaxSipStackSIPTransactionStack_withAndroidGovNistJavaxSipStackNioWebSocketMessageProcessor_withJavaNioChannelsSocketChannel_(stack, nioTcpMessageProcessor, socketChannel);
}

- (instancetype)initWithAndroidGovNistJavaxSipStackSIPTransactionStack:(AndroidGovNistJavaxSipStackSIPTransactionStack *)stack
                 withAndroidGovNistJavaxSipStackNioTcpMessageProcessor:(AndroidGovNistJavaxSipStackNioTcpMessageProcessor *)nioTcpMessageProcessor
                                      withJavaNioChannelsSocketChannel:(JavaNioChannelsSocketChannel *)socketChannel {
  AndroidGovNistJavaxSipStackNioWebSocketMessageChannel_initWithAndroidGovNistJavaxSipStackSIPTransactionStack_withAndroidGovNistJavaxSipStackNioTcpMessageProcessor_withJavaNioChannelsSocketChannel_(self, stack, nioTcpMessageProcessor, socketChannel);
  return self;
}

- (void)sendMessageWithByteArray:(IOSByteArray *)msg
                     withBoolean:(jboolean)isClient {
  [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipStackNioWebSocketMessageChannel_logger)) debugWithNSString:JreStrcat("$Z$@", @"sendMessage isClient  = ", isClient, @" this = ", self)];
  lastActivityTimeStamp_ = JavaLangSystem_currentTimeMillis();
  AndroidGovNistJavaxSipStackNIOHandler *nioHandler = ((AndroidGovNistJavaxSipStackNioTcpMessageProcessor *) nil_chk(((AndroidGovNistJavaxSipStackNioTcpMessageProcessor *) cast_chk(messageProcessor_, [AndroidGovNistJavaxSipStackNioTcpMessageProcessor class]))))->nioHandler_;
  if (self->socketChannel_ != nil && [self->socketChannel_ isConnected] && [((JavaNioChannelsSocketChannel *) nil_chk(self->socketChannel_)) isOpen]) {
    [((AndroidGovNistJavaxSipStackNIOHandler *) nil_chk(nioHandler)) putSocketWithNSString:AndroidGovNistJavaxSipStackNIOHandler_makeKeyWithJavaNetInetAddress_withInt_(self->peerAddress_, self->peerPort_) withJavaNioChannelsSocketChannel:self->socketChannel_];
  }
  [self sendWrappedWithByteArray:msg withJavaNetInetAddress:self->peerAddress_ withInt:self->peerPort_ withBoolean:isClient];
}

- (void)sendNonWebSocketMessageWithByteArray:(IOSByteArray *)msg
                                 withBoolean:(jboolean)isClient {
  [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipStackNioWebSocketMessageChannel_logger)) debugWithNSString:JreStrcat("$Z$@", @"sendMessage isClient  = ", isClient, @" this = ", self)];
  lastActivityTimeStamp_ = JavaLangSystem_currentTimeMillis();
  AndroidGovNistJavaxSipStackNIOHandler *nioHandler = ((AndroidGovNistJavaxSipStackNioTcpMessageProcessor *) nil_chk(((AndroidGovNistJavaxSipStackNioTcpMessageProcessor *) cast_chk(messageProcessor_, [AndroidGovNistJavaxSipStackNioTcpMessageProcessor class]))))->nioHandler_;
  if (self->socketChannel_ != nil && [self->socketChannel_ isConnected] && [((JavaNioChannelsSocketChannel *) nil_chk(self->socketChannel_)) isOpen]) {
    [((AndroidGovNistJavaxSipStackNIOHandler *) nil_chk(nioHandler)) putSocketWithNSString:AndroidGovNistJavaxSipStackNIOHandler_makeKeyWithJavaNetInetAddress_withInt_(self->peerAddress_, self->peerPort_) withJavaNioChannelsSocketChannel:self->socketChannel_];
  }
  [super sendTCPMessageWithByteArray:msg withJavaNetInetAddress:self->peerAddress_ withInt:self->peerPort_ withBoolean:isClient];
}

+ (IOSByteArray *)wrapBufferIntoWebSocketFrameWithByteArray:(IOSByteArray *)buffer
                                                withBoolean:(jboolean)client {
  return AndroidGovNistJavaxSipStackNioWebSocketMessageChannel_wrapBufferIntoWebSocketFrameWithByteArray_withBoolean_(buffer, client);
}

- (void)sendWrappedWithByteArray:(IOSByteArray *)message
          withJavaNetInetAddress:(JavaNetInetAddress *)receiverAddress
                         withInt:(jint)receiverPort
                     withBoolean:(jboolean)retry {
  if (client_ && readingHttp_ && [((JavaUtilConcurrentAtomicAtomicBoolean *) nil_chk(httpClientRequestSent_)) compareAndSetWithBoolean:false withBoolean:true]) {
    NSString *http = @"null null HTTP/1.1\x0d\nHost: null \x0d\nUpgrade: websocket\x0d\nConnection: Upgrade\x0d\nSec-WebSocket-Key: dGhlIHNhbXBsZSBub25jZQ==\x0d\nSec-WebSocket-Protocol: sip\x0d\nSec-WebSocket-Version: 13\x0d\n\x0d\n";
    [super sendTCPMessageWithByteArray:[http java_getBytes] withJavaNetInetAddress:receiverAddress withInt:receiverPort withBoolean:false];
    @try {
      JavaLangThread_sleepWithLong_(150);
    }
    @catch (JavaLangInterruptedException *e) {
      [((JavaLangInterruptedException *) nil_chk(e)) printStackTrace];
    }
  }
  message = AndroidGovNistJavaxSipStackNioWebSocketMessageChannel_wrapBufferIntoWebSocketFrameWithByteArray_withBoolean_(message, client_);
  [super sendTCPMessageWithByteArray:message withJavaNetInetAddress:receiverAddress withInt:receiverPort withBoolean:retry];
}

- (void)sendMessageWithByteArray:(IOSByteArray *)message
          withJavaNetInetAddress:(JavaNetInetAddress *)receiverAddress
                         withInt:(jint)receiverPort
                     withBoolean:(jboolean)retry {
  [self sendWrappedWithByteArray:message withJavaNetInetAddress:receiverAddress withInt:receiverPort withBoolean:retry];
}

- (void)sendMessageWithAndroidGovNistJavaxSipMessageSIPMessage:(AndroidGovNistJavaxSipMessageSIPMessage *)sipMessage
                                        withJavaNetInetAddress:(JavaNetInetAddress *)receiverAddress
                                                       withInt:(jint)receiverPort {
  if ([sipMessage isKindOfClass:[AndroidGovNistJavaxSipMessageSIPRequest class]]) {
    if (client_ && [((JavaUtilConcurrentAtomicAtomicBoolean *) nil_chk(httpClientRequestSent_)) compareAndSetWithBoolean:false withBoolean:true]) {
      AndroidGovNistJavaxSipMessageSIPRequest *request = (AndroidGovNistJavaxSipMessageSIPRequest *) cast_chk(sipMessage, [AndroidGovNistJavaxSipMessageSIPRequest class]);
      id<AndroidJavaxSipAddressSipURI> requestUri = (id<AndroidJavaxSipAddressSipURI>) cast_check([((AndroidGovNistJavaxSipMessageSIPRequest *) nil_chk(request)) getRequestURI], AndroidJavaxSipAddressSipURI_class_());
      JreStrongAssign(&self->httpHostHeader_, [((id<AndroidJavaxSipAddressSipURI>) nil_chk(requestUri)) getHeaderWithNSString:@"Host"]);
      JreStrongAssign(&self->httpLocation_, [requestUri getHeaderWithNSString:@"Location"]);
      JreStrongAssign(&self->httpMethod_, [requestUri getMethodParam]);
      NSString *http = JreStrcat("$C$$$$", self->httpMethod_, ' ', self->httpLocation_, @" HTTP/1.1\x0d\nHost: ", self->httpHostHeader_, @"\x0d\nUpgrade: websocket\x0d\nConnection: Upgrade\x0d\nSec-WebSocket-Key: dGhlIHNhbXBsZSBub25jZQ==\x0d\nSec-WebSocket-Protocol: sip\x0d\nSec-WebSocket-Version: 13\x0d\n\x0d\n");
      [super sendTCPMessageWithByteArray:[http java_getBytes] withJavaNetInetAddress:receiverAddress withInt:receiverPort withBoolean:false];
      @try {
        JavaLangThread_sleepWithLong_(150);
      }
      @catch (JavaLangInterruptedException *e) {
        [((JavaLangInterruptedException *) nil_chk(e)) printStackTrace];
      }
    }
  }
  [super sendMessageWithAndroidGovNistJavaxSipMessageSIPMessage:sipMessage withJavaNetInetAddress:receiverAddress withInt:receiverPort];
}

- (instancetype)initWithJavaNetInetAddress:(JavaNetInetAddress *)inetAddress
                                   withInt:(jint)port
withAndroidGovNistJavaxSipStackSIPTransactionStack:(AndroidGovNistJavaxSipStackSIPTransactionStack *)sipStack
withAndroidGovNistJavaxSipStackNioTcpMessageProcessor:(AndroidGovNistJavaxSipStackNioTcpMessageProcessor *)nioTcpMessageProcessor {
  AndroidGovNistJavaxSipStackNioWebSocketMessageChannel_initWithJavaNetInetAddress_withInt_withAndroidGovNistJavaxSipStackSIPTransactionStack_withAndroidGovNistJavaxSipStackNioTcpMessageProcessor_(self, inetAddress, port, sipStack, nioTcpMessageProcessor);
  return self;
}

- (void)addBytesWithByteArray:(IOSByteArray *)bytes {
  NSString *s = [NSString java_stringWithBytes:bytes];
  if (readingHttp_) {
    IOSByteArray *remaining = nil;
    for (jint q = 0; q < ((IOSByteArray *) nil_chk(bytes))->size_ - 3; q++) {
      if (IOSByteArray_Get(bytes, q) == 0x000d && IOSByteArray_Get(bytes, q + 1) == 0x000a && IOSByteArray_Get(bytes, q + 2) == 0x000d && IOSByteArray_Get(bytes, q + 3) == 0x000a) {
        s = [((NSString *) nil_chk(s)) java_substring:0 endIndex:q + 4];
        remaining = [IOSByteArray arrayWithLength:bytes->size_ - q - 4];
        for (jint w = 0; w < remaining->size_; w++) {
          *IOSByteArray_GetRef(remaining, w) = IOSByteArray_Get(bytes, q + 4 + w);
        }
      }
    }
    JreStrAppendStrong(&httpInput_, "$", s);
    if ([((NSString *) nil_chk(s)) hasSuffix:@"\x0d\n"] || [s hasSuffix:@"\n"]) {
      readingHttp_ = false;
      if (![((NSString *) nil_chk(httpInput_)) hasPrefix:@"HTTP"]) {
        IOSByteArray *response = [create_AndroidGovNistJavaxSipStackWebSocketHttpHandshake_init() createHttpResponseWithNSString:s];
        [self sendNonWebSocketMessageWithByteArray:response withBoolean:false];
      }
      else {
        [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipStackNioWebSocketMessageChannel_logger)) debugWithNSString:JreStrcat("$$", @"HTTP Response. We are websocket client.\n", httpInput_)];
      }
    }
    if (remaining != nil) [self addBytesWithByteArray:remaining];
    return;
  }
  else if (!readingHttp_) {
    JavaIoByteArrayInputStream *bios = create_JavaIoByteArrayInputStream_initWithByteArray_(bytes);
    IOSByteArray *decodedMsg = nil;
    do {
      decodedMsg = [((AndroidGovNistJavaxSipStackWebSocketCodec *) nil_chk(codec_)) decodeWithJavaIoInputStream:bios];
      if ([((AndroidGovNistJavaxSipStackWebSocketCodec *) nil_chk(codec_)) isCloseOpcodeReceived]) {
        [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipStackNioWebSocketMessageChannel_logger)) debugWithNSString:@"Websocket close, sending polite close response"];
        JavaNioByteBuffer *byteBuff = JavaNioByteBuffer_wrapWithByteArray_([IOSByteArray arrayWithBytes:(jbyte[]){ (jbyte) (jint) 0x88, (jbyte) (jint) 0x00 } count:2]);
        [((JavaNioChannelsSocketChannel *) nil_chk(socketChannel_)) writeWithJavaNioByteBuffer:byteBuff];
        return;
      }
      if (decodedMsg == nil) {
        return;
      }
      [((AndroidGovNistJavaxSipParserNioPipelineParser *) nil_chk(nioParser_)) addBytesWithByteArray:decodedMsg];
      [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipStackNioWebSocketMessageChannel_logger)) debugWithNSString:JreStrcat("$I", @"Nio websocket bytes were added ", decodedMsg->size_)];
    }
    while (decodedMsg != nil);
  }
}

- (NSString *)getTransport {
  return ((AndroidGovNistJavaxSipStackMessageProcessor *) nil_chk(self->messageProcessor_))->transport_;
}

- (void)onNewSocketWithByteArray:(IOSByteArray *)message {
  [super onNewSocketWithByteArray:message];
}

- (void)processMessageWithAndroidGovNistJavaxSipMessageSIPMessage:(AndroidGovNistJavaxSipMessageSIPMessage *)message {
  if ([((AndroidGovNistJavaxSipStackSIPTransactionStack *) nil_chk(stack_)) isPatchWebSocketHeaders]) {
    if ([AndroidJavaxSipMessageRequest_class_() isInstance:message]) {
      id<AndroidJavaxSipHeaderContactHeader> contact = (id<AndroidJavaxSipHeaderContactHeader>) cast_check([((AndroidGovNistJavaxSipMessageSIPMessage *) nil_chk(message)) getHeaderWithNSString:AndroidJavaxSipHeaderContactHeader_NAME], AndroidJavaxSipHeaderContactHeader_class_());
      id<AndroidJavaxSipHeaderRecordRouteHeader> rr = (id<AndroidJavaxSipHeaderRecordRouteHeader>) cast_check([message getHeaderWithNSString:AndroidJavaxSipHeaderRecordRouteHeader_NAME], AndroidJavaxSipHeaderRecordRouteHeader_class_());
      id<AndroidJavaxSipHeaderViaHeader> via = [message getTopmostViaHeader];
      if (rr == nil) {
        if (contact != nil) {
          [self rewriteUriWithAndroidJavaxSipAddressSipURI:(id<AndroidJavaxSipAddressSipURI>) cast_check([((id<AndroidJavaxSipAddressAddress>) nil_chk([contact getAddress])) getURI], AndroidJavaxSipAddressSipURI_class_())];
        }
      }
      else {
        [self rewriteUriWithAndroidJavaxSipAddressSipURI:(id<AndroidJavaxSipAddressSipURI>) cast_check([((id<AndroidJavaxSipAddressAddress>) nil_chk([rr getAddress])) getURI], AndroidJavaxSipAddressSipURI_class_())];
      }
      NSString *viaHost = [((id<AndroidJavaxSipHeaderViaHeader>) nil_chk(via)) getHost];
      if ([((NSString *) nil_chk(viaHost)) hasSuffix:@".invalid"]) {
        [via setHostWithNSString:[self getPeerAddress]];
        [via setPortWithInt:[self getPeerPort]];
      }
    }
    else {
      id<AndroidJavaxSipHeaderContactHeader> contact = (id<AndroidJavaxSipHeaderContactHeader>) cast_check([((AndroidGovNistJavaxSipMessageSIPMessage *) nil_chk(message)) getHeaderWithNSString:AndroidJavaxSipHeaderContactHeader_NAME], AndroidJavaxSipHeaderContactHeader_class_());
      if (contact != nil) {
        [self rewriteUriWithAndroidJavaxSipAddressSipURI:(id<AndroidJavaxSipAddressSipURI>) cast_check([((id<AndroidJavaxSipAddressAddress>) nil_chk([contact getAddress])) getURI], AndroidJavaxSipAddressSipURI_class_())];
      }
    }
  }
  [super processMessageWithAndroidGovNistJavaxSipMessageSIPMessage:message];
}

- (void)rewriteUriWithAndroidJavaxSipAddressSipURI:(id<AndroidJavaxSipAddressSipURI>)uri {
  @try {
    NSString *uriHost = [((id<AndroidJavaxSipAddressSipURI>) nil_chk(uri)) getHost];
    if ([((NSString *) nil_chk(uriHost)) hasSuffix:@".invalid"]) {
      [uri setHostWithNSString:[self getPeerAddress]];
    }
  }
  @catch (JavaTextParseException *e) {
    [((id<OrgSlf4jLogger>) nil_chk(AndroidGovNistJavaxSipStackNioWebSocketMessageChannel_logger)) errorWithNSString:@"Cant parse address" withNSException:e];
  }
  [uri setPortWithInt:[self getPeerPort]];
}

- (void)dealloc {
  RELEASE_(codec_);
  RELEASE_(httpInput_);
  RELEASE_(httpClientRequestSent_);
  RELEASE_(httpHostHeader_);
  RELEASE_(httpMethod_);
  RELEASE_(httpLocation_);
  RELEASE_(stack_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LAndroidGovNistJavaxSipStackNioWebSocketMessageChannel;", 0x9, 0, 1, 2, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 3, 2, -1, -1, -1 },
    { NULL, "V", 0x4, 4, 5, 2, -1, -1, -1 },
    { NULL, "V", 0x4, 6, 5, 2, -1, -1, -1 },
    { NULL, "[B", 0x9, 7, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, 2, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 9, 2, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 10, 2, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 11, 2, -1, -1, -1 },
    { NULL, "V", 0x4, 12, 13, 14, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 15, 13, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 16, 17, 14, -1, -1, -1 },
    { NULL, "V", 0x1, 18, 19, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(createWithAndroidGovNistJavaxSipStackSIPTransactionStack:withAndroidGovNistJavaxSipStackNioWebSocketMessageProcessor:withJavaNioChannelsSocketChannel:);
  methods[1].selector = @selector(initWithAndroidGovNistJavaxSipStackSIPTransactionStack:withAndroidGovNistJavaxSipStackNioTcpMessageProcessor:withJavaNioChannelsSocketChannel:);
  methods[2].selector = @selector(sendMessageWithByteArray:withBoolean:);
  methods[3].selector = @selector(sendNonWebSocketMessageWithByteArray:withBoolean:);
  methods[4].selector = @selector(wrapBufferIntoWebSocketFrameWithByteArray:withBoolean:);
  methods[5].selector = @selector(sendWrappedWithByteArray:withJavaNetInetAddress:withInt:withBoolean:);
  methods[6].selector = @selector(sendMessageWithByteArray:withJavaNetInetAddress:withInt:withBoolean:);
  methods[7].selector = @selector(sendMessageWithAndroidGovNistJavaxSipMessageSIPMessage:withJavaNetInetAddress:withInt:);
  methods[8].selector = @selector(initWithJavaNetInetAddress:withInt:withAndroidGovNistJavaxSipStackSIPTransactionStack:withAndroidGovNistJavaxSipStackNioTcpMessageProcessor:);
  methods[9].selector = @selector(addBytesWithByteArray:);
  methods[10].selector = @selector(getTransport);
  methods[11].selector = @selector(onNewSocketWithByteArray:);
  methods[12].selector = @selector(processMessageWithAndroidGovNistJavaxSipMessageSIPMessage:);
  methods[13].selector = @selector(rewriteUriWithAndroidJavaxSipAddressSipURI:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "logger", "LOrgSlf4jLogger;", .constantValue.asLong = 0, 0xa, -1, 20, -1, -1 },
    { "codec_", "LAndroidGovNistJavaxSipStackWebSocketCodec;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "readingHttp_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "httpInput_", "LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "client_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "httpClientRequestSent_", "LJavaUtilConcurrentAtomicAtomicBoolean;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "httpHostHeader_", "LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "httpMethod_", "LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "httpLocation_", "LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "stack_", "LAndroidGovNistJavaxSipStackSIPTransactionStack;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "create", "LAndroidGovNistJavaxSipStackSIPTransactionStack;LAndroidGovNistJavaxSipStackNioWebSocketMessageProcessor;LJavaNioChannelsSocketChannel;", "LJavaIoIOException;", "LAndroidGovNistJavaxSipStackSIPTransactionStack;LAndroidGovNistJavaxSipStackNioTcpMessageProcessor;LJavaNioChannelsSocketChannel;", "sendMessage", "[BZ", "sendNonWebSocketMessage", "wrapBufferIntoWebSocketFrame", "sendWrapped", "[BLJavaNetInetAddress;IZ", "LAndroidGovNistJavaxSipMessageSIPMessage;LJavaNetInetAddress;I", "LJavaNetInetAddress;ILAndroidGovNistJavaxSipStackSIPTransactionStack;LAndroidGovNistJavaxSipStackNioTcpMessageProcessor;", "addBytes", "[B", "LJavaLangException;", "onNewSocket", "processMessage", "LAndroidGovNistJavaxSipMessageSIPMessage;", "rewriteUri", "LAndroidJavaxSipAddressSipURI;", &AndroidGovNistJavaxSipStackNioWebSocketMessageChannel_logger };
  static const J2ObjcClassInfo _AndroidGovNistJavaxSipStackNioWebSocketMessageChannel = { "NioWebSocketMessageChannel", "android.gov.nist.javax.sip.stack", ptrTable, methods, fields, 7, 0x1, 14, 10, -1, -1, -1, -1, -1 };
  return &_AndroidGovNistJavaxSipStackNioWebSocketMessageChannel;
}

+ (void)initialize {
  if (self == [AndroidGovNistJavaxSipStackNioWebSocketMessageChannel class]) {
    JreStrongAssign(&AndroidGovNistJavaxSipStackNioWebSocketMessageChannel_logger, OrgSlf4jLoggerFactory_getLoggerWithIOSClass_(AndroidGovNistJavaxSipStackNioWebSocketMessageChannel_class_()));
    J2OBJC_SET_INITIALIZED(AndroidGovNistJavaxSipStackNioWebSocketMessageChannel)
  }
}

@end

AndroidGovNistJavaxSipStackNioWebSocketMessageChannel *AndroidGovNistJavaxSipStackNioWebSocketMessageChannel_createWithAndroidGovNistJavaxSipStackSIPTransactionStack_withAndroidGovNistJavaxSipStackNioWebSocketMessageProcessor_withJavaNioChannelsSocketChannel_(AndroidGovNistJavaxSipStackSIPTransactionStack *stack, AndroidGovNistJavaxSipStackNioWebSocketMessageProcessor *nioTcpMessageProcessor, JavaNioChannelsSocketChannel *socketChannel) {
  AndroidGovNistJavaxSipStackNioWebSocketMessageChannel_initialize();
  AndroidGovNistJavaxSipStackNioWebSocketMessageChannel *retval = (AndroidGovNistJavaxSipStackNioWebSocketMessageChannel *) cast_chk([((JavaUtilHashMap *) nil_chk(JreLoadStatic(AndroidGovNistJavaxSipStackNioTcpMessageChannel, channelMap))) getWithId:socketChannel], [AndroidGovNistJavaxSipStackNioWebSocketMessageChannel class]);
  if (retval == nil) {
    retval = create_AndroidGovNistJavaxSipStackNioWebSocketMessageChannel_initWithAndroidGovNistJavaxSipStackSIPTransactionStack_withAndroidGovNistJavaxSipStackNioTcpMessageProcessor_withJavaNioChannelsSocketChannel_(stack, nioTcpMessageProcessor, socketChannel);
    [((JavaUtilHashMap *) nil_chk(JreLoadStatic(AndroidGovNistJavaxSipStackNioTcpMessageChannel, channelMap))) putWithId:socketChannel withId:retval];
  }
  return retval;
}

void AndroidGovNistJavaxSipStackNioWebSocketMessageChannel_initWithAndroidGovNistJavaxSipStackSIPTransactionStack_withAndroidGovNistJavaxSipStackNioTcpMessageProcessor_withJavaNioChannelsSocketChannel_(AndroidGovNistJavaxSipStackNioWebSocketMessageChannel *self, AndroidGovNistJavaxSipStackSIPTransactionStack *stack, AndroidGovNistJavaxSipStackNioTcpMessageProcessor *nioTcpMessageProcessor, JavaNioChannelsSocketChannel *socketChannel) {
  AndroidGovNistJavaxSipStackNioTcpMessageChannel_initWithAndroidGovNistJavaxSipStackNioTcpMessageProcessor_withJavaNioChannelsSocketChannel_(self, nioTcpMessageProcessor, socketChannel);
  JreStrongAssignAndConsume(&self->codec_, new_AndroidGovNistJavaxSipStackWebSocketCodec_initWithBoolean_withBoolean_(true, true));
  self->readingHttp_ = true;
  JreStrongAssign(&self->httpInput_, @"");
  JreStrongAssignAndConsume(&self->httpClientRequestSent_, new_JavaUtilConcurrentAtomicAtomicBoolean_initWithBoolean_(false));
  JreStrongAssign(&self->stack_, stack);
  JreStrongAssign(&self->messageProcessor_, nioTcpMessageProcessor);
  JreStrongAssign(&self->myClientInputStream_, [((JavaNetSocket *) nil_chk([((JavaNioChannelsSocketChannel *) nil_chk(socketChannel)) socket])) getInputStream]);
}

AndroidGovNistJavaxSipStackNioWebSocketMessageChannel *new_AndroidGovNistJavaxSipStackNioWebSocketMessageChannel_initWithAndroidGovNistJavaxSipStackSIPTransactionStack_withAndroidGovNistJavaxSipStackNioTcpMessageProcessor_withJavaNioChannelsSocketChannel_(AndroidGovNistJavaxSipStackSIPTransactionStack *stack, AndroidGovNistJavaxSipStackNioTcpMessageProcessor *nioTcpMessageProcessor, JavaNioChannelsSocketChannel *socketChannel) {
  J2OBJC_NEW_IMPL(AndroidGovNistJavaxSipStackNioWebSocketMessageChannel, initWithAndroidGovNistJavaxSipStackSIPTransactionStack_withAndroidGovNistJavaxSipStackNioTcpMessageProcessor_withJavaNioChannelsSocketChannel_, stack, nioTcpMessageProcessor, socketChannel)
}

AndroidGovNistJavaxSipStackNioWebSocketMessageChannel *create_AndroidGovNistJavaxSipStackNioWebSocketMessageChannel_initWithAndroidGovNistJavaxSipStackSIPTransactionStack_withAndroidGovNistJavaxSipStackNioTcpMessageProcessor_withJavaNioChannelsSocketChannel_(AndroidGovNistJavaxSipStackSIPTransactionStack *stack, AndroidGovNistJavaxSipStackNioTcpMessageProcessor *nioTcpMessageProcessor, JavaNioChannelsSocketChannel *socketChannel) {
  J2OBJC_CREATE_IMPL(AndroidGovNistJavaxSipStackNioWebSocketMessageChannel, initWithAndroidGovNistJavaxSipStackSIPTransactionStack_withAndroidGovNistJavaxSipStackNioTcpMessageProcessor_withJavaNioChannelsSocketChannel_, stack, nioTcpMessageProcessor, socketChannel)
}

IOSByteArray *AndroidGovNistJavaxSipStackNioWebSocketMessageChannel_wrapBufferIntoWebSocketFrameWithByteArray_withBoolean_(IOSByteArray *buffer, jboolean client) {
  AndroidGovNistJavaxSipStackNioWebSocketMessageChannel_initialize();
  @try {
    return AndroidGovNistJavaxSipStackWebSocketCodec_encodeWithByteArray_withInt_withBoolean_withBoolean_(buffer, 0, true, client);
  }
  @catch (JavaLangException *e) {
    [((JavaLangException *) nil_chk(e)) printStackTrace];
  }
  return nil;
}

void AndroidGovNistJavaxSipStackNioWebSocketMessageChannel_initWithJavaNetInetAddress_withInt_withAndroidGovNistJavaxSipStackSIPTransactionStack_withAndroidGovNistJavaxSipStackNioTcpMessageProcessor_(AndroidGovNistJavaxSipStackNioWebSocketMessageChannel *self, JavaNetInetAddress *inetAddress, jint port, AndroidGovNistJavaxSipStackSIPTransactionStack *sipStack, AndroidGovNistJavaxSipStackNioTcpMessageProcessor *nioTcpMessageProcessor) {
  AndroidGovNistJavaxSipStackNioTcpMessageChannel_initWithJavaNetInetAddress_withInt_withAndroidGovNistJavaxSipStackSIPTransactionStack_withAndroidGovNistJavaxSipStackNioTcpMessageProcessor_(self, inetAddress, port, sipStack, nioTcpMessageProcessor);
  JreStrongAssignAndConsume(&self->codec_, new_AndroidGovNistJavaxSipStackWebSocketCodec_initWithBoolean_withBoolean_(true, true));
  self->readingHttp_ = true;
  JreStrongAssign(&self->httpInput_, @"");
  JreStrongAssignAndConsume(&self->httpClientRequestSent_, new_JavaUtilConcurrentAtomicAtomicBoolean_initWithBoolean_(false));
  self->client_ = true;
  JreStrongAssign(&self->stack_, sipStack);
  JreStrongAssignAndConsume(&self->codec_, new_AndroidGovNistJavaxSipStackWebSocketCodec_initWithBoolean_withBoolean_(false, true));
}

AndroidGovNistJavaxSipStackNioWebSocketMessageChannel *new_AndroidGovNistJavaxSipStackNioWebSocketMessageChannel_initWithJavaNetInetAddress_withInt_withAndroidGovNistJavaxSipStackSIPTransactionStack_withAndroidGovNistJavaxSipStackNioTcpMessageProcessor_(JavaNetInetAddress *inetAddress, jint port, AndroidGovNistJavaxSipStackSIPTransactionStack *sipStack, AndroidGovNistJavaxSipStackNioTcpMessageProcessor *nioTcpMessageProcessor) {
  J2OBJC_NEW_IMPL(AndroidGovNistJavaxSipStackNioWebSocketMessageChannel, initWithJavaNetInetAddress_withInt_withAndroidGovNistJavaxSipStackSIPTransactionStack_withAndroidGovNistJavaxSipStackNioTcpMessageProcessor_, inetAddress, port, sipStack, nioTcpMessageProcessor)
}

AndroidGovNistJavaxSipStackNioWebSocketMessageChannel *create_AndroidGovNistJavaxSipStackNioWebSocketMessageChannel_initWithJavaNetInetAddress_withInt_withAndroidGovNistJavaxSipStackSIPTransactionStack_withAndroidGovNistJavaxSipStackNioTcpMessageProcessor_(JavaNetInetAddress *inetAddress, jint port, AndroidGovNistJavaxSipStackSIPTransactionStack *sipStack, AndroidGovNistJavaxSipStackNioTcpMessageProcessor *nioTcpMessageProcessor) {
  J2OBJC_CREATE_IMPL(AndroidGovNistJavaxSipStackNioWebSocketMessageChannel, initWithJavaNetInetAddress_withInt_withAndroidGovNistJavaxSipStackSIPTransactionStack_withAndroidGovNistJavaxSipStackNioTcpMessageProcessor_, inetAddress, port, sipStack, nioTcpMessageProcessor)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidGovNistJavaxSipStackNioWebSocketMessageChannel)