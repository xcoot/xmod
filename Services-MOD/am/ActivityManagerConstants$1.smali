.class public final Lcom/android/server/am/ActivityManagerConstants$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerConstants;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerConstants;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 3
    const/4 v3, 0x6

    .line 4
    const/4 v6, 0x0

    .line 5
    const/4 v7, 0x1

    .line 6
    iget v8, v0, Lcom/android/server/am/ActivityManagerConstants$1;->$r8$classId:I

    .line 8
    packed-switch v8, :pswitch_data_0

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 31
    if-nez v2, :cond_0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const-string/jumbo v3, "enable_experimental_component_alias"

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_1

    .line 43
    const-string/jumbo v3, "component_alias_overrides"

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 55
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    const-string/jumbo v3, "enable_experimental_component_alias"

    .line 61
    const-string v4, "activity_manager_ca"

    .line 63
    invoke-static {v4, v3, v6}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 66
    move-result v3

    .line 67
    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerConstants;->mEnableComponentAlias:Z

    .line 69
    const-string/jumbo v3, "component_alias_overrides"

    .line 72
    const-string v5, ""

    .line 74
    invoke-static {v4, v3, v5}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v3

    .line 78
    iput-object v3, v2, Lcom/android/server/am/ActivityManagerConstants;->mComponentAliasOverrides:Ljava/lang/String;

    .line 80
    iget-object v3, v2, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 82
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mComponentAliasResolver:Lcom/android/server/am/ComponentAliasResolver;

    .line 84
    iget-boolean v4, v2, Lcom/android/server/am/ActivityManagerConstants;->mEnableComponentAlias:Z

    .line 86
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerConstants;->mComponentAliasOverrides:Ljava/lang/String;

    .line 88
    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/ComponentAliasResolver;->update(Ljava/lang/String;Z)V

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    :goto_1
    return-void

    .line 93
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 96
    move-result-object v8

    .line 97
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 100
    move-result-object v8

    .line 101
    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    move-result v9

    .line 105
    if-eqz v9, :cond_5b

    .line 107
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    move-result-object v9

    .line 111
    check-cast v9, Ljava/lang/String;

    .line 113
    if-nez v9, :cond_4

    .line 115
    goto/16 :goto_13

    .line 117
    :cond_4
    const-wide/16 v10, 0x1388

    .line 119
    const-wide/32 v4, 0x1499700

    .line 122
    const/4 v15, 0x0

    .line 123
    const-wide/16 v12, 0x3a98

    .line 125
    const-wide/16 v1, 0x2710

    .line 127
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 130
    move-result v14

    .line 131
    sparse-switch v14, :sswitch_data_0

    .line 134
    :goto_3
    const/4 v14, -0x1

    .line 135
    goto/16 :goto_4

    .line 137
    :sswitch_0
    const-string/jumbo v14, "binder_heavy_hitter_auto_sampler_batchsize"

    .line 140
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    move-result v14

    .line 144
    if-nez v14, :cond_5

    .line 146
    goto :goto_3

    .line 147
    :cond_5
    const/16 v14, 0x41

    .line 149
    goto/16 :goto_4

    .line 151
    :sswitch_1
    const-string/jumbo v14, "service_bind_almost_perceptible_timeout_ms"

    .line 154
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    move-result v14

    .line 158
    if-nez v14, :cond_6

    .line 160
    goto :goto_3

    .line 161
    :cond_6
    const/16 v14, 0x40

    .line 163
    goto/16 :goto_4

    .line 165
    :sswitch_2
    const-string/jumbo v14, "binder_heavy_hitter_watcher_threshold"

    .line 168
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    move-result v14

    .line 172
    if-nez v14, :cond_7

    .line 174
    goto :goto_3

    .line 175
    :cond_7
    const/16 v14, 0x3f

    .line 177
    goto/16 :goto_4

    .line 179
    :sswitch_3
    const-string/jumbo v14, "deferred_fgs_notification_interval_for_short"

    .line 182
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    move-result v14

    .line 186
    if-nez v14, :cond_8

    .line 188
    goto :goto_3

    .line 189
    :cond_8
    const/16 v14, 0x3e

    .line 191
    goto/16 :goto_4

    .line 193
    :sswitch_4
    const-string/jumbo v14, "fgs_start_foreground_timeout"

    .line 196
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    move-result v14

    .line 200
    if-nez v14, :cond_9

    .line 202
    goto :goto_3

    .line 203
    :cond_9
    const/16 v14, 0x3d

    .line 205
    goto/16 :goto_4

    .line 207
    :sswitch_5
    const-string/jumbo v14, "binder_heavy_hitter_auto_sampler_enabled"

    .line 210
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    move-result v14

    .line 214
    if-nez v14, :cond_a

    .line 216
    goto :goto_3

    .line 217
    :cond_a
    const/16 v14, 0x3c

    .line 219
    goto/16 :goto_4

    .line 221
    :sswitch_6
    const-string/jumbo v14, "use_tiered_cached_adj"

    .line 224
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    move-result v14

    .line 228
    if-nez v14, :cond_b

    .line 230
    goto :goto_3

    .line 231
    :cond_b
    const/16 v14, 0x3b

    .line 233
    goto/16 :goto_4

    .line 235
    :sswitch_7
    const-string/jumbo v14, "binder_heavy_hitter_auto_sampler_threshold"

    .line 238
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    move-result v14

    .line 242
    if-nez v14, :cond_c

    .line 244
    goto :goto_3

    .line 245
    :cond_c
    const/16 v14, 0x3a

    .line 247
    goto/16 :goto_4

    .line 249
    :sswitch_8
    const-string/jumbo v14, "proc_state_debug_uids"

    .line 252
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    move-result v14

    .line 256
    if-nez v14, :cond_d

    .line 258
    goto :goto_3

    .line 259
    :cond_d
    const/16 v14, 0x39

    .line 261
    goto/16 :goto_4

    .line 263
    :sswitch_9
    const-string/jumbo v14, "follow_up_oomadj_update_wait_duration"

    .line 266
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    move-result v14

    .line 270
    if-nez v14, :cond_e

    .line 272
    goto/16 :goto_3

    .line 274
    :cond_e
    const/16 v14, 0x38

    .line 276
    goto/16 :goto_4

    .line 278
    :sswitch_a
    const-string/jumbo v14, "enable_wait_for_finish_attach_application"

    .line 281
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 284
    move-result v14

    .line 285
    if-nez v14, :cond_f

    .line 287
    goto/16 :goto_3

    .line 289
    :cond_f
    const/16 v14, 0x37

    .line 291
    goto/16 :goto_4

    .line 293
    :sswitch_b
    const-string/jumbo v14, "deferred_fgs_notifications_enabled"

    .line 296
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    move-result v14

    .line 300
    if-nez v14, :cond_10

    .line 302
    goto/16 :goto_3

    .line 304
    :cond_10
    const/16 v14, 0x36

    .line 306
    goto/16 :goto_4

    .line 308
    :sswitch_c
    const-string/jumbo v14, "extra_delay_svc_restart_mem_pressure"

    .line 311
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    move-result v14

    .line 315
    if-nez v14, :cond_11

    .line 317
    goto/16 :goto_3

    .line 319
    :cond_11
    const/16 v14, 0x35

    .line 321
    goto/16 :goto_4

    .line 323
    :sswitch_d
    const-string/jumbo v14, "disable_app_profiler_pss_profiling"

    .line 326
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 329
    move-result v14

    .line 330
    if-nez v14, :cond_12

    .line 332
    goto/16 :goto_3

    .line 334
    :cond_12
    const/16 v14, 0x34

    .line 336
    goto/16 :goto_4

    .line 338
    :sswitch_e
    const-string/jumbo v14, "media_processing_fgs_timeout_duration"

    .line 341
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    move-result v14

    .line 345
    if-nez v14, :cond_13

    .line 347
    goto/16 :goto_3

    .line 349
    :cond_13
    const/16 v14, 0x33

    .line 351
    goto/16 :goto_4

    .line 353
    :sswitch_f
    const-string/jumbo v14, "short_fgs_proc_state_extra_wait_duration"

    .line 356
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 359
    move-result v14

    .line 360
    if-nez v14, :cond_14

    .line 362
    goto/16 :goto_3

    .line 364
    :cond_14
    const/16 v14, 0x32

    .line 366
    goto/16 :goto_4

    .line 368
    :sswitch_10
    const-string/jumbo v14, "kill_bg_restricted_cached_idle"

    .line 371
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    move-result v14

    .line 375
    if-nez v14, :cond_15

    .line 377
    goto/16 :goto_3

    .line 379
    :cond_15
    const/16 v14, 0x31

    .line 381
    goto/16 :goto_4

    .line 383
    :sswitch_11
    const-string/jumbo v14, "boot_time_temp_allowlist_duration"

    .line 386
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 389
    move-result v14

    .line 390
    if-nez v14, :cond_16

    .line 392
    goto/16 :goto_3

    .line 394
    :cond_16
    const/16 v14, 0x30

    .line 396
    goto/16 :goto_4

    .line 398
    :sswitch_12
    const-string/jumbo v14, "low_swap_threshold_percent"

    .line 401
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 404
    move-result v14

    .line 405
    if-nez v14, :cond_17

    .line 407
    goto/16 :goto_3

    .line 409
    :cond_17
    const/16 v14, 0x2f

    .line 411
    goto/16 :goto_4

    .line 413
    :sswitch_13
    const-string/jumbo v14, "fg_to_bg_fgs_grace_duration"

    .line 416
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 419
    move-result v14

    .line 420
    if-nez v14, :cond_18

    .line 422
    goto/16 :goto_3

    .line 424
    :cond_18
    const/16 v14, 0x2e

    .line 426
    goto/16 :goto_4

    .line 428
    :sswitch_14
    const-string/jumbo v14, "no_kill_cached_processes_until_boot_completed"

    .line 431
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 434
    move-result v14

    .line 435
    if-nez v14, :cond_19

    .line 437
    goto/16 :goto_3

    .line 439
    :cond_19
    const/16 v14, 0x2d

    .line 441
    goto/16 :goto_4

    .line 443
    :sswitch_15
    const-string/jumbo v14, "default_fgs_starts_restriction_check_caller_target_sdk"

    .line 446
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 449
    move-result v14

    .line 450
    if-nez v14, :cond_1a

    .line 452
    goto/16 :goto_3

    .line 454
    :cond_1a
    const/16 v14, 0x2c

    .line 456
    goto/16 :goto_4

    .line 458
    :sswitch_16
    const-string/jumbo v14, "deferred_fgs_notification_exclusion_time"

    .line 461
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 464
    move-result v14

    .line 465
    if-nez v14, :cond_1b

    .line 467
    goto/16 :goto_3

    .line 469
    :cond_1b
    const/16 v14, 0x2b

    .line 471
    goto/16 :goto_4

    .line 473
    :sswitch_17
    const-string/jumbo v14, "enable_extra_delay_svc_restart_mem_pressure"

    .line 476
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 479
    move-result v14

    .line 480
    if-nez v14, :cond_1c

    .line 482
    goto/16 :goto_3

    .line 484
    :cond_1c
    const/16 v14, 0x2a

    .line 486
    goto/16 :goto_4

    .line 488
    :sswitch_18
    const-string/jumbo v14, "system_exempt_power_restrictions_enabled"

    .line 491
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 494
    move-result v14

    .line 495
    if-nez v14, :cond_1d

    .line 497
    goto/16 :goto_3

    .line 499
    :cond_1d
    const/16 v14, 0x29

    .line 501
    goto/16 :goto_4

    .line 503
    :sswitch_19
    const-string/jumbo v14, "proactive_kills_enabled"

    .line 506
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 509
    move-result v14

    .line 510
    if-nez v14, :cond_1e

    .line 512
    goto/16 :goto_3

    .line 514
    :cond_1e
    const/16 v14, 0x28

    .line 516
    goto/16 :goto_4

    .line 518
    :sswitch_1a
    const-string/jumbo v14, "tiered_cached_adj_decay_time"

    .line 521
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 524
    move-result v14

    .line 525
    if-nez v14, :cond_1f

    .line 527
    goto/16 :goto_3

    .line 529
    :cond_1f
    const/16 v14, 0x27

    .line 531
    goto/16 :goto_4

    .line 533
    :sswitch_1b
    const-string/jumbo v14, "defer_boot_completed_broadcast"

    .line 536
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 539
    move-result v14

    .line 540
    if-nez v14, :cond_20

    .line 542
    goto/16 :goto_3

    .line 544
    :cond_20
    const/16 v14, 0x26

    .line 546
    goto/16 :goto_4

    .line 548
    :sswitch_1c
    const-string/jumbo v14, "fgs_crash_extra_wait_duration"

    .line 551
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 554
    move-result v14

    .line 555
    if-nez v14, :cond_21

    .line 557
    goto/16 :goto_3

    .line 559
    :cond_21
    const/16 v14, 0x25

    .line 561
    goto/16 :goto_4

    .line 563
    :sswitch_1d
    const-string/jumbo v14, "imperceptible_kill_exempt_packages"

    .line 566
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 569
    move-result v14

    .line 570
    if-nez v14, :cond_22

    .line 572
    goto/16 :goto_3

    .line 574
    :cond_22
    const/16 v14, 0x24

    .line 576
    goto/16 :goto_4

    .line 578
    :sswitch_1e
    const-string/jumbo v14, "top_to_fgs_grace_duration"

    .line 581
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 584
    move-result v14

    .line 585
    if-nez v14, :cond_23

    .line 587
    goto/16 :goto_3

    .line 589
    :cond_23
    const/16 v14, 0x23

    .line 591
    goto/16 :goto_4

    .line 593
    :sswitch_1f
    const-string/jumbo v14, "deferred_fgs_notifications_api_gated"

    .line 596
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 599
    move-result v14

    .line 600
    if-nez v14, :cond_24

    .line 602
    goto/16 :goto_3

    .line 604
    :cond_24
    const/16 v14, 0x22

    .line 606
    goto/16 :goto_4

    .line 608
    :sswitch_20
    const-string/jumbo v14, "no_kill_cached_processes_post_boot_completed_duration_millis"

    .line 611
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 614
    move-result v14

    .line 615
    if-nez v14, :cond_25

    .line 617
    goto/16 :goto_3

    .line 619
    :cond_25
    const/16 v14, 0x21

    .line 621
    goto/16 :goto_4

    .line 623
    :sswitch_21
    const-string/jumbo v14, "push_messaging_over_quota_behavior"

    .line 626
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 629
    move-result v14

    .line 630
    if-nez v14, :cond_26

    .line 632
    goto/16 :goto_3

    .line 634
    :cond_26
    const/16 v14, 0x20

    .line 636
    goto/16 :goto_4

    .line 638
    :sswitch_22
    const-string/jumbo v14, "binder_heavy_hitter_watcher_enabled"

    .line 641
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 644
    move-result v14

    .line 645
    if-nez v14, :cond_27

    .line 647
    goto/16 :goto_3

    .line 649
    :cond_27
    const/16 v14, 0x1f

    .line 651
    goto/16 :goto_4

    .line 653
    :sswitch_23
    const-string/jumbo v14, "default_fgs_starts_restriction_notification_enabled"

    .line 656
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 659
    move-result v14

    .line 660
    if-nez v14, :cond_28

    .line 662
    goto/16 :goto_3

    .line 664
    :cond_28
    const/16 v14, 0x1e

    .line 666
    goto/16 :goto_4

    .line 668
    :sswitch_24
    const-string/jumbo v14, "fgs_start_allowed_log_sample_rate"

    .line 671
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 674
    move-result v14

    .line 675
    if-nez v14, :cond_29

    .line 677
    goto/16 :goto_3

    .line 679
    :cond_29
    const/16 v14, 0x1d

    .line 681
    goto/16 :goto_4

    .line 683
    :sswitch_25
    const-string/jumbo v14, "pss_to_rss_threshold_modifier"

    .line 686
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 689
    move-result v14

    .line 690
    if-nez v14, :cond_2a

    .line 692
    goto/16 :goto_3

    .line 694
    :cond_2a
    const/16 v14, 0x1c

    .line 696
    goto/16 :goto_4

    .line 698
    :sswitch_26
    const-string/jumbo v14, "service_start_foreground_timeout_ms"

    .line 701
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 704
    move-result v14

    .line 705
    if-nez v14, :cond_2b

    .line 707
    goto/16 :goto_3

    .line 709
    :cond_2b
    const/16 v14, 0x1b

    .line 711
    goto/16 :goto_4

    .line 713
    :sswitch_27
    const-string/jumbo v14, "fgs_atom_sample_rate"

    .line 716
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 719
    move-result v14

    .line 720
    if-nez v14, :cond_2c

    .line 722
    goto/16 :goto_3

    .line 724
    :cond_2c
    const/16 v14, 0x1a

    .line 726
    goto/16 :goto_4

    .line 728
    :sswitch_28
    const-string/jumbo v14, "prioritize_alarm_broadcasts"

    .line 731
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 734
    move-result v14

    .line 735
    if-nez v14, :cond_2d

    .line 737
    goto/16 :goto_3

    .line 739
    :cond_2d
    const/16 v14, 0x19

    .line 741
    goto/16 :goto_4

    .line 743
    :sswitch_29
    const-string/jumbo v14, "process_kill_timeout"

    .line 746
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 749
    move-result v14

    .line 750
    if-nez v14, :cond_2e

    .line 752
    goto/16 :goto_3

    .line 754
    :cond_2e
    const/16 v14, 0x18

    .line 756
    goto/16 :goto_4

    .line 758
    :sswitch_2a
    const-string/jumbo v14, "min_assoc_log_duration"

    .line 761
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 764
    move-result v14

    .line 765
    if-nez v14, :cond_2f

    .line 767
    goto/16 :goto_3

    .line 769
    :cond_2f
    const/16 v14, 0x17

    .line 771
    goto/16 :goto_4

    .line 773
    :sswitch_2b
    const-string/jumbo v14, "network_access_timeout_ms"

    .line 776
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 779
    move-result v14

    .line 780
    if-nez v14, :cond_30

    .line 782
    goto/16 :goto_3

    .line 784
    :cond_30
    const/16 v14, 0x16

    .line 786
    goto/16 :goto_4

    .line 788
    :sswitch_2c
    const-string/jumbo v14, "data_sync_fgs_timeout_duration"

    .line 791
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 794
    move-result v14

    .line 795
    if-nez v14, :cond_31

    .line 797
    goto/16 :goto_3

    .line 799
    :cond_31
    const/16 v14, 0x15

    .line 801
    goto/16 :goto_4

    .line 803
    :sswitch_2d
    const-string/jumbo v14, "max_empty_time_millis"

    .line 806
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 809
    move-result v14

    .line 810
    if-nez v14, :cond_32

    .line 812
    goto/16 :goto_3

    .line 814
    :cond_32
    const/16 v14, 0x14

    .line 816
    goto/16 :goto_4

    .line 818
    :sswitch_2e
    const-string/jumbo v14, "max_cached_processes"

    .line 821
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 824
    move-result v14

    .line 825
    if-nez v14, :cond_33

    .line 827
    goto/16 :goto_3

    .line 829
    :cond_33
    const/16 v14, 0x13

    .line 831
    goto/16 :goto_4

    .line 833
    :sswitch_2f
    const-string/jumbo v14, "force_bg_check_on_restricted"

    .line 836
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 839
    move-result v14

    .line 840
    if-nez v14, :cond_34

    .line 842
    goto/16 :goto_3

    .line 844
    :cond_34
    const/16 v14, 0x12

    .line 846
    goto/16 :goto_4

    .line 848
    :sswitch_30
    const-string/jumbo v14, "default_background_fgs_starts_restriction_enabled"

    .line 851
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 854
    move-result v14

    .line 855
    if-nez v14, :cond_35

    .line 857
    goto/16 :goto_3

    .line 859
    :cond_35
    const/16 v14, 0x11

    .line 861
    goto/16 :goto_4

    .line 863
    :sswitch_31
    const-string/jumbo v14, "short_fgs_timeout_duration"

    .line 866
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 869
    move-result v14

    .line 870
    if-nez v14, :cond_36

    .line 872
    goto/16 :goto_3

    .line 874
    :cond_36
    const/16 v14, 0x10

    .line 876
    goto/16 :goto_4

    .line 878
    :sswitch_32
    const-string/jumbo v14, "max_phantom_processes"

    .line 881
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 884
    move-result v14

    .line 885
    if-nez v14, :cond_37

    .line 887
    goto/16 :goto_3

    .line 889
    :cond_37
    const/16 v14, 0xf

    .line 891
    goto/16 :goto_4

    .line 893
    :sswitch_33
    const-string/jumbo v14, "deferred_fgs_notification_interval"

    .line 896
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 899
    move-result v14

    .line 900
    if-nez v14, :cond_38

    .line 902
    goto/16 :goto_3

    .line 904
    :cond_38
    const/16 v14, 0xe

    .line 906
    goto/16 :goto_4

    .line 908
    :sswitch_34
    const-string/jumbo v14, "max_previous_time"

    .line 911
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 914
    move-result v14

    .line 915
    if-nez v14, :cond_39

    .line 917
    goto/16 :goto_3

    .line 919
    :cond_39
    const/16 v14, 0xd

    .line 921
    goto/16 :goto_4

    .line 923
    :sswitch_35
    const-string/jumbo v14, "oomadj_update_policy"

    .line 926
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 929
    move-result v14

    .line 930
    if-nez v14, :cond_3a

    .line 932
    goto/16 :goto_3

    .line 934
    :cond_3a
    const/16 v14, 0xc

    .line 936
    goto/16 :goto_4

    .line 938
    :sswitch_36
    const-string/jumbo v14, "vis_to_invis_uij_schedule_grace_duration"

    .line 941
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 944
    move-result v14

    .line 945
    if-nez v14, :cond_3b

    .line 947
    goto/16 :goto_3

    .line 949
    :cond_3b
    const/16 v14, 0xb

    .line 951
    goto/16 :goto_4

    .line 953
    :sswitch_37
    const-string/jumbo v14, "max_service_connections_per_process"

    .line 956
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 959
    move-result v14

    .line 960
    if-nez v14, :cond_3c

    .line 962
    goto/16 :goto_3

    .line 964
    :cond_3c
    const/16 v14, 0xa

    .line 966
    goto/16 :goto_4

    .line 968
    :sswitch_38
    const-string/jumbo v14, "deferred_fgs_notification_exclusion_time_for_short"

    .line 971
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 974
    move-result v14

    .line 975
    if-nez v14, :cond_3d

    .line 977
    goto/16 :goto_3

    .line 979
    :cond_3d
    const/16 v14, 0x9

    .line 981
    goto/16 :goto_4

    .line 983
    :sswitch_39
    const-string/jumbo v14, "fgs_start_denied_log_sample_rate"

    .line 986
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 989
    move-result v14

    .line 990
    if-nez v14, :cond_3e

    .line 992
    goto/16 :goto_3

    .line 994
    :cond_3e
    const/16 v14, 0x8

    .line 996
    goto/16 :goto_4

    .line 998
    :sswitch_3a
    const-string/jumbo v14, "fgs_allow_opt_out"

    .line 1001
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1004
    move-result v14

    .line 1005
    if-nez v14, :cond_3f

    .line 1007
    goto/16 :goto_3

    .line 1009
    :cond_3f
    const/4 v14, 0x7

    .line 1010
    goto :goto_4

    .line 1011
    :sswitch_3b
    const-string/jumbo v14, "default_background_activity_starts_enabled"

    .line 1014
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1017
    move-result v14

    .line 1018
    if-nez v14, :cond_40

    .line 1020
    goto/16 :goto_3

    .line 1022
    :cond_40
    move v14, v3

    .line 1023
    goto :goto_4

    .line 1024
    :sswitch_3c
    const-string/jumbo v14, "binder_heavy_hitter_watcher_batchsize"

    .line 1027
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1030
    move-result v14

    .line 1031
    if-nez v14, :cond_41

    .line 1033
    goto/16 :goto_3

    .line 1035
    :cond_41
    const/4 v14, 0x5

    .line 1036
    goto :goto_4

    .line 1037
    :sswitch_3d
    const-string/jumbo v14, "service_start_foreground_anr_delay_ms"

    .line 1040
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1043
    move-result v14

    .line 1044
    if-nez v14, :cond_42

    .line 1046
    goto/16 :goto_3

    .line 1048
    :cond_42
    const/4 v14, 0x4

    .line 1049
    goto :goto_4

    .line 1050
    :sswitch_3e
    const-string/jumbo v14, "default_fgs_starts_restriction_enabled"

    .line 1053
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1056
    move-result v14

    .line 1057
    if-nez v14, :cond_43

    .line 1059
    goto/16 :goto_3

    .line 1061
    :cond_43
    const/4 v14, 0x3

    .line 1062
    goto :goto_4

    .line 1063
    :sswitch_3f
    const-string/jumbo v14, "kill_bg_restricted_cached_idle_settle_time"

    .line 1066
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1069
    move-result v14

    .line 1070
    if-nez v14, :cond_44

    .line 1072
    goto/16 :goto_3

    .line 1074
    :cond_44
    const/4 v14, 0x2

    .line 1075
    goto :goto_4

    .line 1076
    :sswitch_40
    const-string/jumbo v14, "short_fgs_anr_extra_wait_duration"

    .line 1079
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1082
    move-result v14

    .line 1083
    if-nez v14, :cond_45

    .line 1085
    goto/16 :goto_3

    .line 1087
    :cond_45
    move v14, v7

    .line 1088
    goto :goto_4

    .line 1089
    :sswitch_41
    const-string/jumbo v14, "imperceptible_kill_exempt_proc_states"

    .line 1092
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1095
    move-result v14

    .line 1096
    if-nez v14, :cond_46

    .line 1098
    goto/16 :goto_3

    .line 1100
    :cond_46
    move v14, v6

    .line 1101
    :goto_4
    packed-switch v14, :pswitch_data_1

    .line 1104
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1106
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1109
    invoke-static {}, Landroid/app/ForegroundServiceTypePolicy;->getDefaultPolicy()Landroid/app/ForegroundServiceTypePolicy;

    .line 1112
    move-result-object v1

    .line 1113
    invoke-virtual {v1, v9}, Landroid/app/ForegroundServiceTypePolicy;->updatePermissionEnforcementFlagIfNecessary(Ljava/lang/String;)V

    .line 1116
    :goto_5
    const/16 v4, 0x3a

    .line 1118
    const/4 v5, 0x2

    .line 1119
    const/4 v9, -0x1

    .line 1120
    :goto_6
    const/16 v12, 0x20

    .line 1122
    goto/16 :goto_2

    .line 1124
    :pswitch_1
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1126
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1129
    const-string v2, "activity_manager"

    .line 1131
    const-string/jumbo v4, "service_bind_almost_perceptible_timeout_ms"

    .line 1134
    invoke-static {v2, v4, v12, v13}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 1137
    move-result-wide v4

    .line 1138
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mServiceBindAlmostPerceptibleTimeoutMs:J

    .line 1140
    goto :goto_5

    .line 1141
    :pswitch_2
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1143
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1146
    const-string v5, "activity_manager"

    .line 1148
    const-string/jumbo v9, "deferred_fgs_notification_interval_for_short"

    .line 1151
    invoke-static {v5, v9, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 1154
    move-result-wide v1

    .line 1155
    iput-wide v1, v4, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralIntervalForShort:J

    .line 1157
    goto :goto_5

    .line 1158
    :pswitch_3
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1160
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1163
    const-string v5, "activity_manager"

    .line 1165
    const-string/jumbo v9, "fgs_start_foreground_timeout"

    .line 1168
    invoke-static {v5, v9, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 1171
    move-result-wide v1

    .line 1172
    iput-wide v1, v4, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartForegroundTimeoutMs:J

    .line 1174
    goto :goto_5

    .line 1175
    :pswitch_4
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1177
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1180
    const-string v2, " in "

    .line 1182
    const-string v4, "ActivityManagerConstants"

    .line 1184
    const-string v5, ""

    .line 1186
    const-string v9, "activity_manager"

    .line 1188
    const-string/jumbo v10, "proc_state_debug_uids"

    .line 1191
    invoke-static {v9, v10, v5}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1194
    move-result-object v5

    .line 1195
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1198
    move-result-object v5

    .line 1199
    iput-boolean v6, v1, Lcom/android/server/am/ActivityManagerConstants;->mEnableProcStateStacktrace:Z

    .line 1201
    iput v6, v1, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetProcStateDelay:I

    .line 1203
    iput v6, v1, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetUidStateDelay:I

    .line 1205
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 1208
    move-result v9

    .line 1209
    if-nez v9, :cond_47

    .line 1211
    new-instance v2, Landroid/util/SparseBooleanArray;

    .line 1213
    invoke-direct {v2, v6}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1216
    iput-object v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugUids:Landroid/util/SparseBooleanArray;

    .line 1218
    goto :goto_5

    .line 1219
    :cond_47
    const-string v9, ","

    .line 1221
    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1224
    move-result-object v9

    .line 1225
    new-instance v10, Landroid/util/SparseBooleanArray;

    .line 1227
    invoke-direct {v10, v6}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1230
    array-length v11, v9

    .line 1231
    move v12, v6

    .line 1232
    :goto_7
    if-ge v12, v11, :cond_4e

    .line 1234
    aget-object v13, v9, v12

    .line 1236
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 1239
    move-result v14

    .line 1240
    if-nez v14, :cond_48

    .line 1242
    goto/16 :goto_9

    .line 1244
    :cond_48
    const-string/jumbo v14, "stack"

    .line 1247
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1250
    move-result v14

    .line 1251
    if-eqz v14, :cond_49

    .line 1253
    iput-boolean v7, v1, Lcom/android/server/am/ActivityManagerConstants;->mEnableProcStateStacktrace:Z

    .line 1255
    goto :goto_9

    .line 1256
    :cond_49
    invoke-virtual {v13, v6}, Ljava/lang/String;->charAt(I)C

    .line 1259
    move-result v14

    .line 1260
    const/16 v15, 0x61

    .line 1262
    if-gt v15, v14, :cond_4a

    .line 1264
    const/16 v15, 0x7a

    .line 1266
    if-gt v14, v15, :cond_4a

    .line 1268
    invoke-virtual {v13, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1271
    move-result-object v13

    .line 1272
    move v15, v6

    .line 1273
    goto :goto_8

    .line 1274
    :cond_4a
    move v15, v7

    .line 1275
    :goto_8
    :try_start_0
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1278
    move-result-object v16

    .line 1279
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1282
    move-result v13
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1283
    if-eqz v15, :cond_4b

    .line 1285
    invoke-virtual {v10, v13, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1288
    goto :goto_9

    .line 1289
    :cond_4b
    const/16 v15, 0x70

    .line 1291
    if-ne v14, v15, :cond_4c

    .line 1293
    iput v13, v1, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetProcStateDelay:I

    .line 1295
    goto :goto_9

    .line 1296
    :cond_4c
    const/16 v15, 0x75

    .line 1298
    if-ne v14, v15, :cond_4d

    .line 1300
    iput v13, v1, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetUidStateDelay:I

    .line 1302
    goto :goto_9

    .line 1303
    :cond_4d
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1305
    const-string v15, "Invalid prefix "

    .line 1307
    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1313
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1322
    move-result-object v13

    .line 1323
    invoke-static {v4, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    goto :goto_9

    .line 1327
    :catch_0
    new-instance v14, Ljava/lang/StringBuilder;

    .line 1329
    const-string v15, "Invalid number "

    .line 1331
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1334
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1340
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1343
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1346
    move-result-object v13

    .line 1347
    invoke-static {v4, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    :goto_9
    add-int/2addr v12, v7

    .line 1351
    goto :goto_7

    .line 1352
    :cond_4e
    iput-object v10, v1, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugUids:Landroid/util/SparseBooleanArray;

    .line 1354
    goto/16 :goto_5

    .line 1356
    :pswitch_5
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1358
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1361
    const-string v2, "activity_manager"

    .line 1363
    const-string/jumbo v4, "follow_up_oomadj_update_wait_duration"

    .line 1366
    const-wide/16 v9, 0x3e8

    .line 1368
    invoke-static {v2, v4, v9, v10}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 1371
    move-result-wide v4

    .line 1372
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->FOLLOW_UP_OOMADJ_UPDATE_WAIT_DURATION:J

    .line 1374
    goto/16 :goto_5

    .line 1376
    :pswitch_6
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1378
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1381
    const-string v2, "activity_manager"

    .line 1383
    const-string/jumbo v4, "enable_wait_for_finish_attach_application"

    .line 1386
    invoke-static {v2, v4, v7}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1389
    move-result v2

    .line 1390
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mEnableWaitForFinishAttachApplication:Z

    .line 1392
    goto/16 :goto_5

    .line 1394
    :pswitch_7
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1396
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1399
    const-string v2, "activity_manager"

    .line 1401
    const-string/jumbo v4, "deferred_fgs_notifications_enabled"

    .line 1404
    invoke-static {v2, v4, v7}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1407
    move-result v2

    .line 1408
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralEnabled:Z

    .line 1410
    goto/16 :goto_5

    .line 1412
    :pswitch_8
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1414
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1416
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1419
    monitor-enter v2

    .line 1420
    :try_start_1
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1422
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 1424
    invoke-virtual {v4}, Lcom/android/server/am/AppProfiler;->getLastMemoryLevelLocked()I

    .line 1427
    move-result v4

    .line 1428
    iget-object v5, v1, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    .line 1430
    const-string/jumbo v9, "extra_delay_svc_restart_mem_pressure"

    .line 1433
    sget-object v10, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:[J

    .line 1435
    const-string v11, "activity_manager"

    .line 1437
    invoke-static {v11, v9, v15}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1440
    move-result-object v9

    .line 1441
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1444
    move-result v11

    .line 1445
    if-nez v11, :cond_50

    .line 1447
    const-string v11, ","

    .line 1449
    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1452
    move-result-object v9

    .line 1453
    array-length v11, v9

    .line 1454
    array-length v12, v10

    .line 1455
    if-ne v11, v12, :cond_50

    .line 1457
    array-length v11, v9

    .line 1458
    new-array v11, v11, [J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1460
    move v12, v6

    .line 1461
    :goto_a
    :try_start_2
    array-length v13, v9

    .line 1462
    if-ge v12, v13, :cond_4f

    .line 1464
    aget-object v13, v9, v12

    .line 1466
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1469
    move-result-wide v13

    .line 1470
    aput-wide v13, v11, v12
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1472
    add-int/2addr v12, v7

    .line 1473
    goto :goto_a

    .line 1474
    :cond_4f
    move-object v10, v11

    .line 1475
    :catch_1
    :cond_50
    :try_start_3
    iput-object v10, v1, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    .line 1477
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1479
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 1481
    aget-wide v17, v10, v4

    .line 1483
    aget-wide v19, v5, v4

    .line 1485
    const-string/jumbo v23, "config"

    .line 1488
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1491
    move-result-wide v21

    .line 1492
    move-object/from16 v16, v1

    .line 1494
    invoke-virtual/range {v16 .. v23}, Lcom/android/server/am/ActiveServices;->performRescheduleServiceRestartOnMemoryPressureLocked(JJJLjava/lang/String;)V

    .line 1497
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1498
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1501
    goto/16 :goto_5

    .line 1503
    :catchall_0
    move-exception v0

    .line 1504
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1505
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1508
    throw v0

    .line 1509
    :pswitch_9
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1511
    iget-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mDefaultDisableAppProfilerPssProfiling:Z

    .line 1513
    const-string v4, "activity_manager"

    .line 1515
    const-string/jumbo v5, "disable_app_profiler_pss_profiling"

    .line 1518
    invoke-static {v4, v5, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1521
    move-result v2

    .line 1522
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    .line 1524
    goto/16 :goto_5

    .line 1526
    :pswitch_a
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1528
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1531
    const-string v2, "activity_manager"

    .line 1533
    const-string/jumbo v9, "media_processing_fgs_timeout_duration"

    .line 1536
    invoke-static {v2, v9, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 1539
    move-result-wide v4

    .line 1540
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mMediaProcessingFgsTimeoutDuration:J

    .line 1542
    goto/16 :goto_5

    .line 1544
    :pswitch_b
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1546
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1549
    const-string v2, "activity_manager"

    .line 1551
    const-string/jumbo v4, "short_fgs_proc_state_extra_wait_duration"

    .line 1554
    invoke-static {v2, v4, v10, v11}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 1557
    move-result-wide v4

    .line 1558
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsProcStateExtraWaitDuration:J

    .line 1560
    goto/16 :goto_5

    .line 1562
    :pswitch_c
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1564
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1567
    const-string v2, "activity_manager"

    .line 1569
    const-string/jumbo v4, "kill_bg_restricted_cached_idle"

    .line 1572
    invoke-static {v2, v4, v6}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1575
    move-result v2

    .line 1576
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    .line 1578
    goto/16 :goto_5

    .line 1580
    :pswitch_d
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1582
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1585
    const-string v2, "activity_manager"

    .line 1587
    const-string/jumbo v4, "boot_time_temp_allowlist_duration"

    .line 1590
    const-wide/16 v9, 0x4e20

    .line 1592
    invoke-static {v2, v4, v9, v10}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 1595
    move-result-wide v4

    .line 1596
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mBootTimeTempAllowlistDuration:J

    .line 1598
    goto/16 :goto_5

    .line 1600
    :pswitch_e
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1602
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1605
    const-string v1, "activity_manager"

    .line 1607
    const-string/jumbo v2, "low_swap_threshold_percent"

    .line 1610
    const v4, 0x3dcccccd    # 0.1f

    .line 1613
    invoke-static {v1, v2, v4}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 1616
    move-result v1

    .line 1617
    sput v1, Lcom/android/server/am/ActivityManagerConstants;->LOW_SWAP_THRESHOLD_PERCENT:F

    .line 1619
    goto/16 :goto_5

    .line 1621
    :pswitch_f
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1623
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1626
    const-string v2, "activity_manager"

    .line 1628
    const-string/jumbo v4, "fg_to_bg_fgs_grace_duration"

    .line 1631
    invoke-static {v2, v4, v10, v11}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 1634
    move-result-wide v4

    .line 1635
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgToBgFgsGraceDuration:J

    .line 1637
    goto/16 :goto_5

    .line 1639
    :pswitch_10
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1641
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1644
    const-string v2, "activity_manager"

    .line 1646
    const-string/jumbo v4, "no_kill_cached_processes_until_boot_completed"

    .line 1649
    invoke-static {v2, v4, v6}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1652
    move-result v2

    .line 1653
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesUntilBootCompleted:Z

    .line 1655
    goto/16 :goto_5

    .line 1657
    :pswitch_11
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1659
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1662
    const-string v2, "activity_manager"

    .line 1664
    const-string/jumbo v4, "default_fgs_starts_restriction_check_caller_target_sdk"

    .line 1667
    invoke-static {v2, v4, v7}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1670
    move-result v2

    .line 1671
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionCheckCallerTargetSdk:Z

    .line 1673
    goto/16 :goto_5

    .line 1675
    :pswitch_12
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1677
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1680
    const-string v2, "activity_manager"

    .line 1682
    const-string/jumbo v4, "deferred_fgs_notification_exclusion_time"

    .line 1685
    const-wide/32 v9, 0x1d4c0

    .line 1688
    invoke-static {v2, v4, v9, v10}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 1691
    move-result-wide v4

    .line 1692
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTime:J

    .line 1694
    goto/16 :goto_5

    .line 1696
    :pswitch_13
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1698
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1700
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1703
    monitor-enter v2

    .line 1704
    :try_start_5
    iget-boolean v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mEnableExtraServiceRestartDelayOnMemPressure:Z

    .line 1706
    const-string v5, "activity_manager"

    .line 1708
    const-string/jumbo v9, "enable_extra_delay_svc_restart_mem_pressure"

    .line 1711
    invoke-static {v5, v9, v7}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1714
    move-result v5

    .line 1715
    iput-boolean v5, v1, Lcom/android/server/am/ActivityManagerConstants;->mEnableExtraServiceRestartDelayOnMemPressure:Z

    .line 1717
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1719
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 1721
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1724
    move-result-wide v24

    .line 1725
    if-ne v4, v5, :cond_51

    .line 1727
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1730
    goto :goto_d

    .line 1731
    :cond_51
    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 1733
    iget-object v10, v9, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 1735
    invoke-virtual {v10}, Lcom/android/server/am/AppProfiler;->getLastMemoryLevelLocked()I

    .line 1738
    move-result v10

    .line 1739
    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 1741
    iget-object v9, v9, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    .line 1743
    aget-wide v9, v9, v10

    .line 1745
    if-eqz v4, :cond_52

    .line 1747
    move-wide/from16 v20, v9

    .line 1749
    goto :goto_b

    .line 1750
    :cond_52
    const-wide/16 v20, 0x0

    .line 1752
    :goto_b
    if-eqz v5, :cond_53

    .line 1754
    move-wide/from16 v22, v9

    .line 1756
    goto :goto_c

    .line 1757
    :cond_53
    const-wide/16 v22, 0x0

    .line 1759
    :goto_c
    const-string/jumbo v26, "config"

    .line 1762
    move-object/from16 v19, v1

    .line 1764
    invoke-virtual/range {v19 .. v26}, Lcom/android/server/am/ActiveServices;->performRescheduleServiceRestartOnMemoryPressureLocked(JJJLjava/lang/String;)V

    .line 1767
    :goto_d
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1768
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1771
    goto/16 :goto_5

    .line 1773
    :catchall_1
    move-exception v0

    .line 1774
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1775
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1778
    throw v0

    .line 1779
    :pswitch_14
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1781
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1784
    const-string v2, "activity_manager"

    .line 1786
    const-string/jumbo v4, "system_exempt_power_restrictions_enabled"

    .line 1789
    invoke-static {v2, v4, v7}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1792
    move-result v2

    .line 1793
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFlagSystemExemptPowerRestrictionsEnabled:Z

    .line 1795
    goto/16 :goto_5

    .line 1797
    :pswitch_15
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1799
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1802
    const-string v1, "activity_manager"

    .line 1804
    const-string/jumbo v2, "proactive_kills_enabled"

    .line 1807
    invoke-static {v1, v2, v6}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1810
    move-result v1

    .line 1811
    sput-boolean v1, Lcom/android/server/am/ActivityManagerConstants;->PROACTIVE_KILLS_ENABLED:Z

    .line 1813
    goto/16 :goto_5

    .line 1815
    :pswitch_16
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1817
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1820
    const-string v2, "activity_manager"

    .line 1822
    const-string/jumbo v4, "use_tiered_cached_adj"

    .line 1825
    invoke-static {v2, v4, v6}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1828
    move-result v4

    .line 1829
    iput-boolean v4, v1, Lcom/android/server/am/ActivityManagerConstants;->USE_TIERED_CACHED_ADJ:Z

    .line 1831
    const-string/jumbo v4, "tiered_cached_adj_decay_time"

    .line 1834
    const-wide/32 v9, 0xea60

    .line 1837
    invoke-static {v2, v4, v9, v10}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 1840
    move-result-wide v4

    .line 1841
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_DECAY_TIME:J

    .line 1843
    goto/16 :goto_5

    .line 1845
    :pswitch_17
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1847
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1850
    const-string v2, "activity_manager"

    .line 1852
    const-string/jumbo v4, "defer_boot_completed_broadcast"

    .line 1855
    invoke-static {v2, v4, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 1858
    move-result v2

    .line 1859
    iput v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mDeferBootCompletedBroadcast:I

    .line 1861
    goto/16 :goto_5

    .line 1863
    :pswitch_18
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1865
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1868
    const-string v5, "activity_manager"

    .line 1870
    const-string/jumbo v9, "fgs_crash_extra_wait_duration"

    .line 1873
    invoke-static {v5, v9, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 1876
    move-result-wide v1

    .line 1877
    iput-wide v1, v4, Lcom/android/server/am/ActivityManagerConstants;->mFgsCrashExtraWaitDuration:J

    .line 1879
    goto/16 :goto_5

    .line 1881
    :pswitch_19
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1883
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1886
    const-string v2, "activity_manager"

    .line 1888
    const-string/jumbo v4, "top_to_fgs_grace_duration"

    .line 1891
    invoke-static {v2, v4, v12, v13}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 1894
    move-result-wide v4

    .line 1895
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    .line 1897
    goto/16 :goto_5

    .line 1899
    :pswitch_1a
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1901
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1904
    const-string v2, "activity_manager"

    .line 1906
    const-string/jumbo v4, "deferred_fgs_notifications_api_gated"

    .line 1909
    invoke-static {v2, v4, v6}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1912
    move-result v2

    .line 1913
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralApiGated:Z

    .line 1915
    goto/16 :goto_5

    .line 1917
    :pswitch_1b
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1919
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1922
    const-string v2, "activity_manager"

    .line 1924
    const-string/jumbo v4, "no_kill_cached_processes_post_boot_completed_duration_millis"

    .line 1927
    const-wide/16 v9, 0x0

    .line 1929
    invoke-static {v2, v4, v9, v10}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 1932
    move-result-wide v4

    .line 1933
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesPostBootCompletedDurationMillis:J

    .line 1935
    goto/16 :goto_5

    .line 1937
    :pswitch_1c
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1939
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1942
    const-string v2, "activity_manager"

    .line 1944
    const-string/jumbo v4, "push_messaging_over_quota_behavior"

    .line 1947
    invoke-static {v2, v4, v7}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 1950
    move-result v2

    .line 1951
    iput v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    .line 1953
    iget v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    .line 1955
    const/4 v9, -0x1

    .line 1956
    if-lt v2, v9, :cond_54

    .line 1958
    iget v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    .line 1960
    if-le v2, v7, :cond_55

    .line 1962
    :cond_54
    iput v7, v1, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    .line 1964
    :cond_55
    :goto_e
    const/16 v4, 0x3a

    .line 1966
    const/4 v5, 0x2

    .line 1967
    goto/16 :goto_6

    .line 1969
    :pswitch_1d
    const/4 v9, -0x1

    .line 1970
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1972
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1975
    const-string v2, "activity_manager"

    .line 1977
    const-string/jumbo v4, "default_fgs_starts_restriction_notification_enabled"

    .line 1980
    invoke-static {v2, v4, v6}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1983
    move-result v2

    .line 1984
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionNotificationEnabled:Z

    .line 1986
    goto :goto_e

    .line 1987
    :pswitch_1e
    const/4 v9, -0x1

    .line 1988
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1990
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1993
    const-string v2, "activity_manager"

    .line 1995
    const-string/jumbo v4, "fgs_start_allowed_log_sample_rate"

    .line 1998
    const/high16 v5, 0x3e800000    # 0.25f

    .line 2000
    invoke-static {v2, v4, v5}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 2003
    move-result v2

    .line 2004
    iput v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartAllowedLogSampleRate:F

    .line 2006
    goto :goto_e

    .line 2007
    :pswitch_1f
    const/4 v9, -0x1

    .line 2008
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2010
    iget v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mDefaultPssToRssThresholdModifier:F

    .line 2012
    const-string v4, "activity_manager"

    .line 2014
    const-string/jumbo v5, "pss_to_rss_threshold_modifier"

    .line 2017
    invoke-static {v4, v5, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 2020
    move-result v2

    .line 2021
    iput v2, v1, Lcom/android/server/am/ActivityManagerConstants;->PSS_TO_RSS_THRESHOLD_MODIFIER:F

    .line 2023
    goto :goto_e

    .line 2024
    :pswitch_20
    const/4 v9, -0x1

    .line 2025
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2027
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2030
    const-string v2, "activity_manager"

    .line 2032
    const-string/jumbo v4, "service_start_foreground_timeout_ms"

    .line 2035
    const/16 v5, 0x7530

    .line 2037
    invoke-static {v2, v4, v5}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 2040
    move-result v2

    .line 2041
    iput v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundTimeoutMs:I

    .line 2043
    goto :goto_e

    .line 2044
    :pswitch_21
    const/4 v9, -0x1

    .line 2045
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2047
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2050
    const-string v2, "activity_manager"

    .line 2052
    const-string/jumbo v4, "fgs_atom_sample_rate"

    .line 2055
    const/high16 v5, 0x3f800000    # 1.0f

    .line 2057
    invoke-static {v2, v4, v5}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 2060
    move-result v2

    .line 2061
    iput v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsAtomSampleRate:F

    .line 2063
    goto :goto_e

    .line 2064
    :pswitch_22
    const/4 v9, -0x1

    .line 2065
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2067
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2070
    const-string v2, ""

    .line 2072
    const-string v4, "activity_manager"

    .line 2074
    const-string/jumbo v5, "prioritize_alarm_broadcasts"

    .line 2077
    invoke-static {v4, v5, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2080
    move-result-object v2

    .line 2081
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2084
    move-result v4

    .line 2085
    if-eqz v4, :cond_56

    .line 2087
    move v2, v7

    .line 2088
    goto :goto_f

    .line 2089
    :cond_56
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 2092
    move-result v2

    .line 2093
    :goto_f
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mPrioritizeAlarmBroadcasts:Z

    .line 2095
    goto/16 :goto_e

    .line 2097
    :pswitch_23
    const/4 v9, -0x1

    .line 2098
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2100
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2103
    const-string v5, "activity_manager"

    .line 2105
    const-string/jumbo v10, "process_kill_timeout"

    .line 2108
    invoke-static {v5, v10, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 2111
    move-result-wide v1

    .line 2112
    iput-wide v1, v4, Lcom/android/server/am/ActivityManagerConstants;->mProcessKillTimeoutMs:J

    .line 2114
    goto/16 :goto_e

    .line 2116
    :pswitch_24
    const/4 v9, -0x1

    .line 2117
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2119
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2122
    const-string v1, "activity_manager"

    .line 2124
    const-string/jumbo v2, "min_assoc_log_duration"

    .line 2127
    const-wide/32 v4, 0x493e0

    .line 2130
    invoke-static {v1, v2, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 2133
    move-result-wide v1

    .line 2134
    sput-wide v1, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    .line 2136
    goto/16 :goto_e

    .line 2138
    :pswitch_25
    const/4 v9, -0x1

    .line 2139
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2141
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2144
    const-string v2, "activity_manager"

    .line 2146
    const-string/jumbo v4, "network_access_timeout_ms"

    .line 2149
    const-wide/16 v10, 0xc8

    .line 2151
    invoke-static {v2, v4, v10, v11}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 2154
    move-result-wide v4

    .line 2155
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mNetworkAccessTimeoutMs:J

    .line 2157
    goto/16 :goto_e

    .line 2159
    :pswitch_26
    const/4 v9, -0x1

    .line 2160
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2162
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2165
    const-string v2, "activity_manager"

    .line 2167
    const-string/jumbo v10, "data_sync_fgs_timeout_duration"

    .line 2170
    invoke-static {v2, v10, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 2173
    move-result-wide v4

    .line 2174
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mDataSyncFgsTimeoutDuration:J

    .line 2176
    goto/16 :goto_e

    .line 2178
    :pswitch_27
    const/4 v9, -0x1

    .line 2179
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2181
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2184
    const-string v2, "activity_manager"

    .line 2186
    const-string/jumbo v4, "max_empty_time_millis"

    .line 2189
    const-wide v10, 0xd693a400L

    .line 2194
    invoke-static {v2, v4, v10, v11}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 2197
    move-result-wide v4

    .line 2198
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    .line 2200
    goto/16 :goto_e

    .line 2202
    :pswitch_28
    const/4 v9, -0x1

    .line 2203
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2205
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcesses()V

    .line 2208
    goto/16 :goto_e

    .line 2210
    :pswitch_29
    const/4 v9, -0x1

    .line 2211
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2213
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2216
    const-string v2, "activity_manager"

    .line 2218
    const-string/jumbo v4, "force_bg_check_on_restricted"

    .line 2221
    invoke-static {v2, v4, v7}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2224
    move-result v2

    .line 2225
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

    .line 2227
    goto/16 :goto_e

    .line 2229
    :pswitch_2a
    const/4 v9, -0x1

    .line 2230
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2232
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2235
    const-string v2, "activity_manager"

    .line 2237
    const-string/jumbo v4, "default_background_fgs_starts_restriction_enabled"

    .line 2240
    invoke-static {v2, v4, v7}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2243
    move-result v2

    .line 2244
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    .line 2246
    goto/16 :goto_e

    .line 2248
    :pswitch_2b
    const/4 v9, -0x1

    .line 2249
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2251
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2254
    const-string v2, "activity_manager"

    .line 2256
    const-string/jumbo v4, "short_fgs_timeout_duration"

    .line 2259
    const-wide/32 v10, 0x2bf20

    .line 2262
    invoke-static {v2, v4, v10, v11}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 2265
    move-result-wide v4

    .line 2266
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsTimeoutDuration:J

    .line 2268
    goto/16 :goto_e

    .line 2270
    :pswitch_2c
    const/4 v9, -0x1

    .line 2271
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2273
    iget v2, v1, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    .line 2275
    const-string v4, "activity_manager"

    .line 2277
    const-string/jumbo v5, "max_phantom_processes"

    .line 2280
    const/16 v12, 0x20

    .line 2282
    invoke-static {v4, v5, v12}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 2285
    move-result v4

    .line 2286
    iput v4, v1, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    .line 2288
    if-le v2, v4, :cond_57

    .line 2290
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2292
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 2294
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPhantomProcessList:Lcom/android/server/am/PhantomProcessList;

    .line 2296
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2299
    new-instance v4, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda1;

    .line 2301
    invoke-direct {v4, v1}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/PhantomProcessList;)V

    .line 2304
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2307
    :cond_57
    :goto_10
    const/16 v4, 0x3a

    .line 2309
    const/4 v5, 0x2

    .line 2310
    goto/16 :goto_2

    .line 2312
    :pswitch_2d
    const/4 v9, -0x1

    .line 2313
    const/16 v12, 0x20

    .line 2315
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2317
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2320
    const-string v5, "activity_manager"

    .line 2322
    const-string/jumbo v10, "deferred_fgs_notification_interval"

    .line 2325
    invoke-static {v5, v10, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 2328
    move-result-wide v1

    .line 2329
    iput-wide v1, v4, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralInterval:J

    .line 2331
    goto :goto_10

    .line 2332
    :pswitch_2e
    const/4 v9, -0x1

    .line 2333
    const/16 v12, 0x20

    .line 2335
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2337
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2340
    const-string v1, "activity_manager"

    .line 2342
    const-string/jumbo v2, "max_previous_time"

    .line 2345
    const-wide/32 v4, 0xea60

    .line 2348
    invoke-static {v1, v2, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 2351
    move-result-wide v1

    .line 2352
    sput-wide v1, Lcom/android/server/am/ActivityManagerConstants;->MAX_PREVIOUS_TIME:J

    .line 2354
    goto :goto_10

    .line 2355
    :pswitch_2f
    const/4 v9, -0x1

    .line 2356
    const/16 v12, 0x20

    .line 2358
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2360
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2363
    const-string v2, "activity_manager"

    .line 2365
    const-string/jumbo v4, "oomadj_update_policy"

    .line 2368
    invoke-static {v2, v4, v7}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 2371
    move-result v2

    .line 2372
    if-ne v2, v7, :cond_58

    .line 2374
    move v2, v7

    .line 2375
    goto :goto_11

    .line 2376
    :cond_58
    move v2, v6

    .line 2377
    :goto_11
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    .line 2379
    goto :goto_10

    .line 2380
    :pswitch_30
    const/4 v9, -0x1

    .line 2381
    const/16 v12, 0x20

    .line 2383
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2385
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2388
    const-string v2, "activity_manager"

    .line 2390
    const-string/jumbo v4, "fg_to_bg_fgs_grace_duration"

    .line 2393
    invoke-static {v2, v4, v10, v11}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 2396
    move-result-wide v4

    .line 2397
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgToBgFgsGraceDuration:J

    .line 2399
    goto :goto_10

    .line 2400
    :pswitch_31
    const/4 v9, -0x1

    .line 2401
    const/16 v12, 0x20

    .line 2403
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2405
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2408
    const-string v2, "activity_manager"

    .line 2410
    const-string/jumbo v4, "max_service_connections_per_process"

    .line 2413
    const/16 v5, 0xbb8

    .line 2415
    invoke-static {v2, v4, v5}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 2418
    move-result v2

    .line 2419
    iput v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mMaxServiceConnectionsPerProcess:I

    .line 2421
    goto :goto_10

    .line 2422
    :pswitch_32
    const/4 v9, -0x1

    .line 2423
    const/16 v12, 0x20

    .line 2425
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2427
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2430
    const-string v2, "activity_manager"

    .line 2432
    const-string/jumbo v4, "deferred_fgs_notification_exclusion_time_for_short"

    .line 2435
    const-wide/32 v10, 0x1d4c0

    .line 2438
    invoke-static {v2, v4, v10, v11}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 2441
    move-result-wide v4

    .line 2442
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTimeForShort:J

    .line 2444
    goto/16 :goto_10

    .line 2446
    :pswitch_33
    const/4 v9, -0x1

    .line 2447
    const/16 v12, 0x20

    .line 2449
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2451
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2454
    const-string v2, "activity_manager"

    .line 2456
    const-string/jumbo v4, "fgs_start_denied_log_sample_rate"

    .line 2459
    const/high16 v5, 0x3f800000    # 1.0f

    .line 2461
    invoke-static {v2, v4, v5}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 2464
    move-result v2

    .line 2465
    iput v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartDeniedLogSampleRate:F

    .line 2467
    goto/16 :goto_10

    .line 2469
    :pswitch_34
    const/4 v9, -0x1

    .line 2470
    const/16 v12, 0x20

    .line 2472
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2474
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2477
    const-string v2, "activity_manager"

    .line 2479
    const-string/jumbo v4, "fgs_allow_opt_out"

    .line 2482
    invoke-static {v2, v4, v6}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2485
    move-result v2

    .line 2486
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsAllowOptOut:Z

    .line 2488
    goto/16 :goto_10

    .line 2490
    :pswitch_35
    const/4 v9, -0x1

    .line 2491
    const/16 v12, 0x20

    .line 2493
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2495
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2498
    const-string v2, "activity_manager"

    .line 2500
    const-string/jumbo v4, "default_background_activity_starts_enabled"

    .line 2503
    invoke-static {v2, v4, v6}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2506
    move-result v2

    .line 2507
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundActivityStartsEnabled:Z

    .line 2509
    goto/16 :goto_10

    .line 2511
    :pswitch_36
    const/4 v9, -0x1

    .line 2512
    const/16 v12, 0x20

    .line 2514
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2516
    iget-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherEnabled:Z

    .line 2518
    const-string v4, "activity_manager"

    .line 2520
    const-string/jumbo v5, "binder_heavy_hitter_watcher_enabled"

    .line 2523
    invoke-static {v4, v5, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2526
    move-result v2

    .line 2527
    sput-boolean v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z

    .line 2529
    const-string/jumbo v2, "binder_heavy_hitter_watcher_batchsize"

    .line 2532
    iget v5, v1, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherBatchSize:I

    .line 2534
    invoke-static {v4, v2, v5}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 2537
    move-result v2

    .line 2538
    sput v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:I

    .line 2540
    const-string/jumbo v2, "binder_heavy_hitter_watcher_threshold"

    .line 2543
    iget v5, v1, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherThreshold:F

    .line 2545
    invoke-static {v4, v2, v5}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 2548
    move-result v2

    .line 2549
    sput v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

    .line 2551
    const-string/jumbo v2, "binder_heavy_hitter_auto_sampler_enabled"

    .line 2554
    iget-boolean v5, v1, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerEnabled:Z

    .line 2556
    invoke-static {v4, v2, v5}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2559
    move-result v2

    .line 2560
    sput-boolean v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z

    .line 2562
    const-string/jumbo v2, "binder_heavy_hitter_auto_sampler_batchsize"

    .line 2565
    iget v5, v1, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerBatchSize:I

    .line 2567
    invoke-static {v4, v2, v5}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 2570
    move-result v2

    .line 2571
    sput v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I

    .line 2573
    const-string/jumbo v2, "binder_heavy_hitter_auto_sampler_threshold"

    .line 2576
    iget v5, v1, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerThreshold:F

    .line 2578
    invoke-static {v4, v2, v5}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 2581
    move-result v2

    .line 2582
    sput v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

    .line 2584
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2586
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 2588
    new-instance v4, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;

    .line 2590
    const/4 v5, 0x2

    .line 2591
    invoke-direct {v4, v1, v5}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/am/ActivityManagerService;I)V

    .line 2594
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2597
    goto :goto_12

    .line 2598
    :pswitch_37
    const/4 v5, 0x2

    .line 2599
    const/4 v9, -0x1

    .line 2600
    const/16 v12, 0x20

    .line 2602
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2604
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2607
    const-string v2, "activity_manager"

    .line 2609
    const-string/jumbo v4, "service_start_foreground_anr_delay_ms"

    .line 2612
    const/16 v10, 0x2710

    .line 2614
    invoke-static {v2, v4, v10}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 2617
    move-result v2

    .line 2618
    iput v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundAnrDelayMs:I

    .line 2620
    goto :goto_12

    .line 2621
    :pswitch_38
    const/4 v5, 0x2

    .line 2622
    const/4 v9, -0x1

    .line 2623
    const/16 v12, 0x20

    .line 2625
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2627
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2630
    const-string v2, "activity_manager"

    .line 2632
    const-string/jumbo v4, "default_fgs_starts_restriction_enabled"

    .line 2635
    invoke-static {v2, v4, v7}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2638
    move-result v2

    .line 2639
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsStartRestrictionEnabled:Z

    .line 2641
    goto :goto_12

    .line 2642
    :pswitch_39
    const/4 v5, 0x2

    .line 2643
    const/4 v9, -0x1

    .line 2644
    const/16 v12, 0x20

    .line 2646
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2648
    iget-wide v10, v1, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    .line 2650
    const-string v2, "activity_manager"

    .line 2652
    const-string/jumbo v4, "kill_bg_restricted_cached_idle_settle_time"

    .line 2655
    const-wide/32 v13, 0xea60

    .line 2658
    invoke-static {v2, v4, v13, v14}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 2661
    move-result-wide v13

    .line 2662
    iput-wide v13, v1, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    .line 2664
    iget-wide v13, v1, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    .line 2666
    cmp-long v2, v13, v10

    .line 2668
    if-gez v2, :cond_59

    .line 2670
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2672
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 2674
    iget-wide v10, v1, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    .line 2676
    const/16 v4, 0x3a

    .line 2678
    invoke-virtual {v2, v4, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2681
    goto/16 :goto_2

    .line 2683
    :cond_59
    :goto_12
    const/16 v4, 0x3a

    .line 2685
    goto/16 :goto_2

    .line 2687
    :pswitch_3a
    const/16 v4, 0x3a

    .line 2689
    const/4 v5, 0x2

    .line 2690
    const/4 v9, -0x1

    .line 2691
    const/16 v12, 0x20

    .line 2693
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2695
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2698
    const-string v11, "activity_manager"

    .line 2700
    const-string/jumbo v13, "short_fgs_anr_extra_wait_duration"

    .line 2703
    invoke-static {v11, v13, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 2706
    move-result-wide v1

    .line 2707
    iput-wide v1, v10, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsAnrExtraWaitDuration:J

    .line 2709
    goto/16 :goto_2

    .line 2711
    :pswitch_3b
    const/16 v4, 0x3a

    .line 2713
    const/4 v5, 0x2

    .line 2714
    const/4 v9, -0x1

    .line 2715
    const/16 v12, 0x20

    .line 2717
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2719
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    .line 2721
    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 2724
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    .line 2726
    iget-object v10, v1, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptPackages:Ljava/util/List;

    .line 2728
    invoke-virtual {v2, v10}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 2731
    const-string v2, "activity_manager"

    .line 2733
    const-string/jumbo v10, "imperceptible_kill_exempt_packages"

    .line 2736
    invoke-static {v2, v10, v15}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2739
    move-result-object v10

    .line 2740
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2743
    move-result v11

    .line 2744
    const-string v13, ","

    .line 2746
    if-nez v11, :cond_5a

    .line 2748
    iget-object v11, v1, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    .line 2750
    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 2753
    move-result-object v10

    .line 2754
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2757
    move-result-object v10

    .line 2758
    invoke-virtual {v11, v10}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 2761
    :cond_5a
    iget-object v10, v1, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    .line 2763
    invoke-virtual {v10}, Landroid/util/ArraySet;->clear()V

    .line 2766
    iget-object v10, v1, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    .line 2768
    iget-object v11, v1, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptProcStates:Ljava/util/List;

    .line 2770
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 2773
    const-string/jumbo v10, "imperceptible_kill_exempt_proc_states"

    .line 2776
    invoke-static {v2, v10, v15}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2779
    move-result-object v2

    .line 2780
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2783
    move-result v10

    .line 2784
    if-nez v10, :cond_3

    .line 2786
    invoke-virtual {v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 2789
    move-result-object v2

    .line 2790
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2793
    move-result-object v2

    .line 2794
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 2797
    move-result-object v2

    .line 2798
    new-instance v10, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda2;

    .line 2800
    invoke-direct {v10, v1}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 2803
    invoke-interface {v2, v10}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 2806
    goto/16 :goto_2

    .line 2808
    :cond_5b
    :goto_13
    return-void

    .line 2809
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 2815
    :sswitch_data_0
    .sparse-switch
        -0x7ba4b562 -> :sswitch_41
        -0x798468db -> :sswitch_40
        -0x76fa06f8 -> :sswitch_3f
        -0x719878d5 -> :sswitch_3e
        -0x71781c6f -> :sswitch_3d
        -0x6d209d2c -> :sswitch_3c
        -0x6a37b8d0 -> :sswitch_3b
        -0x62f6cce1 -> :sswitch_3a
        -0x61c0c900 -> :sswitch_39
        -0x5f5f6d14 -> :sswitch_38
        -0x58658d02 -> :sswitch_37
        -0x569d8d6f -> :sswitch_36
        -0x53dc231d -> :sswitch_35
        -0x4f213486 -> :sswitch_34
        -0x4db39f74 -> :sswitch_33
        -0x48c35170 -> :sswitch_32
        -0x4852209e -> :sswitch_31
        -0x476d69e0 -> :sswitch_30
        -0x47037762 -> :sswitch_2f
        -0x41254a05 -> :sswitch_2e
        -0x3eef3615 -> :sswitch_2d
        -0x3daa35b2 -> :sswitch_2c
        -0x397974d2 -> :sswitch_2b
        -0x3099a4da -> :sswitch_2a
        -0x2ddb96b0 -> :sswitch_29
        -0x2b65dd00 -> :sswitch_28
        -0x28b1facc -> :sswitch_27
        -0x226e8ce7 -> :sswitch_26
        -0x1f869333 -> :sswitch_25
        -0x1ac3af47 -> :sswitch_24
        -0x13aa2fbd -> :sswitch_23
        -0x116849e6 -> :sswitch_22
        -0xf17951c -> :sswitch_21
        -0xd5a912d -> :sswitch_20
        -0xceeb9d0 -> :sswitch_1f
        -0x502f0de -> :sswitch_1e
        -0x2e7b9c6 -> :sswitch_1d
        -0xa23b96 -> :sswitch_1c
        0x14ce72d -> :sswitch_1b
        0x47243c9 -> :sswitch_1a
        0x61ee68b -> :sswitch_19
        0xa61fe73 -> :sswitch_18
        0x105030a5 -> :sswitch_17
        0x257a0925 -> :sswitch_16
        0x34db0a33 -> :sswitch_15
        0x350b53bb -> :sswitch_14
        0x39ca177c -> :sswitch_13
        0x425eee10 -> :sswitch_12
        0x45611472 -> :sswitch_11
        0x477b2286 -> :sswitch_10
        0x49dfc388 -> :sswitch_f
        0x4d171cd0 -> :sswitch_e
        0x4f9e4f36 -> :sswitch_d
        0x50949369 -> :sswitch_c
        0x524459dd -> :sswitch_b
        0x5611b47e -> :sswitch_a
        0x58bdb2f7 -> :sswitch_9
        0x59f1b6c6 -> :sswitch_8
        0x59fe4888 -> :sswitch_7
        0x5e055050 -> :sswitch_6
        0x5f40529e -> :sswitch_5
        0x60f0152f -> :sswitch_4
        0x6fb61593 -> :sswitch_3
        0x710abd04 -> :sswitch_2
        0x7805f2e7 -> :sswitch_1
        0x7bd2ee58 -> :sswitch_0
    .end sparse-switch

    .line 3081
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_36
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_3b
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_36
        :pswitch_16
        :pswitch_36
        :pswitch_3
        :pswitch_2
        :pswitch_36
        :pswitch_1
        :pswitch_36
    .end packed-switch
.end method
