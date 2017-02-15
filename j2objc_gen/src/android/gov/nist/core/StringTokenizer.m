//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/core/StringTokenizer.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "android/gov/nist/core/Separators.h"
#include "android/gov/nist/core/StringTokenizer.h"
#include "java/lang/Character.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/text/ParseException.h"
#include "java/util/Vector.h"

@implementation AndroidGovNistCoreStringTokenizer

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  AndroidGovNistCoreStringTokenizer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)buffer {
  AndroidGovNistCoreStringTokenizer_initWithNSString_(self, buffer);
  return self;
}

- (NSString *)nextToken {
  jint startIdx = ptr_;
  while (ptr_ < bufferLen_) {
    jchar c = IOSCharArray_Get(nil_chk(buffer_), ptr_);
    ptr_++;
    if (c == 0x000a) {
      break;
    }
  }
  return NSString_java_valueOfChars_offset_count_(buffer_, startIdx, ptr_ - startIdx);
}

- (jboolean)hasMoreChars {
  return ptr_ < bufferLen_;
}

+ (jboolean)isHexDigitWithChar:(jchar)ch {
  return AndroidGovNistCoreStringTokenizer_isHexDigitWithChar_(ch);
}

+ (jboolean)isAlphaWithChar:(jchar)ch {
  return AndroidGovNistCoreStringTokenizer_isAlphaWithChar_(ch);
}

+ (jboolean)isDigitWithChar:(jchar)ch {
  return AndroidGovNistCoreStringTokenizer_isDigitWithChar_(ch);
}

+ (jboolean)isAlphaDigitWithChar:(jchar)ch {
  return AndroidGovNistCoreStringTokenizer_isAlphaDigitWithChar_(ch);
}

- (NSString *)getLine {
  jint startIdx = ptr_;
  while (ptr_ < bufferLen_ && IOSCharArray_Get(nil_chk(buffer_), ptr_) != 0x000a) {
    ptr_++;
  }
  if (ptr_ < bufferLen_ && IOSCharArray_Get(nil_chk(buffer_), ptr_) == 0x000a) {
    ptr_++;
  }
  return NSString_java_valueOfChars_offset_count_(buffer_, startIdx, ptr_ - startIdx);
}

- (NSString *)peekLine {
  jint curPos = ptr_;
  NSString *retval = [self getLine];
  ptr_ = curPos;
  return retval;
}

- (jchar)lookAhead {
  return [self lookAheadWithInt:0];
}

- (jchar)lookAheadWithInt:(jint)k {
  @try {
    return IOSCharArray_Get(nil_chk(buffer_), ptr_ + k);
  }
  @catch (JavaLangIndexOutOfBoundsException *e) {
    return 0x0000;
  }
}

- (jchar)getNextChar {
  if (ptr_ >= bufferLen_) @throw create_JavaTextParseException_initWithNSString_withInt_(JreStrcat("@$", buffer_, @" getNextChar: End of buffer"), ptr_);
  else return IOSCharArray_Get(nil_chk(buffer_), ptr_++);
}

- (void)consume {
  ptr_ = savedPtr_;
}

- (void)consumeWithInt:(jint)k {
  ptr_ += k;
}

- (JavaUtilVector *)getLines {
  JavaUtilVector *result = create_JavaUtilVector_init();
  while ([self hasMoreChars]) {
    NSString *line = [self getLine];
    [result addElementWithId:line];
  }
  return result;
}

- (NSString *)getNextTokenWithChar:(jchar)delim {
  jint startIdx = ptr_;
  while (true) {
    jchar la = [self lookAheadWithInt:0];
    if (la == delim) break;
    else if (la == 0x0000) @throw create_JavaTextParseException_initWithNSString_withInt_(@"EOL reached", 0);
    [self consumeWithInt:1];
  }
  return NSString_java_valueOfChars_offset_count_(buffer_, startIdx, ptr_ - startIdx);
}

+ (NSString *)getSDPFieldNameWithNSString:(NSString *)line {
  return AndroidGovNistCoreStringTokenizer_getSDPFieldNameWithNSString_(line);
}

- (void)dealloc {
  RELEASE_(buffer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 1, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 3, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 4, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 5, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "C", 0x1, -1, -1, 6, -1, -1, -1 },
    { NULL, "C", 0x1, 7, 8, 6, -1, -1, -1 },
    { NULL, "C", 0x1, -1, -1, 6, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 8, -1, -1, -1, -1 },
    { NULL, "LJavaUtilVector;", 0x1, -1, -1, -1, 10, -1, -1 },
    { NULL, "LNSString;", 0x1, 11, 2, 6, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 12, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithNSString:);
  methods[2].selector = @selector(nextToken);
  methods[3].selector = @selector(hasMoreChars);
  methods[4].selector = @selector(isHexDigitWithChar:);
  methods[5].selector = @selector(isAlphaWithChar:);
  methods[6].selector = @selector(isDigitWithChar:);
  methods[7].selector = @selector(isAlphaDigitWithChar:);
  methods[8].selector = @selector(getLine);
  methods[9].selector = @selector(peekLine);
  methods[10].selector = @selector(lookAhead);
  methods[11].selector = @selector(lookAheadWithInt:);
  methods[12].selector = @selector(getNextChar);
  methods[13].selector = @selector(consume);
  methods[14].selector = @selector(consumeWithInt:);
  methods[15].selector = @selector(getLines);
  methods[16].selector = @selector(getNextTokenWithChar:);
  methods[17].selector = @selector(getSDPFieldNameWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "buffer_", "[C", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "bufferLen_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "ptr_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "savedPtr_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "isHexDigit", "C", "isAlpha", "isDigit", "isAlphaDigit", "LJavaTextParseException;", "lookAhead", "I", "consume", "()Ljava/util/Vector<Ljava/lang/String;>;", "getNextToken", "getSDPFieldName" };
  static const J2ObjcClassInfo _AndroidGovNistCoreStringTokenizer = { "StringTokenizer", "android.gov.nist.core", ptrTable, methods, fields, 7, 0x1, 18, 4, -1, -1, -1, -1, -1 };
  return &_AndroidGovNistCoreStringTokenizer;
}

@end

void AndroidGovNistCoreStringTokenizer_init(AndroidGovNistCoreStringTokenizer *self) {
  NSObject_init(self);
}

AndroidGovNistCoreStringTokenizer *new_AndroidGovNistCoreStringTokenizer_init() {
  J2OBJC_NEW_IMPL(AndroidGovNistCoreStringTokenizer, init)
}

AndroidGovNistCoreStringTokenizer *create_AndroidGovNistCoreStringTokenizer_init() {
  J2OBJC_CREATE_IMPL(AndroidGovNistCoreStringTokenizer, init)
}

void AndroidGovNistCoreStringTokenizer_initWithNSString_(AndroidGovNistCoreStringTokenizer *self, NSString *buffer) {
  NSObject_init(self);
  JreStrongAssign(&self->buffer_, [((NSString *) nil_chk(buffer)) java_toCharArray]);
  self->bufferLen_ = ((jint) [buffer length]);
  self->ptr_ = 0;
}

AndroidGovNistCoreStringTokenizer *new_AndroidGovNistCoreStringTokenizer_initWithNSString_(NSString *buffer) {
  J2OBJC_NEW_IMPL(AndroidGovNistCoreStringTokenizer, initWithNSString_, buffer)
}

AndroidGovNistCoreStringTokenizer *create_AndroidGovNistCoreStringTokenizer_initWithNSString_(NSString *buffer) {
  J2OBJC_CREATE_IMPL(AndroidGovNistCoreStringTokenizer, initWithNSString_, buffer)
}

jboolean AndroidGovNistCoreStringTokenizer_isHexDigitWithChar_(jchar ch) {
  AndroidGovNistCoreStringTokenizer_initialize();
  return (ch >= 'A' && ch <= 'F') || (ch >= 'a' && ch <= 'f') || AndroidGovNistCoreStringTokenizer_isDigitWithChar_(ch);
}

jboolean AndroidGovNistCoreStringTokenizer_isAlphaWithChar_(jchar ch) {
  AndroidGovNistCoreStringTokenizer_initialize();
  if (ch <= 127) {
    return ((ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z'));
  }
  else {
    return JavaLangCharacter_isLowerCaseWithChar_(ch) || JavaLangCharacter_isUpperCaseWithChar_(ch);
  }
}

jboolean AndroidGovNistCoreStringTokenizer_isDigitWithChar_(jchar ch) {
  AndroidGovNistCoreStringTokenizer_initialize();
  if (ch <= 127) {
    return (ch <= '9' && ch >= '0');
  }
  else {
    return JavaLangCharacter_isDigitWithChar_(ch);
  }
}

jboolean AndroidGovNistCoreStringTokenizer_isAlphaDigitWithChar_(jchar ch) {
  AndroidGovNistCoreStringTokenizer_initialize();
  if (ch <= 127) {
    return (ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z') || (ch <= '9' && ch >= '0');
  }
  else {
    return JavaLangCharacter_isLowerCaseWithChar_(ch) || JavaLangCharacter_isUpperCaseWithChar_(ch) || JavaLangCharacter_isDigitWithChar_(ch);
  }
}

NSString *AndroidGovNistCoreStringTokenizer_getSDPFieldNameWithNSString_(NSString *line) {
  AndroidGovNistCoreStringTokenizer_initialize();
  if (line == nil) return nil;
  NSString *fieldName = nil;
  @try {
    jint begin = [line java_indexOfString:AndroidGovNistCoreSeparators_EQUALS];
    fieldName = [line java_substring:0 endIndex:begin];
  }
  @catch (JavaLangIndexOutOfBoundsException *e) {
    return nil;
  }
  return fieldName;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidGovNistCoreStringTokenizer)