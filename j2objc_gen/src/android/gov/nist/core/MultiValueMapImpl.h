//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/core/MultiValueMapImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidGovNistCoreMultiValueMapImpl")
#ifdef RESTRICT_AndroidGovNistCoreMultiValueMapImpl
#define INCLUDE_ALL_AndroidGovNistCoreMultiValueMapImpl 0
#else
#define INCLUDE_ALL_AndroidGovNistCoreMultiValueMapImpl 1
#endif
#undef RESTRICT_AndroidGovNistCoreMultiValueMapImpl

#if !defined (AndroidGovNistCoreMultiValueMapImpl_) && (INCLUDE_ALL_AndroidGovNistCoreMultiValueMapImpl || defined(INCLUDE_AndroidGovNistCoreMultiValueMapImpl))
#define AndroidGovNistCoreMultiValueMapImpl_

#define RESTRICT_JavaUtilMap 1
#define INCLUDE_JavaUtilMap 1
#include "java/util/Map.h"

@class JavaUtilHashMap;
@protocol JavaUtilCollection;
@protocol JavaUtilFunctionBiConsumer;
@protocol JavaUtilFunctionBiFunction;
@protocol JavaUtilFunctionFunction;
@protocol JavaUtilList;
@protocol JavaUtilSet;

@interface AndroidGovNistCoreMultiValueMapImpl : NSObject < JavaUtilMap, NSCopying >

#pragma mark Public

- (instancetype)init;

- (void)clear;

- (id)java_clone;

- (id<JavaUtilList>)computeIfAbsentWithId:(NSString *)arg0
             withJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg1;

- (id<JavaUtilList>)computeIfPresentWithId:(NSString *)arg0
            withJavaUtilFunctionBiFunction:(id<JavaUtilFunctionBiFunction>)arg1;

- (id<JavaUtilList>)computeWithId:(NSString *)arg0
   withJavaUtilFunctionBiFunction:(id<JavaUtilFunctionBiFunction>)arg1;

- (jboolean)containsKeyWithId:(id)key;

- (jboolean)containsValueWithId:(id)value;

- (id<JavaUtilSet>)entrySet;

- (id<JavaUtilList>)getWithId:(id)key;

- (JavaUtilHashMap *)getMap;

- (id<JavaUtilList>)getOrDefaultWithId:(id)arg0
                                withId:(id<JavaUtilList>)arg1;

- (jboolean)isEmpty;

- (id<JavaUtilSet>)keySet;

- (id<JavaUtilList>)mergeWithId:(NSString *)arg0
                         withId:(id<JavaUtilList>)arg1
 withJavaUtilFunctionBiFunction:(id<JavaUtilFunctionBiFunction>)arg2;

- (id<JavaUtilList>)putWithId:(NSString *)key
                       withId:(id<JavaUtilList>)value;

- (id<JavaUtilList>)putWithNSString:(NSString *)key
                             withId:(id)value;

- (void)putAllWithJavaUtilMap:(id<JavaUtilMap>)mapToPut;

- (id<JavaUtilList>)putIfAbsentWithId:(NSString *)arg0
                               withId:(id<JavaUtilList>)arg1;

- (id<JavaUtilList>)removeWithId:(id)key;

- (id)removeWithNSString:(NSString *)key
                  withId:(id)item;

- (id<JavaUtilList>)replaceWithId:(NSString *)arg0
                           withId:(id<JavaUtilList>)arg1;

- (jint)size;

- (id<JavaUtilCollection>)values;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidGovNistCoreMultiValueMapImpl)

FOUNDATION_EXPORT void AndroidGovNistCoreMultiValueMapImpl_init(AndroidGovNistCoreMultiValueMapImpl *self);

FOUNDATION_EXPORT AndroidGovNistCoreMultiValueMapImpl *new_AndroidGovNistCoreMultiValueMapImpl_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistCoreMultiValueMapImpl *create_AndroidGovNistCoreMultiValueMapImpl_init();

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistCoreMultiValueMapImpl)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidGovNistCoreMultiValueMapImpl")