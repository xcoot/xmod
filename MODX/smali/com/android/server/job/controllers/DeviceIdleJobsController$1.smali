.class public final Lcom/android/server/job/controllers/DeviceIdleJobsController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    const/4 p1, 0x1

    .line 2
    const-string v0, "Got temp whitelist "

    .line 4
    const-string v1, "Got whitelist "

    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, -0x1

    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 18
    move-result v4

    .line 19
    sparse-switch v4, :sswitch_data_0

    .line 22
    goto :goto_0

    .line 23
    :sswitch_0
    const-string v4, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 25
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p2

    .line 29
    if-nez p2, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v3, 0x3

    .line 33
    goto :goto_0

    .line 34
    :sswitch_1
    const-string v4, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    .line 36
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result p2

    .line 40
    if-nez p2, :cond_1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v3, 0x2

    .line 44
    goto :goto_0

    .line 45
    :sswitch_2
    const-string v4, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    .line 47
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result p2

    .line 51
    if-nez p2, :cond_2

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move v3, p1

    .line 55
    goto :goto_0

    .line 56
    :sswitch_3
    const-string v4, "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

    .line 58
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result p2

    .line 62
    if-nez p2, :cond_3

    .line 64
    goto :goto_0

    .line 65
    :cond_3
    move v3, v2

    .line 66
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 69
    goto/16 :goto_b

    .line 71
    :pswitch_0
    iget-object p2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 73
    iget-object v0, p2, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerManager:Landroid/os/PowerManager;

    .line 75
    if-eqz v0, :cond_5

    .line 77
    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_4

    .line 83
    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 85
    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerManager:Landroid/os/PowerManager;

    .line 87
    invoke-virtual {p0}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    .line 90
    move-result p0

    .line 91
    if-eqz p0, :cond_5

    .line 93
    :cond_4
    move p0, p1

    .line 94
    goto :goto_1

    .line 95
    :cond_5
    move p0, v2

    .line 96
    :goto_1
    const-string/jumbo v0, "mDeviceIdleMode="

    .line 99
    iget-object v3, p2, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 101
    monitor-enter v3

    .line 102
    :try_start_0
    iget-boolean v1, p2, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    .line 104
    if-eq v1, p0, :cond_6

    .line 106
    move v2, p1

    .line 107
    :cond_6
    iput-boolean p0, p2, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    .line 109
    xor-int/lit8 v1, p0, 0x1

    .line 111
    const/high16 v4, 0x2000000

    .line 113
    invoke-static {v4, v1}, Lcom/android/server/job/controllers/StateController;->logDeviceWideConstraintStateToStatsd(IZ)V

    .line 116
    sget-boolean v1, Lcom/android/server/job/controllers/DeviceIdleJobsController;->DEBUG:Z

    .line 118
    if-eqz v1, :cond_7

    .line 120
    const-string v1, "JobScheduler.DeviceIdle"

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    .line 124
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    iget-boolean v0, p2, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    .line 129
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 136
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    goto :goto_2

    .line 140
    :catchall_0
    move-exception p0

    .line 141
    goto :goto_6

    .line 142
    :cond_7
    :goto_2
    iget-object v0, p2, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    .line 144
    invoke-virtual {v0}, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;->prepare()V

    .line 147
    if-eqz p0, :cond_8

    .line 149
    iget-object v0, p2, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mHandler:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;

    .line 151
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 154
    iget-object v0, p2, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 156
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 158
    iget-object v1, p2, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    .line 160
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 163
    goto :goto_3

    .line 164
    :cond_8
    iget-object v0, p2, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 166
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 168
    iget-object v1, p2, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mShouldRushEvaluation:Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda0;

    .line 170
    iget-object v4, p2, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    .line 172
    invoke-virtual {v0, v1, v4}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 175
    iget-object v0, p2, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mHandler:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;

    .line 177
    const-wide/16 v4, 0xbb8

    .line 179
    invoke-virtual {v0, p1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 182
    :goto_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    if-eqz v2, :cond_11

    .line 185
    iget-object p2, p2, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 187
    const-string v0, "Doze state changed: "

    .line 189
    iget-object v1, p2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 191
    monitor-enter v1

    .line 192
    :try_start_1
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 194
    if-eqz v2, :cond_9

    .line 196
    const-string v2, "JobScheduler"

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    .line 200
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object v0

    .line 210
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    goto :goto_4

    .line 214
    :catchall_1
    move-exception p0

    .line 215
    goto :goto_5

    .line 216
    :cond_9
    :goto_4
    if-nez p0, :cond_b

    .line 218
    iget-boolean p0, p2, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    .line 220
    if-eqz p0, :cond_b

    .line 222
    iget-object p0, p2, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 224
    if-eqz p0, :cond_a

    .line 226
    iget-boolean v0, p2, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    .line 228
    if-nez v0, :cond_a

    .line 230
    iput-boolean p1, p2, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    .line 232
    invoke-interface {p0, p1}, Lcom/android/server/DeviceIdleInternal;->setJobsActive(Z)V

    .line 235
    :cond_a
    iget-object p0, p2, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 237
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 240
    move-result-object p0

    .line 241
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 244
    :cond_b
    monitor-exit v1

    .line 245
    goto/16 :goto_b

    .line 247
    :goto_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 248
    throw p0

    .line 249
    :goto_6
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    throw p0

    .line 251
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 253
    iget-object p2, p1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 255
    monitor-enter p2

    .line 256
    :try_start_3
    iget-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 258
    iget-object v0, p1, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 260
    invoke-interface {v0}, Lcom/android/server/DeviceIdleInternal;->getPowerSaveWhitelistUserAppIds()[I

    .line 263
    move-result-object v0

    .line 264
    iput-object v0, p1, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleWhitelistAppIds:[I

    .line 266
    sget-boolean p1, Lcom/android/server/job/controllers/DeviceIdleJobsController;->DEBUG:Z

    .line 268
    if-eqz p1, :cond_c

    .line 270
    const-string p1, "JobScheduler.DeviceIdle"

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    .line 274
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 279
    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleWhitelistAppIds:[I

    .line 281
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 284
    move-result-object p0

    .line 285
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    move-result-object p0

    .line 292
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    goto :goto_7

    .line 296
    :catchall_2
    move-exception p0

    .line 297
    goto :goto_8

    .line 298
    :cond_c
    :goto_7
    monitor-exit p2

    .line 299
    goto/16 :goto_b

    .line 301
    :goto_8
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 302
    throw p0

    .line 303
    :pswitch_2
    iget-object p2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 305
    iget-object p2, p2, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 307
    monitor-enter p2

    .line 308
    :try_start_4
    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 310
    iget-object v3, v1, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 312
    invoke-interface {v3}, Lcom/android/server/DeviceIdleInternal;->getPowerSaveTempWhitelistAppIds()[I

    .line 315
    move-result-object v3

    .line 316
    iput-object v3, v1, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerSaveTempWhitelistAppIds:[I

    .line 318
    sget-boolean v1, Lcom/android/server/job/controllers/DeviceIdleJobsController;->DEBUG:Z

    .line 320
    if-eqz v1, :cond_d

    .line 322
    const-string v1, "JobScheduler.DeviceIdle"

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    .line 326
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 331
    iget-object v0, v0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerSaveTempWhitelistAppIds:[I

    .line 333
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 336
    move-result-object v0

    .line 337
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    move-result-object v0

    .line 344
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    goto :goto_9

    .line 348
    :catchall_3
    move-exception p0

    .line 349
    goto :goto_c

    .line 350
    :cond_d
    :goto_9
    new-instance v0, Landroid/util/ArraySet;

    .line 352
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 355
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 357
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 363
    move-result-wide v3

    .line 364
    :goto_a
    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 366
    iget-object v1, v1, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;

    .line 368
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 371
    move-result v1

    .line 372
    if-ge v2, v1, :cond_f

    .line 374
    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 376
    iget-object v5, v1, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;

    .line 378
    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 381
    move-result-object v5

    .line 382
    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 384
    invoke-virtual {v1, v5, v3, v4}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->updateTaskStateLocked(Lcom/android/server/job/controllers/JobStatus;J)Z

    .line 387
    move-result v1

    .line 388
    if-eqz v1, :cond_e

    .line 390
    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 392
    iget-object v1, v1, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;

    .line 394
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 397
    move-result-object v1

    .line 398
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 400
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_e
    add-int/2addr v2, p1

    .line 404
    goto :goto_a

    .line 405
    :cond_f
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 408
    move-result p1

    .line 409
    if-lez p1, :cond_10

    .line 411
    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 413
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 415
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 418
    :cond_10
    monitor-exit p2

    .line 419
    :cond_11
    :goto_b
    return-void

    .line 420
    :goto_c
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 421
    throw p0

    .line 422
    nop

    .line 423
    :sswitch_data_0
    .sparse-switch
        -0x2a729674 -> :sswitch_3
        -0x3e97d1f -> :sswitch_2
        0x1dbb32d0 -> :sswitch_1
        0x33e5d967 -> :sswitch_0
    .end sparse-switch

    .line 441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
