.class public final Lcom/android/server/app/GameManagerService$SettingsHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameManagerService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    const/4 v2, 0x1

    .line 6
    iget v3, v1, Landroid/os/Message;->what:I

    .line 8
    const/4 v4, 0x3

    .line 9
    const/16 v5, 0x10

    .line 11
    const/4 v7, 0x2

    .line 12
    const/4 v8, 0x0

    .line 13
    packed-switch v3, :pswitch_data_0

    .line 16
    goto/16 :goto_11

    .line 18
    :pswitch_0
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20
    check-cast v3, Ljava/lang/Integer;

    .line 22
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x6

    .line 27
    if-gez v3, :cond_0

    .line 29
    const-string v2, "GameManagerService"

    .line 31
    new-instance v5, Ljava/lang/StringBuilder;

    .line 33
    const-string v6, "Attempt to write setting for invalid user: "

    .line 35
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 45
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v2, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 50
    iget-object v5, v2, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    .line 52
    monitor-enter v5

    .line 53
    :try_start_0
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 55
    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 58
    monitor-exit v5

    .line 59
    goto/16 :goto_11

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw v0

    .line 64
    :cond_0
    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    .line 67
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 69
    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 72
    iget-object v1, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 74
    sget v0, Lcom/android/server/app/GameManagerService;->$r8$clinit:I

    .line 76
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    const-string v0, ","

    .line 81
    const-string v4, "\t"

    .line 83
    const/4 v5, 0x0

    .line 84
    :try_start_1
    iget-object v7, v1, Lcom/android/server/app/GameManagerService;->mGameModeInterventionListFile:Landroid/util/AtomicFile;

    .line 86
    invoke-virtual {v7}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 89
    move-result-object v5

    .line 90
    new-instance v7, Ljava/io/BufferedWriter;

    .line 92
    new-instance v9, Ljava/io/OutputStreamWriter;

    .line 94
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 97
    move-result-object v10

    .line 98
    invoke-direct {v9, v5, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 101
    invoke-direct {v7, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 104
    new-instance v9, Ljava/lang/StringBuilder;

    .line 106
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    invoke-virtual {v1, v3}, Lcom/android/server/app/GameManagerService;->getInstalledGamePackageNamesByAllUsers(I)Ljava/util/List;

    .line 112
    move-result-object v10

    .line 113
    check-cast v10, Ljava/util/ArrayList;

    .line 115
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 118
    move-result-object v10

    .line 119
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    move-result v11

    .line 123
    if-eqz v11, :cond_4

    .line 125
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    move-result-object v11

    .line 129
    check-cast v11, Ljava/lang/String;

    .line 131
    invoke-virtual {v1, v3, v11}, Lcom/android/server/app/GameManagerService;->getConfig(ILjava/lang/String;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 134
    move-result-object v12

    .line 135
    if-nez v12, :cond_1

    .line 137
    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v13, v1, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 146
    invoke-virtual {v13, v11, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 149
    move-result v13

    .line 150
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v1, v11, v3}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    .line 159
    move-result v11

    .line 160
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v12}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModes()[I

    .line 169
    move-result-object v11

    .line 170
    array-length v13, v11

    .line 171
    move v14, v8

    .line 172
    :goto_1
    if-ge v14, v13, :cond_3

    .line 174
    aget v15, v11, v14

    .line 176
    invoke-virtual {v12, v15}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    .line 179
    move-result-object v8

    .line 180
    if-nez v8, :cond_2

    .line 182
    goto :goto_2

    .line 183
    :cond_2
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    monitor-enter v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 190
    :try_start_2
    iget-boolean v15, v8, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mUseAngle:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 192
    :try_start_3
    monitor-exit v8

    .line 193
    const-string v6, "angle=%d"

    .line 195
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    move-result-object v15

    .line 199
    filled-new-array {v15}, [Ljava/lang/Object;

    .line 202
    move-result-object v15

    .line 203
    invoke-static {v6, v15}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    move-result-object v6

    .line 207
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v8}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()F

    .line 216
    move-result v6

    .line 217
    const-string/jumbo v15, "scaling="

    .line 220
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v8}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFps()I

    .line 232
    move-result v6

    .line 233
    const-string/jumbo v8, "fps=%d"

    .line 236
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    move-result-object v6

    .line 240
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 243
    move-result-object v6

    .line 244
    invoke-static {v8, v6}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 247
    move-result-object v6

    .line 248
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :goto_2
    add-int/2addr v14, v2

    .line 255
    const/4 v8, 0x0

    .line 256
    goto :goto_1

    .line 257
    :catch_0
    move-exception v0

    .line 258
    goto :goto_4

    .line 259
    :catchall_1
    move-exception v0

    .line 260
    move-object v2, v0

    .line 261
    monitor-exit v8

    .line 262
    throw v2

    .line 263
    :cond_3
    const-string v6, "\n"

    .line 265
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const/4 v8, 0x0

    .line 269
    goto/16 :goto_0

    .line 271
    :cond_4
    invoke-virtual {v7, v9}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 274
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V

    .line 277
    invoke-static {v5}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 280
    iget-object v0, v1, Lcom/android/server/app/GameManagerService;->mGameModeInterventionListFile:Landroid/util/AtomicFile;

    .line 282
    invoke-virtual {v0, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 285
    :goto_3
    const/16 v1, 0xa

    .line 287
    goto :goto_5

    .line 288
    :goto_4
    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mGameModeInterventionListFile:Landroid/util/AtomicFile;

    .line 290
    invoke-virtual {v1, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    .line 295
    const-string v2, "Failed to write game_mode_intervention.list, exception "

    .line 297
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    move-result-object v0

    .line 307
    const-string v1, "GameManagerService"

    .line 309
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    goto :goto_3

    .line 313
    :goto_5
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 316
    goto/16 :goto_11

    .line 318
    :pswitch_1
    const-string v1, "GameManagerService"

    .line 320
    const-string v2, "Game loading power mode OFF (loading boost ended)"

    .line 322
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 327
    iget-object v0, v0, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 329
    const/4 v1, 0x0

    .line 330
    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 333
    goto/16 :goto_11

    .line 335
    :pswitch_2
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 337
    check-cast v3, Landroid/app/GameState;

    .line 339
    invoke-virtual {v3}, Landroid/app/GameState;->isLoading()Z

    .line 342
    move-result v6

    .line 343
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 346
    move-result-object v1

    .line 347
    const-string/jumbo v8, "packageName"

    .line 350
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 353
    move-result-object v15

    .line 354
    const-string/jumbo v8, "userId"

    .line 357
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 360
    move-result v1

    .line 361
    iget-object v8, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 363
    invoke-virtual {v8, v15, v1}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    .line 366
    move-result v8

    .line 367
    if-ne v8, v7, :cond_5

    .line 369
    move/from16 v16, v2

    .line 371
    goto :goto_6

    .line 372
    :cond_5
    const/16 v16, 0x0

    .line 374
    :goto_6
    :try_start_4
    iget-object v8, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 376
    iget-object v8, v8, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 378
    invoke-virtual {v8, v15, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 381
    move-result v8
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .line 382
    :goto_7
    move v10, v8

    .line 383
    goto :goto_8

    .line 384
    :catch_1
    const-string v8, "GameManagerService"

    .line 386
    const-string v9, "Failed to get package metadata"

    .line 388
    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v8, -0x1

    .line 392
    goto :goto_7

    .line 393
    :goto_8
    invoke-virtual {v3}, Landroid/app/GameState;->getMode()I

    .line 396
    move-result v8

    .line 397
    if-eq v8, v2, :cond_6

    .line 399
    if-eq v8, v7, :cond_8

    .line 401
    if-eq v8, v4, :cond_7

    .line 403
    const/4 v2, 0x4

    .line 404
    if-eq v8, v2, :cond_6

    .line 406
    const/4 v12, 0x0

    .line 407
    goto :goto_9

    .line 408
    :cond_6
    move v12, v2

    .line 409
    goto :goto_9

    .line 410
    :cond_7
    move v12, v4

    .line 411
    goto :goto_9

    .line 412
    :cond_8
    move v12, v7

    .line 413
    :goto_9
    invoke-virtual {v3}, Landroid/app/GameState;->getLabel()I

    .line 416
    move-result v14

    .line 417
    invoke-virtual {v3}, Landroid/app/GameState;->getQuality()I

    .line 420
    move-result v2

    .line 421
    const/16 v8, 0x1ad

    .line 423
    move-object v9, v15

    .line 424
    move/from16 v11, v16

    .line 426
    move v13, v6

    .line 427
    move-object v4, v15

    .line 428
    move v15, v2

    .line 429
    invoke-static/range {v8 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IZIZII)V

    .line 432
    if-eqz v16, :cond_d

    .line 434
    iget-object v2, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 436
    iget-object v7, v2, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 438
    if-nez v7, :cond_9

    .line 440
    const-string v0, "GameManagerService"

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    .line 444
    const-string v3, "Error setting loading mode for package "

    .line 446
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    const-string v3, " and userId "

    .line 454
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    move-result-object v1

    .line 464
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    goto/16 :goto_11

    .line 469
    :cond_9
    iget-object v2, v2, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    .line 471
    const/4 v7, 0x5

    .line 472
    invoke-virtual {v2, v7}, Landroid/os/Handler;->hasMessages(I)Z

    .line 475
    move-result v2

    .line 476
    if-eqz v2, :cond_a

    .line 478
    iget-object v2, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 480
    iget-object v2, v2, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    .line 482
    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 485
    :cond_a
    const-string v2, "GameManagerService"

    .line 487
    if-eqz v6, :cond_b

    .line 489
    const-string v8, "ON"

    .line 491
    goto :goto_a

    .line 492
    :cond_b
    const-string v8, "OFF"

    .line 494
    :goto_a
    new-instance v9, Ljava/lang/StringBuilder;

    .line 496
    const-string v10, "Game loading power mode "

    .line 498
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 501
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    const-string v8, " (game state change isLoading="

    .line 506
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 512
    const-string v8, ")"

    .line 514
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 520
    move-result-object v8

    .line 521
    invoke-static {v2, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v2, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 526
    iget-object v2, v2, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 528
    invoke-virtual {v2, v5, v6}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 531
    if-eqz v6, :cond_d

    .line 533
    iget-object v2, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 535
    invoke-virtual {v2, v1, v4}, Lcom/android/server/app/GameManagerService;->getLoadingBoostDuration(ILjava/lang/String;)I

    .line 538
    move-result v2

    .line 539
    if-lez v2, :cond_c

    .line 541
    goto :goto_b

    .line 542
    :cond_c
    const/16 v2, 0x1388

    .line 544
    :goto_b
    iget-object v5, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 546
    iget-object v5, v5, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    .line 548
    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 551
    move-result-object v6

    .line 552
    int-to-long v7, v2

    .line 553
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 556
    :cond_d
    iget-object v2, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 558
    iget-object v2, v2, Lcom/android/server/app/GameManagerService;->mGameStateListenerLock:Ljava/lang/Object;

    .line 560
    monitor-enter v2

    .line 561
    :try_start_5
    iget-object v5, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 563
    iget-object v5, v5, Lcom/android/server/app/GameManagerService;->mGameStateListeners:Landroid/util/ArrayMap;

    .line 565
    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 568
    move-result-object v5

    .line 569
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 572
    move-result-object v5

    .line 573
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 576
    move-result v6

    .line 577
    if-eqz v6, :cond_e

    .line 579
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 582
    move-result-object v6

    .line 583
    check-cast v6, Landroid/app/IGameStateListener;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 585
    :try_start_6
    invoke-interface {v6, v4, v3, v1}, Landroid/app/IGameStateListener;->onGameStateChanged(Ljava/lang/String;Landroid/app/GameState;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 588
    goto :goto_c

    .line 589
    :catchall_2
    move-exception v0

    .line 590
    goto :goto_d

    .line 591
    :catch_2
    :try_start_7
    const-string v7, "GameManagerService"

    .line 593
    new-instance v8, Ljava/lang/StringBuilder;

    .line 595
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 598
    const-string v9, "Cannot notify game state change for listener added by "

    .line 600
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    iget-object v9, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 605
    iget-object v9, v9, Lcom/android/server/app/GameManagerService;->mGameStateListeners:Landroid/util/ArrayMap;

    .line 607
    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    move-result-object v6

    .line 611
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 617
    move-result-object v6

    .line 618
    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    goto :goto_c

    .line 622
    :cond_e
    monitor-exit v2

    .line 623
    goto/16 :goto_11

    .line 625
    :goto_d
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 626
    throw v0

    .line 627
    :pswitch_3
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 629
    invoke-virtual {v0, v4, v2}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 632
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 634
    check-cast v1, Ljava/lang/Integer;

    .line 636
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 639
    move-result v1

    .line 640
    iget-object v2, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 642
    sget v3, Lcom/android/server/app/GameManagerService;->$r8$clinit:I

    .line 644
    invoke-virtual {v2, v1}, Lcom/android/server/app/GameManagerService;->getInstalledGamePackageNames(I)[Ljava/lang/String;

    .line 647
    move-result-object v2

    .line 648
    iget-object v0, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 650
    const/4 v3, 0x0

    .line 651
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/app/GameManagerService;->updateConfigsForUser(IZ[Ljava/lang/String;)V

    .line 654
    goto/16 :goto_11

    .line 656
    :pswitch_4
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 658
    check-cast v3, Ljava/lang/Integer;

    .line 660
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 663
    move-result v4

    .line 664
    if-gez v4, :cond_f

    .line 666
    const-string v3, "GameManagerService"

    .line 668
    new-instance v5, Ljava/lang/StringBuilder;

    .line 670
    const-string v6, "Attempt to write settings for invalid user: "

    .line 672
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 675
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 678
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 681
    move-result-object v4

    .line 682
    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v3, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 687
    iget-object v4, v3, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    .line 689
    monitor-enter v4

    .line 690
    :try_start_8
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 692
    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 695
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 697
    invoke-virtual {v0, v7, v1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 700
    monitor-exit v4

    .line 701
    goto/16 :goto_11

    .line 703
    :catchall_3
    move-exception v0

    .line 704
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 705
    throw v0

    .line 706
    :cond_f
    iget-object v4, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 708
    iget-object v4, v4, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    .line 710
    monitor-enter v4

    .line 711
    :try_start_9
    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 713
    invoke-virtual {v0, v2, v5}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 716
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 718
    invoke-virtual {v0, v7, v1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 721
    iget-object v1, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 723
    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    .line 725
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 728
    move-result v1

    .line 729
    if-eqz v1, :cond_10

    .line 731
    iget-object v1, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 733
    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    .line 735
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    move-result-object v1

    .line 739
    check-cast v1, Lcom/android/server/app/GameManagerSettings;

    .line 741
    iget-object v0, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 743
    iget-object v0, v0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    .line 745
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    invoke-virtual {v1}, Lcom/android/server/app/GameManagerSettings;->writePersistentDataLocked()V

    .line 751
    goto :goto_e

    .line 752
    :catchall_4
    move-exception v0

    .line 753
    goto :goto_f

    .line 754
    :cond_10
    :goto_e
    monitor-exit v4

    .line 755
    goto :goto_11

    .line 756
    :goto_f
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 757
    throw v0

    .line 758
    :pswitch_5
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 760
    check-cast v3, Ljava/lang/Integer;

    .line 762
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 765
    move-result v4

    .line 766
    if-gez v4, :cond_11

    .line 768
    const-string v3, "GameManagerService"

    .line 770
    new-instance v5, Ljava/lang/StringBuilder;

    .line 772
    const-string v6, "Attempt to write settings for invalid user: "

    .line 774
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 777
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 780
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 783
    move-result-object v4

    .line 784
    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v3, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 789
    iget-object v4, v3, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    .line 791
    monitor-enter v4

    .line 792
    :try_start_a
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 794
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 797
    monitor-exit v4

    .line 798
    goto :goto_11

    .line 799
    :catchall_5
    move-exception v0

    .line 800
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 801
    throw v0

    .line 802
    :cond_11
    const/4 v5, 0x0

    .line 803
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 806
    iget-object v4, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 808
    iget-object v4, v4, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    .line 810
    monitor-enter v4

    .line 811
    :try_start_b
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 813
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 816
    iget-object v1, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 818
    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    .line 820
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 823
    move-result v1

    .line 824
    if-eqz v1, :cond_12

    .line 826
    iget-object v0, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 828
    iget-object v0, v0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    .line 830
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    move-result-object v0

    .line 834
    check-cast v0, Lcom/android/server/app/GameManagerSettings;

    .line 836
    invoke-virtual {v0}, Lcom/android/server/app/GameManagerSettings;->writePersistentDataLocked()V

    .line 839
    goto :goto_10

    .line 840
    :catchall_6
    move-exception v0

    .line 841
    goto :goto_12

    .line 842
    :cond_12
    :goto_10
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 843
    const/16 v1, 0xa

    .line 845
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 848
    :goto_11
    return-void

    .line 849
    :goto_12
    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 850
    throw v0

    .line 851
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
