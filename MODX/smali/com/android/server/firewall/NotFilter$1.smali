.class public final Lcom/android/server/firewall/NotFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .locals 3

    .line 1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    move-object v1, v0

    .line 7
    :goto_0
    invoke-static {p1, p0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_1

    .line 13
    invoke-static {p1}, Lcom/android/server/firewall/IntentFirewall;->parseFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;

    .line 16
    move-result-object v2

    .line 17
    if-nez v1, :cond_0

    .line 19
    move-object v1, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 23
    const-string v1, "<not> tag can only contain a single child filter."

    .line 25
    invoke-direct {p0, v1, p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .line 28
    throw p0

    .line 29
    :cond_1
    new-instance p0, Lcom/android/server/firewall/NotFilter;

    .line 31
    invoke-direct {p0, v1}, Lcom/android/server/firewall/NotFilter;-><init>(Lcom/android/server/firewall/Filter;)V

    .line 34
    return-object p0
.end method
