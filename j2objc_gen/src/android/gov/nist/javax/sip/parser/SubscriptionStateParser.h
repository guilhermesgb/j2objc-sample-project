//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/parser/SubscriptionStateParser.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidGovNistJavaxSipParserSubscriptionStateParser")
#ifdef RESTRICT_AndroidGovNistJavaxSipParserSubscriptionStateParser
#define INCLUDE_ALL_AndroidGovNistJavaxSipParserSubscriptionStateParser 0
#else
#define INCLUDE_ALL_AndroidGovNistJavaxSipParserSubscriptionStateParser 1
#endif
#undef RESTRICT_AndroidGovNistJavaxSipParserSubscriptionStateParser

#if !defined (AndroidGovNistJavaxSipParserSubscriptionStateParser_) && (INCLUDE_ALL_AndroidGovNistJavaxSipParserSubscriptionStateParser || defined(INCLUDE_AndroidGovNistJavaxSipParserSubscriptionStateParser))
#define AndroidGovNistJavaxSipParserSubscriptionStateParser_

#define RESTRICT_AndroidGovNistJavaxSipParserHeaderParser 1
#define INCLUDE_AndroidGovNistJavaxSipParserHeaderParser 1
#include "android/gov/nist/javax/sip/parser/HeaderParser.h"

@class AndroidGovNistJavaxSipHeaderSIPHeader;
@class AndroidGovNistJavaxSipParserLexer;

@interface AndroidGovNistJavaxSipParserSubscriptionStateParser : AndroidGovNistJavaxSipParserHeaderParser

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)subscriptionState;

- (AndroidGovNistJavaxSipHeaderSIPHeader *)parse;

#pragma mark Protected

- (instancetype)initWithAndroidGovNistJavaxSipParserLexer:(AndroidGovNistJavaxSipParserLexer *)lexer;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidGovNistJavaxSipParserSubscriptionStateParser)

FOUNDATION_EXPORT void AndroidGovNistJavaxSipParserSubscriptionStateParser_initWithNSString_(AndroidGovNistJavaxSipParserSubscriptionStateParser *self, NSString *subscriptionState);

FOUNDATION_EXPORT AndroidGovNistJavaxSipParserSubscriptionStateParser *new_AndroidGovNistJavaxSipParserSubscriptionStateParser_initWithNSString_(NSString *subscriptionState) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipParserSubscriptionStateParser *create_AndroidGovNistJavaxSipParserSubscriptionStateParser_initWithNSString_(NSString *subscriptionState);

FOUNDATION_EXPORT void AndroidGovNistJavaxSipParserSubscriptionStateParser_initWithAndroidGovNistJavaxSipParserLexer_(AndroidGovNistJavaxSipParserSubscriptionStateParser *self, AndroidGovNistJavaxSipParserLexer *lexer);

FOUNDATION_EXPORT AndroidGovNistJavaxSipParserSubscriptionStateParser *new_AndroidGovNistJavaxSipParserSubscriptionStateParser_initWithAndroidGovNistJavaxSipParserLexer_(AndroidGovNistJavaxSipParserLexer *lexer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipParserSubscriptionStateParser *create_AndroidGovNistJavaxSipParserSubscriptionStateParser_initWithAndroidGovNistJavaxSipParserLexer_(AndroidGovNistJavaxSipParserLexer *lexer);

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSipParserSubscriptionStateParser)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidGovNistJavaxSipParserSubscriptionStateParser")