.class public final Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public luxThresholds:Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;


# direct methods
.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x3

    .line 15
    if-eq v1, v2, :cond_c

    .line 16
    .line 17
    if-eq v1, v3, :cond_c

    .line 18
    .line 19
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v4, 0x2

    .line 24
    if-eq v1, v4, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string/jumbo v5, "luxThresholds"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_b

    .line 39
    .line 40
    new-instance v1, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eq v5, v2, :cond_9

    .line 53
    .line 54
    if-eq v5, v3, :cond_9

    .line 55
    .line 56
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eq v5, v4, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const-string/jumbo v6, "point"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_8

    .line 75
    .line 76
    new-instance v5, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;

    .line 77
    .line 78
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 82
    .line 83
    .line 84
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eq v6, v2, :cond_5

    .line 89
    .line 90
    if-eq v6, v3, :cond_5

    .line 91
    .line 92
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-eq v6, v4, :cond_2

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    const-string/jumbo v7, "lux"

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    if-eqz v7, :cond_3

    .line 111
    .line 112
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    new-instance v7, Ljava/math/BigInteger;

    .line 117
    .line 118
    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iput-object v7, v5, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;->lux:Ljava/math/BigInteger;

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_3
    const-string/jumbo v7, "timeout"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    if-eqz v6, :cond_4

    .line 132
    .line 133
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    new-instance v7, Ljava/math/BigInteger;

    .line 138
    .line 139
    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iput-object v7, v5, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;->timeout:Ljava/math/BigInteger;

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_4
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_5
    if-ne v6, v3, :cond_7

    .line 150
    .line 151
    iget-object v6, v1, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;->point:Ljava/util/List;

    .line 152
    .line 153
    if-nez v6, :cond_6

    .line 154
    .line 155
    new-instance v6, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .line 159
    .line 160
    iput-object v6, v1, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;->point:Ljava/util/List;

    .line 161
    .line 162
    :cond_6
    iget-object v6, v1, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;->point:Ljava/util/List;

    .line 163
    .line 164
    check-cast v6, Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_7
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 171
    .line 172
    const-string v0, "IdleScreenRefreshRateTimeoutLuxThresholdPoint is not closed"

    .line 173
    .line 174
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p0

    .line 178
    :cond_8
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_1

    .line 182
    .line 183
    :cond_9
    if-ne v5, v3, :cond_a

    .line 184
    .line 185
    iput-object v1, v0, Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;->luxThresholds:Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;

    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :cond_a
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 190
    .line 191
    const-string v0, "IdleScreenRefreshRateTimeoutLuxThresholds is not closed"

    .line 192
    .line 193
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw p0

    .line 197
    :cond_b
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :cond_c
    if-ne v1, v3, :cond_d

    .line 203
    .line 204
    return-object v0

    .line 205
    :cond_d
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 206
    .line 207
    const-string v0, "IdleScreenRefreshRateTimeout is not closed"

    .line 208
    .line 209
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw p0
.end method
