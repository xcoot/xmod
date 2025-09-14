.class public final Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/art/ArtManagerLocal$DexoptDoneCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/DexOptHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/DexOptHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;->this$0:Lcom/android/server/pm/DexOptHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDexoptDone(Lcom/android/server/art/model/DexoptResult;)V
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getReason()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/16 v2, 0x14

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, -0x1

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    sparse-switch v5, :sswitch_data_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :sswitch_0
    const-string v5, "first-boot"

    .line 22
    .line 23
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v4, 0x2

    .line 31
    goto :goto_0

    .line 32
    :sswitch_1
    const-string v5, "boot-after-ota"

    .line 33
    .line 34
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v4, v0

    .line 42
    goto :goto_0

    .line 43
    :sswitch_2
    const-string v5, "boot-after-mainline-update"

    .line 44
    .line 45
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    move v4, v3

    .line 53
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 54
    .line 55
    .line 56
    goto/16 :goto_2

    .line 57
    .line 58
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    move v4, v3

    .line 67
    move v5, v4

    .line 68
    move v6, v5

    .line 69
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-eqz v7, :cond_6

    .line 74
    .line 75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    check-cast v7, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    .line 80
    .line 81
    invoke-virtual {v7}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getStatus()I

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    const/16 v8, 0xa

    .line 86
    .line 87
    if-eq v7, v8, :cond_5

    .line 88
    .line 89
    if-eq v7, v2, :cond_4

    .line 90
    .line 91
    const/16 v8, 0x1e

    .line 92
    .line 93
    if-eq v7, v8, :cond_3

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    add-int/2addr v6, v0

    .line 97
    goto :goto_1

    .line 98
    :cond_4
    add-int/2addr v4, v0

    .line 99
    goto :goto_1

    .line 100
    :cond_5
    add-int/2addr v5, v0

    .line 101
    goto :goto_1

    .line 102
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;->this$0:Lcom/android/server/pm/DexOptHelper;

    .line 103
    .line 104
    iget-wide v7, v0, Lcom/android/server/pm/DexOptHelper;->mBootDexoptStartTime:J

    .line 105
    .line 106
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 107
    .line 108
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 109
    .line 110
    .line 111
    move-result-wide v9

    .line 112
    sub-long/2addr v9, v7

    .line 113
    invoke-virtual {v1, v9, v10}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 114
    .line 115
    .line 116
    move-result-wide v7

    .line 117
    long-to-int v1, v7

    .line 118
    iget-object v7, v0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 119
    .line 120
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    iget-object v9, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 125
    .line 126
    const-string/jumbo v10, "opt_dialog_num_dexopted"

    .line 127
    .line 128
    .line 129
    invoke-static {v9, v10, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    iget-object v4, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 133
    .line 134
    const-string/jumbo v9, "opt_dialog_num_skipped"

    .line 135
    .line 136
    .line 137
    invoke-static {v4, v9, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 138
    .line 139
    .line 140
    iget-object v4, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 141
    .line 142
    const-string/jumbo v5, "opt_dialog_num_failed"

    .line 143
    .line 144
    .line 145
    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 146
    .line 147
    .line 148
    iget-object v4, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 149
    .line 150
    new-instance v5, Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .line 154
    .line 155
    new-instance v6, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda12;

    .line 156
    .line 157
    invoke-direct {v6, v0, v5}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/pm/DexOptHelper;Ljava/util/ArrayList;)V

    .line 158
    .line 159
    .line 160
    invoke-static {v8, v6}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    const-string/jumbo v5, "opt_dialog_num_total"

    .line 168
    .line 169
    .line 170
    invoke-static {v4, v5, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 171
    .line 172
    .line 173
    iget-object v0, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 174
    .line 175
    const-string/jumbo v4, "opt_dialog_time_s"

    .line 176
    .line 177
    .line 178
    invoke-static {v0, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 179
    .line 180
    .line 181
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_8

    .line 194
    .line 195
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    check-cast v1, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    .line 200
    .line 201
    iget-object v4, p0, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;->this$0:Lcom/android/server/pm/DexOptHelper;

    .line 202
    .line 203
    iget-object v4, v4, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 204
    .line 205
    invoke-virtual {v1}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getPackageName()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    .line 210
    .line 211
    invoke-virtual {v4, v5}, Lcom/android/server/pm/CompilerStats;->getOrCreatePackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-virtual {v1}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getDexContainerFileDexoptResults()Ljava/util/List;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    if-eqz v5, :cond_7

    .line 228
    .line 229
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    check-cast v5, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;

    .line 234
    .line 235
    invoke-virtual {v5}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getDexContainerFile()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    invoke-virtual {v5}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getDex2oatWallTimeMillis()J

    .line 240
    .line 241
    .line 242
    move-result-wide v7

    .line 243
    invoke-virtual {v4, v7, v8, v6}, Lcom/android/server/pm/CompilerStats$PackageStats;->setCompileTime(JLjava/lang/String;)V

    .line 244
    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;->this$0:Lcom/android/server/pm/DexOptHelper;

    .line 248
    .line 249
    iget-object v0, v0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 250
    .line 251
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 252
    .line 253
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 254
    .line 255
    monitor-enter v0

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;->this$0:Lcom/android/server/pm/DexOptHelper;

    .line 257
    .line 258
    iget-object v1, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 259
    .line 260
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    .line 261
    .line 262
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 263
    .line 264
    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 265
    .line 266
    invoke-virtual {v4, v1}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;->this$0:Lcom/android/server/pm/DexOptHelper;

    .line 270
    .line 271
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 272
    .line 273
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    .line 274
    .line 275
    const/4 v1, 0x0

    .line 276
    invoke-virtual {p0, v1}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getReason()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    const-string v0, "inactive"

    .line 285
    .line 286
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result p0

    .line 290
    if-eqz p0, :cond_b

    .line 291
    .line 292
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 297
    .line 298
    .line 299
    move-result-object p0

    .line 300
    :cond_9
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-eqz v0, :cond_b

    .line 305
    .line 306
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    check-cast v0, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    .line 311
    .line 312
    invoke-virtual {v0}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getStatus()I

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    if-ne v1, v2, :cond_9

    .line 317
    .line 318
    invoke-virtual {v0}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getDexContainerFileDexoptResults()Ljava/util/List;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    const-wide/16 v4, 0x0

    .line 327
    .line 328
    move-wide v8, v4

    .line 329
    move-wide v10, v8

    .line 330
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    if-eqz v4, :cond_a

    .line 335
    .line 336
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    check-cast v4, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;

    .line 341
    .line 342
    new-instance v5, Ljava/io/File;

    .line 343
    .line 344
    invoke-virtual {v4}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getDexContainerFile()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v6

    .line 348
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 352
    .line 353
    .line 354
    move-result-wide v5

    .line 355
    invoke-virtual {v4}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getSizeBytes()J

    .line 356
    .line 357
    .line 358
    move-result-wide v12

    .line 359
    add-long/2addr v12, v5

    .line 360
    add-long/2addr v10, v12

    .line 361
    invoke-virtual {v4}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getSizeBeforeBytes()J

    .line 362
    .line 363
    .line 364
    move-result-wide v12

    .line 365
    add-long/2addr v12, v5

    .line 366
    add-long/2addr v8, v12

    .line 367
    goto :goto_5

    .line 368
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getPackageName()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v7

    .line 372
    const/4 v12, 0x0

    .line 373
    const/16 v6, 0x80

    .line 374
    .line 375
    invoke-static/range {v6 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;JJZ)V

    .line 376
    .line 377
    .line 378
    goto :goto_4

    .line 379
    :cond_b
    new-instance p0, Landroid/util/ArraySet;

    .line 380
    .line 381
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 382
    .line 383
    .line 384
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    :cond_c
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    if-eqz v0, :cond_d

    .line 397
    .line 398
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    check-cast v0, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    .line 403
    .line 404
    invoke-virtual {v0}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->hasUpdatedArtifacts()Z

    .line 405
    .line 406
    .line 407
    move-result v1

    .line 408
    if-eqz v1, :cond_c

    .line 409
    .line 410
    invoke-virtual {v0}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getPackageName()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    goto :goto_6

    .line 418
    :cond_d
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 419
    .line 420
    .line 421
    move-result p1

    .line 422
    if-nez p1, :cond_e

    .line 423
    .line 424
    const-class p1, Lcom/android/server/PinnerService;

    .line 425
    .line 426
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object p1

    .line 430
    check-cast p1, Lcom/android/server/PinnerService;

    .line 431
    .line 432
    invoke-virtual {p1, p0, v3}, Lcom/android/server/PinnerService;->update(Landroid/util/ArraySet;Z)V

    .line 433
    .line 434
    .line 435
    :cond_e
    return-void

    .line 436
    :catchall_0
    move-exception p0

    .line 437
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 439
    .line 440
    throw p0

    .line 441
    :sswitch_data_0
    .sparse-switch
        -0x47de9523 -> :sswitch_2
        -0x23098d70 -> :sswitch_1
        -0xc5e4811 -> :sswitch_0
    .end sparse-switch

    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
