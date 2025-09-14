.class public abstract Lcom/android/server/compat/config/XmlParser;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static read(Ljava/io/InputStream;)Lcom/android/server/compat/config/Config;
    .locals 7

    .line 1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 8
    move-result-object v0

    .line 9
    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 20
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 23
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    const-string/jumbo v3, "config"

    .line 30
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_12

    .line 36
    new-instance p0, Lcom/android/server/compat/config/Config;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 44
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 47
    move-result v3

    .line 48
    const/4 v4, 0x3

    .line 49
    if-eq v3, v2, :cond_10

    .line 51
    if-eq v3, v4, :cond_10

    .line 53
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 56
    move-result v3

    .line 57
    const/4 v5, 0x2

    .line 58
    if-eq v3, v5, :cond_1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 64
    move-result-object v3

    .line 65
    const-string/jumbo v6, "compat-change"

    .line 68
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_c

    .line 74
    new-instance v3, Lcom/android/server/compat/config/Change;

    .line 76
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 79
    const-string/jumbo v4, "id"

    .line 82
    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object v4

    .line 86
    if-eqz v4, :cond_2

    .line 88
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 91
    move-result-wide v4

    .line 92
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 95
    move-result-object v4

    .line 96
    iput-object v4, v3, Lcom/android/server/compat/config/Change;->id:Ljava/lang/Long;

    .line 98
    :cond_2
    const-string/jumbo v4, "name"

    .line 101
    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object v4

    .line 105
    if-eqz v4, :cond_3

    .line 107
    iput-object v4, v3, Lcom/android/server/compat/config/Change;->name:Ljava/lang/String;

    .line 109
    :cond_3
    const-string/jumbo v4, "disabled"

    .line 112
    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    move-result-object v4

    .line 116
    if-eqz v4, :cond_4

    .line 118
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 121
    move-result v4

    .line 122
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 125
    move-result-object v4

    .line 126
    iput-object v4, v3, Lcom/android/server/compat/config/Change;->disabled:Ljava/lang/Boolean;

    .line 128
    :cond_4
    const-string/jumbo v4, "loggingOnly"

    .line 131
    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    move-result-object v4

    .line 135
    if-eqz v4, :cond_5

    .line 137
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 140
    move-result v4

    .line 141
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 144
    move-result-object v4

    .line 145
    iput-object v4, v3, Lcom/android/server/compat/config/Change;->loggingOnly:Ljava/lang/Boolean;

    .line 147
    :cond_5
    const-string/jumbo v4, "enableAfterTargetSdk"

    .line 150
    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    move-result-object v4

    .line 154
    if-eqz v4, :cond_6

    .line 156
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 159
    move-result v4

    .line 160
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    move-result-object v4

    .line 164
    iput-object v4, v3, Lcom/android/server/compat/config/Change;->enableAfterTargetSdk:Ljava/lang/Integer;

    .line 166
    :cond_6
    const-string/jumbo v4, "enableSinceTargetSdk"

    .line 169
    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    move-result-object v4

    .line 173
    if-eqz v4, :cond_7

    .line 175
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 178
    move-result v4

    .line 179
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    move-result-object v4

    .line 183
    iput-object v4, v3, Lcom/android/server/compat/config/Change;->enableSinceTargetSdk:Ljava/lang/Integer;

    .line 185
    :cond_7
    const-string/jumbo v4, "description"

    .line 188
    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    move-result-object v4

    .line 192
    if-eqz v4, :cond_8

    .line 194
    iput-object v4, v3, Lcom/android/server/compat/config/Change;->description:Ljava/lang/String;

    .line 196
    :cond_8
    const-string/jumbo v4, "overridable"

    .line 199
    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    move-result-object v4

    .line 203
    if-eqz v4, :cond_9

    .line 205
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 208
    move-result v4

    .line 209
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 212
    move-result-object v4

    .line 213
    iput-object v4, v3, Lcom/android/server/compat/config/Change;->overridable:Ljava/lang/Boolean;

    .line 215
    :cond_9
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 218
    move-result v4

    .line 219
    const/4 v5, 0x4

    .line 220
    if-ne v4, v5, :cond_a

    .line 222
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 225
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 228
    :cond_a
    iget-object v4, p0, Lcom/android/server/compat/config/Config;->compatChange:Ljava/util/List;

    .line 230
    if-nez v4, :cond_b

    .line 232
    new-instance v4, Ljava/util/ArrayList;

    .line 234
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 237
    iput-object v4, p0, Lcom/android/server/compat/config/Config;->compatChange:Ljava/util/List;

    .line 239
    :cond_b
    iget-object v4, p0, Lcom/android/server/compat/config/Config;->compatChange:Ljava/util/List;

    .line 241
    check-cast v4, Ljava/util/ArrayList;

    .line 243
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    goto/16 :goto_0

    .line 248
    :cond_c
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 251
    move-result v3

    .line 252
    if-ne v3, v5, :cond_f

    .line 254
    move v3, v2

    .line 255
    :goto_1
    if-eqz v3, :cond_0

    .line 257
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 260
    move-result v6

    .line 261
    if-eq v6, v5, :cond_e

    .line 263
    if-eq v6, v4, :cond_d

    .line 265
    goto :goto_1

    .line 266
    :cond_d
    add-int/lit8 v3, v3, -0x1

    .line 268
    goto :goto_1

    .line 269
    :cond_e
    add-int/lit8 v3, v3, 0x1

    .line 271
    goto :goto_1

    .line 272
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 274
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 277
    throw p0

    .line 278
    :cond_10
    if-ne v3, v4, :cond_11

    .line 280
    return-object p0

    .line 281
    :cond_11
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 283
    const-string v0, "Config is not closed"

    .line 285
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 288
    throw p0

    .line 289
    :cond_12
    return-object v1
.end method
