//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sdp/parser/SessionNameFieldParser.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "android/gov/nist/core/LexerCore.h"
#include "android/gov/nist/core/Token.h"
#include "android/gov/nist/javax/sdp/fields/SDPField.h"
#include "android/gov/nist/javax/sdp/fields/SessionNameField.h"
#include "android/gov/nist/javax/sdp/parser/Lexer.h"
#include "android/gov/nist/javax/sdp/parser/SDPParser.h"
#include "android/gov/nist/javax/sdp/parser/SessionNameFieldParser.h"
#include "java/io/PrintStream.h"
#include "java/lang/Exception.h"
#include "java/lang/System.h"
#include "java/text/ParseException.h"

@implementation AndroidGovNistJavaxSdpParserSessionNameFieldParser

- (instancetype)initWithNSString:(NSString *)sessionNameField {
  AndroidGovNistJavaxSdpParserSessionNameFieldParser_initWithNSString_(self, sessionNameField);
  return self;
}

- (AndroidGovNistJavaxSdpFieldsSessionNameField *)sessionNameField {
  @try {
    [((AndroidGovNistCoreLexerCore *) nil_chk(self->lexer_)) matchWithInt:'s'];
    [((AndroidGovNistCoreLexerCore *) nil_chk(self->lexer_)) SPorHT];
    [((AndroidGovNistCoreLexerCore *) nil_chk(self->lexer_)) matchWithInt:'='];
    [((AndroidGovNistCoreLexerCore *) nil_chk(self->lexer_)) SPorHT];
    AndroidGovNistJavaxSdpFieldsSessionNameField *sessionNameField = create_AndroidGovNistJavaxSdpFieldsSessionNameField_init();
    NSString *rest = [((AndroidGovNistCoreLexerCore *) nil_chk(lexer_)) getRest];
    [sessionNameField setSessionNameWithNSString:rest == nil ? @"" : [rest java_trim]];
    return sessionNameField;
  }
  @catch (JavaLangException *e) {
    @throw [((AndroidGovNistCoreLexerCore *) nil_chk(lexer_)) createParseException];
  }
}

- (AndroidGovNistJavaxSdpFieldsSDPField *)parse {
  return [self sessionNameField];
}

+ (void)mainWithNSStringArray:(IOSObjectArray *)args {
  AndroidGovNistJavaxSdpParserSessionNameFieldParser_mainWithNSStringArray_(args);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LAndroidGovNistJavaxSdpFieldsSessionNameField;", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "LAndroidGovNistJavaxSdpFieldsSDPField;", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x9, 2, 3, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(sessionNameField);
  methods[2].selector = @selector(parse);
  methods[3].selector = @selector(mainWithNSStringArray:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LNSString;", "LJavaTextParseException;", "main", "[LNSString;" };
  static const J2ObjcClassInfo _AndroidGovNistJavaxSdpParserSessionNameFieldParser = { "SessionNameFieldParser", "android.gov.nist.javax.sdp.parser", ptrTable, methods, NULL, 7, 0x1, 4, 0, -1, -1, -1, -1, -1 };
  return &_AndroidGovNistJavaxSdpParserSessionNameFieldParser;
}

@end

void AndroidGovNistJavaxSdpParserSessionNameFieldParser_initWithNSString_(AndroidGovNistJavaxSdpParserSessionNameFieldParser *self, NSString *sessionNameField) {
  AndroidGovNistJavaxSdpParserSDPParser_init(self);
  JreStrongAssignAndConsume(&self->lexer_, new_AndroidGovNistJavaxSdpParserLexer_initWithNSString_withNSString_(@"charLexer", sessionNameField));
}

AndroidGovNistJavaxSdpParserSessionNameFieldParser *new_AndroidGovNistJavaxSdpParserSessionNameFieldParser_initWithNSString_(NSString *sessionNameField) {
  J2OBJC_NEW_IMPL(AndroidGovNistJavaxSdpParserSessionNameFieldParser, initWithNSString_, sessionNameField)
}

AndroidGovNistJavaxSdpParserSessionNameFieldParser *create_AndroidGovNistJavaxSdpParserSessionNameFieldParser_initWithNSString_(NSString *sessionNameField) {
  J2OBJC_CREATE_IMPL(AndroidGovNistJavaxSdpParserSessionNameFieldParser, initWithNSString_, sessionNameField)
}

void AndroidGovNistJavaxSdpParserSessionNameFieldParser_mainWithNSStringArray_(IOSObjectArray *args) {
  AndroidGovNistJavaxSdpParserSessionNameFieldParser_initialize();
  IOSObjectArray *session = [IOSObjectArray arrayWithObjects:(id[]){ @"s=SDP Seminar \n", @"s= Session SDP\n" } count:2 type:NSString_class_()];
  for (jint i = 0; i < session->size_; i++) {
    AndroidGovNistJavaxSdpParserSessionNameFieldParser *sessionNameFieldParser = create_AndroidGovNistJavaxSdpParserSessionNameFieldParser_initWithNSString_(IOSObjectArray_Get(session, i));
    AndroidGovNistJavaxSdpFieldsSessionNameField *sessionNameField = [sessionNameFieldParser sessionNameField];
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$", @"encoded: ", [((AndroidGovNistJavaxSdpFieldsSessionNameField *) nil_chk(sessionNameField)) encode])];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidGovNistJavaxSdpParserSessionNameFieldParser)