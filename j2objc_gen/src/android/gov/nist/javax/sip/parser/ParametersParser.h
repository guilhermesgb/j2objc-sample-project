//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/parser/ParametersParser.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidGovNistJavaxSipParserParametersParser")
#ifdef RESTRICT_AndroidGovNistJavaxSipParserParametersParser
#define INCLUDE_ALL_AndroidGovNistJavaxSipParserParametersParser 0
#else
#define INCLUDE_ALL_AndroidGovNistJavaxSipParserParametersParser 1
#endif
#undef RESTRICT_AndroidGovNistJavaxSipParserParametersParser

#if !defined (AndroidGovNistJavaxSipParserParametersParser_) && (INCLUDE_ALL_AndroidGovNistJavaxSipParserParametersParser || defined(INCLUDE_AndroidGovNistJavaxSipParserParametersParser))
#define AndroidGovNistJavaxSipParserParametersParser_

#define RESTRICT_AndroidGovNistJavaxSipParserHeaderParser 1
#define INCLUDE_AndroidGovNistJavaxSipParserHeaderParser 1
#include "android/gov/nist/javax/sip/parser/HeaderParser.h"

@class AndroidGovNistJavaxSipHeaderParametersHeader;
@class AndroidGovNistJavaxSipParserLexer;

@interface AndroidGovNistJavaxSipParserParametersParser : AndroidGovNistJavaxSipParserHeaderParser

#pragma mark Protected

- (instancetype)initWithAndroidGovNistJavaxSipParserLexer:(AndroidGovNistJavaxSipParserLexer *)lexer;

- (instancetype)initWithNSString:(NSString *)buffer;

- (void)parseWithAndroidGovNistJavaxSipHeaderParametersHeader:(AndroidGovNistJavaxSipHeaderParametersHeader *)parametersHeader;

- (void)parseNameValueListWithAndroidGovNistJavaxSipHeaderParametersHeader:(AndroidGovNistJavaxSipHeaderParametersHeader *)parametersHeader;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidGovNistJavaxSipParserParametersParser)

FOUNDATION_EXPORT void AndroidGovNistJavaxSipParserParametersParser_initWithAndroidGovNistJavaxSipParserLexer_(AndroidGovNistJavaxSipParserParametersParser *self, AndroidGovNistJavaxSipParserLexer *lexer);

FOUNDATION_EXPORT void AndroidGovNistJavaxSipParserParametersParser_initWithNSString_(AndroidGovNistJavaxSipParserParametersParser *self, NSString *buffer);

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSipParserParametersParser)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidGovNistJavaxSipParserParametersParser")