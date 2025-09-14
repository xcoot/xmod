.class public final Lcom/android/server/chimera/AggressivePolicyHandler;
.super Lcom/android/server/chimera/PolicyHandler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAdjustTargetFreeEndTime:J

.field public mAdjustTargetFreeFactor:D

.field public mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

.field public mHeavyLaunchBufferSize:I

.field public mHeavyLaunchCounter:Lcom/android/server/chimera/HeavyLaunchCounter;

.field public mHeavyLaunchPackageLimit:I

.field public mIsAdjustTargetFree:Z

.field public mIsHeavyLaunchOn:Z

.field public mPkgKillIntervalDefault:I

.field public mSubProcessKillList:Lcom/android/internal/util/RingBuffer;


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "wLru: "

    .line 4
    if-eqz p2, :cond_10

    .line 6
    array-length v1, p2

    .line 7
    if-nez v1, :cond_0

    .line 9
    goto/16 :goto_3

    .line 11
    :cond_0
    const-string v1, "-a"

    .line 13
    const/4 v2, 0x0

    .line 14
    aget-object v3, p2, v2

    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpCommonInfo(Ljava/io/PrintWriter;)V

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/AggressivePolicyHandler;->dumpInfo(Ljava/io/PrintWriter;)V

    .line 28
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 31
    iget-boolean p2, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsHeavyLaunchOn:Z

    .line 33
    if-eqz p2, :cond_1

    .line 35
    iget-object p2, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchCounter:Lcom/android/server/chimera/HeavyLaunchCounter;

    .line 37
    invoke-virtual {p2}, Lcom/android/server/chimera/HeavyLaunchCounter;->isHeavyLaunch()Z

    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    const-string v1, "HeavyLaunch mode from "

    .line 47
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Lcom/android/server/chimera/HeavyLaunchCounter;->getLastStartedUpTime()J

    .line 53
    move-result-wide v3

    .line 54
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    :cond_1
    const-string p2, "************** adjinfo ****************"

    .line 66
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpAdjInfo(Ljava/io/PrintWriter;)V

    .line 72
    const-string p2, "\n************** appinfo ****************"

    .line 74
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpAppInfo(Ljava/io/PrintWriter;)V

    .line 80
    const-string p2, "\n************** kill history ****************"

    .line 82
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpHistoryBuffer(Ljava/io/PrintWriter;)V

    .line 88
    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 90
    iget-boolean p2, p2, Lcom/android/server/chimera/SettingRepository;->mIsSubProcEnable:Z

    .line 92
    if-eqz p2, :cond_10

    .line 94
    const-string p2, "\n************** kill sub-process info ****************"

    .line 96
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    const-string p2, "Date Time Pid ProcessName Rss"

    .line 101
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    iget-object p2, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mSubProcessKillList:Lcom/android/internal/util/RingBuffer;

    .line 106
    invoke-virtual {p2}, Lcom/android/internal/util/RingBuffer;->size()I

    .line 109
    move-result p2

    .line 110
    if-lez p2, :cond_10

    .line 112
    iget-object p0, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mSubProcessKillList:Lcom/android/internal/util/RingBuffer;

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 117
    move-result-object p0

    .line 118
    check-cast p0, [Ljava/lang/String;

    .line 120
    array-length p2, p0

    .line 121
    :goto_0
    if-ge v2, p2, :cond_2

    .line 123
    aget-object v0, p0, v2

    .line 125
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    add-int/lit8 v2, v2, 0x1

    .line 130
    goto :goto_0

    .line 131
    :cond_2
    const-string p0, ""

    .line 133
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    goto/16 :goto_3

    .line 138
    :cond_3
    array-length v1, p2

    .line 139
    if-lez v1, :cond_10

    .line 141
    aget-object v1, p2, v2

    .line 143
    const-string/jumbo v3, "weight"

    .line 146
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    move-result v3

    .line 150
    const/4 v4, 0x2

    .line 151
    const/4 v5, 0x1

    .line 152
    if-eqz v3, :cond_4

    .line 154
    array-length v3, p2

    .line 155
    if-le v3, v4, :cond_4

    .line 157
    :try_start_0
    aget-object v1, p2, v5

    .line 159
    aget-object p2, p2, v4

    .line 161
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 168
    move-result v1

    .line 169
    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 172
    move-result-object p2

    .line 173
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 176
    move-result p2

    .line 177
    invoke-virtual {p0, v1, p2}, Lcom/android/server/chimera/AggressivePolicyHandler;->setWeight(FF)V

    .line 180
    new-instance p0, Ljava/lang/StringBuilder;

    .line 182
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 188
    const-string v0, " wStandbyBucket: "

    .line 190
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    move-result-object p0

    .line 200
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    goto/16 :goto_3

    .line 205
    :catch_0
    move-exception p0

    .line 206
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 209
    move-result-object p0

    .line 210
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    goto/16 :goto_3

    .line 215
    :cond_4
    const-string/jumbo v0, "set_normal_boost_mode"

    .line 218
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    move-result v0

    .line 222
    const-string/jumbo v3, "off"

    .line 225
    const-string/jumbo v6, "on"

    .line 228
    if-eqz v0, :cond_6

    .line 230
    array-length v0, p2

    .line 231
    if-le v0, v5, :cond_6

    .line 233
    aget-object p2, p2, v5

    .line 235
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 238
    move-result-object p2

    .line 239
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    move-result p2

    .line 243
    iput-boolean p2, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    .line 245
    if-eqz p2, :cond_5

    .line 247
    move-object v3, v6

    .line 248
    :cond_5
    const-string p0, "Normal kill boost : "

    .line 250
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    move-result-object p0

    .line 254
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    goto/16 :goto_3

    .line 259
    :cond_6
    const-string/jumbo v0, "set_heavy_boost_mode"

    .line 262
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_8

    .line 268
    array-length v0, p2

    .line 269
    if-le v0, v5, :cond_8

    .line 271
    aget-object p2, p2, v5

    .line 273
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 276
    move-result-object p2

    .line 277
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    move-result p2

    .line 281
    iput-boolean p2, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    .line 283
    if-eqz p2, :cond_7

    .line 285
    move-object v3, v6

    .line 286
    :cond_7
    const-string p0, "Heavy kill boost : "

    .line 288
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 291
    move-result-object p0

    .line 292
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    goto/16 :goto_3

    .line 297
    :cond_8
    const-string/jumbo v0, "set_normal_kill_interval"

    .line 300
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    move-result v0

    .line 304
    if-eqz v0, :cond_9

    .line 306
    array-length v0, p2

    .line 307
    if-le v0, v5, :cond_9

    .line 309
    :try_start_1
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    .line 311
    aget-object v0, v0, v2

    .line 313
    aget-object p2, p2, v5

    .line 315
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 318
    move-result p2

    .line 319
    mul-int/lit16 p2, p2, 0x3e8

    .line 321
    aput p2, v0, v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 323
    goto :goto_1

    .line 324
    :catch_1
    move-exception p2

    .line 325
    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 328
    move-result-object p2

    .line 329
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 334
    const-string v0, "Normal kill interval : "

    .line 336
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    .line 341
    aget-object p0, p0, v2

    .line 343
    aget p0, p0, v4

    .line 345
    invoke-static {p2, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 348
    goto/16 :goto_3

    .line 350
    :cond_9
    const-string/jumbo v0, "set_heavy_kill_interval"

    .line 353
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    move-result v0

    .line 357
    if-eqz v0, :cond_a

    .line 359
    array-length v0, p2

    .line 360
    if-le v0, v5, :cond_a

    .line 362
    :try_start_2
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    .line 364
    aget-object v0, v0, v5

    .line 366
    aget-object p2, p2, v5

    .line 368
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 371
    move-result p2

    .line 372
    mul-int/lit16 p2, p2, 0x3e8

    .line 374
    aput p2, v0, v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 376
    goto :goto_2

    .line 377
    :catch_2
    move-exception p2

    .line 378
    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 381
    move-result-object p2

    .line 382
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 387
    const-string v0, "Heavy kill interval : "

    .line 389
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    .line 394
    aget-object p0, p0, v5

    .line 396
    aget p0, p0, v4

    .line 398
    invoke-static {p2, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 401
    goto :goto_3

    .line 402
    :cond_a
    const-string/jumbo p2, "info"

    .line 405
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 408
    move-result p2

    .line 409
    if-eqz p2, :cond_b

    .line 411
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpCommonInfo(Ljava/io/PrintWriter;)V

    .line 414
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/AggressivePolicyHandler;->dumpInfo(Ljava/io/PrintWriter;)V

    .line 417
    goto :goto_3

    .line 418
    :cond_b
    const-string p2, "appinfo"

    .line 420
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 423
    move-result p2

    .line 424
    if-eqz p2, :cond_c

    .line 426
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpAppInfo(Ljava/io/PrintWriter;)V

    .line 429
    goto :goto_3

    .line 430
    :cond_c
    const-string p2, "adjinfo"

    .line 432
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 435
    move-result p2

    .line 436
    if-eqz p2, :cond_d

    .line 438
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpAdjInfo(Ljava/io/PrintWriter;)V

    .line 441
    goto :goto_3

    .line 442
    :cond_d
    const-string/jumbo p2, "history"

    .line 445
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 448
    move-result p2

    .line 449
    if-eqz p2, :cond_e

    .line 451
    const-string p2, "Chimera Kill History:"

    .line 453
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpHistoryBuffer(Ljava/io/PrintWriter;)V

    .line 459
    goto :goto_3

    .line 460
    :cond_e
    const-string/jumbo p2, "quotakill"

    .line 463
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 466
    move-result p2

    .line 467
    if-eqz p2, :cond_10

    .line 469
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 471
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 474
    sget-boolean p2, Lcom/android/server/chimera/SystemRepository;->IS_SHIP_BUILD:Z

    .line 476
    if-eqz p2, :cond_f

    .line 478
    const-string p0, "No support in ship build"

    .line 480
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    goto :goto_3

    .line 484
    :cond_f
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 487
    move-result-object p1

    .line 488
    const/16 p2, 0x10

    .line 490
    iput p2, p1, Landroid/os/Message;->what:I

    .line 492
    iput v5, p1, Landroid/os/Message;->arg1:I

    .line 494
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepository;->mSystemEventListenerHandler:Landroid/os/Handler;

    .line 496
    if-eqz p0, :cond_10

    .line 498
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 501
    :cond_10
    :goto_3
    return-void
.end method

.method public final dumpInfo(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "ScoreWeight: lru="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightLru:F

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, " standbybucket="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightStandbyBucket:F

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, " mem="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightMem:F

    .line 30
    invoke-static {v0, v1, p1}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;)V

    .line 33
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    .line 35
    const/4 v1, 0x0

    .line 36
    aget-object v0, v0, v1

    .line 38
    const/4 v1, 0x2

    .line 39
    aget v0, v0, v1

    .line 41
    int-to-long v2, v0

    .line 42
    invoke-static {v2, v3}, Lcom/android/server/chimera/PolicyHandler;->toHHmmss(J)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    const-string v2, "Normal kill interval : "

    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    .line 57
    const/4 v2, 0x1

    .line 58
    aget-object v0, v0, v2

    .line 60
    aget v0, v0, v1

    .line 62
    int-to-long v0, v0

    .line 63
    invoke-static {v0, v1}, Lcom/android/server/chimera/PolicyHandler;->toHHmmss(J)Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    const-string v1, "Heavy kill interval : "

    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    iget-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    .line 78
    if-nez v0, :cond_1

    .line 80
    iget-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    .line 82
    if-eqz v0, :cond_0

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const-string p0, "Kill boost mode: off"

    .line 87
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    goto :goto_2

    .line 91
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    const-string v1, "Kill boost mode:"

    .line 95
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    iget-boolean v1, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    .line 100
    const-string v2, ""

    .line 102
    if-eqz v1, :cond_2

    .line 104
    const-string v1, " Normal"

    .line 106
    goto :goto_1

    .line 107
    :cond_2
    move-object v1, v2

    .line 108
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-boolean p0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    .line 113
    if-eqz p0, :cond_3

    .line 115
    const-string v2, " Heavy"

    .line 117
    :cond_3
    invoke-static {v0, v2, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 120
    :goto_2
    return-void
.end method

.method public final executePolicy(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;I)I
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/chimera/PolicyHandler;->prepareForTrigger(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Z

    .line 10
    move-result v4

    .line 11
    const/4 v5, 0x0

    .line 12
    if-nez v4, :cond_0

    .line 14
    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 16
    const-string v1, "AggressivePolicyHandler"

    .line 18
    const-string/jumbo v2, "executePolicy() - prepareForTrigger fails"

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return v5

    .line 28
    :cond_0
    iget-object v4, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 30
    const-string v6, "AggressivePolicyHandler"

    .line 32
    new-instance v7, Ljava/lang/StringBuilder;

    .line 34
    const-string/jumbo v8, "executePolicy() - triggerSource: "

    .line 37
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v7

    .line 47
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-static {v6, v7}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 56
    move-result-wide v6

    .line 57
    iget v4, v1, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    .line 59
    add-int/2addr v4, v3

    .line 60
    iput v4, v1, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    .line 62
    iget-object v4, v1, Lcom/android/server/chimera/PolicyHandler;->mTriggerCntSrc:[I

    .line 64
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 67
    move-result v8

    .line 68
    aget v9, v4, v8

    .line 70
    add-int/2addr v9, v3

    .line 71
    aput v9, v4, v8

    .line 73
    sget-object v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 75
    const/16 v8, 0x13

    .line 77
    const-wide/16 v9, 0x2800

    .line 79
    const/4 v11, 0x4

    .line 80
    if-ne v0, v4, :cond_2

    .line 82
    move/from16 v12, p2

    .line 84
    if-ne v12, v2, :cond_2

    .line 86
    :cond_1
    move-wide/from16 v17, v6

    .line 88
    goto/16 :goto_f

    .line 90
    :cond_2
    iget-object v12, v1, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 92
    iget-boolean v12, v12, Lcom/android/server/chimera/SettingRepository;->mIsSubProcEnable:Z

    .line 94
    if-eqz v12, :cond_1

    .line 96
    iget v4, v1, Lcom/android/server/chimera/PolicyHandler;->mSubProcessKillTriggerCnt:I

    .line 98
    add-int/2addr v4, v3

    .line 99
    iput v4, v1, Lcom/android/server/chimera/PolicyHandler;->mSubProcessKillTriggerCnt:I

    .line 101
    sget-object v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 103
    if-ne v0, v4, :cond_4

    .line 105
    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 107
    invoke-static {v0}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAvailableMemoryKb(Lcom/android/server/chimera/SystemRepository;)J

    .line 110
    move-result-wide v12

    .line 111
    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 113
    iget-wide v14, v0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 115
    iget-boolean v0, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsAdjustTargetFree:Z

    .line 117
    if-eqz v0, :cond_3

    .line 119
    iget-wide v2, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeEndTime:J

    .line 121
    cmp-long v0, v6, v2

    .line 123
    if-gez v0, :cond_3

    .line 125
    long-to-double v2, v14

    .line 126
    iget-wide v14, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeFactor:D

    .line 128
    mul-double/2addr v2, v14

    .line 129
    double-to-long v14, v2

    .line 130
    :cond_3
    sub-long v2, v14, v12

    .line 132
    cmp-long v0, v2, v9

    .line 134
    if-gtz v0, :cond_4

    .line 136
    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 138
    const-string v1, "AggressivePolicyHandler"

    .line 140
    const-string v2, "available memory: "

    .line 142
    const-string v3, ", free memory target: "

    .line 144
    invoke-static {v2, v12, v13, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 151
    const-string v3, ", quit chimera"

    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return v5

    .line 167
    :cond_4
    iget-object v2, v1, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    .line 169
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    new-instance v3, Ljava/util/ArrayList;

    .line 174
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 177
    iget-object v0, v2, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 179
    invoke-virtual {v0}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    .line 182
    move-result-object v0

    .line 183
    check-cast v0, Ljava/util/ArrayList;

    .line 185
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 188
    move-result-object v4

    .line 189
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_1d

    .line 195
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    move-result-object v0

    .line 199
    move-object v9, v0

    .line 200
    check-cast v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 202
    iget v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    .line 204
    const/16 v10, 0x2710

    .line 206
    if-ge v0, v10, :cond_5

    .line 208
    goto :goto_0

    .line 209
    :cond_5
    iget-object v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 211
    const-string v10, ":"

    .line 213
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 216
    move-result v0

    .line 217
    if-nez v0, :cond_6

    .line 219
    const-string/jumbo v0, "isMainProc"

    .line 222
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 225
    goto :goto_0

    .line 226
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 229
    move-result-wide v12

    .line 230
    iget-wide v14, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    .line 232
    sub-long/2addr v12, v14

    .line 233
    const-wide/16 v14, 0x1388

    .line 235
    cmp-long v0, v12, v14

    .line 237
    if-gez v0, :cond_7

    .line 239
    const-string/jumbo v0, "lastActivityTime"

    .line 242
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 245
    goto :goto_0

    .line 246
    :cond_7
    iget v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    .line 248
    if-ne v0, v8, :cond_8

    .line 250
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 253
    move-result-wide v12

    .line 254
    iget-wide v14, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    .line 256
    sub-long/2addr v12, v14

    .line 257
    iget v0, v2, Lcom/android/server/chimera/ChimeraAppManager;->mCemPkgProtectedIntervalMs:I

    .line 259
    int-to-long v14, v0

    .line 260
    cmp-long v0, v12, v14

    .line 262
    if-gez v0, :cond_8

    .line 264
    const-string v0, "PROCESS_STATE_CACHED_EMPTY"

    .line 266
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 269
    goto :goto_0

    .line 270
    :cond_8
    iget v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    .line 272
    const/16 v10, 0xa

    .line 274
    if-ne v0, v10, :cond_9

    .line 276
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 279
    move-result-wide v12

    .line 280
    iget-wide v14, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    .line 282
    sub-long/2addr v12, v14

    .line 283
    iget v0, v2, Lcom/android/server/chimera/ChimeraAppManager;->mCemPkgProtectedIntervalMs:I

    .line 285
    int-to-long v14, v0

    .line 286
    cmp-long v0, v12, v14

    .line 288
    if-gez v0, :cond_9

    .line 290
    const-string v0, "PROCESS_STATE_SERVICE"

    .line 292
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 295
    goto :goto_0

    .line 296
    :cond_9
    iget v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    .line 298
    const/4 v12, 0x1

    .line 299
    if-gt v0, v12, :cond_a

    .line 301
    const-string v0, "PROCESS_STATE_PERSISTENT_UI"

    .line 303
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 306
    goto :goto_0

    .line 307
    :cond_a
    iget v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->flags:I

    .line 309
    and-int/2addr v0, v11

    .line 310
    if-lez v0, :cond_b

    .line 312
    const-string/jumbo v0, "hasActivity"

    .line 315
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 318
    goto/16 :goto_0

    .line 320
    :cond_b
    iget-object v0, v2, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 322
    iget-object v12, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 324
    iget v13, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    .line 326
    invoke-virtual {v0, v13, v12}, Lcom/android/server/chimera/SystemRepository;->hasConnectionProvider(ILjava/lang/String;)Z

    .line 329
    move-result v0

    .line 330
    if-eqz v0, :cond_c

    .line 332
    const-string/jumbo v0, "hasConnectionProvider"

    .line 335
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 338
    goto/16 :goto_0

    .line 340
    :cond_c
    iget-object v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 342
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 345
    move-result-object v0

    .line 346
    const-string/jumbo v12, "sandbox"

    .line 349
    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 352
    move-result v0

    .line 353
    if-eqz v0, :cond_d

    .line 355
    const-string/jumbo v0, "isSandbox"

    .line 358
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 361
    goto/16 :goto_0

    .line 363
    :cond_d
    iget v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    .line 365
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 368
    move-result v0

    .line 369
    iget-object v12, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 371
    aget-object v12, v12, v5

    .line 373
    iget-object v13, v2, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 375
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    sget-boolean v13, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 380
    sget-object v13, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 382
    invoke-virtual {v13, v0, v12}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(ILjava/lang/String;)Z

    .line 385
    move-result v13

    .line 386
    if-eqz v13, :cond_e

    .line 388
    const-string/jumbo v0, "isAutoRunOn"

    .line 391
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 394
    goto/16 :goto_0

    .line 396
    :cond_e
    sget-boolean v13, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 398
    sget-object v13, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 400
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 406
    move-result-wide v14

    .line 407
    sget-object v16, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 409
    monitor-enter v16

    .line 410
    :try_start_0
    invoke-virtual {v13, v0, v12}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    .line 413
    move-result-object v0

    .line 414
    if-eqz v0, :cond_f

    .line 416
    iget-object v0, v0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 418
    iget-boolean v13, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 420
    if-nez v13, :cond_f

    .line 422
    iget-boolean v13, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 424
    if-eqz v13, :cond_f

    .line 426
    move-wide/from16 v17, v6

    .line 428
    iget-wide v5, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->freezedTime:J

    .line 430
    sub-long/2addr v14, v5

    .line 431
    const-wide/16 v5, 0x7d0

    .line 433
    cmp-long v0, v14, v5

    .line 435
    if-ltz v0, :cond_10

    .line 437
    const/4 v0, 0x1

    .line 438
    goto :goto_1

    .line 439
    :catchall_0
    move-exception v0

    .line 440
    goto/16 :goto_c

    .line 442
    :cond_f
    move-wide/from16 v17, v6

    .line 444
    :cond_10
    const/4 v0, 0x0

    .line 445
    :goto_1
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    if-nez v0, :cond_12

    .line 448
    const-string/jumbo v0, "isUnFreezedSafely"

    .line 451
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 454
    :cond_11
    :goto_2
    move-wide/from16 v6, v17

    .line 456
    const/4 v5, 0x0

    .line 457
    goto/16 :goto_0

    .line 459
    :cond_12
    iget v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    .line 461
    if-eq v0, v8, :cond_1c

    .line 463
    iget-object v0, v2, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 465
    iget v5, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 467
    iget-object v0, v0, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 469
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 471
    monitor-enter v6

    .line 472
    :try_start_1
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 474
    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    .line 477
    move-result-object v0

    .line 478
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 479
    if-nez v0, :cond_13

    .line 481
    :goto_3
    const/4 v0, 0x0

    .line 482
    goto :goto_5

    .line 483
    :cond_13
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 485
    if-eqz v0, :cond_16

    .line 487
    iget-boolean v5, v0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    .line 489
    if-eqz v5, :cond_14

    .line 491
    goto :goto_3

    .line 492
    :cond_14
    iget-object v5, v0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 494
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 497
    move-result v5

    .line 498
    const/4 v6, 0x1

    .line 499
    sub-int/2addr v5, v6

    .line 500
    :goto_4
    if-ltz v5, :cond_16

    .line 502
    iget-object v6, v0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 504
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 507
    move-result-object v6

    .line 508
    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 510
    iget-boolean v7, v6, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 512
    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 514
    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 517
    move-result v6

    .line 518
    if-nez v6, :cond_15

    .line 520
    const/4 v0, 0x2

    .line 521
    goto :goto_5

    .line 522
    :cond_15
    add-int/lit8 v5, v5, -0x1

    .line 524
    goto :goto_4

    .line 525
    :cond_16
    const/4 v0, 0x1

    .line 526
    :goto_5
    if-nez v0, :cond_17

    .line 528
    const-string/jumbo v0, "isFilterByMars and isn\'t Empty"

    .line 531
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 534
    goto :goto_2

    .line 535
    :cond_17
    const/4 v5, 0x2

    .line 536
    if-ne v0, v5, :cond_1c

    .line 538
    const/4 v0, 0x0

    .line 539
    const/4 v6, 0x0

    .line 540
    :goto_6
    :try_start_2
    iget v7, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 542
    const/4 v14, 0x1

    .line 543
    invoke-static {v7, v14, v10}, Lcom/android/server/am/CachedAppOptimizer;->freezeBinder(IZI)I

    .line 546
    move-result v6

    .line 547
    sget v7, Landroid/system/OsConstants;->EAGAIN:I

    .line 549
    neg-int v7, v7

    .line 550
    if-ne v6, v7, :cond_19

    .line 552
    add-int/lit8 v7, v0, 0x1

    .line 554
    if-lt v0, v5, :cond_18

    .line 556
    goto :goto_7

    .line 557
    :cond_18
    move v0, v7

    .line 558
    goto :goto_6

    .line 559
    :cond_19
    :goto_7
    if-eqz v6, :cond_1a

    .line 561
    iget-object v0, v2, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 563
    const-string v5, "ChimeraAppManager"

    .line 565
    new-instance v7, Ljava/lang/StringBuilder;

    .line 567
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    const-string/jumbo v10, "checkServiceSafetyKilled Unable to freeze binder for "

    .line 573
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    const-string v10, ": "

    .line 581
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 590
    move-result-object v7

    .line 591
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 594
    invoke-static {v5, v7}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 597
    goto :goto_8

    .line 598
    :catchall_1
    move-exception v0

    .line 599
    goto :goto_9

    .line 600
    :catch_0
    move-exception v0

    .line 601
    goto :goto_a

    .line 602
    :cond_1a
    :goto_8
    if-nez v6, :cond_1b

    .line 604
    goto :goto_b

    .line 605
    :goto_9
    throw v0

    .line 606
    :goto_a
    iget-object v5, v2, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 608
    const-string v7, "ChimeraAppManager"

    .line 610
    new-instance v10, Ljava/lang/StringBuilder;

    .line 612
    const-string v14, "Unable to freeze binder for "

    .line 614
    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 617
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    const-string v12, ": "

    .line 622
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 631
    move-result-object v0

    .line 632
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 635
    invoke-static {v7, v0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    if-nez v6, :cond_1b

    .line 640
    goto :goto_b

    .line 641
    :cond_1b
    const-string/jumbo v0, "freeze binder failed."

    .line 644
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 647
    goto/16 :goto_2

    .line 649
    :catchall_2
    move-exception v0

    .line 650
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 651
    throw v0

    .line 652
    :cond_1c
    :goto_b
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 658
    move-result v0

    .line 659
    const/4 v5, 0x5

    .line 660
    if-lt v0, v5, :cond_11

    .line 662
    goto :goto_d

    .line 663
    :goto_c
    :try_start_4
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 664
    throw v0

    .line 665
    :cond_1d
    move-wide/from16 v17, v6

    .line 667
    :goto_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 670
    move-result v0

    .line 671
    const/4 v2, 0x1

    .line 672
    add-int/lit8 v4, v0, -0x1

    .line 674
    :goto_e
    if-ltz v4, :cond_1e

    .line 676
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 679
    move-result-object v2

    .line 680
    check-cast v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 682
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 684
    const-string v6, "AggressivePolicyHandler"

    .line 686
    new-instance v7, Ljava/lang/StringBuilder;

    .line 688
    const-string v8, "Chimera kill subProcess "

    .line 690
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 693
    iget v8, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 695
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 698
    const-string v8, " "

    .line 700
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    iget-object v8, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 705
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    const-string v8, " success"

    .line 710
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 716
    move-result-object v7

    .line 717
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 720
    invoke-static {v6, v7}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget v5, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 725
    iget-object v6, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 727
    new-instance v7, Ljava/text/SimpleDateFormat;

    .line 729
    const-string v8, "MM-dd HH:mm:ss.SSS"

    .line 731
    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 734
    new-instance v8, Ljava/util/Date;

    .line 736
    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 739
    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 742
    move-result-object v7

    .line 743
    iget-object v8, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mSubProcessKillList:Lcom/android/internal/util/RingBuffer;

    .line 745
    new-instance v9, Ljava/lang/StringBuilder;

    .line 747
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 750
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    const-string v7, " "

    .line 755
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 761
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    const/4 v6, 0x0

    .line 771
    invoke-static {v5, v6}, Landroid/os/Debug;->getRss(I[J)J

    .line 774
    move-result-wide v5

    .line 775
    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 781
    move-result-object v5

    .line 782
    invoke-virtual {v8, v5}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 785
    iget v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSubProcessKillCnt:I

    .line 787
    const/4 v6, 0x1

    .line 788
    add-int/2addr v5, v6

    .line 789
    iput v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSubProcessKillCnt:I

    .line 791
    iget v2, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 793
    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 796
    add-int/lit8 v4, v4, -0x1

    .line 798
    goto :goto_e

    .line 799
    :cond_1e
    iget-object v1, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 801
    const-string v2, "AggressivePolicyHandler"

    .line 803
    new-instance v3, Ljava/lang/StringBuilder;

    .line 805
    const-string v4, "Kill subProcess Processing time(ms) "

    .line 807
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 810
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 813
    move-result-wide v4

    .line 814
    sub-long v4, v4, v17

    .line 816
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 819
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 822
    move-result-object v3

    .line 823
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 826
    invoke-static {v2, v3}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    return v0

    .line 830
    :goto_f
    iget-object v2, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 832
    invoke-static {v2}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAvailableMemoryKb(Lcom/android/server/chimera/SystemRepository;)J

    .line 835
    move-result-wide v2

    .line 836
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 838
    iget-wide v6, v5, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 840
    iget-boolean v12, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsAdjustTargetFree:Z

    .line 842
    if-eqz v12, :cond_1f

    .line 844
    iget-wide v14, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeEndTime:J

    .line 846
    cmp-long v12, v17, v14

    .line 848
    if-gez v12, :cond_1f

    .line 850
    long-to-double v6, v6

    .line 851
    iget-wide v14, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeFactor:D

    .line 853
    mul-double/2addr v6, v14

    .line 854
    double-to-long v6, v6

    .line 855
    :cond_1f
    sub-long v14, v6, v2

    .line 857
    cmp-long v9, v14, v9

    .line 859
    if-gtz v9, :cond_20

    .line 861
    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 863
    const-string v1, "AggressivePolicyHandler"

    .line 865
    const-string v4, "available memory: "

    .line 867
    const-string v5, ", free memory target: "

    .line 869
    invoke-static {v4, v2, v3, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    move-result-object v2

    .line 873
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 876
    const-string v3, ", quit chimera"

    .line 878
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 884
    move-result-object v2

    .line 885
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 888
    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    :goto_10
    const/4 v1, 0x0

    .line 892
    return v1

    .line 893
    :cond_20
    if-ne v0, v4, :cond_21

    .line 895
    iget v4, v5, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    .line 897
    goto :goto_11

    .line 898
    :cond_21
    iget v4, v5, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    .line 900
    :goto_11
    iget-boolean v5, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsHeavyLaunchOn:Z

    .line 902
    if-eqz v5, :cond_22

    .line 904
    iget-object v5, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchCounter:Lcom/android/server/chimera/HeavyLaunchCounter;

    .line 906
    invoke-virtual {v5}, Lcom/android/server/chimera/HeavyLaunchCounter;->isHeavyLaunch()Z

    .line 909
    move-result v5

    .line 910
    if-eqz v5, :cond_22

    .line 912
    const/4 v5, 0x2

    .line 913
    div-int/2addr v4, v5

    .line 914
    int-to-double v4, v4

    .line 915
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    .line 917
    add-double/2addr v4, v9

    .line 918
    double-to-int v4, v4

    .line 919
    :cond_22
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 921
    const-string v9, "AggressivePolicyHandler"

    .line 923
    const-string/jumbo v10, "memAvailable: "

    .line 926
    const-string v12, ", memFreeTarget: "

    .line 928
    invoke-static {v10, v2, v3, v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    move-result-object v10

    .line 932
    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 935
    const-string v6, ", releaseTarget:"

    .line 937
    const-string v7, ", protectedLruCount: "

    .line 939
    invoke-static {v10, v6, v14, v15, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 942
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 945
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 948
    move-result-object v6

    .line 949
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 952
    invoke-static {v9, v6}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 957
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 960
    const/4 v6, 0x0

    .line 961
    :goto_12
    invoke-static {}, Lcom/android/server/chimera/SkipReasonLogger$Reason;->values()[Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 964
    move-result-object v7

    .line 965
    array-length v7, v7

    .line 966
    if-ge v6, v7, :cond_23

    .line 968
    iget-object v7, v5, Lcom/android/server/chimera/SkipReasonLogger;->mSkippedPids:[Ljava/util/Set;

    .line 970
    aget-object v7, v7, v6

    .line 972
    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 975
    const/4 v7, 0x1

    .line 976
    add-int/2addr v6, v7

    .line 977
    goto :goto_12

    .line 978
    :cond_23
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    .line 980
    iget-object v6, v1, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 982
    iget-object v7, v5, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 984
    invoke-virtual {v7}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    .line 987
    move-result-object v7

    .line 988
    invoke-virtual {v5, v6, v4, v0, v7}, Lcom/android/server/chimera/ChimeraAppManager;->getAppsToKill(Lcom/android/server/chimera/SkipReasonLogger;ILcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;Ljava/util/List;)Ljava/util/List;

    .line 991
    move-result-object v4

    .line 992
    if-eqz v4, :cond_24

    .line 994
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 997
    move-result v5

    .line 998
    const/4 v6, 0x3

    .line 999
    if-ge v5, v6, :cond_25

    .line 1001
    :cond_24
    move-object v15, v4

    .line 1002
    goto/16 :goto_2e

    .line 1004
    :cond_25
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1007
    move-result-object v5

    .line 1008
    move-wide/from16 v19, v14

    .line 1010
    const/4 v7, 0x1

    .line 1011
    const-wide/16 v13, 0x0

    .line 1013
    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1016
    move-result v12

    .line 1017
    if-eqz v12, :cond_28

    .line 1019
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1022
    move-result-object v12

    .line 1023
    check-cast v12, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 1025
    iget-wide v8, v12, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    .line 1027
    cmp-long v10, v8, v13

    .line 1029
    if-lez v10, :cond_26

    .line 1031
    move-wide v13, v8

    .line 1032
    :cond_26
    iget v8, v12, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    .line 1034
    if-le v8, v7, :cond_27

    .line 1036
    move v7, v8

    .line 1037
    :cond_27
    const/16 v8, 0x13

    .line 1039
    goto :goto_13

    .line 1040
    :cond_28
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1043
    move-result-object v5

    .line 1044
    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1047
    move-result v8

    .line 1048
    if-eqz v8, :cond_29

    .line 1050
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1053
    move-result-object v8

    .line 1054
    check-cast v8, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 1056
    iget v9, v1, Lcom/android/server/chimera/PolicyHandler;->mWeightLru:F

    .line 1058
    iget v10, v8, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    .line 1060
    int-to-float v10, v10

    .line 1061
    mul-float/2addr v9, v10

    .line 1062
    int-to-float v10, v7

    .line 1063
    div-float/2addr v9, v10

    .line 1064
    iget v10, v1, Lcom/android/server/chimera/PolicyHandler;->mWeightStandbyBucket:F

    .line 1066
    iget v12, v8, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    .line 1068
    int-to-float v12, v12

    .line 1069
    mul-float/2addr v10, v12

    .line 1070
    const/high16 v12, 0x42480000    # 50.0f

    .line 1072
    div-float/2addr v10, v12

    .line 1073
    add-float/2addr v10, v9

    .line 1074
    iget v9, v1, Lcom/android/server/chimera/PolicyHandler;->mWeightMem:F

    .line 1076
    move/from16 v16, v7

    .line 1078
    iget-wide v6, v8, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    .line 1080
    long-to-float v6, v6

    .line 1081
    mul-float/2addr v9, v6

    .line 1082
    long-to-float v6, v13

    .line 1083
    div-float/2addr v9, v6

    .line 1084
    add-float/2addr v9, v10

    .line 1085
    const/high16 v6, 0x42c80000    # 100.0f

    .line 1087
    mul-float/2addr v9, v6

    .line 1088
    iput v9, v8, Lcom/android/server/chimera/ChimeraAppInfo;->score:F

    .line 1090
    iget v7, v8, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    .line 1092
    rsub-int/lit8 v7, v7, 0x4

    .line 1094
    int-to-float v7, v7

    .line 1095
    mul-float/2addr v7, v6

    .line 1096
    add-float/2addr v7, v9

    .line 1097
    iput v7, v8, Lcom/android/server/chimera/ChimeraAppInfo;->finalScore:F

    .line 1099
    move/from16 v7, v16

    .line 1101
    const/4 v6, 0x3

    .line 1102
    goto :goto_14

    .line 1103
    :cond_29
    new-instance v5, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda4;

    .line 1105
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1108
    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1111
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1113
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1116
    sget-boolean v5, Lcom/android/server/chimera/SystemRepository;->IS_SHIP_BUILD:Z

    .line 1118
    if-nez v5, :cond_2b

    .line 1120
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1122
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1125
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1128
    move-result-object v6

    .line 1129
    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1132
    move-result v7

    .line 1133
    if-eqz v7, :cond_2a

    .line 1135
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1138
    move-result-object v7

    .line 1139
    check-cast v7, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 1141
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1144
    const-string v7, "\n"

    .line 1146
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    goto :goto_15

    .line 1150
    :cond_2a
    const-string v6, "PolicyHandler"

    .line 1152
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1155
    move-result-object v5

    .line 1156
    iget-object v7, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1158
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1161
    invoke-static {v6, v5}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    :cond_2b
    :goto_16
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1166
    const-string v6, "AggressivePolicyHandler"

    .line 1168
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1170
    const-string v8, "Start doKill, protected policy: "

    .line 1172
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1175
    iget-object v8, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 1177
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1180
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1183
    move-result-object v7

    .line 1184
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1187
    invoke-static {v6, v7}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1193
    move-result-object v5

    .line 1194
    const/4 v6, 0x0

    .line 1195
    const/4 v7, 0x0

    .line 1196
    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1199
    move-result v8

    .line 1200
    if-eqz v8, :cond_2c

    .line 1202
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1205
    move-result-object v8

    .line 1206
    check-cast v8, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 1208
    iget v9, v8, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    .line 1210
    if-lt v9, v11, :cond_2d

    .line 1212
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1214
    const-string v8, "AggressivePolicyHandler"

    .line 1216
    const-string/jumbo v9, "killing stopped to group 4"

    .line 1219
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1222
    invoke-static {v8, v9}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    :cond_2c
    const/4 v10, 0x2

    .line 1226
    goto/16 :goto_2b

    .line 1228
    :cond_2d
    invoke-virtual {v1, v8, v0}, Lcom/android/server/chimera/PolicyHandler;->isAppKillable(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Z

    .line 1231
    move-result v9

    .line 1232
    if-nez v9, :cond_2e

    .line 1234
    move-object/from16 v29, v5

    .line 1236
    const/4 v10, 0x2

    .line 1237
    goto/16 :goto_27

    .line 1239
    :cond_2e
    iget-object v9, v8, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 1241
    check-cast v9, Ljava/util/ArrayList;

    .line 1243
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1246
    move-result-object v9

    .line 1247
    :goto_18
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 1250
    move-result v10

    .line 1251
    if-eqz v10, :cond_35

    .line 1253
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1256
    move-result-object v10

    .line 1257
    check-cast v10, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 1259
    iget-object v13, v1, Lcom/android/server/chimera/PolicyHandler;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    .line 1261
    iget v11, v10, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 1263
    iget-wide v14, v10, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pss:J

    .line 1265
    iget v12, v10, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->importance:I

    .line 1267
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1270
    const-wide/32 v23, 0x12c000

    .line 1273
    cmp-long v13, v14, v23

    .line 1275
    if-lez v13, :cond_30

    .line 1277
    const/16 v14, 0x12c

    .line 1279
    const/16 v15, 0x64

    .line 1281
    if-ne v12, v15, :cond_2f

    .line 1283
    sget-object v13, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1285
    if-eqz v13, :cond_2f

    .line 1287
    filled-new-array {v11}, [I

    .line 1290
    move-result-object v11

    .line 1291
    invoke-virtual {v13, v11}, Lcom/android/server/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    .line 1294
    move-result-object v11

    .line 1295
    if-eqz v11, :cond_2f

    .line 1297
    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1299
    if-eqz v11, :cond_2f

    .line 1301
    check-cast v11, [I

    .line 1303
    const/4 v13, 0x0

    .line 1304
    aget v11, v11, v13

    .line 1306
    if-lt v11, v15, :cond_2f

    .line 1308
    if-ge v11, v14, :cond_2f

    .line 1310
    goto :goto_19

    .line 1311
    :cond_2f
    if-eq v12, v14, :cond_31

    .line 1313
    const/16 v11, 0x7d

    .line 1315
    if-eq v12, v11, :cond_31

    .line 1317
    const/16 v11, 0xc8

    .line 1319
    if-eq v12, v11, :cond_31

    .line 1321
    const/16 v11, 0xe6

    .line 1323
    if-eq v12, v11, :cond_31

    .line 1325
    const/16 v11, 0x82

    .line 1327
    if-ne v12, v11, :cond_30

    .line 1329
    goto :goto_19

    .line 1330
    :cond_30
    move-object/from16 v29, v5

    .line 1332
    const/4 v10, 0x3

    .line 1333
    goto :goto_1c

    .line 1334
    :cond_31
    :goto_19
    iget-object v11, v1, Lcom/android/server/chimera/PolicyHandler;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    .line 1336
    iget-object v9, v10, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 1338
    iget v12, v8, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    .line 1340
    iget-wide v14, v10, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pss:J

    .line 1342
    monitor-enter v11

    .line 1343
    :try_start_5
    iget-object v10, v11, Lcom/android/server/chimera/AbnormalFgsDetector;->mHeavyApps:Ljava/util/List;

    .line 1345
    new-instance v13, Lcom/android/server/chimera/AbnormalFgsDetector$$ExternalSyntheticLambda0;

    .line 1347
    move-object/from16 v29, v5

    .line 1349
    const/4 v5, 0x2

    .line 1350
    invoke-direct {v13, v9, v5}, Lcom/android/server/chimera/AbnormalFgsDetector$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 1353
    check-cast v10, Ljava/util/ArrayList;

    .line 1355
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1358
    iget-object v5, v11, Lcom/android/server/chimera/AbnormalFgsDetector;->mKillableHeavyApps:Ljava/util/List;

    .line 1360
    check-cast v5, Ljava/util/ArrayList;

    .line 1362
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1365
    move-result-object v5

    .line 1366
    :cond_32
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1369
    move-result v10

    .line 1370
    if-eqz v10, :cond_33

    .line 1372
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1375
    move-result-object v10

    .line 1376
    check-cast v10, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;

    .line 1378
    iget-object v13, v10, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->processName:Ljava/lang/String;

    .line 1380
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1383
    move-result v13

    .line 1384
    if-eqz v13, :cond_32

    .line 1386
    iget v5, v10, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->count:I

    .line 1388
    const/4 v10, 0x1

    .line 1389
    add-int/2addr v5, v10

    .line 1390
    goto :goto_1a

    .line 1391
    :catchall_3
    move-exception v0

    .line 1392
    goto :goto_1b

    .line 1393
    :cond_33
    const/4 v5, 0x1

    .line 1394
    :goto_1a
    iget-object v10, v11, Lcom/android/server/chimera/AbnormalFgsDetector;->mKillableHeavyApps:Ljava/util/List;

    .line 1396
    new-instance v13, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;

    .line 1398
    move-object/from16 v23, v13

    .line 1400
    move/from16 v24, v12

    .line 1402
    move/from16 v25, v5

    .line 1404
    move-wide/from16 v26, v14

    .line 1406
    move-object/from16 v28, v9

    .line 1408
    invoke-direct/range {v23 .. v28}, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;-><init>(IIJLjava/lang/String;)V

    .line 1411
    check-cast v10, Ljava/util/ArrayList;

    .line 1413
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1416
    const/4 v10, 0x3

    .line 1417
    if-lt v5, v10, :cond_34

    .line 1419
    invoke-virtual {v11, v12, v9, v14, v15}, Lcom/android/server/chimera/AbnormalFgsDetector;->addAbnormalHeavyApp(ILjava/lang/String;J)V

    .line 1422
    :cond_34
    monitor-exit v11

    .line 1423
    const/4 v5, 0x1

    .line 1424
    goto :goto_1d

    .line 1425
    :goto_1b
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1426
    throw v0

    .line 1427
    :goto_1c
    move-object/from16 v5, v29

    .line 1429
    const/4 v11, 0x4

    .line 1430
    goto/16 :goto_18

    .line 1432
    :cond_35
    move-object/from16 v29, v5

    .line 1434
    const/4 v10, 0x3

    .line 1435
    const/4 v5, 0x0

    .line 1436
    :goto_1d
    iget-object v9, v8, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 1438
    iget-object v9, v9, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 1440
    invoke-static {v9}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 1443
    move-result-object v9

    .line 1444
    new-instance v11, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda5;

    .line 1446
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 1449
    invoke-interface {v9, v11}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    .line 1452
    move-result v9

    .line 1453
    if-nez v9, :cond_36

    .line 1455
    const/4 v5, 0x0

    .line 1456
    :cond_36
    if-nez v5, :cond_3f

    .line 1458
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    .line 1460
    iget-object v9, v8, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 1462
    const-wide/16 v11, 0x0

    .line 1464
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1467
    move-result-object v13

    .line 1468
    check-cast v5, Ljava/util/HashMap;

    .line 1470
    invoke-virtual {v5, v9, v13}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    move-result-object v5

    .line 1474
    check-cast v5, Ljava/lang/Long;

    .line 1476
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1479
    move-result-wide v13

    .line 1480
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 1483
    move-result-wide v21

    .line 1484
    sub-long v13, v13, v21

    .line 1486
    iget-object v5, v8, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 1488
    iget-object v5, v5, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mStates:[I

    .line 1490
    if-nez v5, :cond_37

    .line 1492
    const/16 v11, 0x13

    .line 1494
    goto :goto_1f

    .line 1495
    :cond_37
    array-length v9, v5

    .line 1496
    const/4 v15, 0x0

    .line 1497
    :goto_1e
    if-ge v15, v9, :cond_3a

    .line 1499
    aget v10, v5, v15

    .line 1501
    const/16 v11, 0x13

    .line 1503
    if-ge v10, v11, :cond_3c

    .line 1505
    :goto_1f
    iget v5, v8, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 1507
    const/high16 v9, 0x20000

    .line 1509
    and-int/2addr v5, v9

    .line 1510
    if-nez v5, :cond_38

    .line 1512
    goto :goto_22

    .line 1513
    :cond_38
    iget-object v5, v8, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 1515
    iget-object v5, v5, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 1517
    array-length v9, v5

    .line 1518
    const/4 v10, 0x0

    .line 1519
    :goto_20
    if-ge v10, v9, :cond_3b

    .line 1521
    aget v12, v5, v10

    .line 1523
    const/16 v15, 0xc8

    .line 1525
    if-eq v12, v15, :cond_3a

    .line 1527
    const/16 v11, 0xe1

    .line 1529
    if-eq v12, v11, :cond_3a

    .line 1531
    const/16 v11, 0xfa

    .line 1533
    if-eq v12, v11, :cond_3a

    .line 1535
    const/16 v11, 0x1f4

    .line 1537
    if-eq v12, v11, :cond_3a

    .line 1539
    const/16 v11, 0x320

    .line 1541
    if-ne v12, v11, :cond_39

    .line 1543
    goto :goto_21

    .line 1544
    :cond_39
    const/4 v11, 0x1

    .line 1545
    add-int/2addr v10, v11

    .line 1546
    const/16 v11, 0x13

    .line 1548
    goto :goto_20

    .line 1549
    :cond_3a
    :goto_21
    const/4 v10, 0x2

    .line 1550
    goto :goto_24

    .line 1551
    :cond_3b
    :goto_22
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    .line 1553
    iget-object v9, v1, Lcom/android/server/chimera/PolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    .line 1555
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 1558
    move-result v9

    .line 1559
    aget-object v5, v5, v9

    .line 1561
    const/4 v10, 0x2

    .line 1562
    aget v5, v5, v10

    .line 1564
    :goto_23
    int-to-long v11, v5

    .line 1565
    goto :goto_25

    .line 1566
    :cond_3c
    const/4 v10, 0x2

    .line 1567
    const/16 v11, 0xc8

    .line 1569
    const/4 v12, 0x1

    .line 1570
    add-int/2addr v15, v12

    .line 1571
    const/4 v10, 0x3

    .line 1572
    const-wide/16 v11, 0x0

    .line 1574
    goto :goto_1e

    .line 1575
    :goto_24
    iget v5, v1, Lcom/android/server/chimera/PolicyHandler;->mCemPkgKillIntervalMs:I

    .line 1577
    goto :goto_23

    .line 1578
    :goto_25
    cmp-long v5, v13, v11

    .line 1580
    if-gez v5, :cond_3d

    .line 1582
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 1584
    sget-object v9, Lcom/android/server/chimera/SkipReasonLogger$Reason;->INTERVAL:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 1586
    invoke-virtual {v5, v8, v9}, Lcom/android/server/chimera/SkipReasonLogger;->mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 1589
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1591
    const-string v9, "Skipped by interval: "

    .line 1593
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1596
    iget-object v9, v8, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 1598
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1601
    const-string v9, ", elapsed: "

    .line 1603
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1606
    invoke-static {v13, v14}, Lcom/android/server/chimera/PolicyHandler;->toHHmmss(J)Ljava/lang/String;

    .line 1609
    move-result-object v9

    .line 1610
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1613
    const-string v9, ", interval: "

    .line 1615
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1618
    invoke-static {v11, v12}, Lcom/android/server/chimera/PolicyHandler;->toHHmmss(J)Ljava/lang/String;

    .line 1621
    move-result-object v9

    .line 1622
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    invoke-static {v8}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    .line 1628
    move-result-object v9

    .line 1629
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1632
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1635
    move-result-object v5

    .line 1636
    iget-object v9, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1638
    const-string v11, "PolicyHandler"

    .line 1640
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1643
    invoke-static {v11, v5}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    const/4 v5, 0x0

    .line 1647
    goto :goto_26

    .line 1648
    :cond_3d
    const/4 v5, 0x1

    .line 1649
    :goto_26
    if-nez v5, :cond_40

    .line 1651
    :cond_3e
    :goto_27
    move-object/from16 v5, v29

    .line 1653
    const/4 v11, 0x4

    .line 1654
    goto/16 :goto_17

    .line 1656
    :cond_3f
    const/4 v10, 0x2

    .line 1657
    :cond_40
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    .line 1659
    iget-object v9, v8, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 1661
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1664
    move-result-wide v11

    .line 1665
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1668
    move-result-object v11

    .line 1669
    check-cast v5, Ljava/util/HashMap;

    .line 1671
    invoke-virtual {v5, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1676
    const-string v9, "AggressivePolicyHandler"

    .line 1678
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1680
    const-string v12, "Killed on trigger"

    .line 1682
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1685
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 1688
    move-result v12

    .line 1689
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1692
    const-string v12, " : "

    .line 1694
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1697
    iget-object v12, v8, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 1699
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1702
    invoke-virtual {v8}, Lcom/android/server/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    .line 1705
    move-result-object v12

    .line 1706
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1709
    const-string v12, ", freed: "

    .line 1711
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    iget-wide v12, v8, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    .line 1716
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1719
    invoke-static {v8}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    .line 1722
    move-result-object v12

    .line 1723
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1726
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1729
    move-result-object v11

    .line 1730
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1733
    invoke-static {v9, v11}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    iget-object v5, v8, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 1738
    invoke-static {v5}, Lcom/android/server/chimera/PolicyHandler;->addRescheduleExceptionPackage(Ljava/lang/String;)V

    .line 1741
    iget-object v5, v8, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 1743
    check-cast v5, Ljava/util/ArrayList;

    .line 1745
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1748
    move-result-object v5

    .line 1749
    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1752
    move-result v9

    .line 1753
    if-eqz v9, :cond_41

    .line 1755
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1758
    move-result-object v9

    .line 1759
    check-cast v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 1761
    iget-object v11, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1763
    iget-object v9, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 1765
    iget v12, v8, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    .line 1767
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1769
    const-string v14, "Chimera #"

    .line 1771
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1774
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 1777
    move-result v14

    .line 1778
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1781
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1784
    move-result-object v13

    .line 1785
    const/4 v14, 0x1

    .line 1786
    invoke-virtual {v11, v12, v9, v13, v14}, Lcom/android/server/chimera/SystemRepository;->killProcessForChimera(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 1789
    goto :goto_28

    .line 1790
    :cond_41
    const/4 v14, 0x1

    .line 1791
    int-to-long v5, v6

    .line 1792
    iget-wide v11, v8, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    .line 1794
    add-long/2addr v5, v11

    .line 1795
    long-to-int v6, v5

    .line 1796
    add-int/2addr v7, v14

    .line 1797
    invoke-virtual {v1, v8, v0}, Lcom/android/server/chimera/PolicyHandler;->updateKillStatistics(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 1800
    iget-object v5, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 1802
    sget-object v8, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 1804
    if-ne v5, v8, :cond_42

    .line 1806
    iget-boolean v8, v1, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    .line 1808
    if-nez v8, :cond_3e

    .line 1810
    :cond_42
    sget-object v8, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 1812
    if-ne v5, v8, :cond_43

    .line 1814
    iget-boolean v5, v1, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    .line 1816
    if-eqz v5, :cond_43

    .line 1818
    goto/16 :goto_27

    .line 1820
    :cond_43
    int-to-long v8, v6

    .line 1821
    cmp-long v5, v8, v19

    .line 1823
    if-lez v5, :cond_44

    .line 1825
    :goto_29
    const/4 v5, 0x1

    .line 1826
    goto :goto_2a

    .line 1827
    :cond_44
    sub-long v14, v19, v8

    .line 1829
    const-wide/16 v8, 0x5000

    .line 1831
    cmp-long v5, v14, v8

    .line 1833
    if-gez v5, :cond_45

    .line 1835
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1837
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1840
    const-string v5, "PolicyHandler"

    .line 1842
    const-string/jumbo v8, "relTarget - released < 20480, stop kill"

    .line 1845
    invoke-static {v5, v8}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    goto :goto_29

    .line 1849
    :cond_45
    const/4 v5, 0x0

    .line 1850
    :goto_2a
    if-eqz v5, :cond_3e

    .line 1852
    :goto_2b
    iget v5, v1, Lcom/android/server/chimera/PolicyHandler;->mActionCnt:I

    .line 1854
    int-to-long v8, v5

    .line 1855
    iget-wide v11, v1, Lcom/android/server/chimera/PolicyHandler;->mAvgReleasedMem:J

    .line 1857
    mul-long/2addr v11, v8

    .line 1858
    int-to-long v13, v6

    .line 1859
    add-long/2addr v11, v13

    .line 1860
    const/4 v15, 0x1

    .line 1861
    add-int/2addr v5, v15

    .line 1862
    move-object v15, v4

    .line 1863
    int-to-long v4, v5

    .line 1864
    div-long/2addr v11, v4

    .line 1865
    iput-wide v11, v1, Lcom/android/server/chimera/PolicyHandler;->mAvgReleasedMem:J

    .line 1867
    iget-wide v11, v1, Lcom/android/server/chimera/PolicyHandler;->mAvgAvailableMem:J

    .line 1869
    mul-long/2addr v8, v11

    .line 1870
    add-long/2addr v8, v2

    .line 1871
    add-long/2addr v8, v13

    .line 1872
    div-long/2addr v8, v4

    .line 1873
    iput-wide v8, v1, Lcom/android/server/chimera/PolicyHandler;->mAvgAvailableMem:J

    .line 1875
    iget-object v4, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1877
    const-string v5, "AggressivePolicyHandler"

    .line 1879
    const-string/jumbo v8, "kill complete: killed "

    .line 1882
    const-string v9, " apps, freed "

    .line 1884
    const-string v11, " KB"

    .line 1886
    invoke-static {v7, v6, v8, v9, v11}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1889
    move-result-object v6

    .line 1890
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1893
    invoke-static {v5, v6}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    if-lez v7, :cond_46

    .line 1898
    sget-object v4, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 1900
    iput-object v4, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 1902
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/chimera/PolicyHandler;->updateActionStatistics(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 1905
    const/4 v5, 0x1

    .line 1906
    goto :goto_2c

    .line 1907
    :cond_46
    iget v4, v1, Lcom/android/server/chimera/PolicyHandler;->mNoActionCnt:I

    .line 1909
    const/4 v5, 0x1

    .line 1910
    add-int/2addr v4, v5

    .line 1911
    iput v4, v1, Lcom/android/server/chimera/PolicyHandler;->mNoActionCnt:I

    .line 1913
    iget-object v4, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 1915
    sget-object v6, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 1917
    if-ne v4, v6, :cond_47

    .line 1919
    goto :goto_2d

    .line 1920
    :cond_47
    iput-object v6, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 1922
    :goto_2c
    if-eqz v7, :cond_48

    .line 1924
    :goto_2d
    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 1926
    const-string v2, "AggressivePolicyHandler"

    .line 1928
    invoke-virtual {v0, v2}, Lcom/android/server/chimera/SkipReasonLogger;->printLog(Ljava/lang/String;)V

    .line 1931
    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1933
    const-string v1, "AggressivePolicyHandler"

    .line 1935
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1937
    const-string v3, "Processing time(ms) "

    .line 1939
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1942
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1945
    move-result-wide v3

    .line 1946
    sub-long v3, v3, v17

    .line 1948
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1951
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1954
    move-result-object v2

    .line 1955
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1958
    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    return v7

    .line 1962
    :cond_48
    move-object v4, v15

    .line 1963
    const/4 v11, 0x4

    .line 1964
    goto/16 :goto_16

    .line 1966
    :goto_2e
    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1968
    const-string v1, "AggressivePolicyHandler"

    .line 1970
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1972
    const-string/jumbo v3, "executePolicy() - getAppsToKill return "

    .line 1975
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1978
    if-eqz v15, :cond_49

    .line 1980
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 1983
    move-result v3

    .line 1984
    goto :goto_2f

    .line 1985
    :cond_49
    const/4 v3, 0x0

    .line 1986
    :goto_2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1989
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1992
    move-result-object v2

    .line 1993
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1996
    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    goto/16 :goto_10
.end method

.method public final onForegroundActivitiesChanged(IIZI[Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p6}, Lcom/android/server/chimera/PolicyHandler;->onForegroundActivitiesChanged(IIZI[Ljava/lang/String;Z)V

    .line 4
    iget-boolean p1, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsHeavyLaunchOn:Z

    .line 6
    if-eqz p1, :cond_0

    .line 8
    if-nez p6, :cond_0

    .line 10
    if-eqz p3, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchCounter:Lcom/android/server/chimera/HeavyLaunchCounter;

    .line 14
    if-eqz p0, :cond_0

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    move-result-wide p3

    .line 20
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/chimera/HeavyLaunchCounter;->addLaunch(IJ)V

    .line 23
    :cond_0
    return-void
.end method

.method public final setWeight(FF)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightLru:F

    .line 3
    iput p2, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightStandbyBucket:F

    .line 5
    new-instance p1, Ljava/math/BigDecimal;

    .line 7
    const/high16 p2, 0x3f800000    # 1.0f

    .line 9
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 12
    move-result-object p2

    .line 13
    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 16
    new-instance p2, Ljava/math/BigDecimal;

    .line 18
    iget v0, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightLru:F

    .line 20
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance v0, Ljava/math/BigDecimal;

    .line 29
    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightStandbyBucket:F

    .line 31
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p2, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    .line 49
    move-result p1

    .line 50
    iput p1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightMem:F

    .line 52
    return-void
.end method
