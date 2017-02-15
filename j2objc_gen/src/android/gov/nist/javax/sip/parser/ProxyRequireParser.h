//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/parser/ProxyRequireParser.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidGovNistJavaxSipParserProxyRequireParser")
#ifdef RESTRICT_AndroidGovNistJavaxSipParserProxyRequireParser
#define INCLUDE_ALL_AndroidGovNistJavaxSipParserProxyRequireParser 0
#else
#define INCLUDE_ALL_AndroidGovNistJavaxSipParserProxyRequireParser 1
#endif
#undef RESTRICT_AndroidGovNistJavaxSipParserProxyRequireParser

#if !defined (AndroidGovNistJavaxSipParserProxyRequireParser_) && (INCLUDE_ALL_AndroidGovNistJavaxSipParserProxyRequireParser || defined(INCLUDE_AndroidGovNistJavaxSipParserProxyRequireParser))
#define AndroidGovNistJavaxSipParserProxyRequireParser_

#define RESTRICT_AndroidGovNistJavaxSipParserHeaderParser 1
#define INCLUDE_AndroidGovNistJavaxSipParserHeaderParser 1
#include "android/gov/nist/javax/sip/parser/HeaderParser.h"

@class AndroidGovNistJavaxSipHeaderSIPHeader;
@class AndroidGovNistJavaxSipParserLexer;

@interface AndroidGovNistJavaxSipParserProxyRequireParser : AndroidGovNistJavaxSipParserHeaderParser

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)require;

- (AndroidGovNistJavaxSipHeaderSIPHeader *)parse;

#pragma mark Protected

- (instancetype)initWithAndroidGovNistJavaxSipParserLexer:(AndroidGovNistJavaxSipParserLexer *)lexer;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidGovNistJavaxSipParserProxyRequireParser)

FOUNDATION_EXPORT void AndroidGovNistJavaxSipParserProxyRequireParser_initWithNSString_(AndroidGovNistJavaxSipParserProxyRequireParser *self, NSString *require);

FOUNDATION_EXPORT AndroidGovNistJavaxSipParserProxyRequireParser *new_AndroidGovNistJavaxSipParserProxyRequireParser_initWithNSString_(NSString *require) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipParserProxyRequireParser *create_AndroidGovNistJavaxSipParserProxyRequireParser_initWithNSString_(NSString *require);

FOUNDATION_EXPORT void AndroidGovNistJavaxSipParserProxyRequireParser_initWithAndroidGovNistJavaxSipParserLexer_(AndroidGovNistJavaxSipParserProxyRequireParser *self, AndroidGovNistJavaxSipParserLexer *lexer);

FOUNDATION_EXPORT AndroidGovNistJavaxSipParserProxyRequireParser *new_AndroidGovNistJavaxSipParserProxyRequireParser_initWithAndroidGovNistJavaxSipParserLexer_(AndroidGovNistJavaxSipParserLexer *lexer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSipParserProxyRequireParser *create_AndroidGovNistJavaxSipParserProxyRequireParser_initWithAndroidGovNistJavaxSipParserLexer_(AndroidGovNistJavaxSipParserLexer *lexer);

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSipParserProxyRequireParser)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidGovNistJavaxSipParserProxyRequireParser")