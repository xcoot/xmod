.class public final Lcom/android/server/display/config/BrightnessThresholds;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public brightnessThresholdPoints:Lcom/android/server/display/config/ThresholdPoints;

.field public minimum:Ljava/math/BigDecimal;


# direct methods
.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BrightnessThresholds;
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/display/config/BrightnessThresholds;

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
    if-eq v1, v2, :cond_d

    .line 16
    .line 17
    if-eq v1, v3, :cond_d

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
    const-string/jumbo v5, "minimum"

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
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    new-instance v2, Ljava/math/BigDecimal;

    .line 45
    .line 46
    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iput-object v2, v0, Lcom/android/server/display/config/BrightnessThresholds;->minimum:Ljava/math/BigDecimal;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const-string/jumbo v5, "brightnessThresholdPoints"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_c

    .line 60
    .line 61
    new-instance v1, Lcom/android/server/display/config/ThresholdPoints;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 67
    .line 68
    .line 69
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eq v5, v2, :cond_a

    .line 74
    .line 75
    if-eq v5, v3, :cond_a

    .line 76
    .line 77
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eq v5, v4, :cond_2

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    const-string/jumbo v6, "brightnessThresholdPoint"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_9

    .line 96
    .line 97
    new-instance v5, Lcom/android/server/display/config/ThresholdPoint;

    .line 98
    .line 99
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 103
    .line 104
    .line 105
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-eq v6, v2, :cond_6

    .line 110
    .line 111
    if-eq v6, v3, :cond_6

    .line 112
    .line 113
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-eq v6, v4, :cond_3

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    const-string/jumbo v7, "threshold"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    if-eqz v7, :cond_4

    .line 132
    .line 133
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    new-instance v7, Ljava/math/BigDecimal;

    .line 138
    .line 139
    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iput-object v7, v5, Lcom/android/server/display/config/ThresholdPoint;->threshold:Ljava/math/BigDecimal;

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_4
    const-string/jumbo v7, "percentage"

    .line 146
    .line 147
    .line 148
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    if-eqz v6, :cond_5

    .line 153
    .line 154
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    new-instance v7, Ljava/math/BigDecimal;

    .line 159
    .line 160
    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iput-object v7, v5, Lcom/android/server/display/config/ThresholdPoint;->percentage:Ljava/math/BigDecimal;

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_5
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_6
    if-ne v6, v3, :cond_8

    .line 171
    .line 172
    iget-object v6, v1, Lcom/android/server/display/config/ThresholdPoints;->brightnessThresholdPoint:Ljava/util/List;

    .line 173
    .line 174
    if-nez v6, :cond_7

    .line 175
    .line 176
    new-instance v6, Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .line 180
    .line 181
    iput-object v6, v1, Lcom/android/server/display/config/ThresholdPoints;->brightnessThresholdPoint:Ljava/util/List;

    .line 182
    .line 183
    :cond_7
    iget-object v6, v1, Lcom/android/server/display/config/ThresholdPoints;->brightnessThresholdPoint:Ljava/util/List;

    .line 184
    .line 185
    check-cast v6, Ljava/util/ArrayList;

    .line 186
    .line 187
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_8
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 192
    .line 193
    const-string v0, "ThresholdPoint is not closed"

    .line 194
    .line 195
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p0

    .line 199
    :cond_9
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :cond_a
    if-ne v5, v3, :cond_b

    .line 205
    .line 206
    iput-object v1, v0, Lcom/android/server/display/config/BrightnessThresholds;->brightnessThresholdPoints:Lcom/android/server/display/config/ThresholdPoints;

    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :cond_b
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 211
    .line 212
    const-string v0, "ThresholdPoints is not closed"

    .line 213
    .line 214
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw p0

    .line 218
    :cond_c
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :cond_d
    if-ne v1, v3, :cond_e

    .line 224
    .line 225
    return-object v0

    .line 226
    :cond_e
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 227
    .line 228
    const-string v0, "BrightnessThresholds is not closed"

    .line 229
    .line 230
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw p0
.end method
