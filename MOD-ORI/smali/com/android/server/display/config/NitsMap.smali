.class public final Lcom/android/server/display/config/NitsMap;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public interpolation:Ljava/lang/String;

.field public point:Ljava/util/List;


# direct methods
.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NitsMap;
    .locals 7

    .line 1
    new-instance v0, Lcom/android/server/display/config/NitsMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const-string/jumbo v2, "interpolation"

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iput-object v1, v0, Lcom/android/server/display/config/NitsMap;->interpolation:Ljava/lang/String;

    .line 17
    .line 18
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x1

    .line 26
    const/4 v3, 0x3

    .line 27
    if-eq v1, v2, :cond_9

    .line 28
    .line 29
    if-eq v1, v3, :cond_9

    .line 30
    .line 31
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v4, 0x2

    .line 36
    if-eq v1, v4, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string/jumbo v5, "point"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_8

    .line 51
    .line 52
    new-instance v1, Lcom/android/server/display/config/Point;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 58
    .line 59
    .line 60
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eq v5, v2, :cond_5

    .line 65
    .line 66
    if-eq v5, v3, :cond_5

    .line 67
    .line 68
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eq v5, v4, :cond_2

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    const-string/jumbo v6, "value"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-eqz v6, :cond_3

    .line 87
    .line 88
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    new-instance v6, Ljava/math/BigDecimal;

    .line 93
    .line 94
    invoke-direct {v6, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iput-object v6, v1, Lcom/android/server/display/config/Point;->value:Ljava/math/BigDecimal;

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    const-string/jumbo v6, "nits"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-eqz v5, :cond_4

    .line 108
    .line 109
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    new-instance v6, Ljava/math/BigDecimal;

    .line 114
    .line 115
    invoke-direct {v6, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iput-object v6, v1, Lcom/android/server/display/config/Point;->nits:Ljava/math/BigDecimal;

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_4
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_5
    if-ne v5, v3, :cond_7

    .line 126
    .line 127
    iget-object v2, v0, Lcom/android/server/display/config/NitsMap;->point:Ljava/util/List;

    .line 128
    .line 129
    if-nez v2, :cond_6

    .line 130
    .line 131
    new-instance v2, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .line 135
    .line 136
    iput-object v2, v0, Lcom/android/server/display/config/NitsMap;->point:Ljava/util/List;

    .line 137
    .line 138
    :cond_6
    iget-object v2, v0, Lcom/android/server/display/config/NitsMap;->point:Ljava/util/List;

    .line 139
    .line 140
    check-cast v2, Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_7
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 147
    .line 148
    const-string v0, "Point is not closed"

    .line 149
    .line 150
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p0

    .line 154
    :cond_8
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_9
    if-ne v1, v3, :cond_a

    .line 160
    .line 161
    return-object v0

    .line 162
    :cond_a
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 163
    .line 164
    const-string v0, "NitsMap is not closed"

    .line 165
    .line 166
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p0
.end method
