.class public final Lcom/android/server/job/JobSchedulerService$ConstantsObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public mCacheConfigChanges:Z

.field public mLastPropertiesPulled:Landroid/provider/DeviceConfig$Properties;

.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mCacheConfigChanges:Z

    .line 9
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    move v4, v3

    .line 8
    :goto_0
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 10
    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 12
    check-cast v5, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v5

    .line 18
    if-ge v4, v5, :cond_0

    .line 20
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 22
    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 24
    check-cast v5, Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Lcom/android/server/job/controllers/StateController;

    .line 32
    invoke-virtual {v5}, Lcom/android/server/job/controllers/StateController;->prepareForUpdatedConstantsLocked()V

    .line 35
    add-int/2addr v4, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 39
    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 41
    monitor-enter v4

    .line 42
    :try_start_0
    iget-boolean v5, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mCacheConfigChanges:Z

    .line 44
    if-eqz v5, :cond_1

    .line 46
    const-string/jumbo v5, "jobscheduler"

    .line 49
    new-array v6, v3, [Ljava/lang/String;

    .line 51
    invoke-static {v5, v6}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 54
    move-result-object v5

    .line 55
    iput-object v5, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mLastPropertiesPulled:Landroid/provider/DeviceConfig$Properties;

    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    move-object/from16 v16, v4

    .line 61
    goto/16 :goto_b

    .line 63
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 66
    move-result-object v5

    .line 67
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 70
    move-result-object v5

    .line 71
    move v6, v3

    .line 72
    move v7, v6

    .line 73
    move v8, v7

    .line 74
    move v9, v8

    .line 75
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v10

    .line 79
    if-eqz v10, :cond_a

    .line 81
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    move-result-object v10

    .line 85
    check-cast v10, Ljava/lang/String;

    .line 87
    if-nez v10, :cond_2

    .line 89
    goto :goto_2

    .line 90
    :cond_2
    sget-boolean v11, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 92
    if-nez v11, :cond_3

    .line 94
    iget-boolean v11, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mCacheConfigChanges:Z

    .line 96
    if-eqz v11, :cond_4

    .line 98
    :cond_3
    const-string v11, "JobScheduler"

    .line 100
    new-instance v12, Ljava/lang/StringBuilder;

    .line 102
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    const-string v13, "DeviceConfig "

    .line 107
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v13, " changed to "

    .line 115
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const/4 v13, 0x0

    .line 119
    invoke-virtual {v1, v10, v13}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    move-result-object v13

    .line 123
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v12

    .line 130
    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_4
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 136
    move-result v11

    .line 137
    const/4 v12, 0x3

    .line 138
    sparse-switch v11, :sswitch_data_0

    .line 141
    goto/16 :goto_3

    .line 143
    :sswitch_0
    const-string/jumbo v11, "conn_prefetch_relax_frac"

    .line 146
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    move-result v11

    .line 150
    if-eqz v11, :cond_5

    .line 152
    const/16 v11, 0x17

    .line 154
    goto/16 :goto_4

    .line 156
    :sswitch_1
    const-string/jumbo v11, "runtime_min_ui_guarantee_ms"

    .line 159
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    move-result v11

    .line 163
    if-eqz v11, :cond_5

    .line 165
    const/16 v11, 0x21

    .line 167
    goto/16 :goto_4

    .line 169
    :sswitch_2
    const-string/jumbo v11, "runtime_free_quota_max_limit_ms"

    .line 172
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    move-result v11

    .line 176
    if-eqz v11, :cond_5

    .line 178
    const/16 v11, 0x1e

    .line 180
    goto/16 :goto_4

    .line 182
    :sswitch_3
    const-string/jumbo v11, "runtime_min_ui_data_transfer_guarantee_buffer_factor"

    .line 185
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    move-result v11

    .line 189
    if-eqz v11, :cond_5

    .line 191
    const/16 v11, 0x23

    .line 193
    goto/16 :goto_4

    .line 195
    :sswitch_4
    const-string/jumbo v11, "max_cpu_only_job_batch_delay_ms"

    .line 198
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    move-result v11

    .line 202
    if-eqz v11, :cond_5

    .line 204
    const/16 v11, 0xf

    .line 206
    goto/16 :goto_4

    .line 208
    :sswitch_5
    const-string/jumbo v11, "persist_in_split_files"

    .line 211
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    move-result v11

    .line 215
    if-eqz v11, :cond_5

    .line 217
    const/16 v11, 0x28

    .line 219
    goto/16 :goto_4

    .line 221
    :sswitch_6
    const-string v11, "aq_schedule_throw_exception"

    .line 223
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    move-result v11

    .line 227
    if-eqz v11, :cond_5

    .line 229
    const/4 v11, 0x5

    .line 230
    goto/16 :goto_4

    .line 232
    :sswitch_7
    const-string/jumbo v11, "system_stop_to_failure_ratio"

    .line 235
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    move-result v11

    .line 239
    if-eqz v11, :cond_5

    .line 241
    const/16 v11, 0x15

    .line 243
    goto/16 :goto_4

    .line 245
    :sswitch_8
    const-string/jumbo v11, "min_ready_non_active_jobs_count"

    .line 248
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    move-result v11

    .line 252
    if-eqz v11, :cond_5

    .line 254
    const/16 v11, 0xe

    .line 256
    goto/16 :goto_4

    .line 258
    :sswitch_9
    const-string/jumbo v11, "conn_max_connectivity_job_batch_delay_ms"

    .line 261
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    move-result v11

    .line 265
    if-eqz v11, :cond_5

    .line 267
    const/16 v11, 0x19

    .line 269
    goto/16 :goto_4

    .line 271
    :sswitch_a
    const-string/jumbo v11, "runtime_cumulative_ui_limit_ms"

    .line 274
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    move-result v11

    .line 278
    if-eqz v11, :cond_5

    .line 280
    const/16 v11, 0x25

    .line 282
    goto/16 :goto_4

    .line 284
    :sswitch_b
    const-string/jumbo v11, "min_linear_backoff_time_ms"

    .line 287
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    move-result v11

    .line 291
    if-eqz v11, :cond_5

    .line 293
    const/16 v11, 0x13

    .line 295
    goto/16 :goto_4

    .line 297
    :sswitch_c
    const-string/jumbo v11, "es_u_timeout_ej_count"

    .line 300
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    move-result v11

    .line 304
    if-eqz v11, :cond_5

    .line 306
    const/4 v11, 0x7

    .line 307
    goto/16 :goto_4

    .line 309
    :sswitch_d
    const-string/jumbo v11, "es_u_timeout_window_ms"

    .line 312
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    move-result v11

    .line 316
    if-eqz v11, :cond_5

    .line 318
    const/16 v11, 0xa

    .line 320
    goto/16 :goto_4

    .line 322
    :sswitch_e
    const-string/jumbo v11, "es_u_timeout_reg_count"

    .line 325
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 328
    move-result v11

    .line 329
    if-eqz v11, :cond_5

    .line 331
    const/16 v11, 0x8

    .line 333
    goto/16 :goto_4

    .line 335
    :sswitch_f
    const-string/jumbo v11, "heavy_use_factor"

    .line 338
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 341
    move-result v11

    .line 342
    if-eqz v11, :cond_5

    .line 344
    const/16 v11, 0x11

    .line 346
    goto/16 :goto_4

    .line 348
    :sswitch_10
    const-string/jumbo v11, "min_exp_backoff_time_ms"

    .line 351
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    move-result v11

    .line 355
    if-eqz v11, :cond_5

    .line 357
    const/16 v11, 0x14

    .line 359
    goto/16 :goto_4

    .line 361
    :sswitch_11
    const-string/jumbo v11, "es_u_timeout_uij_count"

    .line 364
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 367
    move-result v11

    .line 368
    if-eqz v11, :cond_5

    .line 370
    const/4 v11, 0x6

    .line 371
    goto/16 :goto_4

    .line 373
    :sswitch_12
    const-string/jumbo v11, "runtime_use_data_estimates_for_limits"

    .line 376
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    move-result v11

    .line 380
    if-eqz v11, :cond_5

    .line 382
    const/16 v11, 0x26

    .line 384
    goto/16 :goto_4

    .line 386
    :sswitch_13
    const-string/jumbo v11, "max_non_active_job_batch_delay_ms"

    .line 389
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 392
    move-result v11

    .line 393
    if-eqz v11, :cond_5

    .line 395
    const/16 v11, 0x10

    .line 397
    goto/16 :goto_4

    .line 399
    :sswitch_14
    const-string/jumbo v11, "conn_congestion_delay_frac"

    .line 402
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 405
    move-result v11

    .line 406
    if-eqz v11, :cond_5

    .line 408
    const/16 v11, 0x16

    .line 410
    goto/16 :goto_4

    .line 412
    :sswitch_15
    const-string v11, "aq_schedule_return_failure"

    .line 414
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 417
    move-result v11

    .line 418
    if-eqz v11, :cond_5

    .line 420
    const/4 v11, 0x4

    .line 421
    goto/16 :goto_4

    .line 423
    :sswitch_16
    const-string/jumbo v11, "es_u_anr_window_ms"

    .line 426
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 429
    move-result v11

    .line 430
    if-eqz v11, :cond_5

    .line 432
    const/16 v11, 0xc

    .line 434
    goto/16 :goto_4

    .line 436
    :sswitch_17
    const-string/jumbo v11, "max_num_persisted_job_work_items"

    .line 439
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 442
    move-result v11

    .line 443
    if-eqz v11, :cond_5

    .line 445
    const/16 v11, 0x27

    .line 447
    goto/16 :goto_4

    .line 449
    :sswitch_18
    const-string/jumbo v11, "conn_low_signal_strength_relax_frac"

    .line 452
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 455
    move-result v11

    .line 456
    if-eqz v11, :cond_5

    .line 458
    const/16 v11, 0x18

    .line 460
    goto/16 :goto_4

    .line 462
    :sswitch_19
    const-string/jumbo v11, "runtime_min_ui_data_transfer_guarantee_ms"

    .line 465
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 468
    move-result v11

    .line 469
    if-eqz v11, :cond_5

    .line 471
    const/16 v11, 0x24

    .line 473
    goto/16 :goto_4

    .line 475
    :sswitch_1a
    const-string/jumbo v11, "es_u_anr_count"

    .line 478
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 481
    move-result v11

    .line 482
    if-eqz v11, :cond_5

    .line 484
    const/16 v11, 0xb

    .line 486
    goto/16 :goto_4

    .line 488
    :sswitch_1b
    const-string/jumbo v11, "moderate_use_factor"

    .line 491
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 494
    move-result v11

    .line 495
    if-eqz v11, :cond_5

    .line 497
    const/16 v11, 0x12

    .line 499
    goto/16 :goto_4

    .line 501
    :sswitch_1c
    const-string/jumbo v11, "runtime_ui_limit_ms"

    .line 504
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 507
    move-result v11

    .line 508
    if-eqz v11, :cond_5

    .line 510
    const/16 v11, 0x22

    .line 512
    goto/16 :goto_4

    .line 514
    :sswitch_1d
    const-string/jumbo v11, "min_ready_cpu_only_jobs_count"

    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 520
    move-result v11

    .line 521
    if-eqz v11, :cond_5

    .line 523
    const/16 v11, 0xd

    .line 525
    goto/16 :goto_4

    .line 527
    :sswitch_1e
    const-string/jumbo v11, "runtime_min_guarantee_ms"

    .line 530
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 533
    move-result v11

    .line 534
    if-eqz v11, :cond_5

    .line 536
    const/16 v11, 0x1f

    .line 538
    goto/16 :goto_4

    .line 540
    :sswitch_1f
    const-string/jumbo v11, "conn_transport_batch_threshold"

    .line 543
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 546
    move-result v11

    .line 547
    if-eqz v11, :cond_5

    .line 549
    const/16 v11, 0x1a

    .line 551
    goto/16 :goto_4

    .line 553
    :sswitch_20
    const-string v11, "aq_schedule_window_ms"

    .line 555
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 558
    move-result v11

    .line 559
    if-eqz v11, :cond_5

    .line 561
    move v11, v12

    .line 562
    goto :goto_4

    .line 563
    :sswitch_21
    const-string/jumbo v11, "enable_execution_safeguards_udc"

    .line 566
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 569
    move-result v11

    .line 570
    if-eqz v11, :cond_5

    .line 572
    move v11, v2

    .line 573
    goto :goto_4

    .line 574
    :sswitch_22
    const-string/jumbo v11, "conn_update_all_jobs_min_interval_ms"

    .line 577
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 580
    move-result v11

    .line 581
    if-eqz v11, :cond_5

    .line 583
    const/16 v11, 0x1c

    .line 585
    goto :goto_4

    .line 586
    :sswitch_23
    const-string/jumbo v11, "prefetch_force_batch_relax_threshold_ms"

    .line 589
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 592
    move-result v11

    .line 593
    if-eqz v11, :cond_5

    .line 595
    const/16 v11, 0x1d

    .line 597
    goto :goto_4

    .line 598
    :sswitch_24
    const-string/jumbo v11, "conn_use_cell_signal_strength"

    .line 601
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 604
    move-result v11

    .line 605
    if-eqz v11, :cond_5

    .line 607
    const/16 v11, 0x1b

    .line 609
    goto :goto_4

    .line 610
    :sswitch_25
    const-string/jumbo v11, "runtime_min_ej_guarantee_ms"

    .line 613
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 616
    move-result v11

    .line 617
    if-eqz v11, :cond_5

    .line 619
    const/16 v11, 0x20

    .line 621
    goto :goto_4

    .line 622
    :sswitch_26
    const-string/jumbo v11, "enable_api_quotas"

    .line 625
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 628
    move-result v11

    .line 629
    if-eqz v11, :cond_5

    .line 631
    move v11, v3

    .line 632
    goto :goto_4

    .line 633
    :sswitch_27
    const-string v11, "aq_schedule_count"

    .line 635
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 638
    move-result v11

    .line 639
    if-eqz v11, :cond_5

    .line 641
    const/4 v11, 0x2

    .line 642
    goto :goto_4

    .line 643
    :sswitch_28
    const-string/jumbo v11, "es_u_timeout_total_count"

    .line 646
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 649
    move-result v11

    .line 650
    if-eqz v11, :cond_5

    .line 652
    const/16 v11, 0x9

    .line 654
    goto :goto_4

    .line 655
    :cond_5
    :goto_3
    const/4 v11, -0x1

    .line 656
    :goto_4
    packed-switch v11, :pswitch_data_0

    .line 659
    const-string/jumbo v11, "concurrency_"

    .line 662
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 665
    move-result v11

    .line 666
    if-eqz v11, :cond_7

    .line 668
    if-nez v7, :cond_7

    .line 670
    iget-object v7, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 672
    iget-object v7, v7, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 674
    invoke-virtual {v7}, Lcom/android/server/job/JobConcurrencyManager;->updateConfigLocked()V

    .line 677
    move v7, v2

    .line 678
    :cond_6
    :goto_5
    move-object/from16 v16, v4

    .line 680
    goto/16 :goto_9

    .line 682
    :cond_7
    move v11, v3

    .line 683
    :goto_6
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 685
    iget-object v12, v12, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 687
    check-cast v12, Ljava/util/ArrayList;

    .line 689
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 692
    move-result v12

    .line 693
    if-ge v11, v12, :cond_6

    .line 695
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 697
    iget-object v12, v12, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 699
    check-cast v12, Ljava/util/ArrayList;

    .line 701
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 704
    move-result-object v12

    .line 705
    check-cast v12, Lcom/android/server/job/controllers/StateController;

    .line 707
    invoke-virtual {v12, v1, v10}, Lcom/android/server/job/controllers/StateController;->processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V

    .line 710
    add-int/2addr v11, v2

    .line 711
    goto :goto_6

    .line 712
    :pswitch_0
    if-nez v8, :cond_6

    .line 714
    iget-object v8, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 716
    iget-object v8, v8, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 718
    sget v10, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_MIN_READY_CPU_ONLY_JOBS_COUNT:I

    .line 720
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 723
    const-string/jumbo v10, "jobscheduler"

    .line 726
    const-string/jumbo v11, "persist_in_split_files"

    .line 729
    invoke-static {v10, v11, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 732
    move-result v11

    .line 733
    iput-boolean v11, v8, Lcom/android/server/job/JobSchedulerService$Constants;->PERSIST_IN_SPLIT_FILES:Z

    .line 735
    const-string/jumbo v11, "max_num_persisted_job_work_items"

    .line 738
    const v12, 0x186a0

    .line 741
    invoke-static {v10, v11, v12}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 744
    move-result v10

    .line 745
    iput v10, v8, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NUM_PERSISTED_JOB_WORK_ITEMS:I

    .line 747
    iget-object v8, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 749
    iget-object v10, v8, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 751
    iget-object v8, v8, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 753
    iget-boolean v8, v8, Lcom/android/server/job/JobSchedulerService$Constants;->PERSIST_IN_SPLIT_FILES:Z

    .line 755
    iget-object v11, v10, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    .line 757
    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    :try_start_1
    iget-boolean v12, v10, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    .line 760
    if-eq v12, v8, :cond_8

    .line 762
    iput-boolean v8, v10, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    .line 764
    invoke-virtual {v10}, Lcom/android/server/job/JobStore;->migrateJobFilesAsync()V

    .line 767
    goto :goto_7

    .line 768
    :catchall_1
    move-exception v0

    .line 769
    goto :goto_8

    .line 770
    :cond_8
    :goto_7
    monitor-exit v11

    .line 771
    move v8, v2

    .line 772
    goto :goto_5

    .line 773
    :goto_8
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 774
    :try_start_2
    throw v0

    .line 775
    :pswitch_1
    if-nez v9, :cond_6

    .line 777
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 779
    iget-object v9, v9, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 781
    invoke-static {v9}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateRuntimeConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 784
    move v9, v2

    .line 785
    goto :goto_5

    .line 786
    :pswitch_2
    iget-object v10, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 788
    iget-object v10, v10, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 790
    sget v11, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_MIN_READY_CPU_ONLY_JOBS_COUNT:I

    .line 792
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 795
    const-string/jumbo v11, "jobscheduler"

    .line 798
    const-string/jumbo v12, "prefetch_force_batch_relax_threshold_ms"

    .line 801
    const-wide/32 v13, 0x36ee80

    .line 804
    invoke-static {v11, v12, v13, v14}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 807
    move-result-wide v11

    .line 808
    iput-wide v11, v10, Lcom/android/server/job/JobSchedulerService$Constants;->PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:J

    .line 810
    goto/16 :goto_5

    .line 812
    :pswitch_3
    iget-object v10, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 814
    iget-object v10, v10, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 816
    invoke-static {v10}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateConnectivityConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 819
    goto/16 :goto_5

    .line 821
    :pswitch_4
    iget-object v10, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 823
    iget-object v10, v10, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 825
    sget v11, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_MIN_READY_CPU_ONLY_JOBS_COUNT:I

    .line 827
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 830
    const-string/jumbo v11, "jobscheduler"

    .line 833
    const-string/jumbo v13, "min_linear_backoff_time_ms"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 836
    const-wide/16 v14, 0x2710

    .line 838
    move-object/from16 v16, v4

    .line 840
    :try_start_3
    invoke-static {v11, v13, v14, v15}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 843
    move-result-wide v3

    .line 844
    iput-wide v3, v10, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME_MS:J

    .line 846
    const-string/jumbo v3, "min_exp_backoff_time_ms"

    .line 849
    invoke-static {v11, v3, v14, v15}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 852
    move-result-wide v3

    .line 853
    iput-wide v3, v10, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME_MS:J

    .line 855
    const-string/jumbo v3, "system_stop_to_failure_ratio"

    .line 858
    invoke-static {v11, v3, v12}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 861
    move-result v3

    .line 862
    iput v3, v10, Lcom/android/server/job/JobSchedulerService$Constants;->SYSTEM_STOP_TO_FAILURE_RATIO:I

    .line 864
    goto :goto_9

    .line 865
    :pswitch_5
    move-object/from16 v16, v4

    .line 867
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 869
    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 871
    sget v4, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_MIN_READY_CPU_ONLY_JOBS_COUNT:I

    .line 873
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 876
    const-string/jumbo v4, "jobscheduler"

    .line 879
    const-string/jumbo v10, "heavy_use_factor"

    .line 882
    const v11, 0x3f666666    # 0.9f

    .line 885
    invoke-static {v4, v10, v11}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 888
    move-result v10

    .line 889
    iput v10, v3, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    .line 891
    const-string/jumbo v10, "moderate_use_factor"

    .line 894
    const/high16 v11, 0x3f000000    # 0.5f

    .line 896
    invoke-static {v4, v10, v11}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 899
    move-result v4

    .line 900
    iput v4, v3, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    .line 902
    goto :goto_9

    .line 903
    :catchall_2
    move-exception v0

    .line 904
    goto :goto_b

    .line 905
    :pswitch_6
    move-object/from16 v16, v4

    .line 907
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 909
    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 911
    invoke-static {v3}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateBatchingConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 914
    goto :goto_9

    .line 915
    :pswitch_7
    move-object/from16 v16, v4

    .line 917
    if-nez v6, :cond_9

    .line 919
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 921
    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 923
    invoke-static {v3}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateApiQuotaConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 926
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 928
    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->updateQuotaTracker()V

    .line 931
    move v6, v2

    .line 932
    :cond_9
    :goto_9
    move-object/from16 v4, v16

    .line 934
    const/4 v3, 0x0

    .line 935
    goto/16 :goto_2

    .line 937
    :cond_a
    move-object/from16 v16, v4

    .line 939
    const/4 v3, 0x0

    .line 940
    :goto_a
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 942
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 944
    check-cast v1, Ljava/util/ArrayList;

    .line 946
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 949
    move-result v1

    .line 950
    if-ge v3, v1, :cond_b

    .line 952
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 954
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 956
    check-cast v1, Ljava/util/ArrayList;

    .line 958
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 961
    move-result-object v1

    .line 962
    check-cast v1, Lcom/android/server/job/controllers/StateController;

    .line 964
    invoke-virtual {v1}, Lcom/android/server/job/controllers/StateController;->onConstantsUpdatedLocked()V

    .line 967
    add-int/2addr v3, v2

    .line 968
    goto :goto_a

    .line 969
    :cond_b
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 970
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 972
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 974
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 977
    return-void

    .line 978
    :goto_b
    :try_start_4
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 979
    throw v0

    .line 980
    nop

    .line 981
    :sswitch_data_0
    .sparse-switch
        -0x6e1c1925 -> :sswitch_28
        -0x6a91caaa -> :sswitch_27
        -0x61ffed04 -> :sswitch_26
        -0x57ab4ebd -> :sswitch_25
        -0x4e49277a -> :sswitch_24
        -0x4bd6b576 -> :sswitch_23
        -0x48789375 -> :sswitch_22
        -0x472b630d -> :sswitch_21
        -0x3f51c6e4 -> :sswitch_20
        -0x38d906c3 -> :sswitch_1f
        -0x3816e2ef -> :sswitch_1e
        -0x34c37a87 -> :sswitch_1d
        -0x2fdd43f2 -> :sswitch_1c
        -0x2b109c3d -> :sswitch_1b
        -0x28f70f26 -> :sswitch_1a
        -0x2074138d -> :sswitch_19
        -0x1d5723de -> :sswitch_18
        -0x1673d94c -> :sswitch_17
        -0x8486d60 -> :sswitch_16
        -0x6861eec -> :sswitch_15
        -0x36a3a91 -> :sswitch_14
        -0x2ba94ab -> :sswitch_13
        0xcb38358 -> :sswitch_12
        0xddf302d -> :sswitch_11
        0xfb016b2 -> :sswitch_10
        0x11402d7f -> :sswitch_f
        0x12da7deb -> :sswitch_e
        0x1335a09c -> :sswitch_d
        0x185b7bce -> :sswitch_c
        0x2a4571b4 -> :sswitch_b
        0x306220f0 -> :sswitch_a
        0x39707b23 -> :sswitch_9
        0x3be1abc4 -> :sswitch_8
        0x46a7f6df -> :sswitch_7
        0x46ad01bd -> :sswitch_6
        0x4da62ac3 -> :sswitch_5
        0x4e8bc38a -> :sswitch_4
        0x5343e941 -> :sswitch_3
        0x57aac0d8 -> :sswitch_2
        0x642d8bb4 -> :sswitch_1
        0x64e397f2 -> :sswitch_0
    .end sparse-switch

    .line 1147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
