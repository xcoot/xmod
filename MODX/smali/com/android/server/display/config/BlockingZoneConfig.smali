.class public final Lcom/android/server/display/config/BlockingZoneConfig;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public blockingZoneThreshold:Lcom/android/server/display/config/BlockingZoneThreshold;

.field public defaultRefreshRate:Ljava/math/BigInteger;

.field public refreshRateThermalThrottlingId:Ljava/lang/String;

.field public supportedModes:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;


# direct methods
.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BlockingZoneConfig;
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/display/config/BlockingZoneConfig;

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
    if-eq v1, v2, :cond_f

    .line 17
    if-eq v1, v3, :cond_f

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
    const-string/jumbo v5, "supportedModes"

    .line 34
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_1

    .line 40
    invoke-static {p0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 43
    move-result-object v1

    .line 44
    iput-object v1, v0, Lcom/android/server/display/config/BlockingZoneConfig;->supportedModes:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-string/jumbo v5, "defaultRefreshRate"

    .line 50
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_2

    .line 56
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    new-instance v2, Ljava/math/BigInteger;

    .line 62
    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 65
    iput-object v2, v0, Lcom/android/server/display/config/BlockingZoneConfig;->defaultRefreshRate:Ljava/math/BigInteger;

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const-string/jumbo v5, "refreshRateThermalThrottlingId"

    .line 71
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_3

    .line 77
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    iput-object v1, v0, Lcom/android/server/display/config/BlockingZoneConfig;->refreshRateThermalThrottlingId:Ljava/lang/String;

    .line 83
    goto :goto_0

    .line 84
    :cond_3
    const-string/jumbo v5, "blockingZoneThreshold"

    .line 87
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_e

    .line 93
    new-instance v1, Lcom/android/server/display/config/BlockingZoneThreshold;

    .line 95
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 101
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 104
    move-result v5

    .line 105
    if-eq v5, v2, :cond_c

    .line 107
    if-eq v5, v3, :cond_c

    .line 109
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 112
    move-result v5

    .line 113
    if-eq v5, v4, :cond_4

    .line 115
    goto :goto_1

    .line 116
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 119
    move-result-object v5

    .line 120
    const-string/jumbo v6, "displayBrightnessPoint"

    .line 123
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    move-result v5

    .line 127
    if-eqz v5, :cond_b

    .line 129
    new-instance v5, Lcom/android/server/display/config/DisplayBrightnessPoint;

    .line 131
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 137
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 140
    move-result v6

    .line 141
    if-eq v6, v2, :cond_8

    .line 143
    if-eq v6, v3, :cond_8

    .line 145
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 148
    move-result v6

    .line 149
    if-eq v6, v4, :cond_5

    .line 151
    goto :goto_2

    .line 152
    :cond_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 155
    move-result-object v6

    .line 156
    const-string/jumbo v7, "lux"

    .line 159
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    move-result v7

    .line 163
    if-eqz v7, :cond_6

    .line 165
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 168
    move-result-object v6

    .line 169
    new-instance v7, Ljava/math/BigInteger;

    .line 171
    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 174
    iput-object v7, v5, Lcom/android/server/display/config/DisplayBrightnessPoint;->lux:Ljava/math/BigInteger;

    .line 176
    goto :goto_2

    .line 177
    :cond_6
    const-string/jumbo v7, "nits"

    .line 180
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    move-result v6

    .line 184
    if-eqz v6, :cond_7

    .line 186
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 189
    move-result-object v6

    .line 190
    new-instance v7, Ljava/math/BigDecimal;

    .line 192
    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 195
    iput-object v7, v5, Lcom/android/server/display/config/DisplayBrightnessPoint;->nits:Ljava/math/BigDecimal;

    .line 197
    goto :goto_2

    .line 198
    :cond_7
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 201
    goto :goto_2

    .line 202
    :cond_8
    if-ne v6, v3, :cond_a

    .line 204
    iget-object v6, v1, Lcom/android/server/display/config/BlockingZoneThreshold;->displayBrightnessPoint:Ljava/util/List;

    .line 206
    if-nez v6, :cond_9

    .line 208
    new-instance v6, Ljava/util/ArrayList;

    .line 210
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 213
    iput-object v6, v1, Lcom/android/server/display/config/BlockingZoneThreshold;->displayBrightnessPoint:Ljava/util/List;

    .line 215
    :cond_9
    iget-object v6, v1, Lcom/android/server/display/config/BlockingZoneThreshold;->displayBrightnessPoint:Ljava/util/List;

    .line 217
    check-cast v6, Ljava/util/ArrayList;

    .line 219
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    goto :goto_1

    .line 223
    :cond_a
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 225
    const-string v0, "DisplayBrightnessPoint is not closed"

    .line 227
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 230
    throw p0

    .line 231
    :cond_b
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 234
    goto/16 :goto_1

    .line 236
    :cond_c
    if-ne v5, v3, :cond_d

    .line 238
    iput-object v1, v0, Lcom/android/server/display/config/BlockingZoneConfig;->blockingZoneThreshold:Lcom/android/server/display/config/BlockingZoneThreshold;

    .line 240
    goto/16 :goto_0

    .line 242
    :cond_d
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 244
    const-string v0, "BlockingZoneThreshold is not closed"

    .line 246
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 249
    throw p0

    .line 250
    :cond_e
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 253
    goto/16 :goto_0

    .line 255
    :cond_f
    if-ne v1, v3, :cond_10

    .line 257
    return-object v0

    .line 258
    :cond_10
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 260
    const-string v0, "BlockingZoneConfig is not closed"

    .line 262
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 265
    throw p0
.end method
