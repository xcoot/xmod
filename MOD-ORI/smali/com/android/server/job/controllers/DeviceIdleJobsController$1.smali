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

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
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

    .line 3
    .line 4
    const-string v1, "Got whitelist "

    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, -0x1

    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    sparse-switch v4, :sswitch_data_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :sswitch_0
    const-string v4, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 24
    .line 25
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-nez p2, :cond_0

    .line 30
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

    .line 35
    .line 36
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-nez p2, :cond_1

    .line 41
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

    .line 46
    .line 47
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-nez p2, :cond_2

    .line 52
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

    .line 57
    .line 58
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-nez p2, :cond_3

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    move v3, v2

    .line 66
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 67
    .line 68
    .line 69
    goto/16 :goto_b

    .line 70
    .line 71
    :pswitch_0
    iget-object p2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 72
    .line 73
    iget-object v0, p2, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerManager:Landroid/os/PowerManager;

    .line 74
    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_4

    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerManager:Landroid/os/PowerManager;

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-eqz p0, :cond_5

    .line 92
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

    .line 97
    .line 98
    .line 99
    iget-object v3, p2, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 100
    .line 101
    monitor-enter v3

    .line 102
    :try_start_0
    iget-boolean v1, p2, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    .line 103
    .line 104
    if-eq v1, p0, :cond_6

    .line 105
    .line 106
    move v2, p1

    .line 107
    :cond_6
    iput-boolean p0, p2, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    .line 108
    .line 109
    xor-int/lit8 v1, p0, 0x1

    .line 110
    .line 111
    const/high16 v4, 0x2000000

    .line 112
    .line 113
    invoke-static {v4, v1}, Lcom/android/server/job/controllers/StateController;->logDeviceWideConstraintStateToStatsd(IZ)V

    .line 114
    .line 115
    .line 116
    sget-boolean v1, Lcom/android/server/job/controllers/DeviceIdleJobsController;->DEBUG:Z

    .line 117
    .line 118
    if-eqz v1, :cond_7

    .line 119
    .line 120
    const-string v1, "JobScheduler.DeviceIdle"

    .line 121
    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-boolean v0, p2, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    .line 128
    .line 129
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
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

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;->prepare()V

    .line 145
    .line 146
    .line 147
    if-eqz p0, :cond_8

    .line 148
    .line 149
    iget-object v0, p2, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mHandler:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;

    .line 150
    .line 151
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p2, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 155
    .line 156
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 157
    .line 158
    iget-object v1, p2, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_8
    iget-object v0, p2, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 165
    .line 166
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 167
    .line 168
    iget-object v1, p2, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mShouldRushEvaluation:Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda0;

    .line 169
    .line 170
    iget-object v4, p2, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    .line 171
    .line 172
    invoke-virtual {v0, v1, v4}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p2, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mHandler:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;

    .line 176
    .line 177
    const-wide/16 v4, 0xbb8

    .line 178
    .line 179
    invoke-virtual {v0, p1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 180
    .line 181
    .line 182
    :goto_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    if-eqz v2, :cond_11

    .line 184
    .line 185
    iget-object p2, p2, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 186
    .line 187
    const-string v0, "Doze state changed: "

    .line 188
    .line 189
    iget-object v1, p2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 190
    .line 191
    monitor-enter v1

    .line 192
    :try_start_1
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 193
    .line 194
    if-eqz v2, :cond_9

    .line 195
    .line 196
    const-string v2, "JobScheduler"

    .line 197
    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
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

    .line 217
    .line 218
    iget-boolean p0, p2, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    .line 219
    .line 220
    if-eqz p0, :cond_b

    .line 221
    .line 222
    iget-object p0, p2, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 223
    .line 224
    if-eqz p0, :cond_a

    .line 225
    .line 226
    iget-boolean v0, p2, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    .line 227
    .line 228
    if-nez v0, :cond_a

    .line 229
    .line 230
    iput-boolean p1, p2, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    .line 231
    .line 232
    invoke-interface {p0, p1}, Lcom/android/server/DeviceIdleInternal;->setJobsActive(Z)V

    .line 233
    .line 234
    .line 235
    :cond_a
    iget-object p0, p2, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 236
    .line 237
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 242
    .line 243
    .line 244
    :cond_b
    monitor-exit v1

    .line 245
    goto/16 :goto_b

    .line 246
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

    .line 252
    .line 253
    iget-object p2, p1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 254
    .line 255
    monitor-enter p2

    .line 256
    :try_start_3
    iget-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 257
    .line 258
    iget-object v0, p1, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 259
    .line 260
    invoke-interface {v0}, Lcom/android/server/DeviceIdleInternal;->getPowerSaveWhitelistUserAppIds()[I

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    iput-object v0, p1, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleWhitelistAppIds:[I

    .line 265
    .line 266
    sget-boolean p1, Lcom/android/server/job/controllers/DeviceIdleJobsController;->DEBUG:Z

    .line 267
    .line 268
    if-eqz p1, :cond_c

    .line 269
    .line 270
    const-string p1, "JobScheduler.DeviceIdle"

    .line 271
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 278
    .line 279
    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleWhitelistAppIds:[I

    .line 280
    .line 281
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .line 294
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

    .line 300
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

    .line 304
    .line 305
    iget-object p2, p2, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 306
    .line 307
    monitor-enter p2

    .line 308
    :try_start_4
    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 309
    .line 310
    iget-object v3, v1, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 311
    .line 312
    invoke-interface {v3}, Lcom/android/server/DeviceIdleInternal;->getPowerSaveTempWhitelistAppIds()[I

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    iput-object v3, v1, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerSaveTempWhitelistAppIds:[I

    .line 317
    .line 318
    sget-boolean v1, Lcom/android/server/job/controllers/DeviceIdleJobsController;->DEBUG:Z

    .line 319
    .line 320
    if-eqz v1, :cond_d

    .line 321
    .line 322
    const-string v1, "JobScheduler.DeviceIdle"

    .line 323
    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 330
    .line 331
    iget-object v0, v0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerSaveTempWhitelistAppIds:[I

    .line 332
    .line 333
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .line 346
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

    .line 351
    .line 352
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 353
    .line 354
    .line 355
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 356
    .line 357
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 361
    .line 362
    .line 363
    move-result-wide v3

    .line 364
    :goto_a
    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 365
    .line 366
    iget-object v1, v1, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;

    .line 367
    .line 368
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    if-ge v2, v1, :cond_f

    .line 373
    .line 374
    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 375
    .line 376
    iget-object v5, v1, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;

    .line 377
    .line 378
    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v5

    .line 382
    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 383
    .line 384
    invoke-virtual {v1, v5, v3, v4}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->updateTaskStateLocked(Lcom/android/server/job/controllers/JobStatus;J)Z

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    if-eqz v1, :cond_e

    .line 389
    .line 390
    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 391
    .line 392
    iget-object v1, v1, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;

    .line 393
    .line 394
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 399
    .line 400
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    :cond_e
    add-int/2addr v2, p1

    .line 404
    goto :goto_a

    .line 405
    :cond_f
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 406
    .line 407
    .line 408
    move-result p1

    .line 409
    if-lez p1, :cond_10

    .line 410
    .line 411
    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 412
    .line 413
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 414
    .line 415
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 416
    .line 417
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

    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
