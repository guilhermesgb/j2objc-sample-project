//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/javax/sip/header/TooManyHopsException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidJavaxSipHeaderTooManyHopsException")
#ifdef RESTRICT_AndroidJavaxSipHeaderTooManyHopsException
#define INCLUDE_ALL_AndroidJavaxSipHeaderTooManyHopsException 0
#else
#define INCLUDE_ALL_AndroidJavaxSipHeaderTooManyHopsException 1
#endif
#undef RESTRICT_AndroidJavaxSipHeaderTooManyHopsException

#if !defined (AndroidJavaxSipHeaderTooManyHopsException_) && (INCLUDE_ALL_AndroidJavaxSipHeaderTooManyHopsException || defined(INCLUDE_AndroidJavaxSipHeaderTooManyHopsException))
#define AndroidJavaxSipHeaderTooManyHopsException_

#define RESTRICT_AndroidJavaxSipSipException 1
#define INCLUDE_AndroidJavaxSipSipException 1
#include "android/javax/sip/SipException.h"

@interface AndroidJavaxSipHeaderTooManyHopsException : AndroidJavaxSipSipException

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)message;

- (instancetype)initWithNSString:(NSString *)message
                 withNSException:(NSException *)cause;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidJavaxSipHeaderTooManyHopsException)

FOUNDATION_EXPORT void AndroidJavaxSipHeaderTooManyHopsException_init(AndroidJavaxSipHeaderTooManyHopsException *self);

FOUNDATION_EXPORT AndroidJavaxSipHeaderTooManyHopsException *new_AndroidJavaxSipHeaderTooManyHopsException_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidJavaxSipHeaderTooManyHopsException *create_AndroidJavaxSipHeaderTooManyHopsException_init();

FOUNDATION_EXPORT void AndroidJavaxSipHeaderTooManyHopsException_initWithNSString_(AndroidJavaxSipHeaderTooManyHopsException *self, NSString *message);

FOUNDATION_EXPORT AndroidJavaxSipHeaderTooManyHopsException *new_AndroidJavaxSipHeaderTooManyHopsException_initWithNSString_(NSString *message) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidJavaxSipHeaderTooManyHopsException *create_AndroidJavaxSipHeaderTooManyHopsException_initWithNSString_(NSString *message);

FOUNDATION_EXPORT void AndroidJavaxSipHeaderTooManyHopsException_initWithNSString_withNSException_(AndroidJavaxSipHeaderTooManyHopsException *self, NSString *message, NSException *cause);

FOUNDATION_EXPORT AndroidJavaxSipHeaderTooManyHopsException *new_AndroidJavaxSipHeaderTooManyHopsException_initWithNSString_withNSException_(NSString *message, NSException *cause) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidJavaxSipHeaderTooManyHopsException *create_AndroidJavaxSipHeaderTooManyHopsException_initWithNSString_withNSException_(NSString *message, NSException *cause);

J2OBJC_TYPE_LITERAL_HEADER(AndroidJavaxSipHeaderTooManyHopsException)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidJavaxSipHeaderTooManyHopsException")