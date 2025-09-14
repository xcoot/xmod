.class public final Lcom/android/server/compat/overrides/AppCompatOverridesParser;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final BOOLEAN_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "true|false"

    .line 4
    const/4 v1, 0x2

    .line 5
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6
    return-void
.end method


# virtual methods
.method public final parsePackageOverrides(Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;)Ljava/util/Map;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 3
    move-object/from16 v1, p2

    .line 5
    move-wide/from16 v2, p3

    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    .line 10
    move-result v4

    .line 11
    if-eqz v4, :cond_0

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    new-instance v4, Landroid/util/ArrayMap;

    .line 20
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 23
    const-string/jumbo v5, "~"

    .line 26
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    move-result-object v5

    .line 30
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 33
    move-result-object v5

    .line 34
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 37
    move-result v6

    .line 38
    const/4 v7, 0x2

    .line 39
    const/4 v8, 0x0

    .line 40
    const/4 v9, 0x1

    .line 41
    const-string v10, "AppCompatOverridesParser"

    .line 43
    if-ne v6, v9, :cond_1

    .line 45
    const-string v5, ""

    .line 47
    invoke-static {v5, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 50
    move-result-object v0

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 55
    move-result v6

    .line 56
    if-le v6, v7, :cond_2

    .line 58
    const-string v5, "Only one signature per config is supported. Config: "

    .line 60
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x0

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Ljava/lang/String;

    .line 75
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Ljava/lang/String;

    .line 81
    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 84
    move-result-object v0

    .line 85
    :goto_0
    if-nez v0, :cond_3

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 90
    move-result-object v0

    .line 91
    return-object v0

    .line 92
    :cond_3
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 94
    check-cast v5, Ljava/lang/String;

    .line 96
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 98
    move-object v6, v0

    .line 99
    check-cast v6, Ljava/lang/String;

    .line 101
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_5

    .line 107
    move-object/from16 v0, p0

    .line 109
    iget-object v0, v0, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 111
    invoke-static {v5}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;)[B

    .line 114
    move-result-object v11

    .line 115
    invoke-virtual {v0, v1, v11, v9}, Landroid/content/pm/PackageManager;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_4

    .line 121
    goto :goto_1

    .line 122
    :cond_4
    move v0, v8

    .line 123
    goto :goto_2

    .line 124
    :catch_0
    move-exception v0

    .line 125
    goto :goto_3

    .line 126
    :cond_5
    :goto_1
    move v0, v9

    .line 127
    :goto_2
    if-nez v0, :cond_6

    .line 129
    new-instance v11, Ljava/lang/StringBuilder;

    .line 131
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v12, " did not have expected signature: "

    .line 139
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v11

    .line 149
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    goto :goto_4

    .line 153
    :goto_3
    const-string v11, "Unable to verify signature "

    .line 155
    const-string v12, " for "

    .line 157
    invoke-static {v11, v5, v12, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    move-result-object v1

    .line 161
    invoke-static {v10, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    move v0, v8

    .line 165
    :cond_6
    :goto_4
    if-nez v0, :cond_7

    .line 167
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 170
    move-result-object v0

    .line 171
    return-object v0

    .line 172
    :cond_7
    const-string v0, ","

    .line 174
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 177
    move-result-object v1

    .line 178
    array-length v5, v1

    .line 179
    move v6, v8

    .line 180
    :goto_5
    if-ge v6, v5, :cond_12

    .line 182
    aget-object v11, v1, v6

    .line 184
    const-string v0, ":"

    .line 186
    const/4 v12, 0x4

    .line 187
    invoke-virtual {v11, v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 190
    move-result-object v0

    .line 191
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 194
    move-result-object v0

    .line 195
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 198
    move-result v13

    .line 199
    if-eq v13, v12, :cond_8

    .line 201
    const-string v0, "Invalid change override entry: "

    .line 203
    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    move-result-object v0

    .line 207
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    goto/16 :goto_b

    .line 212
    :cond_8
    :try_start_1
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 215
    move-result-object v12

    .line 216
    check-cast v12, Ljava/lang/String;

    .line 218
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 221
    move-result-wide v12
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    .line 222
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 225
    move-result-object v14

    .line 226
    move-object/from16 v15, p5

    .line 228
    invoke-interface {v15, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 231
    move-result v14

    .line 232
    if-eqz v14, :cond_9

    .line 234
    goto/16 :goto_b

    .line 236
    :cond_9
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 239
    move-result-object v14

    .line 240
    check-cast v14, Ljava/lang/String;

    .line 242
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 245
    move-result-object v16

    .line 246
    check-cast v16, Ljava/lang/String;

    .line 248
    const/4 v7, 0x3

    .line 249
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 252
    move-result-object v0

    .line 253
    check-cast v0, Ljava/lang/String;

    .line 255
    sget-object v7, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

    .line 257
    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 260
    move-result-object v7

    .line 261
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    .line 264
    move-result v7

    .line 265
    if-nez v7, :cond_a

    .line 267
    const-string v0, "Invalid enabled string in override entry: "

    .line 269
    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 272
    move-result-object v0

    .line 273
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    goto/16 :goto_b

    .line 278
    :cond_a
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 281
    move-result v0

    .line 282
    new-instance v7, Landroid/app/compat/PackageOverride$Builder;

    .line 284
    invoke-direct {v7}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    .line 287
    invoke-virtual {v7, v0}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    .line 290
    move-result-object v0

    .line 291
    :try_start_2
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 294
    move-result v7

    .line 295
    if-nez v7, :cond_b

    .line 297
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 300
    move-result-wide v8

    .line 301
    invoke-virtual {v0, v8, v9}, Landroid/app/compat/PackageOverride$Builder;->setMinVersionCode(J)Landroid/app/compat/PackageOverride$Builder;

    .line 304
    goto :goto_6

    .line 305
    :catch_1
    move-exception v0

    .line 306
    goto :goto_a

    .line 307
    :cond_b
    :goto_6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    .line 310
    move-result v8

    .line 311
    if-nez v8, :cond_c

    .line 313
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 316
    move-result-wide v8

    .line 317
    invoke-virtual {v0, v8, v9}, Landroid/app/compat/PackageOverride$Builder;->setMaxVersionCode(J)Landroid/app/compat/PackageOverride$Builder;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 320
    :cond_c
    :try_start_3
    invoke-virtual {v0}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    .line 323
    move-result-object v0

    .line 324
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 327
    move-result-object v8

    .line 328
    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 331
    move-result v8

    .line 332
    if-eqz v8, :cond_10

    .line 334
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 337
    move-result-object v8

    .line 338
    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    move-result-object v8

    .line 342
    check-cast v8, Landroid/app/compat/PackageOverride;

    .line 344
    invoke-static {v0, v2, v3}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->isVersionInRange(Landroid/app/compat/PackageOverride;J)Z

    .line 347
    move-result v9

    .line 348
    invoke-static {v8, v2, v3}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->isVersionInRange(Landroid/app/compat/PackageOverride;J)Z

    .line 351
    move-result v11

    .line 352
    const/4 v14, -0x1

    .line 353
    if-eq v9, v11, :cond_e

    .line 355
    if-eqz v9, :cond_d

    .line 357
    goto :goto_7

    .line 358
    :cond_d
    const/4 v14, 0x1

    .line 359
    goto :goto_7

    .line 360
    :cond_e
    invoke-static {v0, v2, v3}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->isVersionAfterRange(Landroid/app/compat/PackageOverride;J)Z

    .line 363
    move-result v9

    .line 364
    invoke-static {v8, v2, v3}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->isVersionAfterRange(Landroid/app/compat/PackageOverride;J)Z

    .line 367
    move-result v11

    .line 368
    if-eq v9, v11, :cond_f

    .line 370
    if-eqz v9, :cond_d

    .line 372
    goto :goto_7

    .line 373
    :cond_f
    invoke-static {v0, v2, v3}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->getVersionProximity(Landroid/app/compat/PackageOverride;J)J

    .line 376
    move-result-wide v14

    .line 377
    invoke-static {v8, v2, v3}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->getVersionProximity(Landroid/app/compat/PackageOverride;J)J

    .line 380
    move-result-wide v8

    .line 381
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Long;->compare(JJ)I

    .line 384
    move-result v14

    .line 385
    :goto_7
    if-gez v14, :cond_11

    .line 387
    goto :goto_8

    .line 388
    :catch_2
    move-exception v0

    .line 389
    goto :goto_9

    .line 390
    :cond_10
    :goto_8
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 393
    move-result-object v8

    .line 394
    invoke-virtual {v4, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 397
    goto :goto_b

    .line 398
    :goto_9
    const-string v8, "Failed to build PackageOverride"

    .line 400
    invoke-static {v10, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    goto :goto_b

    .line 404
    :goto_a
    const-string v8, "Invalid min/max version code in override entry: "

    .line 406
    invoke-virtual {v8, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 409
    move-result-object v8

    .line 410
    invoke-static {v10, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
    goto :goto_b

    .line 414
    :catch_3
    move-exception v0

    .line 415
    const-string v8, "Invalid change ID in override entry: "

    .line 417
    invoke-virtual {v8, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 420
    move-result-object v8

    .line 421
    invoke-static {v10, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 424
    :cond_11
    :goto_b
    add-int/lit8 v6, v6, 0x1

    .line 426
    const/4 v7, 0x2

    .line 427
    const/4 v8, 0x0

    .line 428
    const/4 v9, 0x1

    .line 429
    goto/16 :goto_5

    .line 431
    :cond_12
    return-object v4
.end method
