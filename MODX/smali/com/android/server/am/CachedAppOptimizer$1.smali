.class public final Lcom/android/server/am/CachedAppOptimizer$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/am/CachedAppOptimizer$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer$1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 8
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_4

    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 31
    const-string/jumbo v2, "freeze_debounce_timeout"

    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 40
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 42
    invoke-virtual {v1}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerDebounceTimeout()V

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const-string/jumbo v2, "freeze_exempt_inst_pkg"

    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_2

    .line 57
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 59
    invoke-virtual {v1}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerExemptInstPkg()V

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const-string/jumbo v2, "freeze_binder_enabled"

    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_3

    .line 72
    const-string/jumbo v2, "freeze_binder_divisor"

    .line 75
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_3

    .line 81
    const-string/jumbo v2, "freeze_binder_threshold"

    .line 84
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v2

    .line 88
    if-nez v2, :cond_3

    .line 90
    const-string/jumbo v2, "freeze_binder_offset"

    .line 93
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v2

    .line 97
    if-nez v2, :cond_3

    .line 99
    const-string/jumbo v2, "freeze_binder_callback_enabled"

    .line 102
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result v2

    .line 106
    if-nez v2, :cond_3

    .line 108
    const-string/jumbo v2, "freeze_binder_callback_throttle"

    .line 111
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result v2

    .line 115
    if-nez v2, :cond_3

    .line 117
    const-string/jumbo v2, "freeze_binder_async_threshold"

    .line 120
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_0

    .line 126
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 128
    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mupdateFreezerBinderState(Lcom/android/server/am/CachedAppOptimizer;)V

    .line 131
    goto :goto_0

    .line 132
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 135
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mTestCallback:Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

    .line 137
    if-eqz p0, :cond_5

    .line 139
    invoke-interface {p0}, Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;->onPropertyChanged()V

    .line 142
    :cond_5
    return-void

    .line 143
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    throw p0

    .line 145
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 147
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    .line 149
    monitor-enter v0

    .line 150
    :try_start_2
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 153
    move-result-object p1

    .line 154
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 157
    move-result-object p1

    .line 158
    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_10

    .line 164
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    move-result-object v1

    .line 168
    check-cast v1, Ljava/lang/String;

    .line 170
    const-string/jumbo v2, "use_compaction"

    .line 173
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    move-result v2

    .line 177
    if-eqz v2, :cond_7

    .line 179
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 181
    invoke-virtual {v1}, Lcom/android/server/am/CachedAppOptimizer;->updateUseCompaction()V

    .line 184
    goto :goto_2

    .line 185
    :catchall_1
    move-exception p0

    .line 186
    goto/16 :goto_4

    .line 188
    :cond_7
    const-string/jumbo v2, "compact_throttle_1"

    .line 191
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    move-result v2

    .line 195
    if-nez v2, :cond_f

    .line 197
    const-string/jumbo v2, "compact_throttle_2"

    .line 200
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    move-result v2

    .line 204
    if-nez v2, :cond_f

    .line 206
    const-string/jumbo v2, "compact_throttle_3"

    .line 209
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    move-result v2

    .line 213
    if-nez v2, :cond_f

    .line 215
    const-string/jumbo v2, "compact_throttle_4"

    .line 218
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    move-result v2

    .line 222
    if-nez v2, :cond_f

    .line 224
    const-string/jumbo v2, "compact_throttle_5"

    .line 227
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    move-result v2

    .line 231
    if-nez v2, :cond_f

    .line 233
    const-string/jumbo v2, "compact_throttle_6"

    .line 236
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    move-result v2

    .line 240
    if-eqz v2, :cond_8

    .line 242
    goto/16 :goto_3

    .line 244
    :cond_8
    const-string/jumbo v2, "compact_statsd_sample_rate"

    .line 247
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    move-result v2

    .line 251
    const/high16 v3, 0x3f800000    # 1.0f

    .line 253
    const/4 v4, 0x0

    .line 254
    const v5, 0x3dcccccd    # 0.1f

    .line 257
    if-eqz v2, :cond_9

    .line 259
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 261
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    const-string/jumbo v2, "compact_statsd_sample_rate"

    .line 267
    const-string v6, "activity_manager"

    .line 269
    invoke-static {v6, v2, v5}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 272
    move-result v2

    .line 273
    iput v2, v1, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    .line 275
    iget v2, v1, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    .line 277
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    .line 280
    move-result v2

    .line 281
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    .line 284
    move-result v2

    .line 285
    iput v2, v1, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    .line 287
    goto/16 :goto_2

    .line 289
    :cond_9
    const-string/jumbo v2, "freeze_statsd_sample_rate"

    .line 292
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    move-result v2

    .line 296
    if-eqz v2, :cond_a

    .line 298
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 300
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    const-string/jumbo v2, "freeze_statsd_sample_rate"

    .line 306
    const-string v6, "activity_manager"

    .line 308
    invoke-static {v6, v2, v5}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 311
    move-result v2

    .line 312
    iput v2, v1, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    .line 314
    iget v2, v1, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    .line 316
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    .line 319
    move-result v2

    .line 320
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    .line 323
    move-result v2

    .line 324
    iput v2, v1, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    .line 326
    goto/16 :goto_2

    .line 328
    :cond_a
    const-string/jumbo v2, "compact_full_rss_throttle_kb"

    .line 331
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    move-result v2

    .line 335
    const-wide/16 v3, 0x0

    .line 337
    if-eqz v2, :cond_b

    .line 339
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 341
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    const-string v2, "activity_manager"

    .line 346
    const-string/jumbo v5, "compact_full_rss_throttle_kb"

    .line 349
    const-wide/16 v6, 0x2ee0

    .line 351
    invoke-static {v2, v5, v6, v7}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 354
    move-result-wide v8

    .line 355
    iput-wide v8, v1, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    .line 357
    iget-wide v8, v1, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    .line 359
    cmp-long v2, v8, v3

    .line 361
    if-gez v2, :cond_6

    .line 363
    iput-wide v6, v1, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    .line 365
    goto/16 :goto_2

    .line 367
    :cond_b
    const-string/jumbo v2, "compact_full_delta_rss_throttle_kb"

    .line 370
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    move-result v2

    .line 374
    if-eqz v2, :cond_c

    .line 376
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 378
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 381
    const-string v2, "activity_manager"

    .line 383
    const-string/jumbo v5, "compact_full_delta_rss_throttle_kb"

    .line 386
    const-wide/16 v6, 0x1f40

    .line 388
    invoke-static {v2, v5, v6, v7}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 391
    move-result-wide v8

    .line 392
    iput-wide v8, v1, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    .line 394
    iget-wide v8, v1, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    .line 396
    cmp-long v2, v8, v3

    .line 398
    if-gez v2, :cond_6

    .line 400
    iput-wide v6, v1, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    .line 402
    goto/16 :goto_2

    .line 404
    :cond_c
    const-string/jumbo v2, "compact_proc_state_throttle"

    .line 407
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 410
    move-result v2

    .line 411
    if-eqz v2, :cond_d

    .line 413
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 415
    invoke-virtual {v1}, Lcom/android/server/am/CachedAppOptimizer;->updateProcStateThrottle()V

    .line 418
    goto/16 :goto_2

    .line 420
    :cond_d
    const-string/jumbo v2, "compact_throttle_min_oom_adj"

    .line 423
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 426
    move-result v2

    .line 427
    if-eqz v2, :cond_e

    .line 429
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 431
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    const-string v2, "activity_manager"

    .line 436
    const-string/jumbo v3, "compact_throttle_min_oom_adj"

    .line 439
    const-wide/16 v4, 0x352

    .line 441
    invoke-static {v2, v3, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 444
    move-result-wide v2

    .line 445
    iput-wide v2, v1, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    .line 447
    iget-wide v2, v1, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    .line 449
    cmp-long v2, v2, v4

    .line 451
    if-gez v2, :cond_6

    .line 453
    iput-wide v4, v1, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    .line 455
    goto/16 :goto_2

    .line 457
    :cond_e
    const-string/jumbo v2, "compact_throttle_max_oom_adj"

    .line 460
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 463
    move-result v1

    .line 464
    if-eqz v1, :cond_6

    .line 466
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 468
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 471
    const-string v2, "activity_manager"

    .line 473
    const-string/jumbo v3, "compact_throttle_max_oom_adj"

    .line 476
    const-wide/16 v4, 0x3e7

    .line 478
    invoke-static {v2, v3, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 481
    move-result-wide v2

    .line 482
    iput-wide v2, v1, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    .line 484
    iget-wide v2, v1, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    .line 486
    cmp-long v2, v2, v4

    .line 488
    if-lez v2, :cond_6

    .line 490
    iput-wide v4, v1, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    .line 492
    goto/16 :goto_2

    .line 494
    :cond_f
    :goto_3
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 496
    invoke-virtual {v1}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactionThrottles()V

    .line 499
    goto/16 :goto_2

    .line 501
    :cond_10
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 502
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 504
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mTestCallback:Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

    .line 506
    if-eqz p0, :cond_11

    .line 508
    invoke-interface {p0}, Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;->onPropertyChanged()V

    .line 511
    :cond_11
    return-void

    .line 512
    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 513
    throw p0

    .line 514
    nop

    .line 515
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
