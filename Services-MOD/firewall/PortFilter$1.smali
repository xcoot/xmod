.class public final Lcom/android/server/firewall/PortFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .locals 5

    .line 1
    const/4 p0, 0x0

    .line 2
    const-string/jumbo v0, "equals"

    .line 5
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 14
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :goto_0
    move v2, v1

    .line 16
    goto :goto_1

    .line 17
    :catch_0
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 19
    const-string v2, "Invalid port value: "

    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-direct {v1, v0, p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .line 28
    throw v1

    .line 29
    :cond_0
    const/4 v1, -0x1

    .line 30
    goto :goto_0

    .line 31
    :goto_1
    const-string/jumbo v3, "min"

    .line 34
    invoke-interface {p1, p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v3

    .line 38
    const-string/jumbo v4, "max"

    .line 41
    invoke-interface {p1, p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v4

    .line 45
    if-nez v3, :cond_1

    .line 47
    if-eqz v4, :cond_3

    .line 49
    :cond_1
    if-nez v0, :cond_4

    .line 51
    if-eqz v3, :cond_2

    .line 53
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 56
    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    goto :goto_2

    .line 58
    :catch_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 60
    const-string v1, "Invalid minimum port value: "

    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    invoke-direct {v0, v1, p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .line 69
    throw v0

    .line 70
    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    .line 72
    :try_start_2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 75
    move-result v2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 76
    goto :goto_3

    .line 77
    :catch_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 79
    const-string v1, "Invalid maximum port value: "

    .line 81
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    invoke-direct {v0, v1, p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .line 88
    throw v0

    .line 89
    :cond_3
    :goto_3
    new-instance p0, Lcom/android/server/firewall/PortFilter;

    .line 91
    invoke-direct {p0, v1, v2}, Lcom/android/server/firewall/PortFilter;-><init>(II)V

    .line 94
    return-object p0

    .line 95
    :cond_4
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 97
    const-string v1, "Port filter cannot use both equals and range filtering"

    .line 99
    invoke-direct {v0, v1, p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .line 102
    throw v0
.end method
