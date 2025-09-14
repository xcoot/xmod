.class public final Lcom/android/server/job/JobSchedulerService$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/job/JobSchedulerService$3;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$3;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    .line 10
    invoke-virtual {p0, p2}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->onReceiveInternal(Landroid/content/Intent;)V

    .line 13
    return-void

    .line 14
    :pswitch_0
    const-string v0, "android.intent.action.TIME_SET"

    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_0

    .line 26
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 28
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 30
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 32
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 34
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    .line 37
    move-result-wide v0

    .line 38
    iget-wide v2, p2, Lcom/android/server/job/JobStore;->mXmlTimestamp:J

    .line 40
    cmp-long p2, v0, v2

    .line 42
    if-ltz p2, :cond_0

    .line 44
    const-string p2, "JobScheduler"

    .line 46
    const-string v0, "RTC now valid; recalculating persisted job windows"

    .line 48
    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 54
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 56
    check-cast p0, Lcom/android/server/job/JobSchedulerService;

    .line 58
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 60
    iget-object p1, p1, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    .line 62
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobTimeUpdater:Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;

    .line 64
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    :cond_0
    return-void

    .line 68
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 74
    if-eqz v0, :cond_1

    .line 76
    const-string v1, "JobScheduler"

    .line 78
    const-string v2, "Receieved: "

    .line 80
    invoke-static {v2, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 86
    move-result-object v1

    .line 87
    if-eqz v1, :cond_2

    .line 89
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    const/4 v1, 0x0

    .line 95
    :goto_0
    const-string v2, "android.intent.extra.UID"

    .line 97
    const/4 v3, -0x1

    .line 98
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 101
    move-result v8

    .line 102
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 104
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    move-result v2

    .line 108
    const/4 v9, 0x0

    .line 109
    if-eqz v2, :cond_b

    .line 111
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 113
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 115
    iget-object v2, p1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 117
    monitor-enter v2

    .line 118
    :try_start_0
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 120
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 122
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 124
    invoke-virtual {p1, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 127
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 128
    if-eqz v1, :cond_a

    .line 130
    if-eq v8, v3, :cond_a

    .line 132
    const-string p1, "android.intent.extra.changed_component_name_list"

    .line 134
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 137
    move-result-object p1

    .line 138
    if-eqz p1, :cond_1c

    .line 140
    array-length p2, p1

    .line 141
    :goto_1
    if-ge v9, p2, :cond_7

    .line 143
    aget-object v0, p1, v9

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_6

    .line 151
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 153
    if-eqz p1, :cond_3

    .line 155
    const-string p2, "JobScheduler"

    .line 157
    const-string v0, "Package state change: "

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    move-result-object v0

    .line 163
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_3
    :try_start_1
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    .line 169
    move-result p2

    .line 170
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 173
    move-result-object v0

    .line 174
    invoke-interface {v0, v1, p2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    .line 177
    move-result v0

    .line 178
    const/4 v2, 0x2

    .line 179
    if-eq v0, v2, :cond_4

    .line 181
    const/4 v2, 0x3

    .line 182
    if-ne v0, v2, :cond_7

    .line 184
    :cond_4
    if-eqz p1, :cond_5

    .line 186
    const-string p1, "JobScheduler"

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    .line 190
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    const-string v2, "Removing jobs for package "

    .line 195
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v2, " in user "

    .line 203
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    move-result-object p2

    .line 213
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_5
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 218
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 220
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 222
    monitor-enter p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 223
    :try_start_2
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 225
    move-object v2, p2

    .line 226
    check-cast v2, Lcom/android/server/job/JobSchedulerService;

    .line 228
    const-string v7, "app disabled"

    .line 230
    const/4 v5, 0x1

    .line 231
    const/4 v6, 0x7

    .line 232
    move-object v3, v1

    .line 233
    move v4, v8

    .line 234
    invoke-static/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IZILjava/lang/String;)V

    .line 237
    monitor-exit p1

    .line 238
    goto :goto_2

    .line 239
    :catchall_0
    move-exception p2

    .line 240
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    :try_start_3
    throw p2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 242
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 244
    goto :goto_1

    .line 245
    :catch_0
    :cond_7
    :goto_2
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 247
    if-eqz p1, :cond_8

    .line 249
    const-string p1, "JobScheduler"

    .line 251
    const-string p2, "Something in "

    .line 253
    const-string v0, " changed. Reevaluating controller states."

    .line 255
    invoke-static {p2, v1, v0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_8
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 260
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 262
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 264
    monitor-enter p1

    .line 265
    :try_start_4
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 267
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 269
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 271
    check-cast p2, Ljava/util/ArrayList;

    .line 273
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 276
    move-result p2

    .line 277
    add-int/lit8 p2, p2, -0x1

    .line 279
    :goto_3
    if-ltz p2, :cond_9

    .line 281
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 283
    check-cast v0, Lcom/android/server/job/JobSchedulerService;

    .line 285
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 287
    check-cast v0, Ljava/util/ArrayList;

    .line 289
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 292
    move-result-object v0

    .line 293
    check-cast v0, Lcom/android/server/job/controllers/StateController;

    .line 295
    invoke-virtual {v0, v8}, Lcom/android/server/job/controllers/StateController;->reevaluateStateLocked(I)V

    .line 298
    add-int/lit8 p2, p2, -0x1

    .line 300
    goto :goto_3

    .line 301
    :catchall_1
    move-exception p0

    .line 302
    goto :goto_4

    .line 303
    :cond_9
    monitor-exit p1

    .line 304
    goto/16 :goto_f

    .line 306
    :goto_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 307
    throw p0

    .line 308
    :cond_a
    const-string p0, "JobScheduler"

    .line 310
    new-instance p1, Ljava/lang/StringBuilder;

    .line 312
    const-string p2, "PACKAGE_CHANGED for "

    .line 314
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string p2, " / uid "

    .line 322
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    move-result-object p1

    .line 332
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    goto/16 :goto_f

    .line 337
    :catchall_2
    move-exception p0

    .line 338
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 339
    throw p0

    .line 340
    :cond_b
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 342
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 345
    move-result v2

    .line 346
    if-eqz v2, :cond_c

    .line 348
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 350
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 352
    iget-object v2, p1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 354
    monitor-enter v2

    .line 355
    :try_start_6
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 357
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 359
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 361
    invoke-virtual {p1, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 364
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 365
    const-string p1, "android.intent.extra.REPLACING"

    .line 367
    invoke-virtual {p2, p1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 370
    move-result p1

    .line 371
    if-nez p1, :cond_1c

    .line 373
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 375
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 377
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 379
    monitor-enter p1

    .line 380
    :try_start_7
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 382
    check-cast p0, Lcom/android/server/job/JobSchedulerService;

    .line 384
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    .line 386
    invoke-virtual {p0, v8}, Landroid/util/SparseSetArray;->remove(I)V

    .line 389
    monitor-exit p1

    .line 390
    goto/16 :goto_f

    .line 392
    :catchall_3
    move-exception p0

    .line 393
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 394
    throw p0

    .line 395
    :catchall_4
    move-exception p0

    .line 396
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 397
    throw p0

    .line 398
    :cond_c
    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 400
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 403
    move-result v2

    .line 404
    if-eqz v2, :cond_f

    .line 406
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 408
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 410
    iget-object v2, p1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 412
    monitor-enter v2

    .line 413
    :try_start_9
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 415
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 417
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 419
    invoke-virtual {p1, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 422
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 423
    if-eqz v0, :cond_d

    .line 425
    const-string p1, "JobScheduler"

    .line 427
    const-string p2, "Removing jobs for "

    .line 429
    const-string v0, " (uid="

    .line 431
    const-string v2, ")"

    .line 433
    invoke-static {v8, p2, v1, v0, v2}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 436
    move-result-object p2

    .line 437
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_d
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 442
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 444
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 446
    monitor-enter p1

    .line 447
    :try_start_a
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 449
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 451
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    .line 453
    invoke-virtual {p2, v8}, Landroid/util/SparseSetArray;->remove(I)V

    .line 456
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 458
    move-object v2, p2

    .line 459
    check-cast v2, Lcom/android/server/job/JobSchedulerService;

    .line 461
    const-string v7, "app uninstalled"

    .line 463
    const/4 v5, 0x1

    .line 464
    const/4 v6, 0x7

    .line 465
    move-object v3, v1

    .line 466
    move v4, v8

    .line 467
    invoke-static/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IZILjava/lang/String;)V

    .line 470
    :goto_5
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 472
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 474
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 476
    check-cast p2, Ljava/util/ArrayList;

    .line 478
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 481
    move-result p2

    .line 482
    if-ge v9, p2, :cond_e

    .line 484
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 486
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 488
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 490
    check-cast p2, Ljava/util/ArrayList;

    .line 492
    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 495
    move-result-object p2

    .line 496
    check-cast p2, Lcom/android/server/job/controllers/StateController;

    .line 498
    invoke-virtual {p2, v8, v1}, Lcom/android/server/job/controllers/StateController;->onAppRemovedLocked(ILjava/lang/String;)V

    .line 501
    add-int/lit8 v9, v9, 0x1

    .line 503
    goto :goto_5

    .line 504
    :catchall_5
    move-exception p0

    .line 505
    goto :goto_6

    .line 506
    :cond_e
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 508
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 510
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    .line 512
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 517
    check-cast p0, Lcom/android/server/job/JobSchedulerService;

    .line 519
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 521
    invoke-virtual {p0, v8, v1}, Lcom/android/server/job/JobConcurrencyManager;->onAppRemovedLocked(ILjava/lang/String;)V

    .line 524
    monitor-exit p1

    .line 525
    goto/16 :goto_f

    .line 527
    :goto_6
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 528
    throw p0

    .line 529
    :catchall_6
    move-exception p0

    .line 530
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 531
    throw p0

    .line 532
    :cond_f
    const-string v2, "android.intent.action.UID_REMOVED"

    .line 534
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 537
    move-result v2

    .line 538
    if-eqz v2, :cond_10

    .line 540
    const-string p1, "android.intent.extra.REPLACING"

    .line 542
    invoke-virtual {p2, p1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 545
    move-result p1

    .line 546
    if-nez p1, :cond_1c

    .line 548
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 550
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 552
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 554
    monitor-enter p1

    .line 555
    :try_start_c
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 557
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 559
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    .line 561
    invoke-virtual {p2, v8}, Landroid/util/SparseIntArray;->delete(I)V

    .line 564
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 566
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 568
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    .line 570
    invoke-virtual {p2, v8}, Landroid/util/SparseIntArray;->delete(I)V

    .line 573
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 575
    check-cast p0, Lcom/android/server/job/JobSchedulerService;

    .line 577
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    .line 579
    invoke-virtual {p0, v8}, Landroid/util/SparseIntArray;->delete(I)V

    .line 582
    monitor-exit p1

    .line 583
    goto/16 :goto_f

    .line 585
    :catchall_7
    move-exception p0

    .line 586
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 587
    throw p0

    .line 588
    :cond_10
    const-string v2, "android.intent.action.USER_ADDED"

    .line 590
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 593
    move-result v2

    .line 594
    if-eqz v2, :cond_12

    .line 596
    const-string p1, "android.intent.extra.user_handle"

    .line 598
    invoke-virtual {p2, p1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 601
    move-result p1

    .line 602
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 604
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 606
    iget-object v2, p2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 608
    monitor-enter v2

    .line 609
    :goto_7
    :try_start_d
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 611
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 613
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 615
    check-cast p2, Ljava/util/ArrayList;

    .line 617
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 620
    move-result p2

    .line 621
    if-ge v9, p2, :cond_11

    .line 623
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 625
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 627
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 629
    check-cast p2, Ljava/util/ArrayList;

    .line 631
    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 634
    move-result-object p2

    .line 635
    check-cast p2, Lcom/android/server/job/controllers/StateController;

    .line 637
    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/StateController;->onUserAddedLocked(I)V

    .line 640
    add-int/lit8 v9, v9, 0x1

    .line 642
    goto :goto_7

    .line 643
    :catchall_8
    move-exception p0

    .line 644
    goto :goto_8

    .line 645
    :cond_11
    monitor-exit v2

    .line 646
    goto/16 :goto_f

    .line 648
    :goto_8
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 649
    throw p0

    .line 650
    :cond_12
    const-string v2, "android.intent.action.USER_REMOVED"

    .line 652
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 655
    move-result v2

    .line 656
    if-eqz v2, :cond_17

    .line 658
    const-string p1, "android.intent.extra.user_handle"

    .line 660
    invoke-virtual {p2, p1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 663
    move-result p1

    .line 664
    if-eqz v0, :cond_13

    .line 666
    const-string p2, "JobScheduler"

    .line 668
    const-string v0, "Removing jobs for user: "

    .line 670
    invoke-static {p1, v0, p2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 673
    :cond_13
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 675
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 677
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 679
    monitor-enter p2

    .line 680
    :try_start_e
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 682
    check-cast v0, Lcom/android/server/job/JobSchedulerService;

    .line 684
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    .line 686
    invoke-virtual {v0}, Landroid/util/SparseSetArray;->clear()V

    .line 689
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 691
    check-cast v0, Lcom/android/server/job/JobSchedulerService;

    .line 693
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 696
    new-instance v1, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;

    .line 698
    const/4 v2, 0x2

    .line 699
    invoke-direct {v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;-><init>(II)V

    .line 702
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mCancelJobDueToUserRemovalConsumer:Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;

    .line 704
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 706
    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 709
    :goto_9
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 711
    check-cast v0, Lcom/android/server/job/JobSchedulerService;

    .line 713
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 715
    check-cast v0, Ljava/util/ArrayList;

    .line 717
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 720
    move-result v0

    .line 721
    if-ge v9, v0, :cond_14

    .line 723
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 725
    check-cast v0, Lcom/android/server/job/JobSchedulerService;

    .line 727
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 729
    check-cast v0, Ljava/util/ArrayList;

    .line 731
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 734
    move-result-object v0

    .line 735
    check-cast v0, Lcom/android/server/job/controllers/StateController;

    .line 737
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/StateController;->onUserRemovedLocked(I)V

    .line 740
    add-int/lit8 v9, v9, 0x1

    .line 742
    goto :goto_9

    .line 743
    :catchall_9
    move-exception p0

    .line 744
    goto :goto_d

    .line 745
    :cond_14
    monitor-exit p2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 746
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 748
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 750
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 752
    invoke-virtual {p2, p1}, Lcom/android/server/job/JobConcurrencyManager;->onUserRemoved(I)V

    .line 755
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 757
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 759
    iget-object v0, p2, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 761
    monitor-enter v0

    .line 762
    :try_start_f
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 764
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 766
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 768
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 771
    move-result p2

    .line 772
    add-int/lit8 p2, p2, -0x1

    .line 774
    :goto_a
    if-ltz p2, :cond_16

    .line 776
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 778
    check-cast v1, Lcom/android/server/job/JobSchedulerService;

    .line 780
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 782
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 785
    move-result v1

    .line 786
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 789
    move-result v1

    .line 790
    if-ne p1, v1, :cond_15

    .line 792
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 794
    check-cast v1, Lcom/android/server/job/JobSchedulerService;

    .line 796
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 798
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 801
    goto :goto_b

    .line 802
    :catchall_a
    move-exception p0

    .line 803
    goto :goto_c

    .line 804
    :cond_15
    :goto_b
    add-int/lit8 p2, p2, -0x1

    .line 806
    goto :goto_a

    .line 807
    :cond_16
    monitor-exit v0

    .line 808
    goto/16 :goto_f

    .line 810
    :goto_c
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    .line 811
    throw p0

    .line 812
    :goto_d
    :try_start_10
    monitor-exit p2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 813
    throw p0

    .line 814
    :cond_17
    const-string p2, "android.intent.action.QUERY_PACKAGE_RESTART"

    .line 816
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 819
    move-result p2

    .line 820
    if-eqz p2, :cond_1a

    .line 822
    if-eq v8, v3, :cond_1c

    .line 824
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 826
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 828
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 830
    monitor-enter p1

    .line 831
    :try_start_11
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 833
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 835
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 837
    invoke-virtual {p2, v8}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Landroid/util/ArraySet;

    .line 840
    move-result-object p2

    .line 841
    monitor-exit p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 842
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    .line 845
    move-result p1

    .line 846
    add-int/lit8 p1, p1, -0x1

    .line 848
    :goto_e
    if-ltz p1, :cond_1c

    .line 850
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 853
    move-result-object v0

    .line 854
    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    .line 856
    iget-object v0, v0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 858
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 861
    move-result v0

    .line 862
    if-eqz v0, :cond_19

    .line 864
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 866
    if-eqz p1, :cond_18

    .line 868
    const-string p1, "JobScheduler"

    .line 870
    const-string p2, "Restart query: package "

    .line 872
    const-string v0, " at uid "

    .line 874
    const-string v2, " has jobs"

    .line 876
    invoke-static {v8, p2, v1, v0, v2}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 879
    move-result-object p2

    .line 880
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_18
    invoke-virtual {p0, v3}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 886
    goto :goto_f

    .line 887
    :cond_19
    add-int/lit8 p1, p1, -0x1

    .line 889
    goto :goto_e

    .line 890
    :catchall_b
    move-exception p0

    .line 891
    :try_start_12
    monitor-exit p1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    .line 892
    throw p0

    .line 893
    :cond_1a
    const-string p2, "android.intent.action.PACKAGE_RESTARTED"

    .line 895
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 898
    move-result p1

    .line 899
    if-eqz p1, :cond_1c

    .line 901
    if-eq v8, v3, :cond_1c

    .line 903
    if-eqz v0, :cond_1b

    .line 905
    const-string p1, "JobScheduler"

    .line 907
    new-instance p2, Ljava/lang/StringBuilder;

    .line 909
    const-string v0, "Removing jobs for pkg "

    .line 911
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 914
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    const-string v0, " at uid "

    .line 919
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 925
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 928
    move-result-object p2

    .line 929
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_1b
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 934
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 936
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 938
    monitor-enter p1

    .line 939
    :try_start_13
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 941
    move-object v2, p0

    .line 942
    check-cast v2, Lcom/android/server/job/JobSchedulerService;

    .line 944
    const-string v7, "app force stopped"

    .line 946
    const/4 v5, 0x0

    .line 947
    const/4 v6, 0x0

    .line 948
    move-object v3, v1

    .line 949
    move v4, v8

    .line 950
    invoke-static/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IZILjava/lang/String;)V

    .line 953
    monitor-exit p1

    .line 954
    goto :goto_f

    .line 955
    :catchall_c
    move-exception p0

    .line 956
    monitor-exit p1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    .line 957
    throw p0

    .line 958
    :cond_1c
    :goto_f
    return-void

    .line 959
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
