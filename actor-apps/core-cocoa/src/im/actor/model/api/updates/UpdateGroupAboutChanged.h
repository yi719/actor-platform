//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/updates/UpdateGroupAboutChanged.java
//

#ifndef _APUpdateGroupAboutChanged_H_
#define _APUpdateGroupAboutChanged_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Update.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APUpdateGroupAboutChanged_HEADER 214

@interface APUpdateGroupAboutChanged : APUpdate

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)groupId
               withNSString:(NSString *)about;

+ (APUpdateGroupAboutChanged *)fromBytesWithByteArray:(IOSByteArray *)data;

- (NSString *)getAbout;

- (jint)getGroupId;

- (jint)getHeaderKey;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APUpdateGroupAboutChanged)

J2OBJC_STATIC_FIELD_GETTER(APUpdateGroupAboutChanged, HEADER, jint)

FOUNDATION_EXPORT APUpdateGroupAboutChanged *APUpdateGroupAboutChanged_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APUpdateGroupAboutChanged_initWithInt_withNSString_(APUpdateGroupAboutChanged *self, jint groupId, NSString *about);

FOUNDATION_EXPORT APUpdateGroupAboutChanged *new_APUpdateGroupAboutChanged_initWithInt_withNSString_(jint groupId, NSString *about) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APUpdateGroupAboutChanged_init(APUpdateGroupAboutChanged *self);

FOUNDATION_EXPORT APUpdateGroupAboutChanged *new_APUpdateGroupAboutChanged_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APUpdateGroupAboutChanged)

typedef APUpdateGroupAboutChanged ImActorModelApiUpdatesUpdateGroupAboutChanged;

#endif // _APUpdateGroupAboutChanged_H_
