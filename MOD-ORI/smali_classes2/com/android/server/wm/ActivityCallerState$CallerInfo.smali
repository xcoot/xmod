.class public final Lcom/android/server/wm/ActivityCallerState$CallerInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mInaccessibleContentUris:Landroid/util/ArraySet;

.field public final mIsShareIdentityEnabled:Z

.field public final mPackageName:Ljava/lang/String;

.field public final mReadableContentUris:Landroid/util/ArraySet;

.field public final mUid:I

.field public final mWritableContentUris:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mReadableContentUris:Landroid/util/ArraySet;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mWritableContentUris:Landroid/util/ArraySet;

    .line 17
    .line 18
    new-instance v0, Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mInaccessibleContentUris:Landroid/util/ArraySet;

    .line 24
    .line 25
    iput p1, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mUid:I

    .line 26
    .line 27
    iput-object p2, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mPackageName:Ljava/lang/String;

    .line 28
    .line 29
    iput-boolean p3, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mIsShareIdentityEnabled:Z

    .line 30
    .line 31
    return-void
.end method

.method public static restoreGrantUriFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/uri/GrantUri;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "source_user_id"

    .line 3
    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-interface {p0, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const-string/jumbo v3, "uri"

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string/jumbo v4, "prefix"

    .line 22
    .line 23
    .line 24
    invoke-interface {p0, v0, v4, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    new-instance v0, Lcom/android/server/uri/GrantUri;

    .line 29
    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    const/16 v2, 0x80

    .line 33
    .line 34
    :cond_0
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/uri/GrantUri;-><init>(IILandroid/net/Uri;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public static saveGrantUriToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/uri/GrantUri;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3
    .line 4
    .line 5
    iget v1, p1, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    .line 6
    .line 7
    const-string/jumbo v2, "source_user_id"

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 11
    .line 12
    .line 13
    iget-object v1, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string/jumbo v2, "uri"

    .line 20
    .line 21
    .line 22
    invoke-interface {p0, v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 23
    .line 24
    .line 25
    const-string/jumbo v1, "prefix"

    .line 26
    .line 27
    .line 28
    iget-boolean p1, p1, Lcom/android/server/uri/GrantUri;->prefix:Z

    .line 29
    .line 30
    invoke-interface {p0, v0, v1, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 31
    .line 32
    .line 33
    invoke-interface {p0, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 34
    .line 35
    .line 36
    return-void
.end method
