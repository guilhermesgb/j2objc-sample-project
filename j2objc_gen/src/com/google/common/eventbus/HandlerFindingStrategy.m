//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lib/guava-14.0.1-sources.jar!com/google/common/eventbus/HandlerFindingStrategy.java
//

#include "J2ObjC_source.h"
#include "com/google/common/eventbus/HandlerFindingStrategy.h"

@interface ComGoogleCommonEventbusHandlerFindingStrategy : NSObject

@end

#line 1 "com/google/common/eventbus/HandlerFindingStrategy.java"


#line 27
@implementation ComGoogleCommonEventbusHandlerFindingStrategy

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LComGoogleCommonCollectMultimap;", 0x401, 0, 1, -1, 2, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(findAllHandlersWithId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "findAllHandlers", "LNSObject;", "(Ljava/lang/Object;)Lcom/google/common/collect/Multimap<Ljava/lang/Class<*>;Lcom/google/common/eventbus/EventHandler;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonEventbusHandlerFindingStrategy = { "HandlerFindingStrategy", "com.google.common.eventbus", ptrTable, methods, NULL, 7, 0x608, 1, 0, -1, -1, -1, -1, -1 };
  return &_ComGoogleCommonEventbusHandlerFindingStrategy;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComGoogleCommonEventbusHandlerFindingStrategy)