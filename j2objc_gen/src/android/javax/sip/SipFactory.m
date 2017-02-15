//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/javax/sip/SipFactory.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "android/javax/sip/PeerUnavailableException.h"
#include "android/javax/sip/SipFactory.h"
#include "android/javax/sip/SipStack.h"
#include "android/javax/sip/address/AddressFactory.h"
#include "android/javax/sip/header/HeaderFactory.h"
#include "android/javax/sip/message/MessageFactory.h"
#include "java/lang/Exception.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/reflect/Constructor.h"
#include "java/util/Hashtable.h"
#include "java/util/LinkedList.h"
#include "java/util/Properties.h"
#include "org/slf4j/Logger.h"
#include "org/slf4j/LoggerFactory.h"

@interface AndroidJavaxSipSipFactory () {
 @public
  NSString *pathName_;
  JavaUtilHashtable *sipStackByName_;
  id<AndroidJavaxSipMessageMessageFactory> messageFactory_;
  id<AndroidJavaxSipHeaderHeaderFactory> headerFactory_;
  id<AndroidJavaxSipAddressAddressFactory> addressFactory_;
  JavaUtilLinkedList *sipStackList_;
}

- (id)createSipFactoryWithNSString:(NSString *)objectClassName;

- (id<AndroidJavaxSipSipStack>)createStackWithJavaUtilProperties:(JavaUtilProperties *)properties;

- (instancetype)init;

@end

J2OBJC_FIELD_SETTER(AndroidJavaxSipSipFactory, pathName_, NSString *)
J2OBJC_FIELD_SETTER(AndroidJavaxSipSipFactory, sipStackByName_, JavaUtilHashtable *)
J2OBJC_FIELD_SETTER(AndroidJavaxSipSipFactory, messageFactory_, id<AndroidJavaxSipMessageMessageFactory>)
J2OBJC_FIELD_SETTER(AndroidJavaxSipSipFactory, headerFactory_, id<AndroidJavaxSipHeaderHeaderFactory>)
J2OBJC_FIELD_SETTER(AndroidJavaxSipSipFactory, addressFactory_, id<AndroidJavaxSipAddressAddressFactory>)
J2OBJC_FIELD_SETTER(AndroidJavaxSipSipFactory, sipStackList_, JavaUtilLinkedList *)

inline id<OrgSlf4jLogger> AndroidJavaxSipSipFactory_get_LOGGER();
static id<OrgSlf4jLogger> AndroidJavaxSipSipFactory_LOGGER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(AndroidJavaxSipSipFactory, LOGGER, id<OrgSlf4jLogger>)

inline AndroidJavaxSipSipFactory *AndroidJavaxSipSipFactory_get_myFactory();
inline AndroidJavaxSipSipFactory *AndroidJavaxSipSipFactory_set_myFactory(AndroidJavaxSipSipFactory *value);
static AndroidJavaxSipSipFactory *AndroidJavaxSipSipFactory_myFactory;
J2OBJC_STATIC_FIELD_OBJ(AndroidJavaxSipSipFactory, myFactory, AndroidJavaxSipSipFactory *)

__attribute__((unused)) static id AndroidJavaxSipSipFactory_createSipFactoryWithNSString_(AndroidJavaxSipSipFactory *self, NSString *objectClassName);

__attribute__((unused)) static id<AndroidJavaxSipSipStack> AndroidJavaxSipSipFactory_createStackWithJavaUtilProperties_(AndroidJavaxSipSipFactory *self, JavaUtilProperties *properties);

__attribute__((unused)) static void AndroidJavaxSipSipFactory_init(AndroidJavaxSipSipFactory *self);

__attribute__((unused)) static AndroidJavaxSipSipFactory *new_AndroidJavaxSipSipFactory_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static AndroidJavaxSipSipFactory *create_AndroidJavaxSipSipFactory_init();

J2OBJC_INITIALIZED_DEFN(AndroidJavaxSipSipFactory)

@implementation AndroidJavaxSipSipFactory

+ (AndroidJavaxSipSipFactory *)getInstance {
  return AndroidJavaxSipSipFactory_getInstance();
}

- (id<AndroidJavaxSipSipStack>)createSipStackWithJavaUtilProperties:(JavaUtilProperties *)properties {
  @synchronized(self) {
    NSString *ipAddress = [((JavaUtilProperties *) nil_chk(properties)) getPropertyWithNSString:@"android.javax.sip.IP_ADDRESS"];
    NSString *name = [properties getPropertyWithNSString:@"android.javax.sip.STACK_NAME"];
    [((id<OrgSlf4jLogger>) nil_chk(AndroidJavaxSipSipFactory_LOGGER)) debugWithNSString:JreStrcat("$$", @"SipStack: createSipStack(Properties properties) - ipAddress:", (ipAddress != nil ? ipAddress : @"null"))];
    [AndroidJavaxSipSipFactory_LOGGER debugWithNSString:JreStrcat("$$", @"SipStack: createSipStack(Properties properties) - name:", (name != nil ? name : @"null"))];
    if (name == nil) @throw create_AndroidJavaxSipPeerUnavailableException_initWithNSString_(@"Missing android.javax.sip.STACK_NAME property");
    if (ipAddress == nil) {
      id<AndroidJavaxSipSipStack> mySipStack = (id<AndroidJavaxSipSipStack>) cast_check([((JavaUtilHashtable *) nil_chk(self->sipStackByName_)) getWithId:name], AndroidJavaxSipSipStack_class_());
      if (mySipStack == nil) {
        mySipStack = AndroidJavaxSipSipFactory_createStackWithJavaUtilProperties_(self, properties);
      }
      return mySipStack;
    }
    else {
      jint i = 0;
      for (i = 0; i < [((JavaUtilLinkedList *) nil_chk(sipStackList_)) size]; i++) {
        if ([((NSString *) nil_chk([((id<AndroidJavaxSipSipStack>) nil_chk(((id<AndroidJavaxSipSipStack>) cast_check([sipStackList_ getWithInt:i], AndroidJavaxSipSipStack_class_())))) getIPAddress])) isEqual:ipAddress]) {
          return (id<AndroidJavaxSipSipStack>) cast_check([sipStackList_ getWithInt:i], AndroidJavaxSipSipStack_class_());
        }
      }
      return AndroidJavaxSipSipFactory_createStackWithJavaUtilProperties_(self, properties);
    }
  }
}

- (id<AndroidJavaxSipMessageMessageFactory>)createMessageFactory {
  if (messageFactory_ == nil) {
    JreStrongAssign(&messageFactory_, (id<AndroidJavaxSipMessageMessageFactory>) cast_check(AndroidJavaxSipSipFactory_createSipFactoryWithNSString_(self, @"javax.sip.message.MessageFactoryImpl"), AndroidJavaxSipMessageMessageFactory_class_()));
  }
  return messageFactory_;
}

- (id<AndroidJavaxSipHeaderHeaderFactory>)createHeaderFactory {
  if (headerFactory_ == nil) {
    JreStrongAssign(&headerFactory_, (id<AndroidJavaxSipHeaderHeaderFactory>) cast_check(AndroidJavaxSipSipFactory_createSipFactoryWithNSString_(self, @"javax.sip.header.HeaderFactoryImpl"), AndroidJavaxSipHeaderHeaderFactory_class_()));
  }
  return headerFactory_;
}

- (id<AndroidJavaxSipAddressAddressFactory>)createAddressFactory {
  if (addressFactory_ == nil) {
    JreStrongAssign(&addressFactory_, (id<AndroidJavaxSipAddressAddressFactory>) cast_check(AndroidJavaxSipSipFactory_createSipFactoryWithNSString_(self, @"javax.sip.address.AddressFactoryImpl"), AndroidJavaxSipAddressAddressFactory_class_()));
  }
  return addressFactory_;
}

- (void)setPathNameWithNSString:(NSString *)pathName {
  JreStrongAssign(&self->pathName_, pathName);
}

- (NSString *)getPathName {
  return pathName_;
}

- (void)resetFactory {
  [((JavaUtilLinkedList *) nil_chk(sipStackList_)) clear];
  JreStrongAssign(&messageFactory_, nil);
  JreStrongAssign(&headerFactory_, nil);
  JreStrongAssign(&addressFactory_, nil);
  JreStrongAssignAndConsume(&sipStackByName_, new_JavaUtilHashtable_init());
  JreStrongAssign(&pathName_, @"gov.nist");
}

- (id)createSipFactoryWithNSString:(NSString *)objectClassName {
  return AndroidJavaxSipSipFactory_createSipFactoryWithNSString_(self, objectClassName);
}

- (id<AndroidJavaxSipSipStack>)createStackWithJavaUtilProperties:(JavaUtilProperties *)properties {
  return AndroidJavaxSipSipFactory_createStackWithJavaUtilProperties_(self, properties);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  AndroidJavaxSipSipFactory_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)dealloc {
  RELEASE_(pathName_);
  RELEASE_(sipStackByName_);
  RELEASE_(messageFactory_);
  RELEASE_(headerFactory_);
  RELEASE_(addressFactory_);
  RELEASE_(sipStackList_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LAndroidJavaxSipSipFactory;", 0x29, -1, -1, -1, -1, -1, -1 },
    { NULL, "LAndroidJavaxSipSipStack;", 0x21, 0, 1, 2, -1, -1, -1 },
    { NULL, "LAndroidJavaxSipMessageMessageFactory;", 0x1, -1, -1, 2, -1, -1, -1 },
    { NULL, "LAndroidJavaxSipHeaderHeaderFactory;", 0x1, -1, -1, 2, -1, -1, -1 },
    { NULL, "LAndroidJavaxSipAddressAddressFactory;", 0x1, -1, -1, 2, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x2, 5, 4, 2, -1, -1, -1 },
    { NULL, "LAndroidJavaxSipSipStack;", 0x2, 6, 1, 2, -1, -1, -1 },
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(getInstance);
  methods[1].selector = @selector(createSipStackWithJavaUtilProperties:);
  methods[2].selector = @selector(createMessageFactory);
  methods[3].selector = @selector(createHeaderFactory);
  methods[4].selector = @selector(createAddressFactory);
  methods[5].selector = @selector(setPathNameWithNSString:);
  methods[6].selector = @selector(getPathName);
  methods[7].selector = @selector(resetFactory);
  methods[8].selector = @selector(createSipFactoryWithNSString:);
  methods[9].selector = @selector(createStackWithJavaUtilProperties:);
  methods[10].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "LOGGER", "LOrgSlf4jLogger;", .constantValue.asLong = 0, 0x1a, -1, 7, -1, -1 },
    { "pathName_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "sipStackByName_", "LJavaUtilHashtable;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "messageFactory_", "LAndroidJavaxSipMessageMessageFactory;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "headerFactory_", "LAndroidJavaxSipHeaderHeaderFactory;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "addressFactory_", "LAndroidJavaxSipAddressAddressFactory;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "myFactory", "LAndroidJavaxSipSipFactory;", .constantValue.asLong = 0, 0xa, -1, 8, -1, -1 },
    { "sipStackList_", "LJavaUtilLinkedList;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "createSipStack", "LJavaUtilProperties;", "LAndroidJavaxSipPeerUnavailableException;", "setPathName", "LNSString;", "createSipFactory", "createStack", &AndroidJavaxSipSipFactory_LOGGER, &AndroidJavaxSipSipFactory_myFactory };
  static const J2ObjcClassInfo _AndroidJavaxSipSipFactory = { "SipFactory", "android.javax.sip", ptrTable, methods, fields, 7, 0x1, 11, 8, -1, -1, -1, -1, -1 };
  return &_AndroidJavaxSipSipFactory;
}

+ (void)initialize {
  if (self == [AndroidJavaxSipSipFactory class]) {
    JreStrongAssign(&AndroidJavaxSipSipFactory_LOGGER, OrgSlf4jLoggerFactory_getLoggerWithIOSClass_(AndroidJavaxSipSipFactory_class_()));
    JreStrongAssign(&AndroidJavaxSipSipFactory_myFactory, nil);
    J2OBJC_SET_INITIALIZED(AndroidJavaxSipSipFactory)
  }
}

@end

AndroidJavaxSipSipFactory *AndroidJavaxSipSipFactory_getInstance() {
  AndroidJavaxSipSipFactory_initialize();
  @synchronized(AndroidJavaxSipSipFactory_class_()) {
    if (AndroidJavaxSipSipFactory_myFactory == nil) {
      JreStrongAssignAndConsume(&AndroidJavaxSipSipFactory_myFactory, new_AndroidJavaxSipSipFactory_init());
    }
    return AndroidJavaxSipSipFactory_myFactory;
  }
}

id AndroidJavaxSipSipFactory_createSipFactoryWithNSString_(AndroidJavaxSipSipFactory *self, NSString *objectClassName) {
  if (objectClassName == nil) {
    @throw create_JavaLangNullPointerException_init();
  }
  @try {
    IOSClass *peerObjectClass = IOSClass_forName_(JreStrcat("$C$", [self getPathName], '.', objectClassName));
    id newPeerObject = [((IOSClass *) nil_chk(peerObjectClass)) newInstance];
    return (newPeerObject);
  }
  @catch (JavaLangException *e) {
    NSString *errmsg = JreStrcat("$$C$$", @"The Peer Factory: ", [self getPathName], '.', objectClassName, @" could not be instantiated. Ensure the Path Name has been set.");
    @throw create_AndroidJavaxSipPeerUnavailableException_initWithNSString_withNSException_(errmsg, e);
  }
}

id<AndroidJavaxSipSipStack> AndroidJavaxSipSipFactory_createStackWithJavaUtilProperties_(AndroidJavaxSipSipFactory *self, JavaUtilProperties *properties) {
  @try {
    IOSObjectArray *paramTypes = [IOSObjectArray arrayWithLength:1 type:IOSClass_class_()];
    IOSObjectArray_Set(paramTypes, 0, IOSClass_forName_(@"java.util.Properties"));
    JavaLangReflectConstructor *sipStackConstructor = [((IOSClass *) nil_chk(IOSClass_forName_(JreStrcat("$$", [self getPathName], @".javax.sip.SipStackImpl")))) getConstructor:paramTypes];
    IOSObjectArray *conArgs = [IOSObjectArray arrayWithLength:1 type:NSObject_class_()];
    IOSObjectArray_Set(conArgs, 0, properties);
    id<AndroidJavaxSipSipStack> sipStack = (id<AndroidJavaxSipSipStack>) cast_check([((JavaLangReflectConstructor *) nil_chk(sipStackConstructor)) newInstanceWithNSObjectArray:conArgs], AndroidJavaxSipSipStack_class_());
    [((JavaUtilLinkedList *) nil_chk(self->sipStackList_)) addWithId:sipStack];
    NSString *name = [((JavaUtilProperties *) nil_chk(properties)) getPropertyWithNSString:@"android.javax.sip.STACK_NAME"];
    [((JavaUtilHashtable *) nil_chk(self->sipStackByName_)) putWithId:name withId:sipStack];
    return sipStack;
  }
  @catch (JavaLangException *e) {
    NSString *errmsg = JreStrcat("$$$", @"The Peer SIP Stack: ", [self getPathName], @".javax.sip.SipStackImpl could not be instantiated. Ensure the Path Name has been set.");
    @throw create_AndroidJavaxSipPeerUnavailableException_initWithNSString_withNSException_(errmsg, e);
  }
}

void AndroidJavaxSipSipFactory_init(AndroidJavaxSipSipFactory *self) {
  NSObject_init(self);
  JreStrongAssign(&self->pathName_, @"android.gov.nist");
  JreStrongAssign(&self->messageFactory_, nil);
  JreStrongAssign(&self->headerFactory_, nil);
  JreStrongAssign(&self->addressFactory_, nil);
  JreStrongAssignAndConsume(&self->sipStackList_, new_JavaUtilLinkedList_init());
  JreStrongAssignAndConsume(&self->sipStackByName_, new_JavaUtilHashtable_init());
}

AndroidJavaxSipSipFactory *new_AndroidJavaxSipSipFactory_init() {
  J2OBJC_NEW_IMPL(AndroidJavaxSipSipFactory, init)
}

AndroidJavaxSipSipFactory *create_AndroidJavaxSipSipFactory_init() {
  J2OBJC_CREATE_IMPL(AndroidJavaxSipSipFactory, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidJavaxSipSipFactory)