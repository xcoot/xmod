.class public final Lcom/android/server/firewall/SenderFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .locals 3

    .line 1
    const/4 p0, 0x0

    .line 2
    const-string/jumbo v0, "type"

    .line 5
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_4

    .line 11
    const-string/jumbo v1, "system"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 20
    sget-object p0, Lcom/android/server/firewall/SenderFilter;->SYSTEM:Lcom/android/server/firewall/SenderFilter$2;

    .line 22
    return-object p0

    .line 23
    :cond_0
    const-string/jumbo v1, "signature"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 32
    sget-object p0, Lcom/android/server/firewall/SenderFilter;->SIGNATURE:Lcom/android/server/firewall/SenderFilter$2;

    .line 34
    return-object p0

    .line 35
    :cond_1
    const-string/jumbo v1, "system|signature"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 44
    sget-object p0, Lcom/android/server/firewall/SenderFilter;->SYSTEM_OR_SIGNATURE:Lcom/android/server/firewall/SenderFilter$2;

    .line 46
    return-object p0

    .line 47
    :cond_2
    const-string/jumbo v1, "userId"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_3

    .line 56
    sget-object p0, Lcom/android/server/firewall/SenderFilter;->USER_ID:Lcom/android/server/firewall/SenderFilter$2;

    .line 58
    return-object p0

    .line 59
    :cond_3
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 61
    const-string v2, "Invalid type attribute for <sender>: "

    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    invoke-direct {v1, v0, p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .line 70
    throw v1

    .line 71
    :cond_4
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 73
    const-string/jumbo v1, "type attribute must be specified for <sender>"

    .line 76
    invoke-direct {v0, v1, p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .line 79
    throw v0
.end method
