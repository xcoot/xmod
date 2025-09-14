.class public final Lcom/android/server/devicepolicy/ComponentNamePolicySerializer;
.super Lcom/android/server/devicepolicy/PolicySerializer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyValue;
    .locals 2

    .line 1
    const/4 p0, 0x0

    .line 2
    const-string/jumbo v0, "package-name"

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string/jumbo v1, "class-name"

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, p0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p0, Landroid/app/admin/ComponentNamePolicyValue;

    .line 22
    .line 23
    new-instance v1, Landroid/content/ComponentName;

    .line 24
    .line 25
    invoke-direct {v1, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v1}, Landroid/app/admin/ComponentNamePolicyValue;-><init>(Landroid/content/ComponentName;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const-string p1, "ComponentNamePolicySerializer"

    .line 33
    .line 34
    const-string v0, "Error parsing ComponentName policy."

    .line 35
    .line 36
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :goto_1
    return-object p0
.end method

.method public final saveToXml(Ljava/lang/Object;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/content/ComponentName;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string/jumbo v0, "package-name"

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-interface {p2, v1, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 15
    .line 16
    .line 17
    const-string/jumbo p0, "class-name"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p2, v1, p0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 25
    .line 26
    .line 27
    return-void
.end method
