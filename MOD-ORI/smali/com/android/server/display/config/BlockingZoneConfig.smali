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
    if-eq v1, v2, :cond_f

    .line 16
    .line 17
    if-eq v1, v3, :cond_f

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
    const-string/jumbo v5, "supportedModes"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    invoke-static {p0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, v0, Lcom/android/server/display/config/BlockingZoneConfig;->supportedModes:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-string/jumbo v5, "defaultRefreshRate"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_2

    .line 55
    .line 56
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    new-instance v2, Ljava/math/BigInteger;

    .line 61
    .line 62
    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iput-object v2, v0, Lcom/android/server/display/config/BlockingZoneConfig;->defaultRefreshRate:Ljava/math/BigInteger;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const-string/jumbo v5, "refreshRateThermalThrottlingId"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_3

    .line 76
    .line 77
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iput-object v1, v0, Lcom/android/server/display/config/BlockingZoneConfig;->refreshRateThermalThrottlingId:Ljava/lang/String;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    const-string/jumbo v5, "blockingZoneThreshold"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_e

    .line 92
    .line 93
    new-instance v1, Lcom/android/server/display/config/BlockingZoneThreshold;

    .line 94
    .line 95
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 99
    .line 100
    .line 101
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-eq v5, v2, :cond_c

    .line 106
    .line 107
    if-eq v5, v3, :cond_c

    .line 108
    .line 109
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eq v5, v4, :cond_4

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    const-string/jumbo v6, "displayBrightnessPoint"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-eqz v5, :cond_b

    .line 128
    .line 129
    new-instance v5, Lcom/android/server/display/config/DisplayBrightnessPoint;

    .line 130
    .line 131
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 135
    .line 136
    .line 137
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-eq v6, v2, :cond_8

    .line 142
    .line 143
    if-eq v6, v3, :cond_8

    .line 144
    .line 145
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-eq v6, v4, :cond_5

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    const-string/jumbo v7, "lux"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    if-eqz v7, :cond_6

    .line 164
    .line 165
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    new-instance v7, Ljava/math/BigInteger;

    .line 170
    .line 171
    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iput-object v7, v5, Lcom/android/server/display/config/DisplayBrightnessPoint;->lux:Ljava/math/BigInteger;

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_6
    const-string/jumbo v7, "nits"

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    if-eqz v6, :cond_7

    .line 185
    .line 186
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    new-instance v7, Ljava/math/BigDecimal;

    .line 191
    .line 192
    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iput-object v7, v5, Lcom/android/server/display/config/DisplayBrightnessPoint;->nits:Ljava/math/BigDecimal;

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_7
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_8
    if-ne v6, v3, :cond_a

    .line 203
    .line 204
    iget-object v6, v1, Lcom/android/server/display/config/BlockingZoneThreshold;->displayBrightnessPoint:Ljava/util/List;

    .line 205
    .line 206
    if-nez v6, :cond_9

    .line 207
    .line 208
    new-instance v6, Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .line 212
    .line 213
    iput-object v6, v1, Lcom/android/server/display/config/BlockingZoneThreshold;->displayBrightnessPoint:Ljava/util/List;

    .line 214
    .line 215
    :cond_9
    iget-object v6, v1, Lcom/android/server/display/config/BlockingZoneThreshold;->displayBrightnessPoint:Ljava/util/List;

    .line 216
    .line 217
    check-cast v6, Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_a
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 224
    .line 225
    const-string v0, "DisplayBrightnessPoint is not closed"

    .line 226
    .line 227
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw p0

    .line 231
    :cond_b
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_1

    .line 235
    .line 236
    :cond_c
    if-ne v5, v3, :cond_d

    .line 237
    .line 238
    iput-object v1, v0, Lcom/android/server/display/config/BlockingZoneConfig;->blockingZoneThreshold:Lcom/android/server/display/config/BlockingZoneThreshold;

    .line 239
    .line 240
    goto/16 :goto_0

    .line 241
    .line 242
    :cond_d
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 243
    .line 244
    const-string v0, "BlockingZoneThreshold is not closed"

    .line 245
    .line 246
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw p0

    .line 250
    :cond_e
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 251
    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :cond_f
    if-ne v1, v3, :cond_10

    .line 256
    .line 257
    return-object v0

    .line 258
    :cond_10
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 259
    .line 260
    const-string v0, "BlockingZoneConfig is not closed"

    .line 261
    .line 262
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    throw p0
.end method
