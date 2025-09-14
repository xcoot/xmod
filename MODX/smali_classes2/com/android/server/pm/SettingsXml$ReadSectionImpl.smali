.class public final Lcom/android/server/pm/SettingsXml$ReadSectionImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mDepthStack:Ljava/util/Stack;

.field public final mParser:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    .line 3
    iput-object p1, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    check-cast p1, Lcom/android/modules/utils/TypedXmlPullParser;

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result p1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->$r8$classId:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    .line 8
    iput-object p1, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public attribute(ILjava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    check-cast p0, Lcom/android/modules/utils/TypedXmlSerializer;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    check-cast p0, Lcom/android/modules/utils/TypedXmlSerializer;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method public children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lcom/android/modules/utils/TypedXmlPullParser;

    .line 6
    .line 7
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public final close()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/modules/utils/TypedXmlSerializer;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/String;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-interface {v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/util/Stack;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    new-instance p0, Ljava/lang/Exception;

    .line 32
    .line 33
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v0, "SettingsXml"

    .line 37
    .line 38
    const-string v1, "Children depth stack was not empty, data may have been lost"

    .line 39
    .line 40
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getInt(ILjava/lang/String;)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/android/modules/utils/TypedXmlPullParser;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-interface {p0, v0, p2, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/android/modules/utils/TypedXmlPullParser;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public moveToNextInternal(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    move v2, v0

    .line 15
    :goto_0
    if-nez v2, :cond_3

    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v3, Lcom/android/modules/utils/TypedXmlPullParser;

    .line 20
    .line 21
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x1

    .line 26
    if-eq v3, v4, :cond_3

    .line 27
    .line 28
    const/4 v5, 0x3

    .line 29
    if-ne v3, v5, :cond_0

    .line 30
    .line 31
    iget-object v5, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v5, Lcom/android/modules/utils/TypedXmlPullParser;

    .line 34
    .line 35
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-le v5, v1, :cond_3

    .line 40
    .line 41
    :cond_0
    const/4 v5, 0x2

    .line 42
    if-eq v3, v5, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    if-eqz p1, :cond_2

    .line 46
    .line 47
    iget-object v3, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v3, Lcom/android/modules/utils/TypedXmlPullParser;

    .line 50
    .line 51
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move v2, v4

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    if-nez v2, :cond_4

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    :cond_4
    return v2

    .line 72
    :catch_0
    return v0
.end method

.method public startSection(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/android/modules/utils/TypedXmlSerializer;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method
