//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/parser/extensions/JoinParser.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidGovNistJavaxSipParserExtensionsJoinParser")
#ifdef RESTRICT_AndroidGovNistJavaxSipParserExtensionsJoinParser
#define INCLUDE_ALL_AndroidGovNistJavaxSipParserExtensionsJoinParser 0
#else
#define INCLUDE_ALL_AndroidGovNistJavaxSipParserExtensionsJoinParser 1
#endif
#undef RESTRICT_AndroidGovNistJavaxSipParserExtensionsJoinParser

#if !defined (AndroidGovNistJavaxSipParserExtensionsJoinParser_) && (INCLUDE_ALL_AndroidGovNistJavaxSipParserExtensionsJoinParser || defined(INCLUDE_AndroidGovNistJavaxSipParserExtensionsJoinParser))
#define AndroidGovNistJavaxSipParserExtensionsJoinParser_

#define RESTRICT_AndroidGovNistJavaxSipParserParametersParser 1
#define INCLUDE_AndroidGovNistJavaxSipParserParametersParser 1
#include "android/gov/nist/javax/sip/parser/ParametersParser.h"

@class AndroidGovNistJavaxSipHeaderSIPHeader;
@class AndroidGovNistJavaxSipParserLexer;
@class IOSObjectArray;

@interface AndroidGovNistJavaxSipParserExtensionsJoinParser : AndroidGovNistJavaxSipParserParametersParser

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)callID;

+ (void)mainWithNSStringArray:(IOSObjectArray *)args;

- (AndroidGovNistJavaxSipHeaderSIPHeader *)parse;

#pragma mark Protected

- (instancetype)initWithAndroidGovNistJavaxSipParserLexer:(AndroidGovNistJavaxSipParserLexer *)lexer;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidGovNistJavaxSipParserExtensionsJoinParser)

FOUNDATION_EXPORT void AndroidGovNistJavaxSipParserExtensionsJoinParser_initWithNSString_(AndroidGovNistJavaxSipParserExtensionsJoinParser *self, NSString *callID);

FOUNDATION_EXPORT AndroidGovNistJavaxSipParserExtensionsJoinParser *new_AndroidGovNistJavaxSipParserExtensionsJoinParser_initWithNSString_(NSString *callID) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipParserExtensionsJoinParser *create_AndroidGovNistJavaxSipParserExtensionsJoinParser_initWithNSString_(NSString *callID);

FOUNDATION_EXPORT void AndroidGovNistJavaxSipParserExtensionsJoinParser_initWithAndroidGovNistJavaxSipParserLexer_(AndroidGovNistJavaxSipParserExtensionsJoinParser *self, AndroidGovNistJavaxSipParserLexer *lexer);

FOUNDATION_EXPORT AndroidGovNistJavaxSipParserExtensionsJoinParser *new_AndroidGovNistJavaxSipParserExtensionsJoinParser_initWithAndroidGovNistJavaxSipParserLexer_(AndroidGovNistJavaxSipParserLexer *lexer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipParserExtensionsJoinParser *create_AndroidGovNistJavaxSipParserExtensionsJoinParser_initWithAndroidGovNistJavaxSipParserLexer_(AndroidGovNistJavaxSipParserLexer *lexer);

FOUNDATION_EXPORT void AndroidGovNistJavaxSipParserExtensionsJoinParser_mainWithNSStringArray_(IOSObjectArray *args);

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSipParserExtensionsJoinParser)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidGovNistJavaxSipParserExtensionsJoinParser")