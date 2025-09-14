.class public final Lcom/android/server/AppStateTrackerImpl$MyHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTrackerImpl;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget v2, v1, Landroid/os/Message;->what:I

    .line 7
    const/16 v3, 0x8

    .line 9
    if-eq v2, v3, :cond_14

    .line 11
    iget-object v2, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 13
    iget-object v2, v2, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 15
    monitor-enter v2

    .line 16
    :try_start_0
    iget-object v3, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 18
    iget-boolean v4, v3, Lcom/android/server/AppStateTrackerImpl;->mStarted:Z

    .line 20
    if-nez v4, :cond_0

    .line 22
    monitor-exit v2

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto/16 :goto_f

    .line 27
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    iget-object v2, v3, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 30
    invoke-virtual {v2}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    .line 33
    move-result-wide v4

    .line 34
    iget v2, v1, Landroid/os/Message;->what:I

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v7, 0x1

    .line 38
    packed-switch v2, :pswitch_data_0

    .line 41
    :pswitch_0
    return-void

    .line 42
    :pswitch_1
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 44
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 46
    if-eqz v1, :cond_1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v7, v6

    .line 50
    :goto_0
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 52
    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    .line 55
    move-result-object v0

    .line 56
    array-length v1, v0

    .line 57
    :goto_1
    if-ge v6, v1, :cond_2

    .line 59
    aget-object v3, v0, v6

    .line 61
    invoke-virtual {v3, v2, v7}, Lcom/android/server/AppStateTrackerImpl$Listener;->handleUidCachedChanged(IZ)V

    .line 64
    add-int/lit8 v6, v6, 0x1

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    return-void

    .line 68
    :pswitch_2
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 70
    invoke-virtual {v0, v2, v6}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->removeUid(IZ)V

    .line 73
    iget v2, v1, Landroid/os/Message;->arg2:I

    .line 75
    if-eqz v2, :cond_3

    .line 77
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 79
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 81
    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    .line 84
    move-result-object v0

    .line 85
    array-length v2, v0

    .line 86
    :goto_2
    if-ge v6, v2, :cond_3

    .line 88
    aget-object v3, v0, v6

    .line 90
    invoke-virtual {v3, v1}, Lcom/android/server/AppStateTrackerImpl$Listener;->removeAlarmsForUid(I)V

    .line 93
    add-int/lit8 v6, v6, 0x1

    .line 95
    goto :goto_2

    .line 96
    :cond_3
    return-void

    .line 97
    :pswitch_3
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 99
    invoke-virtual {v0, v2, v7}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->removeUid(IZ)V

    .line 102
    iget v2, v1, Landroid/os/Message;->arg2:I

    .line 104
    if-eqz v2, :cond_4

    .line 106
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 108
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 110
    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    .line 113
    move-result-object v0

    .line 114
    array-length v2, v0

    .line 115
    :goto_3
    if-ge v6, v2, :cond_4

    .line 117
    aget-object v3, v0, v6

    .line 119
    invoke-virtual {v3, v1}, Lcom/android/server/AppStateTrackerImpl$Listener;->removeAlarmsForUid(I)V

    .line 122
    add-int/lit8 v6, v6, 0x1

    .line 124
    goto :goto_3

    .line 125
    :cond_4
    return-void

    .line 126
    :pswitch_4
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 128
    iget-object v2, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 130
    iget-object v2, v2, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 132
    monitor-enter v2

    .line 133
    :try_start_1
    iget-object v3, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 135
    iget-object v3, v3, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    .line 137
    invoke-static {v1}, Landroid/os/UserHandle;->isCore(I)Z

    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_5

    .line 143
    goto :goto_4

    .line 144
    :cond_5
    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 147
    move-result v4

    .line 148
    if-eqz v4, :cond_6

    .line 150
    goto :goto_4

    .line 151
    :cond_6
    invoke-virtual {v3, v1, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 154
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 156
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    .line 158
    invoke-virtual {v0, v6, v1, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 165
    :goto_4
    monitor-exit v2

    .line 166
    return-void

    .line 167
    :catchall_1
    move-exception v0

    .line 168
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    throw v0

    .line 170
    :pswitch_5
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 172
    if-ne v1, v7, :cond_7

    .line 174
    goto :goto_5

    .line 175
    :cond_7
    move v7, v6

    .line 176
    :goto_5
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 178
    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    .line 181
    move-result-object v0

    .line 182
    array-length v1, v0

    .line 183
    :goto_6
    if-ge v6, v1, :cond_9

    .line 185
    aget-object v2, v0, v6

    .line 187
    invoke-virtual {v2}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    .line 190
    if-eqz v7, :cond_8

    .line 192
    invoke-virtual {v2}, Lcom/android/server/AppStateTrackerImpl$Listener;->unblockAllUnrestrictedAlarms()V

    .line 195
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 197
    goto :goto_6

    .line 198
    :cond_9
    return-void

    .line 199
    :pswitch_6
    iget-object v1, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 201
    invoke-static {v1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    .line 204
    move-result-object v1

    .line 205
    array-length v2, v1

    .line 206
    :goto_7
    if-ge v6, v2, :cond_a

    .line 208
    aget-object v3, v1, v6

    .line 210
    invoke-virtual {v3}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    .line 213
    invoke-virtual {v3}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllAlarms()V

    .line 216
    add-int/lit8 v6, v6, 0x1

    .line 218
    goto :goto_7

    .line 219
    :cond_a
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 221
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 223
    const/4 v1, 0x6

    .line 224
    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 227
    return-void

    .line 228
    :pswitch_7
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 230
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 232
    invoke-virtual {v0, v1}, Lcom/android/server/AppStateTrackerImpl;->handleUserRemoved(I)V

    .line 235
    return-void

    .line 236
    :pswitch_8
    iget-object v1, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 238
    invoke-static {v1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    .line 241
    move-result-object v1

    .line 242
    array-length v2, v1

    .line 243
    :goto_8
    if-ge v6, v2, :cond_b

    .line 245
    aget-object v3, v1, v6

    .line 247
    invoke-virtual {v3}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    .line 250
    invoke-virtual {v3}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllAlarms()V

    .line 253
    add-int/lit8 v6, v6, 0x1

    .line 255
    goto :goto_8

    .line 256
    :cond_b
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 258
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 260
    const/4 v1, 0x7

    .line 261
    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 264
    return-void

    .line 265
    :pswitch_9
    iget-object v1, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 267
    invoke-static {v1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    .line 270
    move-result-object v1

    .line 271
    array-length v2, v1

    .line 272
    :goto_9
    if-ge v6, v2, :cond_c

    .line 274
    aget-object v3, v1, v6

    .line 276
    invoke-virtual {v3}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    .line 279
    add-int/lit8 v6, v6, 0x1

    .line 281
    goto :goto_9

    .line 282
    :cond_c
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 284
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 286
    const/4 v1, 0x5

    .line 287
    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 290
    return-void

    .line 291
    :pswitch_a
    iget-object v1, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 293
    invoke-static {v1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    .line 296
    move-result-object v1

    .line 297
    array-length v2, v1

    .line 298
    :goto_a
    if-ge v6, v2, :cond_d

    .line 300
    aget-object v3, v1, v6

    .line 302
    invoke-virtual {v3}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    .line 305
    invoke-virtual {v3}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllAlarms()V

    .line 308
    invoke-virtual {v3}, Lcom/android/server/AppStateTrackerImpl$Listener;->unblockAllUnrestrictedAlarms()V

    .line 311
    add-int/lit8 v6, v6, 0x1

    .line 313
    goto :goto_a

    .line 314
    :cond_d
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 316
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 318
    const/4 v1, 0x4

    .line 319
    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 322
    return-void

    .line 323
    :pswitch_b
    iget-object v1, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 325
    invoke-static {v1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    .line 328
    move-result-object v1

    .line 329
    array-length v2, v1

    .line 330
    :goto_b
    if-ge v6, v2, :cond_e

    .line 332
    aget-object v3, v1, v6

    .line 334
    invoke-virtual {v3}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    .line 337
    invoke-virtual {v3}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllAlarms()V

    .line 340
    add-int/lit8 v6, v6, 0x1

    .line 342
    goto :goto_b

    .line 343
    :cond_e
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 345
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 347
    const/4 v1, 0x3

    .line 348
    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 351
    return-void

    .line 352
    :pswitch_c
    iget-object v2, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 354
    invoke-static {v2}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    .line 357
    move-result-object v2

    .line 358
    array-length v8, v2

    .line 359
    move v9, v6

    .line 360
    :goto_c
    if-ge v9, v8, :cond_11

    .line 362
    aget-object v10, v2, v9

    .line 364
    iget v11, v1, Landroid/os/Message;->arg1:I

    .line 366
    iget-object v12, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 368
    check-cast v12, Ljava/lang/String;

    .line 370
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    invoke-virtual {v3, v11}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    .line 376
    move-result v13

    .line 377
    invoke-virtual {v10, v11, v13}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateJobsForUidPackage(IZ)V

    .line 380
    invoke-virtual {v3, v11, v12}, Lcom/android/server/AppStateTrackerImpl;->areAlarmsRestricted(ILjava/lang/String;)Z

    .line 383
    move-result v13

    .line 384
    if-nez v13, :cond_f

    .line 386
    invoke-virtual {v10, v11, v12}, Lcom/android/server/AppStateTrackerImpl$Listener;->unblockAlarmsForUidPackage(ILjava/lang/String;)V

    .line 389
    :cond_f
    invoke-virtual {v3, v11, v12}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    .line 392
    move-result v13

    .line 393
    const-string v14, "/"

    .line 395
    const-string v15, "Package "

    .line 397
    const-string v6, "AppStateTracker"

    .line 399
    if-nez v13, :cond_10

    .line 401
    const-string v13, " toggled into fg service restriction"

    .line 403
    invoke-static {v11, v15, v12, v14, v13}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 406
    move-result-object v13

    .line 407
    invoke-static {v6, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {v10, v11, v12, v7}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateBackgroundRestrictedForUidPackage(ILjava/lang/String;Z)V

    .line 413
    const/4 v6, 0x0

    .line 414
    goto :goto_d

    .line 415
    :cond_10
    const-string v13, " toggled out of fg service restriction"

    .line 417
    invoke-static {v11, v15, v12, v14, v13}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 420
    move-result-object v13

    .line 421
    invoke-static {v6, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v6, 0x0

    .line 425
    invoke-virtual {v10, v11, v12, v6}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateBackgroundRestrictedForUidPackage(ILjava/lang/String;Z)V

    .line 428
    :goto_d
    add-int/lit8 v9, v9, 0x1

    .line 430
    goto :goto_c

    .line 431
    :cond_11
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 433
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 435
    const/4 v1, 0x2

    .line 436
    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 439
    return-void

    .line 440
    :pswitch_d
    iget-object v2, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 442
    invoke-static {v2}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    .line 445
    move-result-object v2

    .line 446
    array-length v8, v2

    .line 447
    :goto_e
    if-ge v6, v8, :cond_13

    .line 449
    aget-object v9, v2, v6

    .line 451
    iget v10, v1, Landroid/os/Message;->arg1:I

    .line 453
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    invoke-virtual {v3, v10}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    .line 459
    move-result v11

    .line 460
    invoke-virtual {v9, v10, v11}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateJobsForUid(IZ)V

    .line 463
    invoke-virtual {v9, v10}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAlarmsForUid(I)V

    .line 466
    if-eqz v11, :cond_12

    .line 468
    invoke-virtual {v9, v10}, Lcom/android/server/AppStateTrackerImpl$Listener;->unblockAlarmsForUid(I)V

    .line 471
    :cond_12
    add-int/lit8 v6, v6, 0x1

    .line 473
    goto :goto_e

    .line 474
    :cond_13
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 476
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 478
    invoke-virtual {v0, v7, v4, v5}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 481
    return-void

    .line 482
    :goto_f
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 483
    throw v0

    .line 484
    :cond_14
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 486
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 488
    invoke-virtual {v0, v1}, Lcom/android/server/AppStateTrackerImpl;->handleUserRemoved(I)V

    .line 491
    return-void

    .line 492
    nop

    .line 493
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final removeUid(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 3
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 8
    iget-object v1, v1, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    .line 10
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 v2, 0x0

    .line 25
    if-eqz p2, :cond_2

    .line 27
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 34
    :goto_0
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 36
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    .line 38
    invoke-virtual {p0, v2, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 45
    :goto_1
    monitor-exit v0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
.end method
