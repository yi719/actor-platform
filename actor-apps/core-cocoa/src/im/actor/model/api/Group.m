//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/Group.java
//


#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Avatar.h"
#include "im/actor/model/api/Group.h"
#include "im/actor/model/api/Member.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/droidkit/bser/util/SparseArray.h"
#include "java/io/IOException.h"
#include "java/lang/Boolean.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface APGroup () {
 @public
  jint id__;
  jlong accessHash_;
  NSString *title_;
  APAvatar *avatar_;
  jboolean isMember__;
  jint creatorUid_;
  id<JavaUtilList> members_;
  jlong createDate_;
  JavaLangBoolean *disableEdit__;
  JavaLangBoolean *disableInviteView__;
  JavaLangBoolean *disableInviteRevoke__;
  JavaLangBoolean *disableIntegrationView__;
  JavaLangBoolean *disableIntegrationsRevoke__;
  JavaLangBoolean *isAdmin__;
  NSString *theme_;
  NSString *about_;
}

@end

J2OBJC_FIELD_SETTER(APGroup, title_, NSString *)
J2OBJC_FIELD_SETTER(APGroup, avatar_, APAvatar *)
J2OBJC_FIELD_SETTER(APGroup, members_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(APGroup, disableEdit__, JavaLangBoolean *)
J2OBJC_FIELD_SETTER(APGroup, disableInviteView__, JavaLangBoolean *)
J2OBJC_FIELD_SETTER(APGroup, disableInviteRevoke__, JavaLangBoolean *)
J2OBJC_FIELD_SETTER(APGroup, disableIntegrationView__, JavaLangBoolean *)
J2OBJC_FIELD_SETTER(APGroup, disableIntegrationsRevoke__, JavaLangBoolean *)
J2OBJC_FIELD_SETTER(APGroup, isAdmin__, JavaLangBoolean *)
J2OBJC_FIELD_SETTER(APGroup, theme_, NSString *)
J2OBJC_FIELD_SETTER(APGroup, about_, NSString *)

@implementation APGroup

- (instancetype)initWithInt:(jint)id_
                   withLong:(jlong)accessHash
               withNSString:(NSString *)title
               withAPAvatar:(APAvatar *)avatar
                withBoolean:(jboolean)isMember
                    withInt:(jint)creatorUid
           withJavaUtilList:(id<JavaUtilList>)members
                   withLong:(jlong)createDate
        withJavaLangBoolean:(JavaLangBoolean *)disableEdit
        withJavaLangBoolean:(JavaLangBoolean *)disableInviteView
        withJavaLangBoolean:(JavaLangBoolean *)disableInviteRevoke
        withJavaLangBoolean:(JavaLangBoolean *)disableIntegrationView
        withJavaLangBoolean:(JavaLangBoolean *)disableIntegrationsRevoke
        withJavaLangBoolean:(JavaLangBoolean *)isAdmin
               withNSString:(NSString *)theme
               withNSString:(NSString *)about {
  APGroup_initWithInt_withLong_withNSString_withAPAvatar_withBoolean_withInt_withJavaUtilList_withLong_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withNSString_withNSString_(self, id_, accessHash, title, avatar, isMember, creatorUid, members, createDate, disableEdit, disableInviteView, disableInviteRevoke, disableIntegrationView, disableIntegrationsRevoke, isAdmin, theme, about);
  return self;
}

- (instancetype)init {
  APGroup_init(self);
  return self;
}

- (jint)getId {
  return self->id__;
}

- (jlong)getAccessHash {
  return self->accessHash_;
}

- (NSString *)getTitle {
  return self->title_;
}

- (APAvatar *)getAvatar {
  return self->avatar_;
}

- (jboolean)isMember {
  return self->isMember__;
}

- (jint)getCreatorUid {
  return self->creatorUid_;
}

- (id<JavaUtilList>)getMembers {
  return self->members_;
}

- (jlong)getCreateDate {
  return self->createDate_;
}

- (JavaLangBoolean *)disableEdit {
  return self->disableEdit__;
}

- (JavaLangBoolean *)disableInviteView {
  return self->disableInviteView__;
}

- (JavaLangBoolean *)disableInviteRevoke {
  return self->disableInviteRevoke__;
}

- (JavaLangBoolean *)disableIntegrationView {
  return self->disableIntegrationView__;
}

- (JavaLangBoolean *)disableIntegrationsRevoke {
  return self->disableIntegrationsRevoke__;
}

- (JavaLangBoolean *)isAdmin {
  return self->isAdmin__;
}

- (NSString *)getTheme {
  return self->theme_;
}

- (NSString *)getAbout {
  return self->about_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->id__ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->accessHash_ = [values getLongWithInt:2];
  self->title_ = [values getStringWithInt:3];
  self->avatar_ = [values optObjWithInt:4 withBSBserObject:new_APAvatar_init()];
  self->isMember__ = [values getBoolWithInt:6];
  self->creatorUid_ = [values getIntWithInt:8];
  id<JavaUtilList> _members = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [values getRepeatedCountWithInt:9]; i++) {
    [_members addWithId:new_APMember_init()];
  }
  self->members_ = [values getRepeatedObjWithInt:9 withJavaUtilList:_members];
  self->createDate_ = [values getLongWithInt:10];
  self->disableEdit__ = JavaLangBoolean_valueOfWithBoolean_([values optBoolWithInt:11]);
  self->disableInviteView__ = JavaLangBoolean_valueOfWithBoolean_([values optBoolWithInt:12]);
  self->disableInviteRevoke__ = JavaLangBoolean_valueOfWithBoolean_([values optBoolWithInt:13]);
  self->disableIntegrationView__ = JavaLangBoolean_valueOfWithBoolean_([values optBoolWithInt:14]);
  self->disableIntegrationsRevoke__ = JavaLangBoolean_valueOfWithBoolean_([values optBoolWithInt:15]);
  self->isAdmin__ = JavaLangBoolean_valueOfWithBoolean_([values optBoolWithInt:16]);
  self->theme_ = [values optStringWithInt:17];
  self->about_ = [values optStringWithInt:18];
  if ([values hasRemaining]) {
    [self setUnmappedObjectsWithImActorModelDroidkitBserUtilSparseArray:[values buildRemaining]];
  }
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->id__];
  [writer writeLongWithInt:2 withLong:self->accessHash_];
  if (self->title_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:3 withNSString:self->title_];
  if (self->avatar_ != nil) {
    [writer writeObjectWithInt:4 withBSBserObject:self->avatar_];
  }
  [writer writeBoolWithInt:6 withBoolean:self->isMember__];
  [writer writeIntWithInt:8 withInt:self->creatorUid_];
  [writer writeRepeatedObjWithInt:9 withJavaUtilList:self->members_];
  [writer writeLongWithInt:10 withLong:self->createDate_];
  if (self->disableEdit__ != nil) {
    [writer writeBoolWithInt:11 withBoolean:[self->disableEdit__ booleanValue]];
  }
  if (self->disableInviteView__ != nil) {
    [writer writeBoolWithInt:12 withBoolean:[self->disableInviteView__ booleanValue]];
  }
  if (self->disableInviteRevoke__ != nil) {
    [writer writeBoolWithInt:13 withBoolean:[self->disableInviteRevoke__ booleanValue]];
  }
  if (self->disableIntegrationView__ != nil) {
    [writer writeBoolWithInt:14 withBoolean:[self->disableIntegrationView__ booleanValue]];
  }
  if (self->disableIntegrationsRevoke__ != nil) {
    [writer writeBoolWithInt:15 withBoolean:[self->disableIntegrationsRevoke__ booleanValue]];
  }
  if (self->isAdmin__ != nil) {
    [writer writeBoolWithInt:16 withBoolean:[self->isAdmin__ booleanValue]];
  }
  if (self->theme_ != nil) {
    [writer writeStringWithInt:17 withNSString:self->theme_];
  }
  if (self->about_ != nil) {
    [writer writeStringWithInt:18 withNSString:self->about_];
  }
  if ([self getUnmappedObjects] != nil) {
    ImActorModelDroidkitBserUtilSparseArray *unmapped = [self getUnmappedObjects];
    for (jint i = 0; i < [((ImActorModelDroidkitBserUtilSparseArray *) nil_chk(unmapped)) size]; i++) {
      jint key = [unmapped keyAtWithInt:i];
      [writer writeUnmappedWithInt:key withId:[unmapped getWithInt:key]];
    }
  }
}

- (NSString *)description {
  NSString *res = @"struct Group{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"id=", self->id__));
  res = JreStrcat("$$", res, JreStrcat("$$", @", avatar=", (self->avatar_ != nil ? @"set" : @"empty")));
  res = JreStrcat("$$", res, JreStrcat("$Z", @", isMember=", self->isMember__));
  res = JreStrcat("$$", res, JreStrcat("$I", @", members=", [((id<JavaUtilList>) nil_chk(self->members_)) size]));
  res = JreStrcat("$$", res, JreStrcat("$J", @", createDate=", self->createDate_));
  res = JreStrcat("$$", res, JreStrcat("$@", @", disableEdit=", self->disableEdit__));
  res = JreStrcat("$$", res, JreStrcat("$@", @", disableInviteView=", self->disableInviteView__));
  res = JreStrcat("$$", res, JreStrcat("$@", @", disableIntegrationView=", self->disableIntegrationView__));
  res = JreStrcat("$C", res, '}');
  return res;
}

@end

void APGroup_initWithInt_withLong_withNSString_withAPAvatar_withBoolean_withInt_withJavaUtilList_withLong_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withNSString_withNSString_(APGroup *self, jint id_, jlong accessHash, NSString *title, APAvatar *avatar, jboolean isMember, jint creatorUid, id<JavaUtilList> members, jlong createDate, JavaLangBoolean *disableEdit, JavaLangBoolean *disableInviteView, JavaLangBoolean *disableInviteRevoke, JavaLangBoolean *disableIntegrationView, JavaLangBoolean *disableIntegrationsRevoke, JavaLangBoolean *isAdmin, NSString *theme, NSString *about) {
  (void) BSBserObject_init(self);
  self->id__ = id_;
  self->accessHash_ = accessHash;
  self->title_ = title;
  self->avatar_ = avatar;
  self->isMember__ = isMember;
  self->creatorUid_ = creatorUid;
  self->members_ = members;
  self->createDate_ = createDate;
  self->disableEdit__ = disableEdit;
  self->disableInviteView__ = disableInviteView;
  self->disableInviteRevoke__ = disableInviteRevoke;
  self->disableIntegrationView__ = disableIntegrationView;
  self->disableIntegrationsRevoke__ = disableIntegrationsRevoke;
  self->isAdmin__ = isAdmin;
  self->theme_ = theme;
  self->about_ = about;
}

APGroup *new_APGroup_initWithInt_withLong_withNSString_withAPAvatar_withBoolean_withInt_withJavaUtilList_withLong_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withNSString_withNSString_(jint id_, jlong accessHash, NSString *title, APAvatar *avatar, jboolean isMember, jint creatorUid, id<JavaUtilList> members, jlong createDate, JavaLangBoolean *disableEdit, JavaLangBoolean *disableInviteView, JavaLangBoolean *disableInviteRevoke, JavaLangBoolean *disableIntegrationView, JavaLangBoolean *disableIntegrationsRevoke, JavaLangBoolean *isAdmin, NSString *theme, NSString *about) {
  APGroup *self = [APGroup alloc];
  APGroup_initWithInt_withLong_withNSString_withAPAvatar_withBoolean_withInt_withJavaUtilList_withLong_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withNSString_withNSString_(self, id_, accessHash, title, avatar, isMember, creatorUid, members, createDate, disableEdit, disableInviteView, disableInviteRevoke, disableIntegrationView, disableIntegrationsRevoke, isAdmin, theme, about);
  return self;
}

void APGroup_init(APGroup *self) {
  (void) BSBserObject_init(self);
}

APGroup *new_APGroup_init() {
  APGroup *self = [APGroup alloc];
  APGroup_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APGroup)
