.class public abstract Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final SYSTEM_FILE_PATH:Ljava/lang/String;


# instance fields
.field public final mPackageMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "/etc/pm_appcategory.xml"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->SYSTEM_FILE_PATH:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->mPackageMap:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public parseAppCategoryList()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->parseAppCategoryList(Ljava/lang/String;)V

    return-void
.end method

.method public final parseAppCategoryList(Ljava/lang/String;)V
    .locals 5

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->SYSTEM_FILE_PATH:Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object p1, v1

    .line 3
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "AppCategoryParser"

    if-nez v2, :cond_1

    .line 5
    const-string v2, "No xml file exists."

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 7
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 8
    :try_start_1
    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->parseAppCategoryListElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 11
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 12
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to parse the AppCategory file. "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->restoreToSystemFile()V

    :cond_2
    :goto_2
    return-void
.end method

.method public final parseAppCategoryListElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 16

    .line 1
    const/4 v2, 0x6

    .line 2
    const/4 v3, 0x5

    .line 3
    const/4 v4, 0x2

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v6, -0x1

    .line 6
    const/4 v7, 0x4

    .line 7
    const/4 v8, 0x3

    .line 8
    const/4 v9, 0x1

    .line 9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 13
    .line 14
    .line 15
    move-result v10

    .line 16
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 17
    .line 18
    .line 19
    move-result v11

    .line 20
    if-eq v11, v9, :cond_f

    .line 21
    .line 22
    if-ne v11, v8, :cond_0

    .line 23
    .line 24
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 25
    .line 26
    .line 27
    move-result v12

    .line 28
    if-le v12, v10, :cond_f

    .line 29
    .line 30
    :cond_0
    if-eq v11, v8, :cond_e

    .line 31
    .line 32
    if-ne v11, v7, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v11

    .line 39
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    const-string v12, "category"

    .line 43
    .line 44
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v12

    .line 48
    if-nez v12, :cond_2

    .line 49
    .line 50
    const-string/jumbo v12, "version"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v12

    .line 57
    if-nez v12, :cond_e

    .line 58
    .line 59
    const-string v12, "Invalid element name: "

    .line 60
    .line 61
    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    const-string v12, "AppCategoryParser"

    .line 66
    .line 67
    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    goto/16 :goto_6

    .line 71
    .line 72
    :cond_2
    const/4 v11, 0x0

    .line 73
    const-string/jumbo v12, "name"

    .line 74
    .line 75
    .line 76
    move-object/from16 v13, p1

    .line 77
    .line 78
    invoke-interface {v13, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    if-eqz v11, :cond_c

    .line 83
    .line 84
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    sparse-switch v12, :sswitch_data_0

    .line 89
    .line 90
    .line 91
    :goto_1
    move v11, v6

    .line 92
    goto/16 :goto_2

    .line 93
    .line 94
    :sswitch_0
    const-string v12, "CATEGORY_ACCESSIBILITY"

    .line 95
    .line 96
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    if-nez v11, :cond_3

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    const/16 v11, 0x8

    .line 104
    .line 105
    goto/16 :goto_2

    .line 106
    .line 107
    :sswitch_1
    const-string v12, "CATEGORY_VIDEO"

    .line 108
    .line 109
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    if-nez v11, :cond_4

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    const/4 v11, 0x7

    .line 117
    goto :goto_2

    .line 118
    :sswitch_2
    const-string v12, "CATEGORY_PRODUCTIVITY"

    .line 119
    .line 120
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v11

    .line 124
    if-nez v11, :cond_5

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_5
    move v11, v2

    .line 128
    goto :goto_2

    .line 129
    :sswitch_3
    const-string v12, "CATEGORY_IMAGE"

    .line 130
    .line 131
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v11

    .line 135
    if-nez v11, :cond_6

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_6
    move v11, v3

    .line 139
    goto :goto_2

    .line 140
    :sswitch_4
    const-string v12, "CATEGORY_AUDIO"

    .line 141
    .line 142
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v11

    .line 146
    if-nez v11, :cond_7

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_7
    move v11, v7

    .line 150
    goto :goto_2

    .line 151
    :sswitch_5
    const-string v12, "CATEGORY_NEWS"

    .line 152
    .line 153
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v11

    .line 157
    if-nez v11, :cond_8

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_8
    move v11, v8

    .line 161
    goto :goto_2

    .line 162
    :sswitch_6
    const-string v12, "CATEGORY_MAPS"

    .line 163
    .line 164
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v11

    .line 168
    if-nez v11, :cond_9

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_9
    move v11, v4

    .line 172
    goto :goto_2

    .line 173
    :sswitch_7
    const-string v12, "CATEGORY_GAME"

    .line 174
    .line 175
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v11

    .line 179
    if-nez v11, :cond_a

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_a
    move v11, v9

    .line 183
    goto :goto_2

    .line 184
    :sswitch_8
    const-string v12, "CATEGORY_SOCIAL"

    .line 185
    .line 186
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v11

    .line 190
    if-nez v11, :cond_b

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_b
    move v11, v5

    .line 194
    :goto_2
    packed-switch v11, :pswitch_data_0

    .line 195
    .line 196
    .line 197
    goto :goto_3

    .line 198
    :pswitch_0
    const/16 v11, 0x8

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :pswitch_1
    move v11, v4

    .line 202
    goto :goto_4

    .line 203
    :pswitch_2
    const/4 v11, 0x7

    .line 204
    goto :goto_4

    .line 205
    :pswitch_3
    move v11, v8

    .line 206
    goto :goto_4

    .line 207
    :pswitch_4
    move v11, v9

    .line 208
    goto :goto_4

    .line 209
    :pswitch_5
    move v11, v3

    .line 210
    goto :goto_4

    .line 211
    :pswitch_6
    move v11, v2

    .line 212
    goto :goto_4

    .line 213
    :pswitch_7
    move v11, v5

    .line 214
    goto :goto_4

    .line 215
    :pswitch_8
    move v11, v7

    .line 216
    goto :goto_4

    .line 217
    :cond_c
    :goto_3
    move v11, v6

    .line 218
    :goto_4
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->parsePackages(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    .line 219
    .line 220
    .line 221
    move-result-object v12

    .line 222
    check-cast v12, Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 225
    .line 226
    .line 227
    move-result-object v12

    .line 228
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 229
    .line 230
    .line 231
    move-result v14

    .line 232
    if-eqz v14, :cond_d

    .line 233
    .line 234
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v14

    .line 238
    check-cast v14, Ljava/lang/String;

    .line 239
    .line 240
    move-object/from16 v15, p0

    .line 241
    .line 242
    iget-object v0, v15, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->mPackageMap:Ljava/util/Map;

    .line 243
    .line 244
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    check-cast v0, Landroid/util/ArrayMap;

    .line 249
    .line 250
    invoke-virtual {v0, v14, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_d
    move-object/from16 v15, p0

    .line 255
    .line 256
    goto/16 :goto_0

    .line 257
    .line 258
    :cond_e
    :goto_6
    move-object/from16 v15, p0

    .line 259
    .line 260
    move-object/from16 v13, p1

    .line 261
    .line 262
    goto/16 :goto_0

    .line 263
    .line 264
    :cond_f
    return-void

    .line 265
    :sswitch_data_0
    .sparse-switch
        -0x4f8c9e32 -> :sswitch_8
        -0x3052416d -> :sswitch_7
        -0x304f86c8 -> :sswitch_6
        -0x304f028c -> :sswitch_5
        0x25be7d35 -> :sswitch_4
        0x262b8aba -> :sswitch_3
        0x26a20273 -> :sswitch_2
        0x26e0f5da -> :sswitch_1
        0x3d16c3ad -> :sswitch_0
    .end sparse-switch

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parsePackages(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 4

    .line 1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eq v1, v2, :cond_3

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-le v3, p0, :cond_3

    .line 25
    .line 26
    :cond_1
    if-eq v1, v2, :cond_0

    .line 27
    .line 28
    const/4 v2, 0x4

    .line 29
    if-ne v1, v2, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string/jumbo v2, "package"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    const-string/jumbo v2, "name"

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_0

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_0

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    return-object v0
.end method

.method public abstract restoreToSystemFile()V
.end method
