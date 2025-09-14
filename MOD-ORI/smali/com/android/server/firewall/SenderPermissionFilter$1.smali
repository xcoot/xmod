.class public final Lcom/android/server/firewall/SenderPermissionFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .locals 2

    .line 1
    const/4 p0, 0x0

    .line 2
    const-string/jumbo v0, "name"

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance p0, Lcom/android/server/firewall/SenderPermissionFilter;

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/android/server/firewall/SenderPermissionFilter;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 18
    .line 19
    const-string v1, "Permission name must be specified."

    .line 20
    .line 21
    invoke-direct {v0, v1, p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method
