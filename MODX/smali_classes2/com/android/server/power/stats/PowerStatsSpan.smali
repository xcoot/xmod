.class public final Lcom/android/server/power/stats/PowerStatsSpan;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DATE_FORMAT:Ljava/time/format/DateTimeFormatter;


# instance fields
.field public final mMetadata:Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

.field public final mSections:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "MM-dd HH:mm:ss.SSS"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/server/power/stats/PowerStatsSpan;->DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    invoke-direct {v0, p1, p2}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/PowerStatsSpan;-><init>(Lcom/android/server/power/stats/PowerStatsSpan$Metadata;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/PowerStatsSpan$Metadata;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mSections:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mMetadata:Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    return-void
.end method

.method public static varargs read(Ljava/io/InputStream;Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;[Ljava/lang/String;)Lcom/android/server/power/stats/PowerStatsSpan;
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "agg-power-stats"

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x3

    .line 8
    const/4 v6, 0x1

    .line 9
    invoke-static/range {p3 .. p3}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 10
    .line 11
    .line 12
    move-result-object v7

    .line 13
    invoke-virtual {v7}, Landroid/util/ArraySet;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v8

    .line 17
    xor-int/2addr v8, v6

    .line 18
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 19
    .line 20
    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v9

    .line 24
    move-object/from16 v10, p0

    .line 25
    .line 26
    invoke-interface {v0, v10, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static/range {p1 .. p1}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->read(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    const/4 v10, 0x0

    .line 34
    if-nez v9, :cond_0

    .line 35
    .line 36
    return-object v10

    .line 37
    :cond_0
    new-instance v11, Lcom/android/server/power/stats/PowerStatsSpan;

    .line 38
    .line 39
    invoke-direct {v11, v9}, Lcom/android/server/power/stats/PowerStatsSpan;-><init>(Lcom/android/server/power/stats/PowerStatsSpan$Metadata;)V

    .line 40
    .line 41
    .line 42
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    const/4 v12, 0x0

    .line 47
    const/4 v13, 0x0

    .line 48
    :goto_0
    if-eq v9, v6, :cond_20

    .line 49
    .line 50
    const-string/jumbo v14, "section"

    .line 51
    .line 52
    .line 53
    if-eqz v12, :cond_3

    .line 54
    .line 55
    if-ne v9, v4, :cond_2

    .line 56
    .line 57
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v15

    .line 61
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v15

    .line 65
    if-eqz v15, :cond_2

    .line 66
    .line 67
    add-int/2addr v13, v2

    .line 68
    if-nez v13, :cond_1

    .line 69
    .line 70
    move-object v6, v10

    .line 71
    const/4 v12, 0x0

    .line 72
    goto/16 :goto_12

    .line 73
    .line 74
    :cond_1
    :goto_1
    move-object v6, v10

    .line 75
    goto/16 :goto_12

    .line 76
    .line 77
    :cond_2
    if-ne v9, v3, :cond_1

    .line 78
    .line 79
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    if-eqz v9, :cond_1

    .line 88
    .line 89
    add-int/2addr v13, v6

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    if-ne v9, v3, :cond_1

    .line 92
    .line 93
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v14

    .line 101
    if-eqz v14, :cond_1e

    .line 102
    .line 103
    const-string/jumbo v9, "type"

    .line 104
    .line 105
    .line 106
    invoke-interface {v0, v10, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    if-eqz v8, :cond_5

    .line 111
    .line 112
    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v14

    .line 116
    if-eqz v14, :cond_4

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    move v12, v6

    .line 120
    goto :goto_1

    .line 121
    :cond_5
    :goto_2
    move-object/from16 v14, p2

    .line 122
    .line 123
    check-cast v14, Lcom/android/server/power/stats/PowerStatsStore$DefaultSectionReader;

    .line 124
    .line 125
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    const-string v15, "battery-usage-stats"

    .line 132
    .line 133
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v15

    .line 137
    if-nez v15, :cond_1a

    .line 138
    .line 139
    const-string v15, "aggregated-power-stats"

    .line 140
    .line 141
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v15

    .line 145
    if-nez v15, :cond_6

    .line 146
    .line 147
    move-object v6, v10

    .line 148
    move-object v15, v6

    .line 149
    goto/16 :goto_10

    .line 150
    .line 151
    :cond_6
    new-instance v15, Lcom/android/server/power/stats/AggregatedPowerStatsSection;

    .line 152
    .line 153
    new-instance v2, Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 154
    .line 155
    new-instance v5, Landroid/util/SparseBooleanArray;

    .line 156
    .line 157
    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 158
    .line 159
    .line 160
    iget-object v14, v14, Lcom/android/server/power/stats/PowerStatsStore$DefaultSectionReader;->mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/AggregatedPowerStatsConfig;

    .line 161
    .line 162
    invoke-direct {v2, v14, v5}, Lcom/android/server/power/stats/AggregatedPowerStats;-><init>(Lcom/android/server/power/stats/AggregatedPowerStatsConfig;Landroid/util/SparseBooleanArray;)V

    .line 163
    .line 164
    .line 165
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    const/16 v16, 0x0

    .line 170
    .line 171
    const/16 v17, 0x0

    .line 172
    .line 173
    :goto_3
    if-eq v5, v6, :cond_7

    .line 174
    .line 175
    if-ne v5, v4, :cond_8

    .line 176
    .line 177
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    if-nez v4, :cond_7

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_7
    move-object v6, v10

    .line 189
    goto/16 :goto_f

    .line 190
    .line 191
    :cond_8
    :goto_4
    if-nez v16, :cond_a

    .line 192
    .line 193
    if-ne v5, v3, :cond_a

    .line 194
    .line 195
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    const-string/jumbo v5, "power_component"

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    if-nez v5, :cond_b

    .line 210
    .line 211
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    if-nez v4, :cond_9

    .line 216
    .line 217
    :goto_5
    goto :goto_6

    .line 218
    :cond_9
    move/from16 v17, v6

    .line 219
    .line 220
    :cond_a
    :goto_6
    move-object v6, v10

    .line 221
    goto/16 :goto_e

    .line 222
    .line 223
    :cond_b
    if-nez v17, :cond_c

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_c
    const-string v4, "id"

    .line 227
    .line 228
    invoke-interface {v0, v10, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    iget-object v5, v2, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 233
    .line 234
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    check-cast v5, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 239
    .line 240
    if-nez v5, :cond_d

    .line 241
    .line 242
    invoke-virtual {v14, v4}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->createPowerComponent(I)Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 243
    .line 244
    .line 245
    move-result-object v10

    .line 246
    if-eqz v10, :cond_d

    .line 247
    .line 248
    new-instance v5, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 249
    .line 250
    invoke-direct {v5, v2, v10}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;-><init>(Lcom/android/server/power/stats/AggregatedPowerStats;Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;)V

    .line 251
    .line 252
    .line 253
    iget-object v10, v2, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 254
    .line 255
    invoke-virtual {v10, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    :cond_d
    if-eqz v5, :cond_e

    .line 259
    .line 260
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 265
    .line 266
    .line 267
    move-result v10

    .line 268
    :goto_7
    if-eq v10, v6, :cond_e

    .line 269
    .line 270
    const/4 v6, 0x3

    .line 271
    if-ne v10, v6, :cond_f

    .line 272
    .line 273
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v6

    .line 277
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v6

    .line 281
    if-nez v6, :cond_e

    .line 282
    .line 283
    goto :goto_8

    .line 284
    :cond_e
    const/4 v6, 0x0

    .line 285
    goto/16 :goto_e

    .line 286
    .line 287
    :cond_f
    :goto_8
    if-ne v10, v3, :cond_18

    .line 288
    .line 289
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    move-object/from16 p3, v4

    .line 297
    .line 298
    const-wide/16 v3, -0x1

    .line 299
    .line 300
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 301
    .line 302
    .line 303
    move-result v18

    .line 304
    sparse-switch v18, :sswitch_data_0

    .line 305
    .line 306
    .line 307
    :goto_9
    const/4 v6, -0x1

    .line 308
    goto :goto_a

    .line 309
    :sswitch_0
    const-string/jumbo v10, "uid-stats"

    .line 310
    .line 311
    .line 312
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v6

    .line 316
    if-nez v6, :cond_10

    .line 317
    .line 318
    goto :goto_9

    .line 319
    :cond_10
    const/4 v6, 0x3

    .line 320
    goto :goto_a

    .line 321
    :sswitch_1
    const-string/jumbo v10, "state-stats"

    .line 322
    .line 323
    .line 324
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    if-nez v6, :cond_11

    .line 329
    .line 330
    goto :goto_9

    .line 331
    :cond_11
    const/4 v6, 0x2

    .line 332
    goto :goto_a

    .line 333
    :sswitch_2
    const-string v10, "descriptor"

    .line 334
    .line 335
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v6

    .line 339
    if-nez v6, :cond_12

    .line 340
    .line 341
    goto :goto_9

    .line 342
    :cond_12
    const/4 v6, 0x1

    .line 343
    goto :goto_a

    .line 344
    :sswitch_3
    const-string v10, "device-stats"

    .line 345
    .line 346
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v6

    .line 350
    if-nez v6, :cond_13

    .line 351
    .line 352
    goto :goto_9

    .line 353
    :cond_13
    const/4 v6, 0x0

    .line 354
    :goto_a
    packed-switch v6, :pswitch_data_0

    .line 355
    .line 356
    .line 357
    :cond_14
    :goto_b
    const/4 v6, 0x0

    .line 358
    goto :goto_d

    .line 359
    :pswitch_0
    const-string/jumbo v6, "uid"

    .line 360
    .line 361
    .line 362
    const/4 v10, 0x0

    .line 363
    invoke-interface {v0, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .line 365
    .line 366
    move-result v6

    .line 367
    invoke-virtual {v5, v6}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->getUidStats(I)Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    iget-object v10, v6, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/MultiStateStats;

    .line 372
    .line 373
    if-nez v10, :cond_15

    .line 374
    .line 375
    invoke-virtual {v5, v6, v3, v4}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;J)V

    .line 376
    .line 377
    .line 378
    :cond_15
    iget-object v3, v6, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/MultiStateStats;

    .line 379
    .line 380
    invoke-virtual {v3, v0}, Lcom/android/server/power/stats/MultiStateStats;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Z

    .line 381
    .line 382
    .line 383
    move-result v3

    .line 384
    if-nez v3, :cond_14

    .line 385
    .line 386
    const/4 v6, 0x0

    .line 387
    goto :goto_c

    .line 388
    :pswitch_1
    const-string v3, "key"

    .line 389
    .line 390
    const/4 v6, 0x0

    .line 391
    invoke-interface {v0, v6, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    iget-object v4, v5, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    .line 396
    .line 397
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    check-cast v4, Lcom/android/server/power/stats/MultiStateStats;

    .line 402
    .line 403
    if-nez v4, :cond_16

    .line 404
    .line 405
    invoke-virtual {v5, v3}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->createStateStats(I)Lcom/android/server/power/stats/MultiStateStats;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    :cond_16
    invoke-virtual {v4, v0}, Lcom/android/server/power/stats/MultiStateStats;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Z

    .line 410
    .line 411
    .line 412
    move-result v3

    .line 413
    if-nez v3, :cond_19

    .line 414
    .line 415
    goto :goto_c

    .line 416
    :pswitch_2
    const/4 v6, 0x0

    .line 417
    invoke-static/range {p1 .. p1}, Lcom/android/internal/os/PowerStats$Descriptor;->createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/internal/os/PowerStats$Descriptor;

    .line 418
    .line 419
    .line 420
    move-result-object v3

    .line 421
    iput-object v3, v5, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 422
    .line 423
    if-nez v3, :cond_19

    .line 424
    .line 425
    goto :goto_c

    .line 426
    :pswitch_3
    const/4 v6, 0x0

    .line 427
    iget-object v10, v5, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/MultiStateStats;

    .line 428
    .line 429
    if-nez v10, :cond_17

    .line 430
    .line 431
    invoke-virtual {v5, v3, v4}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->createDeviceStats(J)V

    .line 432
    .line 433
    .line 434
    :cond_17
    iget-object v3, v5, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/MultiStateStats;

    .line 435
    .line 436
    invoke-virtual {v3, v0}, Lcom/android/server/power/stats/MultiStateStats;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Z

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    if-nez v3, :cond_19

    .line 441
    .line 442
    :goto_c
    const/16 v16, 0x1

    .line 443
    .line 444
    goto :goto_e

    .line 445
    :cond_18
    move-object/from16 p3, v4

    .line 446
    .line 447
    goto :goto_b

    .line 448
    :cond_19
    :goto_d
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 449
    .line 450
    .line 451
    move-result v10

    .line 452
    move-object/from16 v4, p3

    .line 453
    .line 454
    const/4 v3, 0x2

    .line 455
    const/4 v6, 0x1

    .line 456
    goto/16 :goto_7

    .line 457
    .line 458
    :goto_e
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 459
    .line 460
    .line 461
    move-result v5

    .line 462
    move-object v10, v6

    .line 463
    const/4 v3, 0x2

    .line 464
    const/4 v4, 0x3

    .line 465
    const/4 v6, 0x1

    .line 466
    goto/16 :goto_3

    .line 467
    .line 468
    :goto_f
    invoke-direct {v15, v2}, Lcom/android/server/power/stats/AggregatedPowerStatsSection;-><init>(Lcom/android/server/power/stats/AggregatedPowerStats;)V

    .line 469
    .line 470
    .line 471
    goto :goto_10

    .line 472
    :cond_1a
    move-object v6, v10

    .line 473
    new-instance v15, Lcom/android/server/power/stats/BatteryUsageStatsSection;

    .line 474
    .line 475
    invoke-static/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/BatteryUsageStats;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    invoke-direct {v15, v2}, Lcom/android/server/power/stats/BatteryUsageStatsSection;-><init>(Landroid/os/BatteryUsageStats;)V

    .line 480
    .line 481
    .line 482
    :goto_10
    if-nez v15, :cond_1c

    .line 483
    .line 484
    if-nez v8, :cond_1b

    .line 485
    .line 486
    new-instance v15, Lcom/android/server/power/stats/PowerStatsSpan$1;

    .line 487
    .line 488
    invoke-direct {v15, v9, v9}, Lcom/android/server/power/stats/PowerStatsSpan$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    goto :goto_11

    .line 492
    :cond_1b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 493
    .line 494
    const-string v1, "Unsupported PowerStatsStore section type: "

    .line 495
    .line 496
    invoke-virtual {v1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    throw v0

    .line 504
    :cond_1c
    :goto_11
    iget-object v2, v11, Lcom/android/server/power/stats/PowerStatsSpan;->mMetadata:Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    .line 505
    .line 506
    iget-object v3, v2, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mSections:Ljava/util/List;

    .line 507
    .line 508
    check-cast v3, Ljava/util/ArrayList;

    .line 509
    .line 510
    iget-object v4, v15, Lcom/android/server/power/stats/PowerStatsSpan$Section;->mType:Ljava/lang/String;

    .line 511
    .line 512
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    move-result v3

    .line 516
    if-nez v3, :cond_1d

    .line 517
    .line 518
    iget-object v2, v2, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mSections:Ljava/util/List;

    .line 519
    .line 520
    check-cast v2, Ljava/util/ArrayList;

    .line 521
    .line 522
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    :cond_1d
    iget-object v2, v11, Lcom/android/server/power/stats/PowerStatsSpan;->mSections:Ljava/util/List;

    .line 526
    .line 527
    check-cast v2, Ljava/util/ArrayList;

    .line 528
    .line 529
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    .line 531
    .line 532
    goto :goto_12

    .line 533
    :cond_1e
    move-object v6, v10

    .line 534
    const-string/jumbo v2, "metadata"

    .line 535
    .line 536
    .line 537
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    move-result v2

    .line 541
    if-eqz v2, :cond_1f

    .line 542
    .line 543
    invoke-static/range {p1 .. p1}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->read(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    .line 544
    .line 545
    .line 546
    :cond_1f
    :goto_12
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 547
    .line 548
    .line 549
    move-result v9

    .line 550
    move-object v10, v6

    .line 551
    const/4 v2, -0x1

    .line 552
    const/4 v3, 0x2

    .line 553
    const/4 v4, 0x3

    .line 554
    const/4 v6, 0x1

    .line 555
    goto/16 :goto_0

    .line 556
    .line 557
    :cond_20
    return-object v11

    .line 558
    nop

    .line 559
    :sswitch_data_0
    .sparse-switch
        -0x7836a198 -> :sswitch_3
        -0x2c9b2c91 -> :sswitch_2
        0x6242c63 -> :sswitch_1
        0x5be620e2 -> :sswitch_0
    .end sparse-switch

    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mMetadata:Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->dump(Landroid/util/IndentingPrintWriter;Z)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mSections:Ljava/util/List;

    .line 8
    .line 9
    check-cast p0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/server/power/stats/PowerStatsSpan$Section;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/android/server/power/stats/PowerStatsSpan$Section;->mType:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/PowerStatsSpan$Section;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method public writeXml(Ljava/io/OutputStream;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p2, p1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-interface {p2, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mMetadata:Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string/jumbo v1, "metadata"

    .line 22
    .line 23
    .line 24
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 25
    .line 26
    .line 27
    const-string v2, "id"

    .line 28
    .line 29
    iget-wide v3, p1, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mId:J

    .line 30
    .line 31
    invoke-interface {p2, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 32
    .line 33
    .line 34
    const-string/jumbo v2, "version"

    .line 35
    .line 36
    .line 37
    const/4 v3, 0x2

    .line 38
    invoke-interface {p2, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 39
    .line 40
    .line 41
    iget-object v2, p1, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    .line 42
    .line 43
    check-cast v2, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    const-string/jumbo v4, "timeframe"

    .line 65
    .line 66
    .line 67
    invoke-interface {p2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    .line 69
    .line 70
    const-string/jumbo v5, "start"

    .line 71
    .line 72
    .line 73
    iget-wide v6, v3, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->startTime:J

    .line 74
    .line 75
    invoke-interface {p2, v0, v5, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    .line 77
    .line 78
    const-string/jumbo v5, "monotonic"

    .line 79
    .line 80
    .line 81
    iget-wide v6, v3, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->startMonotonicTime:J

    .line 82
    .line 83
    invoke-interface {p2, v0, v5, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    .line 85
    .line 86
    const-string v5, "duration"

    .line 87
    .line 88
    iget-wide v6, v3, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->duration:J

    .line 89
    .line 90
    invoke-interface {p2, v0, v5, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    .line 92
    .line 93
    invoke-interface {p2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p1, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mSections:Ljava/util/List;

    .line 98
    .line 99
    check-cast p1, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    const-string/jumbo v3, "type"

    .line 110
    .line 111
    .line 112
    const-string/jumbo v4, "section"

    .line 113
    .line 114
    .line 115
    if-eqz v2, :cond_1

    .line 116
    .line 117
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    check-cast v2, Ljava/lang/String;

    .line 122
    .line 123
    invoke-interface {p2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    .line 125
    .line 126
    invoke-interface {p2, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 127
    .line 128
    .line 129
    invoke-interface {p2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_1
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 134
    .line 135
    .line 136
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mSections:Ljava/util/List;

    .line 137
    .line 138
    check-cast p0, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-eqz p1, :cond_2

    .line 149
    .line 150
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Lcom/android/server/power/stats/PowerStatsSpan$Section;

    .line 155
    .line 156
    invoke-interface {p2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 157
    .line 158
    .line 159
    iget-object v1, p1, Lcom/android/server/power/stats/PowerStatsSpan$Section;->mType:Ljava/lang/String;

    .line 160
    .line 161
    invoke-interface {p2, v0, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, p2}, Lcom/android/server/power/stats/PowerStatsSpan$Section;->write(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 165
    .line 166
    .line 167
    invoke-interface {p2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_2
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 172
    .line 173
    .line 174
    return-void
.end method
