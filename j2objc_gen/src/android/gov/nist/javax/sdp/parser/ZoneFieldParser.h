//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sdp/parser/ZoneFieldParser.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidGovNistJavaxSdpParserZoneFieldParser")
#ifdef RESTRICT_AndroidGovNistJavaxSdpParserZoneFieldParser
#define INCLUDE_ALL_AndroidGovNistJavaxSdpParserZoneFieldParser 0
#else
#define INCLUDE_ALL_AndroidGovNistJavaxSdpParserZoneFieldParser 1
#endif
#undef RESTRICT_AndroidGovNistJavaxSdpParserZoneFieldParser

#if !defined (AndroidGovNistJavaxSdpParserZoneFieldParser_) && (INCLUDE_ALL_AndroidGovNistJavaxSdpParserZoneFieldParser || defined(INCLUDE_AndroidGovNistJavaxSdpParserZoneFieldParser))
#define AndroidGovNistJavaxSdpParserZoneFieldParser_

#define RESTRICT_AndroidGovNistJavaxSdpParserSDPParser 1
#define INCLUDE_AndroidGovNistJavaxSdpParserSDPParser 1
#include "android/gov/nist/javax/sdp/parser/SDPParser.h"

@class AndroidGovNistJavaxSdpFieldsSDPField;
@class AndroidGovNistJavaxSdpFieldsTypedTime;
@class AndroidGovNistJavaxSdpFieldsZoneField;

@interface AndroidGovNistJavaxSdpParserZoneFieldParser : AndroidGovNistJavaxSdpParserSDPParser

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)zoneField;

- (NSString *)getSignWithNSString:(NSString *)tokenValue;

- (AndroidGovNistJavaxSdpFieldsTypedTime *)getTypedTimeWithNSString:(NSString *)tokenValue;

- (AndroidGovNistJavaxSdpFieldsSDPField *)parse;

- (AndroidGovNistJavaxSdpFieldsZoneField *)zoneField;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidGovNistJavaxSdpParserZoneFieldParser)

FOUNDATION_EXPORT void AndroidGovNistJavaxSdpParserZoneFieldParser_initWithNSString_(AndroidGovNistJavaxSdpParserZoneFieldParser *self, NSString *zoneField);

FOUNDATION_EXPORT AndroidGovNistJavaxSdpParserZoneFieldParser *new_AndroidGovNistJavaxSdpParserZoneFieldParser_initWithNSString_(NSString *zoneField) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidGovNistJavaxSdpParserZoneFieldParser *create_AndroidGovNistJavaxSdpParserZoneFieldParser_initWithNSString_(NSString *zoneField);

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSdpParserZoneFieldParser)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidGovNistJavaxSdpParserZoneFieldParser")