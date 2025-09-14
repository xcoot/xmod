.class public final Lcom/android/server/devicepolicy/LongPolicySerializer;
.super Lcom/android/server/devicepolicy/PolicySerializer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyValue;
    .locals 3

    .line 1
    const/4 p0, 0x0

    .line 2
    :try_start_0
    new-instance v0, Landroid/app/admin/LongPolicyValue;

    .line 3
    .line 4
    const-string/jumbo v1, "value"

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, p0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-direct {v0, v1, v2}, Landroid/app/admin/LongPolicyValue;-><init>(J)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    move-object p0, v0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    const-string v0, "LongPolicySerializer"

    .line 18
    .line 19
    const-string v1, "Error parsing Long policy value"

    .line 20
    .line 21
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :goto_0
    return-object p0
.end method

.method public final saveToXml(Ljava/lang/Object;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Long;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    const/4 v0, 0x0

    .line 11
    const-string/jumbo v1, "value"

    .line 12
    .line 13
    .line 14
    invoke-interface {p2, v0, v1, p0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 15
    .line 16
    .line 17
    return-void
.end method
