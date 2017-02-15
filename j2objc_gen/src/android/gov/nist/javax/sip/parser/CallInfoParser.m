//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/parser/CallInfoParser.java
//

#include "J2ObjC_source.h"
#include "android/gov/nist/core/LexerCore.h"
#include "android/gov/nist/core/ParserCore.h"
#include "android/gov/nist/core/Token.h"
#include "android/gov/nist/javax/sip/address/GenericURI.h"
#include "android/gov/nist/javax/sip/header/CallInfo.h"
#include "android/gov/nist/javax/sip/header/CallInfoList.h"
#include "android/gov/nist/javax/sip/header/SIPHeader.h"
#include "android/gov/nist/javax/sip/header/SIPHeaderNames.h"
#include "android/gov/nist/javax/sip/parser/CallInfoParser.h"
#include "android/gov/nist/javax/sip/parser/Lexer.h"
#include "android/gov/nist/javax/sip/parser/ParametersParser.h"
#include "android/gov/nist/javax/sip/parser/TokenTypes.h"
#include "android/gov/nist/javax/sip/parser/URLParser.h"

@implementation AndroidGovNistJavaxSipParserCallInfoParser

- (instancetype)initWithNSString:(NSString *)callInfo {
  AndroidGovNistJavaxSipParserCallInfoParser_initWithNSString_(self, callInfo);
  return self;
}

- (instancetype)initWithAndroidGovNistJavaxSipParserLexer:(AndroidGovNistJavaxSipParserLexer *)lexer {
  AndroidGovNistJavaxSipParserCallInfoParser_initWithAndroidGovNistJavaxSipParserLexer_(self, lexer);
  return self;
}

- (AndroidGovNistJavaxSipHeaderSIPHeader *)parse {
  if (JreLoadStatic(AndroidGovNistCoreParserCore, debug)) [self dbg_enterWithNSString:@"CallInfoParser.parse"];
  AndroidGovNistJavaxSipHeaderCallInfoList *list = create_AndroidGovNistJavaxSipHeaderCallInfoList_init();
  @try {
    [self headerNameWithInt:AndroidGovNistJavaxSipParserTokenTypes_CALL_INFO];
    while ([((AndroidGovNistCoreLexerCore *) nil_chk(lexer_)) lookAheadWithInt:0] != 0x000a) {
      AndroidGovNistJavaxSipHeaderCallInfo *callInfo = create_AndroidGovNistJavaxSipHeaderCallInfo_init();
      [callInfo setHeaderNameWithNSString:AndroidGovNistJavaxSipHeaderSIPHeaderNames_CALL_INFO];
      [((AndroidGovNistCoreLexerCore *) nil_chk(self->lexer_)) SPorHT];
      [((AndroidGovNistCoreLexerCore *) nil_chk(self->lexer_)) matchWithInt:'<'];
      AndroidGovNistJavaxSipParserURLParser *urlParser = create_AndroidGovNistJavaxSipParserURLParser_initWithAndroidGovNistJavaxSipParserLexer_((AndroidGovNistJavaxSipParserLexer *) cast_chk(self->lexer_, [AndroidGovNistJavaxSipParserLexer class]));
      AndroidGovNistJavaxSipAddressGenericURI *uri = [urlParser uriReferenceWithBoolean:true];
      [callInfo setInfoWithAndroidJavaxSipAddressURI:uri];
      [((AndroidGovNistCoreLexerCore *) nil_chk(self->lexer_)) matchWithInt:'>'];
      [((AndroidGovNistCoreLexerCore *) nil_chk(self->lexer_)) SPorHT];
      [super parseWithAndroidGovNistJavaxSipHeaderParametersHeader:callInfo];
      [list addWithId:callInfo];
      while ([((AndroidGovNistCoreLexerCore *) nil_chk(lexer_)) lookAheadWithInt:0] == ',') {
        [((AndroidGovNistCoreLexerCore *) nil_chk(self->lexer_)) matchWithInt:','];
        [((AndroidGovNistCoreLexerCore *) nil_chk(self->lexer_)) SPorHT];
        callInfo = create_AndroidGovNistJavaxSipHeaderCallInfo_init();
        [((AndroidGovNistCoreLexerCore *) nil_chk(self->lexer_)) SPorHT];
        [((AndroidGovNistCoreLexerCore *) nil_chk(self->lexer_)) matchWithInt:'<'];
        urlParser = create_AndroidGovNistJavaxSipParserURLParser_initWithAndroidGovNistJavaxSipParserLexer_((AndroidGovNistJavaxSipParserLexer *) cast_chk(self->lexer_, [AndroidGovNistJavaxSipParserLexer class]));
        uri = [urlParser uriReferenceWithBoolean:true];
        [callInfo setInfoWithAndroidJavaxSipAddressURI:uri];
        [((AndroidGovNistCoreLexerCore *) nil_chk(self->lexer_)) matchWithInt:'>'];
        [((AndroidGovNistCoreLexerCore *) nil_chk(self->lexer_)) SPorHT];
        [super parseWithAndroidGovNistJavaxSipHeaderParametersHeader:callInfo];
        [list addWithId:callInfo];
      }
    }
    return list;
  }
  @finally {
    if (JreLoadStatic(AndroidGovNistCoreParserCore, debug)) [self dbg_leaveWithNSString:@"CallInfoParser.parse"];
  }
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
  static const J2ObjcClassInfo _AndroidGovNistJavaxSipParserCallInfoParser = { "CallInfoParser", "android.gov.nist.javax.sip.parser", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_AndroidGovNistJavaxSipParserCallInfoParser;
}

@end

void AndroidGovNistJavaxSipParserCallInfoParser_initWithNSString_(AndroidGovNistJavaxSipParserCallInfoParser *self, NSString *callInfo) {
  AndroidGovNistJavaxSipParserParametersParser_initWithNSString_(self, callInfo);
}

AndroidGovNistJavaxSipParserCallInfoParser *new_AndroidGovNistJavaxSipParserCallInfoParser_initWithNSString_(NSString *callInfo) {
  J2OBJC_NEW_IMPL(AndroidGovNistJavaxSipParserCallInfoParser, initWithNSString_, callInfo)
}

AndroidGovNistJavaxSipParserCallInfoParser *create_AndroidGovNistJavaxSipParserCallInfoParser_initWithNSString_(NSString *callInfo) {
  J2OBJC_CREATE_IMPL(AndroidGovNistJavaxSipParserCallInfoParser, initWithNSString_, callInfo)
}

void AndroidGovNistJavaxSipParserCallInfoParser_initWithAndroidGovNistJavaxSipParserLexer_(AndroidGovNistJavaxSipParserCallInfoParser *self, AndroidGovNistJavaxSipParserLexer *lexer) {
  AndroidGovNistJavaxSipParserParametersParser_initWithAndroidGovNistJavaxSipParserLexer_(self, lexer);
}

AndroidGovNistJavaxSipParserCallInfoParser *new_AndroidGovNistJavaxSipParserCallInfoParser_initWithAndroidGovNistJavaxSipParserLexer_(AndroidGovNistJavaxSipParserLexer *lexer) {
  J2OBJC_NEW_IMPL(AndroidGovNistJavaxSipParserCallInfoParser, initWithAndroidGovNistJavaxSipParserLexer_, lexer)
}

AndroidGovNistJavaxSipParserCallInfoParser *create_AndroidGovNistJavaxSipParserCallInfoParser_initWithAndroidGovNistJavaxSipParserLexer_(AndroidGovNistJavaxSipParserLexer *lexer) {
  J2OBJC_CREATE_IMPL(AndroidGovNistJavaxSipParserCallInfoParser, initWithAndroidGovNistJavaxSipParserLexer_, lexer)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidGovNistJavaxSipParserCallInfoParser)