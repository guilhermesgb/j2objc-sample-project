//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/android/javax/sip/ClientTransaction.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidJavaxSipClientTransaction")
#ifdef RESTRICT_AndroidJavaxSipClientTransaction
#define INCLUDE_ALL_AndroidJavaxSipClientTransaction 0
#else
#define INCLUDE_ALL_AndroidJavaxSipClientTransaction 1
#endif
#undef RESTRICT_AndroidJavaxSipClientTransaction

#if !defined (AndroidJavaxSipClientTransaction_) && (INCLUDE_ALL_AndroidJavaxSipClientTransaction || defined(INCLUDE_AndroidJavaxSipClientTransaction))
#define AndroidJavaxSipClientTransaction_

#define RESTRICT_AndroidJavaxSipTransaction 1
#define INCLUDE_AndroidJavaxSipTransaction 1
#include "android/javax/sip/Transaction.h"

@protocol AndroidJavaxSipMessageRequest;

@protocol AndroidJavaxSipClientTransaction < AndroidJavaxSipTransaction, JavaObject >

- (void)sendRequest;

- (id<AndroidJavaxSipMessageRequest>)createCancel;

- (id<AndroidJavaxSipMessageRequest>)createAck;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidJavaxSipClientTransaction)

J2OBJC_TYPE_LITERAL_HEADER(AndroidJavaxSipClientTransaction)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidJavaxSipClientTransaction")