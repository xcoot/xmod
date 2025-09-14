.class public final synthetic Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/art/ArtManagerLocal$BatchDexoptStartCallback;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$2:Lcom/android/server/art/ArtManagerLocal;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/art/ArtManagerLocal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/pm/PackageManagerService;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/art/ArtManagerLocal;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onBatchDexoptStart(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;Ljava/util/List;Lcom/android/server/art/model/BatchDexoptParams$Builder;Landroid/os/CancellationSignal;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/pm/PackageManagerService;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/art/ArtManagerLocal;

    .line 14
    .line 15
    const-string v6, "bg-dexopt"

    .line 16
    .line 17
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v7

    .line 21
    const/4 v8, 0x4

    .line 22
    if-eqz v7, :cond_15

    .line 23
    .line 24
    const-string v7, "DEXOPT for bg-dexopt"

    .line 25
    .line 26
    invoke-static {v8, v7}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v7, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;

    .line 30
    .line 31
    iget-object v9, v5, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 32
    .line 33
    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    const/4 v10, 0x0

    .line 41
    iput-boolean v10, v7, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mObserveStarted:Z

    .line 42
    .line 43
    iput-object v4, v7, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    new-instance v4, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;

    .line 46
    .line 47
    invoke-direct {v4, v7, v9}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;-><init>(Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;Landroid/os/Handler;)V

    .line 48
    .line 49
    .line 50
    iput-object v4, v7, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mHandler:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;

    .line 51
    .line 52
    iput-object v0, v7, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mArtManager:Lcom/android/server/art/ArtManagerLocal;

    .line 53
    .line 54
    invoke-virtual {v7}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->isBatteryFullyCharged()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/4 v4, 0x3

    .line 59
    const/4 v9, 0x1

    .line 60
    if-nez v0, :cond_0

    .line 61
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v5, "Can\'t run bg dexopt by not fully charged: "

    .line 65
    .line 66
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-class v5, Landroid/os/BatteryManagerInternal;

    .line 70
    .line 71
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Landroid/os/BatteryManagerInternal;

    .line 76
    .line 77
    invoke-virtual {v5}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v5, " abortCount: "

    .line 85
    .line 86
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    sget v5, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->abortCount:I

    .line 90
    .line 91
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v8, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    sget v0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->abortCount:I

    .line 102
    .line 103
    add-int/2addr v0, v9

    .line 104
    sput v0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->abortCount:I

    .line 105
    .line 106
    sput-boolean v10, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->policySelector:Z

    .line 107
    .line 108
    if-le v0, v4, :cond_1

    .line 109
    .line 110
    sput v10, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->abortCount:I

    .line 111
    .line 112
    sput-boolean v9, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->policySelector:Z

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v7}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->reachedToThermalThrottleLevel()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_2

    .line 120
    .line 121
    const-string v0, "Can\'t run bg dexopt by thermal throttling"

    .line 122
    .line 123
    invoke-static {v8, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_1
    :goto_0
    invoke-virtual/range {p5 .. p5}, Landroid/os/CancellationSignal;->cancel()V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_b

    .line 130
    .line 131
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    const-string v11, "Reordering packages based on priority"

    .line 141
    .line 142
    const-string v12, "PackageManager"

    .line 143
    .line 144
    invoke-static {v12, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    const-class v11, Landroid/os/BatteryManagerInternal;

    .line 148
    .line 149
    invoke-static {v11}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    check-cast v11, Landroid/os/BatteryManagerInternal;

    .line 154
    .line 155
    invoke-virtual {v11}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    .line 156
    .line 157
    .line 158
    move-result v11

    .line 159
    const/16 v13, 0x50

    .line 160
    .line 161
    const-string v14, ","

    .line 162
    .line 163
    const-string v15, ") "

    .line 164
    .line 165
    if-gt v11, v13, :cond_12

    .line 166
    .line 167
    const-string v11, "Not fully charged. Optimize top-priority packages only"

    .line 168
    .line 169
    invoke-static {v8, v11}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 170
    .line 171
    .line 172
    const/16 v11, 0x9

    .line 173
    .line 174
    invoke-static {v11}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    .line 175
    .line 176
    .line 177
    move-result-object v11

    .line 178
    if-eqz v11, :cond_3

    .line 179
    .line 180
    invoke-virtual {v11}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->getTemperature()I

    .line 181
    .line 182
    .line 183
    move-result v11

    .line 184
    goto :goto_1

    .line 185
    :cond_3
    const/4 v11, -0x1

    .line 186
    :goto_1
    sput v11, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->initialSurfaceTemperature:I

    .line 187
    .line 188
    const/16 v8, 0x168

    .line 189
    .line 190
    const/16 v13, 0x186

    .line 191
    .line 192
    const/16 v16, 0x5

    .line 193
    .line 194
    if-gt v11, v8, :cond_4

    .line 195
    .line 196
    add-int/lit8 v11, v11, 0xa

    .line 197
    .line 198
    sput v11, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->SurfaceTemperatureThreshold:I

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_4
    const/16 v8, 0x172

    .line 202
    .line 203
    if-gt v11, v8, :cond_5

    .line 204
    .line 205
    add-int/lit8 v11, v11, 0x8

    .line 206
    .line 207
    sput v11, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->SurfaceTemperatureThreshold:I

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_5
    const/16 v8, 0x17c

    .line 211
    .line 212
    if-gt v11, v8, :cond_6

    .line 213
    .line 214
    add-int/lit8 v11, v11, 0x5

    .line 215
    .line 216
    sput v11, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->SurfaceTemperatureThreshold:I

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_6
    if-gt v11, v13, :cond_7

    .line 220
    .line 221
    add-int/lit8 v11, v11, 0x2

    .line 222
    .line 223
    sput v11, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->SurfaceTemperatureThreshold:I

    .line 224
    .line 225
    goto :goto_2

    .line 226
    :cond_7
    const/16 v8, 0x190

    .line 227
    .line 228
    sput v8, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->SurfaceTemperatureThreshold:I

    .line 229
    .line 230
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    const-string v11, "SurfaceTemperature ["

    .line 233
    .line 234
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    sget v11, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->initialSurfaceTemperature:I

    .line 238
    .line 239
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v11, "] threashold ["

    .line 243
    .line 244
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    sget v11, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->SurfaceTemperatureThreshold:I

    .line 248
    .line 249
    const-string v13, "]"

    .line 250
    .line 251
    invoke-static {v8, v11, v13, v12}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    sput-boolean v9, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->enableTemperaturePolicy:Z

    .line 255
    .line 256
    sget v8, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->abortCount:I

    .line 257
    .line 258
    add-int/2addr v8, v9

    .line 259
    sput v8, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->abortCount:I

    .line 260
    .line 261
    sput-boolean v10, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->policySelector:Z

    .line 262
    .line 263
    if-le v8, v4, :cond_8

    .line 264
    .line 265
    sput v10, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->abortCount:I

    .line 266
    .line 267
    sput-boolean v9, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->policySelector:Z

    .line 268
    .line 269
    :cond_8
    sget v4, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->initialSurfaceTemperature:I

    .line 270
    .line 271
    const/16 v8, 0x186

    .line 272
    .line 273
    if-le v4, v8, :cond_9

    .line 274
    .line 275
    goto :goto_3

    .line 276
    :cond_9
    const/16 v16, -0x1

    .line 277
    .line 278
    :goto_3
    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 279
    .line 280
    const-wide/16 v10, 0x3

    .line 281
    .line 282
    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 283
    .line 284
    .line 285
    move-result-wide v10

    .line 286
    new-instance v4, Ljava/util/ArrayList;

    .line 287
    .line 288
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .line 290
    .line 291
    new-instance v13, Ljava/util/PriorityQueue;

    .line 292
    .line 293
    invoke-static {}, Ljava/util/Comparator;->reverseOrder()Ljava/util/Comparator;

    .line 294
    .line 295
    .line 296
    move-result-object v17

    .line 297
    invoke-static/range {v17 .. v17}, Ljava/util/Map$Entry;->comparingByValue(Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 298
    .line 299
    .line 300
    move-result-object v8

    .line 301
    invoke-direct {v13, v8}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    .line 302
    .line 303
    .line 304
    new-instance v8, Landroid/util/ArrayMap;

    .line 305
    .line 306
    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 307
    .line 308
    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 310
    .line 311
    .line 312
    move-result-wide v17

    .line 313
    invoke-interface {v5}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    new-instance v9, Ljava/util/ArrayList;

    .line 322
    .line 323
    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 327
    .line 328
    .line 329
    move-result-object v5

    .line 330
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 331
    .line 332
    .line 333
    move-result v9

    .line 334
    if-eqz v9, :cond_c

    .line 335
    .line 336
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v9

    .line 340
    check-cast v9, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 341
    .line 342
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 343
    .line 344
    .line 345
    move-result-object v19

    .line 346
    if-nez v19, :cond_a

    .line 347
    .line 348
    goto :goto_4

    .line 349
    :cond_a
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 350
    .line 351
    .line 352
    move-result-object v19

    .line 353
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    .line 354
    .line 355
    .line 356
    move-result-wide v19

    .line 357
    sub-long v21, v17, v19

    .line 358
    .line 359
    cmp-long v21, v21, v10

    .line 360
    .line 361
    if-gez v21, :cond_b

    .line 362
    .line 363
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v9

    .line 367
    move-object/from16 v21, v5

    .line 368
    .line 369
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    invoke-virtual {v8, v9, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    goto :goto_5

    .line 377
    :cond_b
    move-object/from16 v21, v5

    .line 378
    .line 379
    :goto_5
    move-object/from16 v5, v21

    .line 380
    .line 381
    goto :goto_4

    .line 382
    :cond_c
    invoke-virtual {v8}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 383
    .line 384
    .line 385
    move-result-object v5

    .line 386
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 387
    .line 388
    .line 389
    move-result-object v5

    .line 390
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 391
    .line 392
    .line 393
    move-result v9

    .line 394
    if-eqz v9, :cond_d

    .line 395
    .line 396
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v9

    .line 400
    check-cast v9, Ljava/lang/String;

    .line 401
    .line 402
    new-instance v10, Ljava/util/AbstractMap$SimpleEntry;

    .line 403
    .line 404
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v11

    .line 408
    check-cast v11, Ljava/lang/Long;

    .line 409
    .line 410
    invoke-direct {v10, v9, v11}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v13, v10}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    goto :goto_6

    .line 417
    :cond_d
    new-instance v5, Ljava/util/ArrayList;

    .line 418
    .line 419
    const-string v8, "com.google.android.gms"

    .line 420
    .line 421
    filled-new-array {v8}, [Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v8

    .line 425
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 426
    .line 427
    .line 428
    move-result-object v8

    .line 429
    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 430
    .line 431
    .line 432
    move/from16 v8, v16

    .line 433
    .line 434
    :cond_e
    :goto_7
    invoke-virtual {v13}, Ljava/util/PriorityQueue;->isEmpty()Z

    .line 435
    .line 436
    .line 437
    move-result v9

    .line 438
    if-nez v9, :cond_11

    .line 439
    .line 440
    const/4 v9, -0x1

    .line 441
    if-eq v8, v9, :cond_f

    .line 442
    .line 443
    if-lez v8, :cond_11

    .line 444
    .line 445
    :cond_f
    invoke-virtual {v13}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v10

    .line 449
    check-cast v10, Ljava/util/Map$Entry;

    .line 450
    .line 451
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v10

    .line 455
    check-cast v10, Ljava/lang/String;

    .line 456
    .line 457
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v11

    .line 461
    if-eqz v11, :cond_10

    .line 462
    .line 463
    const-string/jumbo v11, "skipped because it\'s an exception package : "

    .line 464
    .line 465
    .line 466
    invoke-static {v11, v10, v12}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    goto :goto_7

    .line 470
    :cond_10
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    if-lez v8, :cond_e

    .line 474
    .line 475
    add-int/lit8 v8, v8, -0x1

    .line 476
    .line 477
    goto :goto_7

    .line 478
    :cond_11
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 479
    .line 480
    .line 481
    new-instance v4, Ljava/lang/StringBuilder;

    .line 482
    .line 483
    const-string v5, "Target Packages (size : "

    .line 484
    .line 485
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 489
    .line 490
    .line 491
    move-result v5

    .line 492
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-static {v14, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v5

    .line 502
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    const/4 v5, 0x4

    .line 510
    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 511
    .line 512
    .line 513
    goto/16 :goto_a

    .line 514
    .line 515
    :cond_12
    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 516
    .line 517
    const-wide/16 v8, 0xa

    .line 518
    .line 519
    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 520
    .line 521
    .line 522
    move-result-wide v8

    .line 523
    invoke-interface {v5, v8, v9}, Lcom/android/server/pm/Computer;->getUnusedPackages(J)Ljava/util/Set;

    .line 524
    .line 525
    .line 526
    move-result-object v4

    .line 527
    const-string v5, "android.intent.action.MAIN"

    .line 528
    .line 529
    const-string v8, "android.intent.category.LAUNCHER"

    .line 530
    .line 531
    invoke-static {v5, v8}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    .line 533
    .line 534
    move-result-object v20

    .line 535
    new-instance v5, Landroid/util/ArraySet;

    .line 536
    .line 537
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 538
    .line 539
    .line 540
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 541
    .line 542
    .line 543
    move-result-object v19

    .line 544
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v21

    .line 548
    const-wide/16 v22, 0x0

    .line 549
    .line 550
    const/16 v24, 0x0

    .line 551
    .line 552
    invoke-interface/range {v19 .. v24}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    .line 553
    .line 554
    .line 555
    move-result-object v8

    .line 556
    invoke-virtual {v8}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 557
    .line 558
    .line 559
    move-result-object v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    goto :goto_8

    .line 561
    :catch_0
    const/4 v8, 0x0

    .line 562
    :goto_8
    if-eqz v8, :cond_14

    .line 563
    .line 564
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 565
    .line 566
    .line 567
    move-result-object v8

    .line 568
    :cond_13
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 569
    .line 570
    .line 571
    move-result v9

    .line 572
    if-eqz v9, :cond_14

    .line 573
    .line 574
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v9

    .line 578
    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 579
    .line 580
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 581
    .line 582
    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 583
    .line 584
    invoke-interface {v2, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    move-result v10

    .line 588
    if-eqz v10, :cond_13

    .line 589
    .line 590
    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 591
    .line 592
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 593
    .line 594
    invoke-virtual {v5, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    goto :goto_9

    .line 598
    :cond_14
    new-instance v8, Ljava/util/ArrayList;

    .line 599
    .line 600
    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 604
    .line 605
    .line 606
    new-instance v4, Ljava/util/ArrayList;

    .line 607
    .line 608
    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 612
    .line 613
    .line 614
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 615
    .line 616
    .line 617
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 618
    .line 619
    .line 620
    new-instance v8, Ljava/util/ArrayList;

    .line 621
    .line 622
    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 626
    .line 627
    .line 628
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 629
    .line 630
    .line 631
    new-instance v5, Ljava/util/ArrayList;

    .line 632
    .line 633
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 637
    .line 638
    .line 639
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 640
    .line 641
    .line 642
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 643
    .line 644
    .line 645
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 646
    .line 647
    .line 648
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 649
    .line 650
    .line 651
    new-instance v9, Ljava/lang/StringBuilder;

    .line 652
    .line 653
    const-string v10, "Optimizable Packages(size : "

    .line 654
    .line 655
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 659
    .line 660
    .line 661
    move-result v10

    .line 662
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 663
    .line 664
    .line 665
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    invoke-static {v14, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v10

    .line 672
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v9

    .line 679
    invoke-static {v12, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    .line 681
    .line 682
    new-instance v9, Ljava/lang/StringBuilder;

    .line 683
    .line 684
    const-string v10, "Recently used Packages(size : "

    .line 685
    .line 686
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 690
    .line 691
    .line 692
    move-result v10

    .line 693
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 694
    .line 695
    .line 696
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    invoke-static {v14, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v4

    .line 703
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    .line 705
    .line 706
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v4

    .line 710
    invoke-static {v12, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    .line 712
    .line 713
    new-instance v4, Ljava/lang/StringBuilder;

    .line 714
    .line 715
    const-string v9, "Executable Packages(size : "

    .line 716
    .line 717
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 721
    .line 722
    .line 723
    move-result v9

    .line 724
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    invoke-static {v14, v8}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v8

    .line 734
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    .line 736
    .line 737
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v4

    .line 741
    invoke-static {v12, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    .line 743
    .line 744
    new-instance v4, Ljava/lang/StringBuilder;

    .line 745
    .line 746
    const-string v8, "Remaining Packages(size : "

    .line 747
    .line 748
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 752
    .line 753
    .line 754
    move-result v8

    .line 755
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 756
    .line 757
    .line 758
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    .line 760
    .line 761
    invoke-static {v14, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v5

    .line 765
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    .line 767
    .line 768
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v4

    .line 772
    invoke-static {v12, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    .line 774
    .line 775
    :goto_a
    new-instance v4, Lcom/android/server/art/model/DexoptParams$Builder;

    .line 776
    .line 777
    invoke-direct {v4, v6}, Lcom/android/server/art/model/DexoptParams$Builder;-><init>(Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v4}, Lcom/android/server/art/model/DexoptParams$Builder;->build()Lcom/android/server/art/model/DexoptParams;

    .line 781
    .line 782
    .line 783
    move-result-object v4

    .line 784
    invoke-virtual {v3, v0}, Lcom/android/server/art/model/BatchDexoptParams$Builder;->setPackages(Ljava/util/List;)Lcom/android/server/art/model/BatchDexoptParams$Builder;

    .line 785
    .line 786
    .line 787
    move-result-object v0

    .line 788
    invoke-virtual {v0, v4}, Lcom/android/server/art/model/BatchDexoptParams$Builder;->setDexoptParams(Lcom/android/server/art/model/DexoptParams;)Lcom/android/server/art/model/BatchDexoptParams$Builder;

    .line 789
    .line 790
    .line 791
    const-string v0, "BgDexOptHelper"

    .line 792
    .line 793
    const-string v4, "Start observing thermal"

    .line 794
    .line 795
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    .line 797
    .line 798
    const/4 v0, 0x1

    .line 799
    iput-boolean v0, v7, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mObserveStarted:Z

    .line 800
    .line 801
    iget-object v4, v7, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mHandler:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;

    .line 802
    .line 803
    invoke-virtual {v4, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 804
    .line 805
    .line 806
    move-result-object v0

    .line 807
    const-wide/16 v5, 0x7d0

    .line 808
    .line 809
    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 810
    .line 811
    .line 812
    iget-object v0, v7, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mArtManager:Lcom/android/server/art/ArtManagerLocal;

    .line 813
    .line 814
    new-instance v4, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 815
    .line 816
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 817
    .line 818
    .line 819
    const/4 v5, 0x0

    .line 820
    invoke-virtual {v0, v5, v4, v7}, Lcom/android/server/art/ArtManagerLocal;->addDexoptDoneCallback(ZLjava/util/concurrent/Executor;Lcom/android/server/art/ArtManagerLocal$DexoptDoneCallback;)V

    .line 821
    .line 822
    .line 823
    :cond_15
    :goto_b
    const-string v0, "boot-after-mainline-update"

    .line 824
    .line 825
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 826
    .line 827
    .line 828
    move-result v1

    .line 829
    if-eqz v1, :cond_16

    .line 830
    .line 831
    const-string v1, "DEXOPT for boot-after-mainline-update"

    .line 832
    .line 833
    const/4 v4, 0x4

    .line 834
    invoke-static {v4, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 835
    .line 836
    .line 837
    new-instance v1, Ljava/util/ArrayList;

    .line 838
    .line 839
    sget-object v4, Lcom/android/server/pm/DexOptHelper;->designatedPkgs:[Ljava/lang/String;

    .line 840
    .line 841
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 842
    .line 843
    .line 844
    move-result-object v4

    .line 845
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 846
    .line 847
    .line 848
    new-instance v4, Lcom/android/server/art/model/DexoptParams$Builder;

    .line 849
    .line 850
    invoke-direct {v4, v0}, Lcom/android/server/art/model/DexoptParams$Builder;-><init>(Ljava/lang/String;)V

    .line 851
    .line 852
    .line 853
    const-string/jumbo v0, "speed-profile"

    .line 854
    .line 855
    .line 856
    invoke-virtual {v4, v0}, Lcom/android/server/art/model/DexoptParams$Builder;->setCompilerFilter(Ljava/lang/String;)Lcom/android/server/art/model/DexoptParams$Builder;

    .line 857
    .line 858
    .line 859
    move-result-object v0

    .line 860
    invoke-virtual {v0}, Lcom/android/server/art/model/DexoptParams$Builder;->build()Lcom/android/server/art/model/DexoptParams;

    .line 861
    .line 862
    .line 863
    move-result-object v0

    .line 864
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 865
    .line 866
    .line 867
    invoke-virtual {v3, v1}, Lcom/android/server/art/model/BatchDexoptParams$Builder;->setPackages(Ljava/util/List;)Lcom/android/server/art/model/BatchDexoptParams$Builder;

    .line 868
    .line 869
    .line 870
    move-result-object v1

    .line 871
    invoke-virtual {v1, v0}, Lcom/android/server/art/model/BatchDexoptParams$Builder;->setDexoptParams(Lcom/android/server/art/model/DexoptParams;)Lcom/android/server/art/model/BatchDexoptParams$Builder;

    .line 872
    .line 873
    .line 874
    :cond_16
    return-void
.end method
