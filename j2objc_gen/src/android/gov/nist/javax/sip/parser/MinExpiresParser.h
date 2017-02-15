//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/parser/MinExpiresParser.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidGovNistJavaxSipParserMinExpiresParser")
#ifdef RESTRICT_AndroidGovNistJavaxSipParserMinExpiresParser
#define INCLUDE_ALL_AndroidGovNistJavaxSipParserMinExpiresParser 0
#else
#define INCLUDE_ALL_AndroidGovNistJavaxSipParserMinExpiresParser 1
#endif
#undef RESTRICT_AndroidGovNistJavaxSipParserMinExpiresParser

#if !defined (AndroidGovNistJavaxSipParserMinExpiresParser_) && (INCLUDE_ALL_AndroidGovNistJavaxSipParserMinExpiresParser || defined(INCLUDE_AndroidGovNistJavaxSipParserMinExpiresParser))
#define AndroidGovNistJavaxSipParserMinExpiresParser_

#define RESTRICT_AndroidGovNistJavaxSipParserHeaderParser 1
#define INCLUDE_AndroidGovNistJavaxSipParserHeaderParser 1
#include "android/gov/nist/javax/sip/parser/HeaderParser.h"

@class AndroidGovNistJavaxSipHeaderSIPHeader;
@class AndroidGovNistJavaxSipParserLexer;

@interface AndroidGovNistJavaxSipParserMinExpiresParser : AndroidGovNistJavaxSipParserHeaderParser

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)minExpires;

- (AndroidGovNistJavaxSipHeaderSIPHeader *)parse;

#pragma mark Protected

- (instancetype)initWithAndroidGovNistJavaxSipParserLexer:(AndroidGovNistJavaxSipParserLexer *)lexer;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidGovNistJavaxSipParserMinExpiresParser)

FOUNDATION_EXPORT void AndroidGovNistJavaxSipParserMinExpiresParser_initWithNSString_(AndroidGovNistJavaxSipParserMinExpiresParser *self, NSString *minExpires);

FOUNDATION_EXPORT AndroidGovNistJavaxSipParserMinExpiresParser *new_AndroidGovNistJavaxSipParserMinExpiresParser_initWithNSString_(NSString *minExpires) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipParserMinExpiresParser *create_AndroidGovNistJavaxSipParserMinExpiresParser_initWithNSString_(NSString *minExpires);

FOUNDATION_EXPORT void AndroidGovNistJavaxSipParserMinExpiresParser_initWithAndroidGovNistJavaxSipParserLexer_(AndroidGovNistJavaxSipParserMinExpiresParser *self, AndroidGovNistJavaxSipParserLexer *lexer);

FOUNDATION_EXPORT AndroidGovNistJavaxSipParserMinExpiresParser *new_AndroidGovNistJavaxSipParserMinExpiresParser_initWithAndroidGovNistJavaxSipParserLexer_(AndroidGovNistJavaxSipParserLexer *lexer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipParserMinExpiresParser *create_AndroidGovNistJavaxSipParserMinExpiresParser_initWithAndroidGovNistJavaxSipParserLexer_(AndroidGovNistJavaxSipParserLexer *lexer);

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSipParserMinExpiresParser)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidGovNistJavaxSipParserMinExpiresParser")