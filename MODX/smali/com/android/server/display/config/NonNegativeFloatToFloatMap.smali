.class public final Lcom/android/server/display/config/NonNegativeFloatToFloatMap;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public point:Ljava/util/List;


# direct methods
.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NonNegativeFloatToFloatMap;
    .locals 7

    .line 1
    new-instance v0, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 9
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x3

    .line 15
    if-eq v1, v2, :cond_7

    .line 17
    if-eq v1, v3, :cond_7

    .line 19
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 22
    move-result v1

    .line 23
    const/4 v4, 0x2

    .line 24
    if-eq v1, v4, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    const-string/jumbo v5, "point"

    .line 34
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_6

    .line 40
    new-instance v1, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;

    .line 42
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 48
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 51
    move-result v5

    .line 52
    if-eq v5, v2, :cond_4

    .line 54
    if-eq v5, v3, :cond_4

    .line 56
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 59
    move-result v5

    .line 60
    if-eq v5, v4, :cond_1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 66
    move-result-object v5

    .line 67
    const-string/jumbo v6, "first"

    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v6

    .line 74
    if-eqz v6, :cond_2

    .line 76
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 79
    move-result-object v5

    .line 80
    new-instance v6, Ljava/math/BigDecimal;

    .line 82
    invoke-direct {v6, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 85
    iput-object v6, v1, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;->first:Ljava/math/BigDecimal;

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    const-string/jumbo v6, "second"

    .line 91
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_3

    .line 97
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 100
    move-result-object v5

    .line 101
    new-instance v6, Ljava/math/BigDecimal;

    .line 103
    invoke-direct {v6, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 106
    iput-object v6, v1, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;->second:Ljava/math/BigDecimal;

    .line 108
    goto :goto_1

    .line 109
    :cond_3
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 112
    goto :goto_1

    .line 113
    :cond_4
    if-ne v5, v3, :cond_5

    .line 115
    invoke-virtual {v0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->getPoint()Ljava/util/List;

    .line 118
    move-result-object v2

    .line 119
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    goto :goto_0

    .line 123
    :cond_5
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 125
    const-string v0, "NonNegativeFloatToFloatPoint is not closed"

    .line 127
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 130
    throw p0

    .line 131
    :cond_6
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 134
    goto :goto_0

    .line 135
    :cond_7
    if-ne v1, v3, :cond_8

    .line 137
    return-object v0

    .line 138
    :cond_8
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 140
    const-string v0, "NonNegativeFloatToFloatMap is not closed"

    .line 142
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 145
    throw p0
.end method


# virtual methods
.method public final getPoint()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->point:Ljava/util/List;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->point:Ljava/util/List;

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->point:Ljava/util/List;

    .line 14
    return-object p0
.end method
