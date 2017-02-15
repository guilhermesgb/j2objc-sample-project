//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/gov/nist/javax/sip/stack/NioTlsChannelInterface.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidGovNistJavaxSipStackNioTlsChannelInterface")
#ifdef RESTRICT_AndroidGovNistJavaxSipStackNioTlsChannelInterface
#define INCLUDE_ALL_AndroidGovNistJavaxSipStackNioTlsChannelInterface 0
#else
#define INCLUDE_ALL_AndroidGovNistJavaxSipStackNioTlsChannelInterface 1
#endif
#undef RESTRICT_AndroidGovNistJavaxSipStackNioTlsChannelInterface

#if !defined (AndroidGovNistJavaxSipStackNioTlsChannelInterface_) && (INCLUDE_ALL_AndroidGovNistJavaxSipStackNioTlsChannelInterface || defined(INCLUDE_AndroidGovNistJavaxSipStackNioTlsChannelInterface))
#define AndroidGovNistJavaxSipStackNioTlsChannelInterface_

@class AndroidGovNistJavaxSipSipStackImpl;
@class IOSByteArray;
@class JavaNioByteBuffer;
@protocol AndroidGovNistJavaxSipClientTransactionExt;

@protocol AndroidGovNistJavaxSipStackNioTlsChannelInterface < JavaObject >

- (void)sendEncryptedDataWithByteArray:(IOSByteArray *)msg;

- (JavaNioByteBuffer *)prepareAppDataBuffer;

- (JavaNioByteBuffer *)prepareAppDataBufferWithInt:(jint)capacity;

- (JavaNioByteBuffer *)prepareEncryptedDataBuffer;

- (void)addPlaintextBytesWithByteArray:(IOSByteArray *)bytes;

- (AndroidGovNistJavaxSipSipStackImpl *)getSIPStack;

- (id<AndroidGovNistJavaxSipClientTransactionExt>)getEncapsulatedClientTransaction;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidGovNistJavaxSipStackNioTlsChannelInterface)

J2OBJC_TYPE_LITERAL_HEADER(AndroidGovNistJavaxSipStackNioTlsChannelInterface)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidGovNistJavaxSipStackNioTlsChannelInterface")