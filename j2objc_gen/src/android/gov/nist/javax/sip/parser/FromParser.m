//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/parser/FromParser.java
//

#include "J2ObjC_source.h"
#include "android/gov/nist/core/LexerCore.h"
#include "android/gov/nist/core/Token.h"
#include "android/gov/nist/javax/sip/header/From.h"
#include "android/gov/nist/javax/sip/header/SIPHeader.h"
#include "android/gov/nist/javax/sip/parser/AddressParametersParser.h"
#include "android/gov/nist/javax/sip/parser/FromParser.h"
#include "android/gov/nist/javax/sip/parser/Lexer.h"
#include "android/gov/nist/javax/sip/parser/TokenTypes.h"

@implementation AndroidGovNistJavaxSipParserFromParser

- (instancetype)initWithNSString:(NSString *)from {
  AndroidGovNistJavaxSipParserFromParser_initWithNSString_(self, from);
  return self;
}

- (instancetype)initWithAndroidGovNistJavaxSipParserLexer:(AndroidGovNistJavaxSipParserLexer *)lexer {
  AndroidGovNistJavaxSipParserFromParser_initWithAndroidGovNistJavaxSipParserLexer_(self, lexer);
  return self;
}

- (AndroidGovNistJavaxSipHeaderSIPHeader *)parse {
  AndroidGovNistJavaxSipHeaderFrom *from = create_AndroidGovNistJavaxSipHeaderFrom_init();
  [self headerNameWithInt:AndroidGovNistJavaxSipParserTokenTypes_FROM];
  [super parseWithAndroidGovNistJavaxSipHeaderAddressParametersHeader:from];
  [((AndroidGovNistCoreLexerCore *) nil_chk(self->lexer_)) matchWithInt:0x000a];
  return from;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 1, -1, -1, -1, -1 },
    { NULL, "LAndroidGovNistJavaxSipHeaderSIPHeader;", 0x1, -1, -1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(initWithAndroidGovNistJavaxSipParserLexer:);
  methods[2].selector = @selector(parse);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LNSString;", "LAndroidGovNistJavaxSipParserLexer;", "LJavaTextParseException;" };
  static const J2ObjcClassInfo _AndroidGovNistJavaxSipParserFromParser = { "FromParser", "android.gov.nist.javax.sip.parser", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_AndroidGovNistJavaxSipParserFromParser;
}

@end

void AndroidGovNistJavaxSipParserFromParser_initWithNSString_(AndroidGovNistJavaxSipParserFromParser *self, NSString *from) {
  AndroidGovNistJavaxSipParserAddressParametersParser_initWithNSString_(self, from);
}

AndroidGovNistJavaxSipParserFromParser *new_AndroidGovNistJavaxSipParserFromParser_initWithNSString_(NSString *from) {
  J2OBJC_NEW_IMPL(AndroidGovNistJavaxSipParserFromParser, initWithNSString_, from)
}

AndroidGovNistJavaxSipParserFromParser *create_AndroidGovNistJavaxSipParserFromParser_initWithNSString_(NSString *from) {
  J2OBJC_CREATE_IMPL(AndroidGovNistJavaxSipParserFromParser, initWithNSString_, from)
}

void AndroidGovNistJavaxSipParserFromParser_initWithAndroidGovNistJavaxSipParserLexer_(AndroidGovNistJavaxSipParserFromParser *self, AndroidGovNistJavaxSipParserLexer *lexer) {
  AndroidGovNistJavaxSipParserAddressParametersParser_initWithAndroidGovNistJavaxSipParserLexer_(self, lexer);
}

AndroidGovNistJavaxSipParserFromParser *new_AndroidGovNistJavaxSipParserFromParser_initWithAndroidGovNistJavaxSipParserLexer_(AndroidGovNistJavaxSipParserLexer *lexer) {
  J2OBJC_NEW_IMPL(AndroidGovNistJavaxSipParserFromParser, initWithAndroidGovNistJavaxSipParserLexer_, lexer)
}

AndroidGovNistJavaxSipParserFromParser *create_AndroidGovNistJavaxSipParserFromParser_initWithAndroidGovNistJavaxSipParserLexer_(AndroidGovNistJavaxSipParserLexer *lexer) {
  J2OBJC_CREATE_IMPL(AndroidGovNistJavaxSipParserFromParser, initWithAndroidGovNistJavaxSipParserLexer_, lexer)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidGovNistJavaxSipParserFromParser)