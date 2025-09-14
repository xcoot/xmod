.class public final Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field public mStats:Ljava/util/Map;

.field public final synthetic this$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;Lcom/android/server/display/BrightnessMappingStrategy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->this$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    .line 5
    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final getOrCreateUserStats(ILjava/util/Map;)Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->this$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    iget-object v2, v2, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mBucketBoundariesForStats:[F

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-direct {v1, v2, p0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;-><init>([FLcom/android/server/display/BrightnessMappingStrategy;)V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    return-object p0
.end method

.method public final getOrCreateUserStats(Ljava/util/Map;[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;I)V
    .locals 3

    .line 4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->this$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    iget-object v2, v2, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mBucketBoundariesForStats:[F

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-direct {v1, v2, p2, p0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;-><init>([F[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;Lcom/android/server/display/BrightnessMappingStrategy;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    return-void
.end method

.method public final readFromXML(Ljava/io/InputStream;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "]["

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->this$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    .line 6
    .line 7
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 17
    .line 18
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    move-object/from16 v6, p1

    .line 23
    .line 24
    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    const/4 v6, 0x1

    .line 32
    if-eq v5, v6, :cond_0

    .line 33
    .line 34
    const/4 v7, 0x2

    .line 35
    if-eq v5, v7, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    const-string v7, "SBS-stats"

    .line 43
    .line 44
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_b

    .line 49
    .line 50
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 55
    .line 56
    .line 57
    const/4 v7, -0x1

    .line 58
    const/4 v9, 0x0

    .line 59
    move v13, v7

    .line 60
    move-object v10, v9

    .line 61
    const/4 v11, 0x0

    .line 62
    const/4 v12, 0x0

    .line 63
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 64
    .line 65
    .line 66
    move-result v14

    .line 67
    if-eq v14, v6, :cond_a

    .line 68
    .line 69
    const/4 v15, 0x3

    .line 70
    if-ne v14, v15, :cond_1

    .line 71
    .line 72
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-le v6, v5, :cond_a

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :catch_0
    move-exception v0

    .line 80
    goto/16 :goto_6

    .line 81
    .line 82
    :cond_1
    :goto_2
    if-eq v14, v15, :cond_2

    .line 83
    .line 84
    const/4 v6, 0x4

    .line 85
    if-ne v14, v6, :cond_3

    .line 86
    .line 87
    :cond_2
    move-object/from16 v16, v1

    .line 88
    .line 89
    move-object/from16 v24, v2

    .line 90
    .line 91
    move v1, v7

    .line 92
    goto/16 :goto_5

    .line 93
    .line 94
    :cond_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    const-string/jumbo v14, "fixed-lux-zone"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v14
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    const-string v15, "AdaptiveBrightnessStatsTracker"

    .line 106
    .line 107
    if-eqz v14, :cond_5

    .line 108
    .line 109
    :try_start_1
    const-string/jumbo v14, "user"

    .line 110
    .line 111
    .line 112
    invoke-interface {v4, v9, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v14

    .line 116
    const-string/jumbo v8, "bucket-boundaries"

    .line 117
    .line 118
    .line 119
    invoke-interface {v4, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    const-string v9, ","

    .line 124
    .line 125
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    if-eqz v8, :cond_5

    .line 130
    .line 131
    array-length v8, v8

    .line 132
    iget-object v9, v2, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    .line 133
    .line 134
    iget-object v12, v2, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mUserManager:Landroid/os/UserManager;

    .line 135
    .line 136
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result v13

    .line 140
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v12, v13}, Landroid/os/UserManager;->getUserHandle(I)I

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    new-instance v12, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v13, "TAG_LUX_STATS ["

    .line 153
    .line 154
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    iget-object v13, v2, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mBucketBoundariesForStats:[F

    .line 170
    .line 171
    array-length v13, v13

    .line 172
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v13, "]"

    .line 176
    .line 177
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v12

    .line 184
    invoke-static {v15, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    if-eqz v8, :cond_4

    .line 188
    .line 189
    if-eq v9, v7, :cond_4

    .line 190
    .line 191
    iget-object v12, v2, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mBucketBoundariesForStats:[F

    .line 192
    .line 193
    array-length v12, v12

    .line 194
    if-ne v8, v12, :cond_4

    .line 195
    .line 196
    new-array v10, v8, [Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 197
    .line 198
    move v12, v8

    .line 199
    move v13, v9

    .line 200
    const/4 v11, 0x0

    .line 201
    goto :goto_3

    .line 202
    :cond_4
    move v12, v8

    .line 203
    move v13, v9

    .line 204
    :cond_5
    :goto_3
    const-string v8, "adaptive-brightness-weight-stats"

    .line 205
    .line 206
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v8

    .line 210
    if-eqz v8, :cond_6

    .line 211
    .line 212
    const-string/jumbo v8, "lux"

    .line 213
    .line 214
    .line 215
    const/4 v9, 0x0

    .line 216
    invoke-interface {v4, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    const-string/jumbo v14, "brightness-learned"

    .line 221
    .line 222
    .line 223
    invoke-interface {v4, v9, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v14

    .line 227
    const-string/jumbo v7, "weight"

    .line 228
    .line 229
    .line 230
    invoke-interface {v4, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    move-object/from16 v16, v1

    .line 235
    .line 236
    const-string/jumbo v1, "last-user-brighntess-time"

    .line 237
    .line 238
    .line 239
    invoke-interface {v4, v9, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 244
    .line 245
    .line 246
    move-result v8

    .line 247
    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 248
    .line 249
    .line 250
    move-result v14

    .line 251
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    move-object/from16 v23, v10

    .line 256
    .line 257
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 258
    .line 259
    .line 260
    move-result-wide v9

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    move-object/from16 v24, v2

    .line 267
    .line 268
    const-string/jumbo v2, "readFromXML: ["

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v2, "] l = "

    .line 278
    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v2, ", br = "

    .line 286
    .line 287
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    const-string v2, ", w = "

    .line 294
    .line 295
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const-string v2, ", t = "

    .line 302
    .line 303
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-static {v15, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .line 315
    .line 316
    if-eqz v23, :cond_7

    .line 317
    .line 318
    if-ge v11, v12, :cond_7

    .line 319
    .line 320
    add-int/lit8 v1, v11, 0x1

    .line 321
    .line 322
    new-instance v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 323
    .line 324
    move-object/from16 v17, v2

    .line 325
    .line 326
    move/from16 v18, v8

    .line 327
    .line 328
    move/from16 v19, v14

    .line 329
    .line 330
    move/from16 v20, v7

    .line 331
    .line 332
    move-wide/from16 v21, v9

    .line 333
    .line 334
    invoke-direct/range {v17 .. v22}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;-><init>(FFFJ)V

    .line 335
    .line 336
    .line 337
    aput-object v2, v23, v11

    .line 338
    .line 339
    move v11, v1

    .line 340
    goto :goto_4

    .line 341
    :cond_6
    move-object/from16 v16, v1

    .line 342
    .line 343
    move-object/from16 v24, v2

    .line 344
    .line 345
    move-object/from16 v23, v10

    .line 346
    .line 347
    :cond_7
    :goto_4
    const-string v1, "END"

    .line 348
    .line 349
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    if-eqz v1, :cond_9

    .line 354
    .line 355
    const/4 v1, -0x1

    .line 356
    if-eq v13, v1, :cond_8

    .line 357
    .line 358
    if-eqz v23, :cond_8

    .line 359
    .line 360
    const-string/jumbo v2, "getOrCreateUserStats from xml"

    .line 361
    .line 362
    .line 363
    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .line 365
    .line 366
    move-object/from16 v10, v23

    .line 367
    .line 368
    invoke-virtual {v0, v3, v10, v13}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->getOrCreateUserStats(Ljava/util/Map;[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;I)V

    .line 369
    .line 370
    .line 371
    goto :goto_5

    .line 372
    :cond_8
    move-object/from16 v10, v23

    .line 373
    .line 374
    goto :goto_5

    .line 375
    :cond_9
    move-object/from16 v10, v23

    .line 376
    .line 377
    const/4 v1, -0x1

    .line 378
    :goto_5
    move v7, v1

    .line 379
    move-object/from16 v1, v16

    .line 380
    .line 381
    move-object/from16 v2, v24

    .line 382
    .line 383
    const/4 v6, 0x1

    .line 384
    const/4 v9, 0x0

    .line 385
    goto/16 :goto_1

    .line 386
    .line 387
    :cond_a
    iput-object v3, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    .line 388
    .line 389
    return-void

    .line 390
    :cond_b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 391
    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .line 396
    .line 397
    const-string v2, "Ambient brightness stats not found in tracker file "

    .line 398
    .line 399
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    throw v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 413
    :goto_6
    new-instance v1, Ljava/io/IOException;

    .line 414
    .line 415
    const-string v2, "Failed to parse brightness stats file."

    .line 416
    .line 417
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 418
    .line 419
    .line 420
    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    .line 33
    .line 34
    const-string v3, "  "

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, " "

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, "\n"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0
.end method

.method public final writeToXML(Ljava/io/OutputStream;)V
    .locals 14

    .line 1
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 19
    .line 20
    .line 21
    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    invoke-virtual {v0, v1, v3}, Lcom/android/internal/util/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    const-string/jumbo v1, "writeToXML start"

    .line 29
    .line 30
    .line 31
    const-string v3, "AdaptiveBrightnessStatsTracker"

    .line 32
    .line 33
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const-string v1, "SBS-stats"

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 39
    .line 40
    .line 41
    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    .line 42
    .line 43
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_4

    .line 56
    .line 57
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    check-cast v5, Ljava/util/Map$Entry;

    .line 62
    .line 63
    iget-object v6, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->this$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    .line 64
    .line 65
    iget-object v7, v6, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    .line 66
    .line 67
    iget-object v6, v6, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mUserManager:Landroid/os/UserManager;

    .line 68
    .line 69
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6, v5}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    const-string/jumbo v6, "userSerialNumber = "

    .line 87
    .line 88
    .line 89
    invoke-static {v5, v6, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/4 v6, -0x1

    .line 93
    if-eq v5, v6, :cond_0

    .line 94
    .line 95
    iget-object v6, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    .line 96
    .line 97
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    check-cast v6, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    .line 106
    .line 107
    const-string/jumbo v7, "fixed-lux-zone"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v2, v7}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    .line 112
    .line 113
    const-string/jumbo v8, "user"

    .line 114
    .line 115
    .line 116
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v0, v2, v8, v5}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    .line 122
    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const/4 v8, 0x0

    .line 129
    move v9, v8

    .line 130
    :goto_1
    invoke-virtual {v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketBoundaries()[F

    .line 131
    .line 132
    .line 133
    move-result-object v10

    .line 134
    array-length v10, v10

    .line 135
    if-ge v9, v10, :cond_2

    .line 136
    .line 137
    if-lez v9, :cond_1

    .line 138
    .line 139
    const-string v10, ","

    .line 140
    .line 141
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    :cond_1
    invoke-virtual {v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketBoundaries()[F

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    aget v10, v10, v9

    .line 149
    .line 150
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    add-int/lit8 v9, v9, 0x1

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_2
    const-string/jumbo v9, "bucket-boundaries"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    invoke-virtual {v0, v2, v9, v5}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v2, v7}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 167
    .line 168
    .line 169
    :goto_2
    invoke-virtual {v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    array-length v5, v5

    .line 174
    if-ge v8, v5, :cond_3

    .line 175
    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    new-instance v7, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    new-instance v9, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    new-instance v10, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v11, "adaptive-brightness-weight-stats"

    .line 197
    .line 198
    invoke-virtual {v0, v2, v11}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 202
    .line 203
    .line 204
    move-result-object v12

    .line 205
    aget-object v12, v12, v8

    .line 206
    .line 207
    invoke-virtual {v12}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLux()F

    .line 208
    .line 209
    .line 210
    move-result v12

    .line 211
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 215
    .line 216
    .line 217
    move-result-object v12

    .line 218
    aget-object v12, v12, v8

    .line 219
    .line 220
    invoke-virtual {v12}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getBrightness()F

    .line 221
    .line 222
    .line 223
    move-result v12

    .line 224
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 228
    .line 229
    .line 230
    move-result-object v12

    .line 231
    aget-object v12, v12, v8

    .line 232
    .line 233
    invoke-virtual {v12}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getWeight()F

    .line 234
    .line 235
    .line 236
    move-result v12

    .line 237
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 241
    .line 242
    .line 243
    move-result-object v12

    .line 244
    aget-object v12, v12, v8

    .line 245
    .line 246
    invoke-virtual {v12}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLastUserBrightnessTime()J

    .line 247
    .line 248
    .line 249
    move-result-wide v12

    .line 250
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string/jumbo v12, "lux"

    .line 254
    .line 255
    .line 256
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v13

    .line 260
    invoke-virtual {v0, v2, v12, v13}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 261
    .line 262
    .line 263
    const-string/jumbo v12, "brightness-learned"

    .line 264
    .line 265
    .line 266
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v13

    .line 270
    invoke-virtual {v0, v2, v12, v13}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 271
    .line 272
    .line 273
    const-string/jumbo v12, "weight"

    .line 274
    .line 275
    .line 276
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v13

    .line 280
    invoke-virtual {v0, v2, v12, v13}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 281
    .line 282
    .line 283
    const-string/jumbo v12, "last-user-brighntess-time"

    .line 284
    .line 285
    .line 286
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v13

    .line 290
    invoke-virtual {v0, v2, v12, v13}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 291
    .line 292
    .line 293
    new-instance v12, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    const-string/jumbo v13, "writeToXML: ["

    .line 296
    .line 297
    .line 298
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v13, "] l="

    .line 305
    .line 306
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    const-string v5, ", br="

    .line 317
    .line 318
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v5, ", w="

    .line 329
    .line 330
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    const-string v5, ", t="

    .line 341
    .line 342
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v5

    .line 356
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0, v2, v11}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 360
    .line 361
    .line 362
    add-int/lit8 v8, v8, 0x1

    .line 363
    .line 364
    goto/16 :goto_2

    .line 365
    .line 366
    :cond_3
    const-string v5, "END"

    .line 367
    .line 368
    invoke-virtual {v0, v2, v5}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0, v2, v5}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 372
    .line 373
    .line 374
    goto/16 :goto_0

    .line 375
    .line 376
    :cond_4
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v0}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 380
    .line 381
    .line 382
    const-string/jumbo p0, "writeToXML done"

    .line 383
    .line 384
    .line 385
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .line 387
    .line 388
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 389
    .line 390
    .line 391
    return-void
.end method
