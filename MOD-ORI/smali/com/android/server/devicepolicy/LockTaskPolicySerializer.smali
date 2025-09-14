.class public final Lcom/android/server/devicepolicy/LockTaskPolicySerializer;
.super Lcom/android/server/devicepolicy/PolicySerializer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyValue;
    .locals 3

    .line 1
    const/4 p0, 0x0

    .line 2
    const-string/jumbo v0, "packages"

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "LockTaskPolicySerializer"

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string p1, "Error parsing LockTask policy value."

    .line 14
    .line 15
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v2, ";"

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :try_start_0
    const-string/jumbo v2, "flags"

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, p0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    new-instance v2, Landroid/app/admin/LockTaskPolicy;

    .line 37
    .line 38
    invoke-direct {v2, v0, p1}, Landroid/app/admin/LockTaskPolicy;-><init>(Ljava/util/Set;I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    move-object p0, v2

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    const-string v0, "Error parsing LockTask policy value"

    .line 45
    .line 46
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    .line 48
    .line 49
    :goto_0
    return-object p0
.end method

.method public final saveToXml(Ljava/lang/Object;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/app/admin/LockTaskPolicy;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string p0, ";"

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/app/admin/LockTaskPolicy;->getPackages()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 v0, 0x0

    .line 17
    const-string/jumbo v1, "packages"

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 21
    .line 22
    .line 23
    const-string/jumbo p0, "flags"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/app/admin/LockTaskPolicy;->getFlags()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-interface {p2, v0, p0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 31
    .line 32
    .line 33
    return-void
.end method
