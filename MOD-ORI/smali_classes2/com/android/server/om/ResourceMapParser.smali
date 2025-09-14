.class public abstract Lcom/android/server/om/ResourceMapParser;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "eng"

    .line 2
    .line 3
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput-boolean v0, Lcom/android/server/om/ResourceMapParser;->DEBUG:Z

    .line 10
    .line 11
    return-void
.end method

.method public static parseResourceEntries(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/ArrayMap;Lcom/android/server/om/ResourceMapParser$ResourceType;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const/4 v5, 0x1

    .line 16
    if-eq v4, v5, :cond_12

    .line 17
    .line 18
    const/4 v6, 0x3

    .line 19
    if-ne v4, v6, :cond_0

    .line 20
    .line 21
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    if-le v7, v3, :cond_12

    .line 26
    .line 27
    :cond_0
    if-eq v4, v6, :cond_11

    .line 28
    .line 29
    const/4 v7, 0x4

    .line 30
    if-ne v4, v7, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v8, 0x0

    .line 38
    const-string/jumbo v9, "overlay"

    .line 39
    .line 40
    .line 41
    move-object/from16 v10, p2

    .line 42
    .line 43
    invoke-interface {v10, v8, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    const-string/jumbo v9, "match"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    const-string v9, " at  "

    .line 55
    .line 56
    const-string v11, "ResourceMapParser"

    .line 57
    .line 58
    if-eqz v4, :cond_10

    .line 59
    .line 60
    if-eqz v8, :cond_10

    .line 61
    .line 62
    new-instance v4, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    .line 68
    .line 69
    .line 70
    move-result v12

    .line 71
    :goto_1
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    .line 72
    .line 73
    .line 74
    move-result v13

    .line 75
    const-string v14, "drawable"

    .line 76
    .line 77
    const-string v15, "color"

    .line 78
    .line 79
    if-eq v13, v5, :cond_2

    .line 80
    .line 81
    if-ne v13, v6, :cond_3

    .line 82
    .line 83
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-le v5, v12, :cond_2

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    move/from16 v17, v3

    .line 91
    .line 92
    goto/16 :goto_6

    .line 93
    .line 94
    :cond_3
    :goto_2
    if-eq v13, v6, :cond_4

    .line 95
    .line 96
    if-ne v13, v7, :cond_5

    .line 97
    .line 98
    :cond_4
    const/4 v5, 0x1

    .line 99
    goto :goto_1

    .line 100
    :cond_5
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    const-string/jumbo v13, "original"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_4

    .line 112
    .line 113
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    const-string v6, "Unknown element under <match>: "

    .line 118
    .line 119
    if-ne v5, v7, :cond_b

    .line 120
    .line 121
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    if-eqz v5, :cond_8

    .line 126
    .line 127
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result v16

    .line 131
    if-nez v16, :cond_8

    .line 132
    .line 133
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    if-eqz v7, :cond_7

    .line 138
    .line 139
    move/from16 v17, v3

    .line 140
    .line 141
    const/4 v3, 0x1

    .line 142
    if-eq v7, v3, :cond_6

    .line 143
    .line 144
    const/4 v3, 0x0

    .line 145
    goto :goto_3

    .line 146
    :cond_6
    invoke-virtual {v1, v5, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    goto :goto_3

    .line 151
    :cond_7
    move/from16 v17, v3

    .line 152
    .line 153
    invoke-virtual {v1, v5, v14, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    :goto_3
    if-eqz v3, :cond_9

    .line 158
    .line 159
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_8
    move/from16 v17, v3

    .line 164
    .line 165
    :cond_9
    :goto_4
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    const/4 v5, 0x3

    .line 170
    if-ne v3, v5, :cond_a

    .line 171
    .line 172
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-eqz v3, :cond_a

    .line 181
    .line 182
    :goto_5
    move v6, v5

    .line 183
    move/from16 v3, v17

    .line 184
    .line 185
    const/4 v5, 0x1

    .line 186
    const/4 v7, 0x4

    .line 187
    goto :goto_1

    .line 188
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 218
    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_b
    move/from16 v17, v3

    .line 222
    .line 223
    const/4 v5, 0x3

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 254
    .line 255
    .line 256
    goto :goto_5

    .line 257
    :goto_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    if-nez v3, :cond_e

    .line 262
    .line 263
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    if-eqz v4, :cond_f

    .line 272
    .line 273
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    check-cast v4, Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    if-eqz v5, :cond_d

    .line 284
    .line 285
    const/4 v6, 0x1

    .line 286
    if-eq v5, v6, :cond_c

    .line 287
    .line 288
    goto :goto_7

    .line 289
    :cond_c
    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    check-cast v5, Landroid/util/ArrayMap;

    .line 294
    .line 295
    invoke-virtual {v5, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    goto :goto_7

    .line 299
    :cond_d
    const/4 v6, 0x1

    .line 300
    invoke-virtual {v2, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    check-cast v5, Landroid/util/ArrayMap;

    .line 305
    .line 306
    invoke-virtual {v5, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    goto :goto_7

    .line 310
    :cond_e
    sget-boolean v3, Lcom/android/server/om/ResourceMapParser;->DEBUG:Z

    .line 311
    .line 312
    if-eqz v3, :cond_f

    .line 313
    .line 314
    const-string v3, "Empty mapping for "

    .line 315
    .line 316
    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .line 322
    .line 323
    :cond_f
    :goto_8
    move/from16 v3, v17

    .line 324
    .line 325
    goto/16 :goto_0

    .line 326
    .line 327
    :cond_10
    move/from16 v17, v3

    .line 328
    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    const-string v4, "Unknown element under <resource-map>: "

    .line 332
    .line 333
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v4

    .line 350
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .line 359
    .line 360
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 361
    .line 362
    .line 363
    goto :goto_8

    .line 364
    :cond_11
    move-object/from16 v10, p2

    .line 365
    .line 366
    goto/16 :goto_0

    .line 367
    .line 368
    :cond_12
    return-void
.end method

.method public static parseResourceMap(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/server/om/ResourceMapParser;->DEBUG:Z

    .line 2
    .line 3
    const-string v1, "ResourceMapParser"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "parseResourceMap = "

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :try_start_0
    new-instance v2, Landroid/content/APKContents;

    .line 31
    .line 32
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplits()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    .line 42
    .line 43
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getPath()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-direct {v2, v3}, Landroid/content/APKContents;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/content/APKContents;->getAssets()Landroid/content/res/AssetManager;

    .line 51
    .line 52
    .line 53
    move-result-object v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 54
    :try_start_1
    invoke-virtual {v2}, Landroid/content/APKContents;->getResources()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string/jumbo v4, "resource_map"

    .line 59
    .line 60
    .line 61
    const-string/jumbo v5, "xml"

    .line 62
    .line 63
    .line 64
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_1

    .line 73
    .line 74
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {v4, p0, v2, v0}, Lcom/android/server/om/ResourceMapParser;->parseResourceMapToFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_3

    .line 92
    :catch_0
    move-exception p0

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    const-string/jumbo p0, "resource_map file not found in res/xml/.. folder"

    .line 95
    .line 96
    .line 97
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .line 99
    .line 100
    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catchall_1
    move-exception p0

    .line 108
    move-object v3, v0

    .line 109
    goto :goto_3

    .line 110
    :catch_1
    move-exception p0

    .line 111
    move-object v3, v0

    .line 112
    :goto_1
    :try_start_2
    const-string v2, "Failed to parse resource_map"

    .line 113
    .line 114
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :goto_2
    return-void

    .line 122
    :goto_3
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 123
    .line 124
    .line 125
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 126
    .line 127
    .line 128
    throw p0
.end method

.method public static parseResourceMapToFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 10

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    .line 7
    .line 8
    .line 9
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x1

    .line 20
    const-string v6, "color"

    .line 21
    .line 22
    const-string v7, "drawable"

    .line 23
    .line 24
    if-eq v4, v5, :cond_9

    .line 25
    .line 26
    const/4 v8, 0x3

    .line 27
    if-ne v4, v8, :cond_1

    .line 28
    .line 29
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    .line 30
    .line 31
    .line 32
    move-result v9

    .line 33
    if-le v9, v1, :cond_9

    .line 34
    .line 35
    :cond_1
    if-eq v4, v8, :cond_0

    .line 36
    .line 37
    const/4 v8, 0x4

    .line 38
    if-ne v4, v8, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    if-nez v4, :cond_3

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    if-eqz v3, :cond_7

    .line 49
    .line 50
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_5

    .line 55
    .line 56
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    if-nez v4, :cond_4

    .line 61
    .line 62
    new-instance v4, Landroid/util/ArrayMap;

    .line 63
    .line 64
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :cond_4
    sget-object v4, Lcom/android/server/om/ResourceMapParser$ResourceType;->DRAWABLE:Lcom/android/server/om/ResourceMapParser$ResourceType;

    .line 71
    .line 72
    invoke-static {p0, p2, p3, v0, v4}, Lcom/android/server/om/ResourceMapParser;->parseResourceEntries(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/ArrayMap;Lcom/android/server/om/ResourceMapParser$ResourceType;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_5
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_0

    .line 81
    .line 82
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    if-nez v4, :cond_6

    .line 87
    .line 88
    new-instance v4, Landroid/util/ArrayMap;

    .line 89
    .line 90
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    :cond_6
    sget-object v4, Lcom/android/server/om/ResourceMapParser$ResourceType;->COLOR:Lcom/android/server/om/ResourceMapParser$ResourceType;

    .line 97
    .line 98
    invoke-static {p0, p2, p3, v0, v4}, Lcom/android/server/om/ResourceMapParser;->parseResourceEntries(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/ArrayMap;Lcom/android/server/om/ResourceMapParser$ResourceType;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_7
    const-string/jumbo v3, "resource-map"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_8

    .line 110
    .line 111
    move v3, v5

    .line 112
    goto :goto_0

    .line 113
    :cond_8
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 114
    .line 115
    const-string p1, "Invalid resource_map XML"

    .line 116
    .line 117
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p0

    .line 121
    :cond_9
    const-string p2, "create resource map for "

    .line 122
    .line 123
    new-instance p3, Ljava/io/File;

    .line 124
    .line 125
    const-string v1, "/data/overlays/remaps/"

    .line 126
    .line 127
    invoke-direct {p3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    const/16 v4, 0x1e5

    .line 135
    .line 136
    const/4 v5, -0x1

    .line 137
    if-nez v3, :cond_a

    .line 138
    .line 139
    invoke-virtual {p3}, Ljava/io/File;->mkdir()Z

    .line 140
    .line 141
    .line 142
    invoke-static {p3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 143
    .line 144
    .line 145
    :cond_a
    new-instance p3, Ljava/io/File;

    .line 146
    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const-string v1, "/"

    .line 153
    .line 154
    const-string v8, "."

    .line 155
    .line 156
    invoke-virtual {p1, v1, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string p1, ".map"

    .line 164
    .line 165
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    new-instance p1, Ljava/io/BufferedWriter;

    .line 176
    .line 177
    new-instance v1, Ljava/io/FileWriter;

    .line 178
    .line 179
    invoke-direct {v1, p3, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 180
    .line 181
    .line 182
    invoke-direct {p1, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 183
    .line 184
    .line 185
    :try_start_0
    sget-boolean v1, Lcom/android/server/om/ResourceMapParser;->DEBUG:Z

    .line 186
    .line 187
    if-eqz v1, :cond_b

    .line 188
    .line 189
    const-string v1, "ResourceMapParser"

    .line 190
    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    goto :goto_1

    .line 207
    :catchall_0
    move-exception p0

    .line 208
    goto/16 :goto_4

    .line 209
    .line 210
    :cond_b
    :goto_1
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    check-cast p0, Landroid/util/ArrayMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    .line 216
    const-string p2, " "

    .line 217
    .line 218
    if-eqz p0, :cond_c

    .line 219
    .line 220
    :try_start_1
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-lez v1, :cond_c

    .line 225
    .line 226
    const-string v1, "# C\n"

    .line 227
    .line 228
    invoke-virtual {p1, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-eqz v1, :cond_c

    .line 244
    .line 245
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    check-cast v1, Ljava/util/Map$Entry;

    .line 250
    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    check-cast v3, Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    check-cast v1, Ljava/lang/String;

    .line 273
    .line 274
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {p1, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 285
    .line 286
    .line 287
    goto :goto_2

    .line 288
    :cond_c
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    check-cast p0, Landroid/util/ArrayMap;

    .line 293
    .line 294
    if-eqz p0, :cond_d

    .line 295
    .line 296
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    if-lez v0, :cond_d

    .line 301
    .line 302
    const-string v0, "# D\n"

    .line 303
    .line 304
    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 308
    .line 309
    .line 310
    move-result-object p0

    .line 311
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 312
    .line 313
    .line 314
    move-result-object p0

    .line 315
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    if-eqz v0, :cond_d

    .line 320
    .line 321
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    check-cast v0, Ljava/util/Map$Entry;

    .line 326
    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    .line 331
    .line 332
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    check-cast v2, Ljava/lang/String;

    .line 337
    .line 338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    check-cast v0, Ljava/lang/String;

    .line 349
    .line 350
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 361
    .line 362
    .line 363
    goto :goto_3

    .line 364
    :cond_d
    invoke-static {p3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    .line 366
    .line 367
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V

    .line 368
    .line 369
    .line 370
    return-void

    .line 371
    :goto_4
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 372
    .line 373
    .line 374
    goto :goto_5

    .line 375
    :catchall_1
    move-exception p1

    .line 376
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 377
    .line 378
    .line 379
    :goto_5
    throw p0
.end method
