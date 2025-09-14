.class public final Lcom/android/server/chimera/ChimeraManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

.field public mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

.field public mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

.field public mContext:Landroid/content/Context;

.field public mGPUMemoryReclaimer:Lcom/android/server/chimera/GPUMemoryReclaimer;

.field public mGenieUnloadPolicyHandler:Lcom/android/server/chimera/GenieUnloadPolicyHandler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mHeimdall:Lcom/android/server/chimera/heimdall/Heimdall;

.field public mPSITracker:Lcom/android/server/chimera/psitracker/PSITracker;

.field public mPerProcessNandswap:Lcom/android/server/chimera/ppn/PerProcessNandswap;

.field public mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

.field public mSettingRepository:Lcom/android/server/chimera/SettingRepository;

.field public mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

.field public mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# virtual methods
.method public final createPolicyHandler()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 5
    iget-boolean v1, v1, Lcom/android/server/chimera/SettingRepository;->mIsConservativeMode:Z

    .line 7
    iget-object v2, v0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    .line 9
    if-eqz v2, :cond_0

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/server/chimera/ChimeraManager;->unRegisterSystemEventListener(Z)V

    .line 14
    :cond_0
    const/4 v2, 0x1

    .line 15
    if-eqz v1, :cond_1

    .line 17
    new-instance v1, Lcom/android/server/chimera/ConservativePolicyHandler;

    .line 19
    iget-object v3, v0, Lcom/android/server/chimera/ChimeraManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 21
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 24
    move-result-object v9

    .line 25
    iget-object v4, v0, Lcom/android/server/chimera/ChimeraManager;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    .line 27
    iget-object v5, v0, Lcom/android/server/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 29
    iget-object v6, v0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 31
    iget-object v7, v0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 33
    iget-object v8, v0, Lcom/android/server/chimera/ChimeraManager;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    .line 35
    move-object v3, v1

    .line 36
    invoke-direct/range {v3 .. v9}, Lcom/android/server/chimera/PolicyHandler;-><init>(Lcom/android/server/chimera/ChimeraAppManager;Lcom/android/server/chimera/ChimeraStrategy;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;Lcom/android/server/chimera/AbnormalFgsDetector;Landroid/os/Looper;)V

    .line 39
    iput-object v1, v0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    .line 41
    invoke-virtual {v0, v2}, Lcom/android/server/chimera/ChimeraManager;->registerSystemEventListener(Z)V

    .line 44
    goto/16 :goto_3

    .line 46
    :cond_1
    new-instance v1, Lcom/android/server/chimera/AggressivePolicyHandler;

    .line 48
    iget-object v3, v0, Lcom/android/server/chimera/ChimeraManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 50
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 53
    move-result-object v16

    .line 54
    iget-object v11, v0, Lcom/android/server/chimera/ChimeraManager;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    .line 56
    iget-object v12, v0, Lcom/android/server/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 58
    iget-object v3, v0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 60
    iget-object v14, v0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 62
    iget-object v15, v0, Lcom/android/server/chimera/ChimeraManager;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    .line 64
    move-object v10, v1

    .line 65
    move-object v13, v3

    .line 66
    invoke-direct/range {v10 .. v16}, Lcom/android/server/chimera/PolicyHandler;-><init>(Lcom/android/server/chimera/ChimeraAppManager;Lcom/android/server/chimera/ChimeraStrategy;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;Lcom/android/server/chimera/AbnormalFgsDetector;Landroid/os/Looper;)V

    .line 69
    const v4, 0x2932e00

    .line 72
    iput v4, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mPkgKillIntervalDefault:I

    .line 74
    const/4 v4, 0x0

    .line 75
    iput-boolean v4, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsAdjustTargetFree:Z

    .line 77
    const-wide/16 v5, 0x0

    .line 79
    iput-wide v5, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeEndTime:J

    .line 81
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 83
    iput-wide v5, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeFactor:D

    .line 85
    sget-object v5, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 87
    iput-object v5, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 89
    iput-boolean v4, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsHeavyLaunchOn:Z

    .line 91
    iput v4, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchBufferSize:I

    .line 93
    iput v4, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchPackageLimit:I

    .line 95
    new-instance v5, Lcom/android/internal/util/RingBuffer;

    .line 97
    const-class v6, Ljava/lang/String;

    .line 99
    const/16 v7, 0xc8

    .line 101
    invoke-direct {v5, v6, v7}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 104
    iput-object v5, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mSubProcessKillList:Lcom/android/internal/util/RingBuffer;

    .line 106
    new-instance v5, Lcom/android/server/chimera/SkipReasonLogger;

    .line 108
    invoke-direct {v5, v3}, Lcom/android/server/chimera/SkipReasonLogger;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    .line 111
    iput-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 113
    const-string v3, "Adjust targetfree : "

    .line 115
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 117
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    const-string/jumbo v5, "ro.slmk.chimera_kill_interval_ms"

    .line 123
    const-string v6, ""

    .line 125
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    move-result-object v5

    .line 129
    const-string v8, ","

    .line 131
    const/4 v9, 0x2

    .line 132
    if-eqz v5, :cond_2

    .line 134
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 137
    move-result v10

    .line 138
    if-lez v10, :cond_2

    .line 140
    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 143
    move-result-object v5

    .line 144
    array-length v10, v5

    .line 145
    if-ne v10, v9, :cond_2

    .line 147
    aget-object v10, v5, v4

    .line 149
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 152
    move-result v10

    .line 153
    iput v10, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mPkgKillIntervalDefault:I

    .line 155
    aget-object v5, v5, v2

    .line 157
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 160
    move-result v5

    .line 161
    iput v5, v1, Lcom/android/server/chimera/PolicyHandler;->mPkgKillIntervalHeavy:I

    .line 163
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 165
    const-string v10, "PKG_KILL_INTERVAL_DEFAULT: "

    .line 167
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    iget v10, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mPkgKillIntervalDefault:I

    .line 172
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object v5

    .line 179
    const-string v10, "AggressivePolicyHandler"

    .line 181
    invoke-static {v10, v5}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    .line 186
    const-string v11, "PKG_KILL_INTERVAL_HEAVY: "

    .line 188
    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    iget v11, v1, Lcom/android/server/chimera/PolicyHandler;->mPkgKillIntervalHeavy:I

    .line 193
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    move-result-object v5

    .line 200
    invoke-static {v10, v5}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    .line 205
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    iget v11, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mPkgKillIntervalDefault:I

    .line 210
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    move-result-object v5

    .line 220
    const-string/jumbo v11, "persist.sys.chimera_pkg_kill_interval_ms"

    .line 223
    invoke-static {v11, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    move-result-object v5

    .line 227
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 230
    move-result v5

    .line 231
    const-string/jumbo v11, "ro.slmk.chimera_cem_pkg_kill_interval_ms"

    .line 234
    sget-object v12, Lcom/android/server/chimera/PolicyHandler;->CEM_PKG_KILL_INTERVAL_DEFAULT:Ljava/lang/String;

    .line 236
    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    move-result-object v11

    .line 240
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 243
    move-result v11

    .line 244
    iput v11, v1, Lcom/android/server/chimera/PolicyHandler;->mCemPkgKillIntervalMs:I

    .line 246
    const/16 v11, 0x352

    .line 248
    filled-new-array {v7, v11, v5}, [I

    .line 251
    move-result-object v5

    .line 252
    const/16 v7, 0x64

    .line 254
    iget v12, v1, Lcom/android/server/chimera/PolicyHandler;->mPkgKillIntervalHeavy:I

    .line 256
    filled-new-array {v7, v11, v12}, [I

    .line 259
    move-result-object v7

    .line 260
    filled-new-array {v5, v7}, [[I

    .line 263
    move-result-object v5

    .line 264
    iput-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    .line 266
    const-string/jumbo v5, "ro.slmk.chimera_kill_boost_on_normal"

    .line 269
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    move-result-object v5

    .line 273
    invoke-static {v5}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 276
    move-result-object v5

    .line 277
    new-instance v7, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda1;

    .line 279
    const/4 v11, 0x0

    .line 280
    invoke-direct {v7, v11}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda1;-><init>(I)V

    .line 283
    invoke-virtual {v5, v7}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    .line 286
    move-result-object v5

    .line 287
    new-instance v7, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda2;

    .line 289
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 292
    invoke-virtual {v5, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 295
    move-result-object v5

    .line 296
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    .line 299
    move-result v7

    .line 300
    const/4 v11, 0x3

    .line 301
    if-gt v7, v11, :cond_3

    .line 303
    move v7, v2

    .line 304
    goto :goto_0

    .line 305
    :cond_3
    move v7, v4

    .line 306
    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 309
    move-result-object v7

    .line 310
    invoke-virtual {v5, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    move-result-object v5

    .line 314
    check-cast v5, Ljava/lang/Boolean;

    .line 316
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 319
    move-result v5

    .line 320
    iput-boolean v5, v1, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    .line 322
    const-string/jumbo v5, "ro.slmk.chimera_kill_boost_on_heavy"

    .line 325
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    move-result-object v5

    .line 329
    invoke-static {v5}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 332
    move-result-object v5

    .line 333
    new-instance v7, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda1;

    .line 335
    const/4 v12, 0x1

    .line 336
    invoke-direct {v7, v12}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda1;-><init>(I)V

    .line 339
    invoke-virtual {v5, v7}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    .line 342
    move-result-object v5

    .line 343
    new-instance v7, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda2;

    .line 345
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 348
    invoke-virtual {v5, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 351
    move-result-object v5

    .line 352
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    .line 355
    move-result v7

    .line 356
    if-gt v7, v11, :cond_4

    .line 358
    move v7, v2

    .line 359
    goto :goto_1

    .line 360
    :cond_4
    move v7, v4

    .line 361
    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 364
    move-result-object v7

    .line 365
    invoke-virtual {v5, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    move-result-object v5

    .line 369
    check-cast v5, Ljava/lang/Boolean;

    .line 371
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 374
    move-result v5

    .line 375
    iput-boolean v5, v1, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    .line 377
    const-string/jumbo v5, "persist.sys.bub_onoff"

    .line 380
    const-string/jumbo v7, "on"

    .line 383
    invoke-static {v5, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 386
    move-result-object v5

    .line 387
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 390
    move-result v5

    .line 391
    sput-boolean v5, Lcom/android/server/chimera/PolicyHandler;->mIsBubEnabled:Z

    .line 393
    const-string/jumbo v5, "ro.slmk.chimera_adjust_boot_targetfree"

    .line 396
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 399
    move-result-object v5

    .line 400
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 403
    move-result v6

    .line 404
    if-nez v6, :cond_5

    .line 406
    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 409
    move-result-object v5

    .line 410
    array-length v6, v5

    .line 411
    if-ne v6, v9, :cond_5

    .line 413
    :try_start_0
    aget-object v6, v5, v4

    .line 415
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 418
    move-result v6

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 422
    move-result-wide v11

    .line 423
    mul-int/lit16 v7, v6, 0x3e8

    .line 425
    int-to-long v13, v7

    .line 426
    add-long/2addr v11, v13

    .line 427
    iput-wide v11, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeEndTime:J

    .line 429
    aget-object v5, v5, v2

    .line 431
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 434
    move-result-wide v11

    .line 435
    iput-wide v11, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeFactor:D

    .line 437
    iput-boolean v2, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsAdjustTargetFree:Z

    .line 439
    new-instance v5, Ljava/lang/StringBuilder;

    .line 441
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 447
    const-string v3, ", "

    .line 449
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    iget-wide v6, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeFactor:D

    .line 454
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    move-result-object v3

    .line 461
    invoke-static {v10, v3}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    goto :goto_2

    .line 465
    :catch_0
    const-string v3, "Error while adjust targetfee"

    .line 467
    invoke-static {v10, v3}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :cond_5
    :goto_2
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    .line 473
    move-result v3

    .line 474
    const/4 v5, 0x4

    .line 475
    if-gt v3, v5, :cond_6

    .line 477
    const/16 v3, 0x50

    .line 479
    iput v3, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchBufferSize:I

    .line 481
    const/16 v3, 0x19

    .line 483
    iput v3, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchPackageLimit:I

    .line 485
    iput-boolean v2, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsHeavyLaunchOn:Z

    .line 487
    :cond_6
    iget-boolean v2, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsHeavyLaunchOn:Z

    .line 489
    if-eqz v2, :cond_7

    .line 491
    new-instance v2, Lcom/android/server/chimera/HeavyLaunchCounter;

    .line 493
    iget v3, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchBufferSize:I

    .line 495
    iget v5, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchPackageLimit:I

    .line 497
    invoke-direct {v2, v3, v5}, Lcom/android/server/chimera/HeavyLaunchCounter;-><init>(II)V

    .line 500
    iput-object v2, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchCounter:Lcom/android/server/chimera/HeavyLaunchCounter;

    .line 502
    new-instance v2, Ljava/lang/StringBuilder;

    .line 504
    const-string v3, "Heavy launch param : "

    .line 506
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 509
    iget v3, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchBufferSize:I

    .line 511
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    iget v3, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchPackageLimit:I

    .line 519
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    move-result-object v2

    .line 526
    invoke-static {v10, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    :cond_7
    iput-object v1, v0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    .line 531
    invoke-virtual {v0, v4}, Lcom/android/server/chimera/ChimeraManager;->registerSystemEventListener(Z)V

    .line 534
    :goto_3
    iget-object v0, v0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 536
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 539
    const-string v0, "ChimeraManager"

    .line 541
    const-string v1, "Chimera instance created"

    .line 543
    invoke-static {v0, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method public final onMediaScanFinished()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string v1, "ChimeraManager"

    .line 8
    const-string/jumbo v2, "onMediaScanFinished() to start the policy "

    .line 11
    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v2, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 16
    invoke-virtual {v2}, Lcom/android/server/chimera/SettingRepository;->initialize()V

    .line 19
    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mHeimdall:Lcom/android/server/chimera/heimdall/Heimdall;

    .line 21
    iget-object v4, v3, Lcom/android/server/chimera/heimdall/Heimdall;->mContext:Landroid/content/Context;

    .line 23
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v3, v4}, Lcom/android/server/chimera/heimdall/Heimdall;->updateAlwaysRunningGlobalQuota(Landroid/content/ContentResolver;)V

    .line 30
    invoke-virtual {v3, v4}, Lcom/android/server/chimera/heimdall/Heimdall;->updateAnomalyType(Landroid/content/ContentResolver;)V

    .line 33
    invoke-virtual {v3, v4}, Lcom/android/server/chimera/heimdall/Heimdall;->updateSpec(Landroid/content/ContentResolver;)V

    .line 36
    const-string/jumbo v5, "heimdall_report_hour_interval"

    .line 39
    const/4 v6, 0x0

    .line 40
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 43
    move-result v5

    .line 44
    if-gtz v5, :cond_0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object v7, v3, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 49
    iget-object v7, v7, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    .line 51
    iput v5, v7, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mTimeoutReportProtectedHour:I

    .line 53
    :goto_0
    const-string/jumbo v5, "heimdall_random_sample_rate"

    .line 56
    const/16 v7, 0xa

    .line 58
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 61
    move-result v4

    .line 62
    iget-object v3, v3, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    .line 64
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    if-ltz v4, :cond_1

    .line 69
    const/16 v3, 0x3e8

    .line 71
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    .line 74
    move-result v3

    .line 75
    sput v3, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->sRandomSampleRate:I

    .line 77
    :cond_1
    const-string/jumbo v3, "retrieveSettings done"

    .line 80
    invoke-static {v3}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->createPolicyHandler()V

    .line 86
    sget-boolean v3, Lcom/android/server/chimera/genie/GenieConfigurations;->sIsChinaDevice:Z

    .line 88
    const/4 v4, 0x1

    .line 89
    xor-int/2addr v3, v4

    .line 90
    iget-object v5, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    .line 92
    if-eqz v3, :cond_3

    .line 94
    const-string/jumbo v3, "createGeniePolicyHandler"

    .line 97
    invoke-static {v1, v3}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mGenieUnloadPolicyHandler:Lcom/android/server/chimera/GenieUnloadPolicyHandler;

    .line 102
    if-eqz v3, :cond_2

    .line 104
    iget-object v7, v5, Lcom/android/server/chimera/SystemEventListener;->mLmkdEventListeners:Ljava/util/List;

    .line 106
    check-cast v7, Ljava/util/ArrayList;

    .line 108
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 111
    const-string/jumbo v3, "removeLmkdEventListener for mGeniePolicyHandler"

    .line 114
    invoke-static {v1, v3}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_2
    new-instance v3, Lcom/android/server/chimera/GenieUnloadPolicyHandler;

    .line 119
    iget-object v7, p0, Lcom/android/server/chimera/ChimeraManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 121
    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 124
    move-result-object v13

    .line 125
    iget-object v11, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 127
    iget-object v12, p0, Lcom/android/server/chimera/ChimeraManager;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    .line 129
    iget-object v8, p0, Lcom/android/server/chimera/ChimeraManager;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    .line 131
    iget-object v9, p0, Lcom/android/server/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 133
    iget-object v10, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 135
    move-object v7, v3

    .line 136
    invoke-direct/range {v7 .. v13}, Lcom/android/server/chimera/PolicyHandler;-><init>(Lcom/android/server/chimera/ChimeraAppManager;Lcom/android/server/chimera/ChimeraStrategy;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;Lcom/android/server/chimera/AbnormalFgsDetector;Landroid/os/Looper;)V

    .line 139
    iput-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mGenieUnloadPolicyHandler:Lcom/android/server/chimera/GenieUnloadPolicyHandler;

    .line 141
    iget-object v7, v5, Lcom/android/server/chimera/SystemEventListener;->mLmkdEventListeners:Ljava/util/List;

    .line 143
    check-cast v7, Ljava/util/ArrayList;

    .line 145
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    const-string/jumbo v3, "create new mGeniePolicyHandler and addLmkdEventListener"

    .line 151
    invoke-static {v1, v3}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_3
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 157
    move-result-object v1

    .line 158
    iput-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPerProcessNandswap:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 160
    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 162
    invoke-virtual {v1, v0, v3}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->init(Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/ChimeraStrategy;)V

    .line 165
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->getInstance()Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 168
    move-result-object v1

    .line 169
    iput-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mGPUMemoryReclaimer:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 171
    iget-boolean v1, v2, Lcom/android/server/chimera/SettingRepository;->mIsPSITrackerEnable:Z

    .line 173
    if-eqz v1, :cond_5

    .line 175
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPSITracker:Lcom/android/server/chimera/psitracker/PSITracker;

    .line 177
    if-eqz v1, :cond_4

    .line 179
    iget-object v2, v5, Lcom/android/server/chimera/SystemEventListener;->mTimeOrTimeZoneChangedListeners:Ljava/util/List;

    .line 181
    check-cast v2, Ljava/util/ArrayList;

    .line 183
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 186
    :cond_4
    new-instance v1, Lcom/android/server/chimera/psitracker/PSITracker;

    .line 188
    iget-object v2, p0, Lcom/android/server/chimera/ChimeraManager;->mContext:Landroid/content/Context;

    .line 190
    iget-object v7, p0, Lcom/android/server/chimera/ChimeraManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 192
    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 195
    move-result-object v7

    .line 196
    invoke-direct {v1, v2, v7, v0}, Lcom/android/server/chimera/psitracker/PSITracker;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/chimera/SystemRepository;)V

    .line 199
    iput-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPSITracker:Lcom/android/server/chimera/psitracker/PSITracker;

    .line 201
    iget-object v2, v5, Lcom/android/server/chimera/SystemEventListener;->mTimeOrTimeZoneChangedListeners:Ljava/util/List;

    .line 203
    check-cast v2, Ljava/util/ArrayList;

    .line 205
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    sget-boolean v1, Lcom/android/server/chimera/psitracker/PSITracker;->mFirstTriggeredAfterBooting:Z

    .line 210
    if-nez v1, :cond_5

    .line 212
    sput-boolean v4, Lcom/android/server/chimera/psitracker/PSITracker;->mFirstTriggeredAfterBooting:Z

    .line 214
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mPSITracker:Lcom/android/server/chimera/psitracker/PSITracker;

    .line 216
    const-string v1, "MEDIA_SCAN_FINISHED"

    .line 218
    invoke-virtual {p0, v1}, Lcom/android/server/chimera/psitracker/PSITracker;->scheduleAvailMem240PeriodRecord(Ljava/lang/String;)V

    .line 221
    :cond_5
    sget-object p0, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    .line 223
    const-string/jumbo p0, "ro.slmk.chimera_quota_enable"

    .line 226
    invoke-static {p0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 229
    move-result p0

    .line 230
    if-eqz p0, :cond_8

    .line 232
    sget-object p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->INSTANCE:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    .line 234
    iget v1, v3, Lcom/android/server/chimera/ChimeraStrategy;->mAlwaysRunningProcessQuota:I

    .line 236
    iput-object v0, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 238
    int-to-long v1, v1

    .line 239
    const-wide/16 v3, 0x400

    .line 241
    mul-long/2addr v1, v3

    .line 242
    iput-wide v1, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mQuota:J

    .line 244
    const-wide/16 v3, 0x0

    .line 246
    cmp-long v1, v1, v3

    .line 248
    const-string v2, "ChimeraQuotaMonitor"

    .line 250
    if-gtz v1, :cond_6

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    .line 254
    const-string v3, "ChimeraQuotaMonitor invalid quota: "

    .line 256
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    iget-wide v3, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mQuota:J

    .line 261
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    move-result-object p0

    .line 268
    invoke-static {v2, p0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    goto :goto_1

    .line 272
    :cond_6
    iget-object v1, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mTimer:Ljava/util/Timer;

    .line 274
    if-nez v1, :cond_7

    .line 276
    new-instance v3, Ljava/util/Timer;

    .line 278
    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    .line 281
    iput-object v3, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mTimer:Ljava/util/Timer;

    .line 283
    new-instance v4, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;

    .line 285
    invoke-direct {v4, p0}, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;-><init>(Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;)V

    .line 288
    const-wide/32 v5, 0x124f80

    .line 291
    const-wide/32 v7, 0x124f80

    .line 294
    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 297
    goto :goto_1

    .line 298
    :cond_7
    const-string p0, "ChimeraQuotaMonitor already start!"

    .line 300
    invoke-static {v2, p0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_8
    :goto_1
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 305
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 311
    move-result p0

    .line 312
    if-eqz p0, :cond_9

    .line 314
    new-instance p0, Lcom/android/server/chimera/SystemRepository$ForegroundActivityManager;

    .line 316
    invoke-direct {p0}, Lcom/android/server/chimera/SystemRepository$ForegroundActivityManager;-><init>()V

    .line 319
    iput-object p0, v0, Lcom/android/server/chimera/SystemRepository;->mFGActivityManager:Lcom/android/server/chimera/SystemRepository$ForegroundActivityManager;

    .line 321
    :cond_9
    return-void
.end method

.method public final registerSystemEventListener(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    .line 3
    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    .line 7
    iget-object v1, v0, Lcom/android/server/chimera/SystemEventListener;->mLmkdEventListeners:Ljava/util/List;

    .line 9
    check-cast v1, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    .line 16
    iget-object v1, v0, Lcom/android/server/chimera/SystemEventListener;->mCarModeChangeListeners:Ljava/util/List;

    .line 18
    check-cast v1, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    .line 25
    iget-object v1, v0, Lcom/android/server/chimera/SystemEventListener;->mHomeLaunchListeners:Ljava/util/List;

    .line 27
    check-cast v1, Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 34
    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 42
    move-result p1

    .line 43
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 45
    if-nez p1, :cond_0

    .line 47
    iget-boolean p1, v1, Lcom/android/server/chimera/SettingRepository;->mQuickReclaimEnable:Z

    .line 49
    if-eqz p1, :cond_1

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {v0, p1}, Lcom/android/server/chimera/SystemEventListener;->addCameraDeviceStateCallback(Landroid/content/Context;)V

    .line 56
    :cond_1
    iget-boolean p1, v1, Lcom/android/server/chimera/SettingRepository;->mQuickReclaimEnable:Z

    .line 58
    if-eqz p1, :cond_2

    .line 60
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    .line 62
    iget-object v1, v0, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchIntentListeners:Ljava/util/List;

    .line 64
    check-cast v1, Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {v0}, Lcom/android/server/chimera/SystemEventListener;->provideLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;

    .line 72
    move-result-object p1

    .line 73
    iget-object v1, v0, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchObserver:Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;

    .line 75
    check-cast p1, Lcom/android/server/wm/LaunchObserverRegistryImpl;

    .line 77
    iget-object v2, p1, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    .line 79
    new-instance v3, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda0;

    .line 81
    const/4 v4, 0x1

    .line 82
    invoke-direct {v3, v4}, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda0;-><init>(I)V

    .line 85
    invoke-static {v3, p1, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 92
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    .line 94
    iget-object v1, v0, Lcom/android/server/chimera/SystemEventListener;->mCameraStateListeners:Ljava/util/List;

    .line 96
    check-cast v1, Ljava/util/ArrayList;

    .line 98
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_2
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    .line 103
    iget-object v1, v0, Lcom/android/server/chimera/SystemEventListener;->mDeviceIdleListeners:Ljava/util/List;

    .line 105
    check-cast v1, Ljava/util/ArrayList;

    .line 107
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object p1, v0, Lcom/android/server/chimera/SystemEventListener;->mOneHourTimerListeners:Ljava/util/List;

    .line 112
    check-cast p1, Ljava/util/ArrayList;

    .line 114
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_3

    .line 120
    invoke-virtual {v0}, Lcom/android/server/chimera/SystemEventListener;->startOneHourTimer()V

    .line 123
    :cond_3
    iget-object p1, v0, Lcom/android/server/chimera/SystemEventListener;->mOneHourTimerListeners:Ljava/util/List;

    .line 125
    check-cast p1, Ljava/util/ArrayList;

    .line 127
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    .line 129
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 134
    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_4

    .line 145
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    .line 147
    iget-object p1, v0, Lcom/android/server/chimera/SystemEventListener;->mQuotaListeners:Ljava/util/List;

    .line 149
    check-cast p1, Ljava/util/ArrayList;

    .line 151
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_4
    return-void
.end method

.method public final unRegisterSystemEventListener(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    .line 3
    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    .line 7
    iget-object v1, v0, Lcom/android/server/chimera/SystemEventListener;->mLmkdEventListeners:Ljava/util/List;

    .line 9
    check-cast v1, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    .line 16
    iget-object v1, v0, Lcom/android/server/chimera/SystemEventListener;->mCarModeChangeListeners:Ljava/util/List;

    .line 18
    check-cast v1, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 23
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    .line 25
    iget-object v1, v0, Lcom/android/server/chimera/SystemEventListener;->mHomeLaunchListeners:Ljava/util/List;

    .line 27
    check-cast v1, Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 32
    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 34
    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 42
    move-result p1

    .line 43
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 45
    if-nez p1, :cond_0

    .line 47
    iget-boolean p1, v1, Lcom/android/server/chimera/SettingRepository;->mQuickReclaimEnable:Z

    .line 49
    if-eqz p1, :cond_1

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mContext:Landroid/content/Context;

    .line 53
    const-string/jumbo v2, "camera"

    .line 56
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Landroid/hardware/camera2/CameraManager;

    .line 62
    iget-object v2, v0, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 64
    iget-object v2, v2, Lcom/android/server/chimera/SystemRepository;->mCameraDeviceStateCallback:Lcom/android/server/chimera/SystemRepository$3;

    .line 66
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CameraManager;->unregisterSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;)V

    .line 69
    :cond_1
    iget-boolean p1, v1, Lcom/android/server/chimera/SettingRepository;->mQuickReclaimEnable:Z

    .line 71
    if-eqz p1, :cond_2

    .line 73
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    .line 75
    iget-object v1, v0, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchIntentListeners:Ljava/util/List;

    .line 77
    check-cast v1, Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {v0}, Lcom/android/server/chimera/SystemEventListener;->provideLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;

    .line 85
    move-result-object p1

    .line 86
    iget-object v1, v0, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchObserver:Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;

    .line 88
    check-cast p1, Lcom/android/server/wm/LaunchObserverRegistryImpl;

    .line 90
    iget-object v2, p1, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    .line 92
    new-instance v3, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda0;

    .line 94
    const/4 v4, 0x0

    .line 95
    invoke-direct {v3, v4}, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda0;-><init>(I)V

    .line 98
    invoke-static {v3, p1, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    .line 107
    iget-object v1, v0, Lcom/android/server/chimera/SystemEventListener;->mCameraStateListeners:Ljava/util/List;

    .line 109
    check-cast v1, Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 114
    :cond_2
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    .line 116
    iget-object v1, v0, Lcom/android/server/chimera/SystemEventListener;->mDeviceIdleListeners:Ljava/util/List;

    .line 118
    check-cast v1, Ljava/util/ArrayList;

    .line 120
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 123
    iget-object p1, v0, Lcom/android/server/chimera/SystemEventListener;->mOneHourTimerListeners:Ljava/util/List;

    .line 125
    check-cast p1, Ljava/util/ArrayList;

    .line 127
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    .line 129
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 132
    iget-object p1, v0, Lcom/android/server/chimera/SystemEventListener;->mOneHourTimerListeners:Ljava/util/List;

    .line 134
    check-cast p1, Ljava/util/ArrayList;

    .line 136
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 139
    move-result p1

    .line 140
    if-nez p1, :cond_3

    .line 142
    iget-object p1, v0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 144
    const/16 v1, 0xe

    .line 146
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 149
    :cond_3
    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 151
    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 159
    move-result p1

    .line 160
    if-eqz p1, :cond_4

    .line 162
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    .line 164
    iget-object p1, v0, Lcom/android/server/chimera/SystemEventListener;->mQuotaListeners:Ljava/util/List;

    .line 166
    check-cast p1, Ljava/util/ArrayList;

    .line 168
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 171
    :cond_4
    return-void
.end method
