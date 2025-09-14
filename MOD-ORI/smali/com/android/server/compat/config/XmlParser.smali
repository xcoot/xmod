.class public abstract Lcom/android/server/compat/config/XmlParser;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static read(Ljava/io/InputStream;)Lcom/android/server/compat/config/Config;
    .locals 7

    .line 1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string/jumbo v3, "config"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_12

    .line 35
    .line 36
    new-instance p0, Lcom/android/server/compat/config/Config;

    .line 37
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 42
    .line 43
    .line 44
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const/4 v4, 0x3

    .line 49
    if-eq v3, v2, :cond_10

    .line 50
    .line 51
    if-eq v3, v4, :cond_10

    .line 52
    .line 53
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    const/4 v5, 0x2

    .line 58
    if-eq v3, v5, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const-string/jumbo v6, "compat-change"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_c

    .line 73
    .line 74
    new-instance v3, Lcom/android/server/compat/config/Change;

    .line 75
    .line 76
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string/jumbo v4, "id"

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    if-eqz v4, :cond_2

    .line 87
    .line 88
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 89
    .line 90
    .line 91
    move-result-wide v4

    .line 92
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    iput-object v4, v3, Lcom/android/server/compat/config/Change;->id:Ljava/lang/Long;

    .line 97
    .line 98
    :cond_2
    const-string/jumbo v4, "name"

    .line 99
    .line 100
    .line 101
    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    if-eqz v4, :cond_3

    .line 106
    .line 107
    iput-object v4, v3, Lcom/android/server/compat/config/Change;->name:Ljava/lang/String;

    .line 108
    .line 109
    :cond_3
    const-string/jumbo v4, "disabled"

    .line 110
    .line 111
    .line 112
    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    if-eqz v4, :cond_4

    .line 117
    .line 118
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    iput-object v4, v3, Lcom/android/server/compat/config/Change;->disabled:Ljava/lang/Boolean;

    .line 127
    .line 128
    :cond_4
    const-string/jumbo v4, "loggingOnly"

    .line 129
    .line 130
    .line 131
    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    if-eqz v4, :cond_5

    .line 136
    .line 137
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    iput-object v4, v3, Lcom/android/server/compat/config/Change;->loggingOnly:Ljava/lang/Boolean;

    .line 146
    .line 147
    :cond_5
    const-string/jumbo v4, "enableAfterTargetSdk"

    .line 148
    .line 149
    .line 150
    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    if-eqz v4, :cond_6

    .line 155
    .line 156
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    iput-object v4, v3, Lcom/android/server/compat/config/Change;->enableAfterTargetSdk:Ljava/lang/Integer;

    .line 165
    .line 166
    :cond_6
    const-string/jumbo v4, "enableSinceTargetSdk"

    .line 167
    .line 168
    .line 169
    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    if-eqz v4, :cond_7

    .line 174
    .line 175
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    iput-object v4, v3, Lcom/android/server/compat/config/Change;->enableSinceTargetSdk:Ljava/lang/Integer;

    .line 184
    .line 185
    :cond_7
    const-string/jumbo v4, "description"

    .line 186
    .line 187
    .line 188
    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    if-eqz v4, :cond_8

    .line 193
    .line 194
    iput-object v4, v3, Lcom/android/server/compat/config/Change;->description:Ljava/lang/String;

    .line 195
    .line 196
    :cond_8
    const-string/jumbo v4, "overridable"

    .line 197
    .line 198
    .line 199
    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    if-eqz v4, :cond_9

    .line 204
    .line 205
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    iput-object v4, v3, Lcom/android/server/compat/config/Change;->overridable:Ljava/lang/Boolean;

    .line 214
    .line 215
    :cond_9
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    const/4 v5, 0x4

    .line 220
    if-ne v4, v5, :cond_a

    .line 221
    .line 222
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 226
    .line 227
    .line 228
    :cond_a
    iget-object v4, p0, Lcom/android/server/compat/config/Config;->compatChange:Ljava/util/List;

    .line 229
    .line 230
    if-nez v4, :cond_b

    .line 231
    .line 232
    new-instance v4, Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .line 236
    .line 237
    iput-object v4, p0, Lcom/android/server/compat/config/Config;->compatChange:Ljava/util/List;

    .line 238
    .line 239
    :cond_b
    iget-object v4, p0, Lcom/android/server/compat/config/Config;->compatChange:Ljava/util/List;

    .line 240
    .line 241
    check-cast v4, Ljava/util/ArrayList;

    .line 242
    .line 243
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    goto/16 :goto_0

    .line 247
    .line 248
    :cond_c
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    if-ne v3, v5, :cond_f

    .line 253
    .line 254
    move v3, v2

    .line 255
    :goto_1
    if-eqz v3, :cond_0

    .line 256
    .line 257
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    if-eq v6, v5, :cond_e

    .line 262
    .line 263
    if-eq v6, v4, :cond_d

    .line 264
    .line 265
    goto :goto_1

    .line 266
    :cond_d
    add-int/lit8 v3, v3, -0x1

    .line 267
    .line 268
    goto :goto_1

    .line 269
    :cond_e
    add-int/lit8 v3, v3, 0x1

    .line 270
    .line 271
    goto :goto_1

    .line 272
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 273
    .line 274
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 275
    .line 276
    .line 277
    throw p0

    .line 278
    :cond_10
    if-ne v3, v4, :cond_11

    .line 279
    .line 280
    return-object p0

    .line 281
    :cond_11
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 282
    .line 283
    const-string v0, "Config is not closed"

    .line 284
    .line 285
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    throw p0

    .line 289
    :cond_12
    return-object v1
.end method
