.class public final synthetic Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/CustomizedBinderCallsStatsInternal;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/CustomizedBinderCallsStatsInternal;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/CustomizedBinderCallsStatsInternal;

    .line 6
    iput p2, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda1;->f$1:I

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, v0, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/CustomizedBinderCallsStatsInternal;

    .line 7
    iget v0, v0, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda1;->f$1:I

    .line 9
    iget-object v4, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 11
    const/4 v5, 0x5

    .line 12
    invoke-virtual {v4, v5, v0}, Lcom/android/internal/os/BinderCallsStats;->store(II)V

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    move-result-wide v4

    .line 19
    iput-wide v4, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastStoreTime:J

    .line 21
    iget-wide v4, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastWriteTime:J

    .line 23
    const-wide/16 v6, 0x0

    .line 25
    cmp-long v4, v4, v6

    .line 27
    const-string v5, "CustomizedBinderCallsStatsInternal"

    .line 29
    if-eqz v4, :cond_0

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    move-result-wide v8

    .line 35
    iget-wide v10, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastWriteTime:J

    .line 37
    sub-long/2addr v8, v10

    .line 38
    const-wide/32 v10, 0x1b7740

    .line 41
    cmp-long v4, v8, v10

    .line 43
    if-ltz v4, :cond_1

    .line 45
    :cond_0
    const-string/jumbo v4, "should write the current data!!"

    .line 48
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    .line 54
    move-result-object v4

    .line 55
    new-instance v8, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda2;

    .line 57
    invoke-direct {v8, v3}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/CustomizedBinderCallsStatsInternal;)V

    .line 60
    invoke-virtual {v4, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 66
    move-result-wide v8

    .line 67
    iput-wide v8, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastWriteTime:J

    .line 69
    :cond_1
    const/16 v4, 0x14

    .line 71
    if-lt v0, v4, :cond_7

    .line 73
    iget-object v4, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 75
    const/16 v8, 0x5a

    .line 77
    invoke-virtual {v4, v8}, Lcom/android/internal/os/BinderCallsStats;->getHeaviestApplicationUid(I)Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;

    .line 80
    move-result-object v4

    .line 81
    if-eqz v4, :cond_7

    .line 83
    new-instance v8, Ljava/lang/StringBuilder;

    .line 85
    const-string/jumbo v9, "heavy binder caller : "

    .line 88
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    iget-object v9, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mPackageName:Ljava/lang/String;

    .line 93
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v9, "("

    .line 98
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget v9, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mUid:I

    .line 103
    const-string v10, ")"

    .line 105
    invoke-static {v8, v9, v10, v5}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-wide v8, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastNotifyTime:J

    .line 110
    cmp-long v6, v8, v6

    .line 112
    if-eqz v6, :cond_2

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 117
    move-result-wide v6

    .line 118
    iget-wide v8, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastNotifyTime:J

    .line 120
    sub-long/2addr v6, v8

    .line 121
    const-wide/32 v8, 0x5265c00

    .line 124
    cmp-long v6, v6, v8

    .line 126
    if-ltz v6, :cond_7

    .line 128
    :cond_2
    iget-object v6, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mAm:Landroid/app/ActivityManagerInternal;

    .line 130
    if-nez v6, :cond_3

    .line 132
    const-class v6, Landroid/app/ActivityManagerInternal;

    .line 134
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 137
    move-result-object v6

    .line 138
    check-cast v6, Landroid/app/ActivityManagerInternal;

    .line 140
    iput-object v6, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mAm:Landroid/app/ActivityManagerInternal;

    .line 142
    :cond_3
    iget-object v7, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mAm:Landroid/app/ActivityManagerInternal;

    .line 144
    new-instance v8, Landroid/content/Intent;

    .line 146
    const-string/jumbo v6, "com.sec.android.sdhms.action.APP_ERROR"

    .line 149
    invoke-direct {v8, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v6, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mPackageName:Ljava/lang/String;

    .line 154
    const-string/jumbo v9, "pkgName"

    .line 157
    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string/jumbo v6, "userId"

    .line 163
    invoke-virtual {v8, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    const-string/jumbo v6, "uid"

    .line 169
    iget v9, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mUid:I

    .line 171
    invoke-virtual {v8, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    const-string/jumbo v6, "type"

    .line 177
    const-string/jumbo v9, "excessive_binder"

    .line 180
    invoke-virtual {v8, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string/jumbo v6, "com.sec.android.sdhms"

    .line 186
    invoke-virtual {v8, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const/4 v12, 0x0

    .line 190
    const/4 v13, 0x0

    .line 191
    const/4 v9, 0x0

    .line 192
    const/4 v10, 0x0

    .line 193
    const/4 v11, 0x0

    .line 194
    const/4 v14, 0x0

    .line 195
    const/4 v15, 0x0

    .line 196
    invoke-virtual/range {v7 .. v15}, Landroid/app/ActivityManagerInternal;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;ZI[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    .line 199
    iget-object v6, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mContext:Landroid/content/Context;

    .line 201
    const-string v7, "HqmManagerService"

    .line 203
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 206
    move-result-object v6

    .line 207
    move-object v7, v6

    .line 208
    check-cast v7, Landroid/os/SemHqmManager;

    .line 210
    if-eqz v7, :cond_5

    .line 212
    new-instance v6, Ljava/lang/StringBuilder;

    .line 214
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    new-instance v8, Ljava/lang/StringBuilder;

    .line 219
    const-string v9, "\"PKG\":\""

    .line 221
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    iget-object v9, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mPackageName:Ljava/lang/String;

    .line 226
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string v9, "\","

    .line 231
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    move-result-object v8

    .line 238
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    new-instance v8, Ljava/lang/StringBuilder;

    .line 243
    const-string v10, "\"SSCPU\":\""

    .line 245
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    .line 263
    const-string v8, "\"RATIO\":\""

    .line 265
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    iget v8, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mRatio:F

    .line 270
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 273
    move-result-object v8

    .line 274
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 277
    move-result-object v8

    .line 278
    const-string v10, "%.2f"

    .line 280
    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 283
    move-result-object v8

    .line 284
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    move-result-object v0

    .line 294
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 300
    move-result v0

    .line 301
    iget-object v8, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mExtraInfo:Ljava/lang/String;

    .line 303
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 306
    move-result v8

    .line 307
    add-int/2addr v8, v0

    .line 308
    add-int/lit8 v0, v8, 0xa

    .line 310
    const/16 v9, 0x3e8

    .line 312
    const-string v10, "\""

    .line 314
    const-string v11, "\"EXTRA\":\""

    .line 316
    if-le v0, v9, :cond_4

    .line 318
    add-int/lit16 v8, v8, -0x3de

    .line 320
    iget-object v0, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mExtraInfo:Ljava/lang/String;

    .line 322
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 325
    move-result v0

    .line 326
    new-instance v9, Ljava/lang/StringBuilder;

    .line 328
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    iget-object v4, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mExtraInfo:Ljava/lang/String;

    .line 333
    sub-int/2addr v0, v8

    .line 334
    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 337
    move-result-object v0

    .line 338
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    move-result-object v0

    .line 348
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    goto :goto_0

    .line 352
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 354
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    iget-object v4, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mExtraInfo:Ljava/lang/String;

    .line 359
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    move-result-object v0

    .line 369
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 374
    const-string v4, "Data is : "

    .line 376
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    move-result-object v4

    .line 383
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    move-result-object v0

    .line 390
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    move-result-object v15

    .line 397
    const-string v13, ""

    .line 399
    const-string v14, ""

    .line 401
    const/4 v8, 0x0

    .line 402
    const-string v9, "AP"

    .line 404
    const-string v10, "HBCA"

    .line 406
    const-string/jumbo v11, "sm"

    .line 409
    const-string v12, "0.0"

    .line 411
    const-string v16, ""

    .line 413
    invoke-virtual/range {v7 .. v16}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 416
    move-result v0

    .line 417
    if-nez v0, :cond_6

    .line 419
    const-string v0, "Failed to send anomaly application info. to HWParam"

    .line 421
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    goto :goto_1

    .line 425
    :cond_5
    const-string v0, "Cannot get HqmManagerService !!!"

    .line 427
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_6
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 433
    move-result-wide v6

    .line 434
    iput-wide v6, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastNotifyTime:J

    .line 436
    :cond_7
    iget-object v0, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 438
    invoke-virtual {v0}, Lcom/android/internal/os/BinderCallsStats;->isNeededResetData()Z

    .line 441
    move-result v0

    .line 442
    if-eqz v0, :cond_8

    .line 444
    const-string v0, "Clear all data"

    .line 446
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 451
    new-array v3, v1, [Z

    .line 453
    aput-boolean v1, v3, v2

    .line 455
    invoke-virtual {v0, v3}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    .line 458
    :cond_8
    return-void
.end method
