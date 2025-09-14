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

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v3, 0x6

    .line 4
    const/4 v6, 0x0

    .line 5
    const/4 v7, 0x1

    .line 6
    iget v8, v0, Lcom/android/server/am/ActivityManagerConstants$1;->$r8$classId:I

    .line 7
    .line 8
    packed-switch v8, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const-string/jumbo v3, "enable_experimental_component_alias"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    const-string/jumbo v3, "component_alias_overrides"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    const-string/jumbo v3, "enable_experimental_component_alias"

    .line 59
    .line 60
    .line 61
    const-string v4, "activity_manager_ca"

    .line 62
    .line 63
    invoke-static {v4, v3, v6}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerConstants;->mEnableComponentAlias:Z

    .line 68
    .line 69
    const-string/jumbo v3, "component_alias_overrides"

    .line 70
    .line 71
    .line 72
    const-string v5, ""

    .line 73
    .line 74
    invoke-static {v4, v3, v5}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    iput-object v3, v2, Lcom/android/server/am/ActivityManagerConstants;->mComponentAliasOverrides:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v3, v2, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 81
    .line 82
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mComponentAliasResolver:Lcom/android/server/am/ComponentAliasResolver;

    .line 83
    .line 84
    iget-boolean v4, v2, Lcom/android/server/am/ActivityManagerConstants;->mEnableComponentAlias:Z

    .line 85
    .line 86
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerConstants;->mComponentAliasOverrides:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/ComponentAliasResolver;->update(Ljava/lang/String;Z)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    :goto_1
    return-void

    .line 93
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    if-eqz v9, :cond_5b

    .line 106
    .line 107
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    check-cast v9, Ljava/lang/String;

    .line 112
    .line 113
    if-nez v9, :cond_4

    .line 114
    .line 115
    goto/16 :goto_13

    .line 116
    .line 117
    :cond_4
    const-wide/16 v10, 0x1388

    .line 118
    .line 119
    const-wide/32 v4, 0x1499700

    .line 120
    .line 121
    .line 122
    const/4 v15, 0x0

    .line 123
    const-wide/16 v12, 0x3a98

    .line 124
    .line 125
    const-wide/16 v1, 0x2710

    .line 126
    .line 127
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 128
    .line 129
    .line 130
    move-result v14

    .line 131
    sparse-switch v14, :sswitch_data_0

    .line 132
    .line 133
    .line 134
    :goto_3
    const/4 v14, -0x1

    .line 135
    goto/16 :goto_4

    .line 136
    .line 137
    :sswitch_0
    const-string/jumbo v14, "binder_heavy_hitter_auto_sampler_batchsize"

    .line 138
    .line 139
    .line 140
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v14

    .line 144
    if-nez v14, :cond_5

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_5
    const/16 v14, 0x41

    .line 148
    .line 149
    goto/16 :goto_4

    .line 150
    .line 151
    :sswitch_1
    const-string/jumbo v14, "service_bind_almost_perceptible_timeout_ms"

    .line 152
    .line 153
    .line 154
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v14

    .line 158
    if-nez v14, :cond_6

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_6
    const/16 v14, 0x40

    .line 162
    .line 163
    goto/16 :goto_4

    .line 164
    .line 165
    :sswitch_2
    const-string/jumbo v14, "binder_heavy_hitter_watcher_threshold"

    .line 166
    .line 167
    .line 168
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v14

    .line 172
    if-nez v14, :cond_7

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_7
    const/16 v14, 0x3f

    .line 176
    .line 177
    goto/16 :goto_4

    .line 178
    .line 179
    :sswitch_3
    const-string/jumbo v14, "deferred_fgs_notification_interval_for_short"

    .line 180
    .line 181
    .line 182
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v14

    .line 186
    if-nez v14, :cond_8

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_8
    const/16 v14, 0x3e

    .line 190
    .line 191
    goto/16 :goto_4

    .line 192
    .line 193
    :sswitch_4
    const-string/jumbo v14, "fgs_start_foreground_timeout"

    .line 194
    .line 195
    .line 196
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v14

    .line 200
    if-nez v14, :cond_9

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_9
    const/16 v14, 0x3d

    .line 204
    .line 205
    goto/16 :goto_4

    .line 206
    .line 207
    :sswitch_5
    const-string/jumbo v14, "binder_heavy_hitter_auto_sampler_enabled"

    .line 208
    .line 209
    .line 210
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v14

    .line 214
    if-nez v14, :cond_a

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_a
    const/16 v14, 0x3c

    .line 218
    .line 219
    goto/16 :goto_4

    .line 220
    .line 221
    :sswitch_6
    const-string/jumbo v14, "use_tiered_cached_adj"

    .line 222
    .line 223
    .line 224
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v14

    .line 228
    if-nez v14, :cond_b

    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_b
    const/16 v14, 0x3b

    .line 232
    .line 233
    goto/16 :goto_4

    .line 234
    .line 235
    :sswitch_7
    const-string/jumbo v14, "binder_heavy_hitter_auto_sampler_threshold"

    .line 236
    .line 237
    .line 238
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v14

    .line 242
    if-nez v14, :cond_c

    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_c
    const/16 v14, 0x3a

    .line 246
    .line 247
    goto/16 :goto_4

    .line 248
    .line 249
    :sswitch_8
    const-string/jumbo v14, "proc_state_debug_uids"

    .line 250
    .line 251
    .line 252
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v14

    .line 256
    if-nez v14, :cond_d

    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_d
    const/16 v14, 0x39

    .line 260
    .line 261
    goto/16 :goto_4

    .line 262
    .line 263
    :sswitch_9
    const-string/jumbo v14, "follow_up_oomadj_update_wait_duration"

    .line 264
    .line 265
    .line 266
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v14

    .line 270
    if-nez v14, :cond_e

    .line 271
    .line 272
    goto/16 :goto_3

    .line 273
    .line 274
    :cond_e
    const/16 v14, 0x38

    .line 275
    .line 276
    goto/16 :goto_4

    .line 277
    .line 278
    :sswitch_a
    const-string/jumbo v14, "enable_wait_for_finish_attach_application"

    .line 279
    .line 280
    .line 281
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v14

    .line 285
    if-nez v14, :cond_f

    .line 286
    .line 287
    goto/16 :goto_3

    .line 288
    .line 289
    :cond_f
    const/16 v14, 0x37

    .line 290
    .line 291
    goto/16 :goto_4

    .line 292
    .line 293
    :sswitch_b
    const-string/jumbo v14, "deferred_fgs_notifications_enabled"

    .line 294
    .line 295
    .line 296
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v14

    .line 300
    if-nez v14, :cond_10

    .line 301
    .line 302
    goto/16 :goto_3

    .line 303
    .line 304
    :cond_10
    const/16 v14, 0x36

    .line 305
    .line 306
    goto/16 :goto_4

    .line 307
    .line 308
    :sswitch_c
    const-string/jumbo v14, "extra_delay_svc_restart_mem_pressure"

    .line 309
    .line 310
    .line 311
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v14

    .line 315
    if-nez v14, :cond_11

    .line 316
    .line 317
    goto/16 :goto_3

    .line 318
    .line 319
    :cond_11
    const/16 v14, 0x35

    .line 320
    .line 321
    goto/16 :goto_4

    .line 322
    .line 323
    :sswitch_d
    const-string/jumbo v14, "disable_app_profiler_pss_profiling"

    .line 324
    .line 325
    .line 326
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v14

    .line 330
    if-nez v14, :cond_12

    .line 331
    .line 332
    goto/16 :goto_3

    .line 333
    .line 334
    :cond_12
    const/16 v14, 0x34

    .line 335
    .line 336
    goto/16 :goto_4

    .line 337
    .line 338
    :sswitch_e
    const-string/jumbo v14, "media_processing_fgs_timeout_duration"

    .line 339
    .line 340
    .line 341
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v14

    .line 345
    if-nez v14, :cond_13

    .line 346
    .line 347
    goto/16 :goto_3

    .line 348
    .line 349
    :cond_13
    const/16 v14, 0x33

    .line 350
    .line 351
    goto/16 :goto_4

    .line 352
    .line 353
    :sswitch_f
    const-string/jumbo v14, "short_fgs_proc_state_extra_wait_duration"

    .line 354
    .line 355
    .line 356
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v14

    .line 360
    if-nez v14, :cond_14

    .line 361
    .line 362
    goto/16 :goto_3

    .line 363
    .line 364
    :cond_14
    const/16 v14, 0x32

    .line 365
    .line 366
    goto/16 :goto_4

    .line 367
    .line 368
    :sswitch_10
    const-string/jumbo v14, "kill_bg_restricted_cached_idle"

    .line 369
    .line 370
    .line 371
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v14

    .line 375
    if-nez v14, :cond_15

    .line 376
    .line 377
    goto/16 :goto_3

    .line 378
    .line 379
    :cond_15
    const/16 v14, 0x31

    .line 380
    .line 381
    goto/16 :goto_4

    .line 382
    .line 383
    :sswitch_11
    const-string/jumbo v14, "boot_time_temp_allowlist_duration"

    .line 384
    .line 385
    .line 386
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v14

    .line 390
    if-nez v14, :cond_16

    .line 391
    .line 392
    goto/16 :goto_3

    .line 393
    .line 394
    :cond_16
    const/16 v14, 0x30

    .line 395
    .line 396
    goto/16 :goto_4

    .line 397
    .line 398
    :sswitch_12
    const-string/jumbo v14, "low_swap_threshold_percent"

    .line 399
    .line 400
    .line 401
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v14

    .line 405
    if-nez v14, :cond_17

    .line 406
    .line 407
    goto/16 :goto_3

    .line 408
    .line 409
    :cond_17
    const/16 v14, 0x2f

    .line 410
    .line 411
    goto/16 :goto_4

    .line 412
    .line 413
    :sswitch_13
    const-string/jumbo v14, "fg_to_bg_fgs_grace_duration"

    .line 414
    .line 415
    .line 416
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v14

    .line 420
    if-nez v14, :cond_18

    .line 421
    .line 422
    goto/16 :goto_3

    .line 423
    .line 424
    :cond_18
    const/16 v14, 0x2e

    .line 425
    .line 426
    goto/16 :goto_4

    .line 427
    .line 428
    :sswitch_14
    const-string/jumbo v14, "no_kill_cached_processes_until_boot_completed"

    .line 429
    .line 430
    .line 431
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v14

    .line 435
    if-nez v14, :cond_19

    .line 436
    .line 437
    goto/16 :goto_3

    .line 438
    .line 439
    :cond_19
    const/16 v14, 0x2d

    .line 440
    .line 441
    goto/16 :goto_4

    .line 442
    .line 443
    :sswitch_15
    const-string/jumbo v14, "default_fgs_starts_restriction_check_caller_target_sdk"

    .line 444
    .line 445
    .line 446
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v14

    .line 450
    if-nez v14, :cond_1a

    .line 451
    .line 452
    goto/16 :goto_3

    .line 453
    .line 454
    :cond_1a
    const/16 v14, 0x2c

    .line 455
    .line 456
    goto/16 :goto_4

    .line 457
    .line 458
    :sswitch_16
    const-string/jumbo v14, "deferred_fgs_notification_exclusion_time"

    .line 459
    .line 460
    .line 461
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v14

    .line 465
    if-nez v14, :cond_1b

    .line 466
    .line 467
    goto/16 :goto_3

    .line 468
    .line 469
    :cond_1b
    const/16 v14, 0x2b

    .line 470
    .line 471
    goto/16 :goto_4

    .line 472
    .line 473
    :sswitch_17
    const-string/jumbo v14, "enable_extra_delay_svc_restart_mem_pressure"

    .line 474
    .line 475
    .line 476
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    move-result v14

    .line 480
    if-nez v14, :cond_1c

    .line 481
    .line 482
    goto/16 :goto_3

    .line 483
    .line 484
    :cond_1c
    const/16 v14, 0x2a

    .line 485
    .line 486
    goto/16 :goto_4

    .line 487
    .line 488
    :sswitch_18
    const-string/jumbo v14, "system_exempt_power_restrictions_enabled"

    .line 489
    .line 490
    .line 491
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    move-result v14

    .line 495
    if-nez v14, :cond_1d

    .line 496
    .line 497
    goto/16 :goto_3

    .line 498
    .line 499
    :cond_1d
    const/16 v14, 0x29

    .line 500
    .line 501
    goto/16 :goto_4

    .line 502
    .line 503
    :sswitch_19
    const-string/jumbo v14, "proactive_kills_enabled"

    .line 504
    .line 505
    .line 506
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    move-result v14

    .line 510
    if-nez v14, :cond_1e

    .line 511
    .line 512
    goto/16 :goto_3

    .line 513
    .line 514
    :cond_1e
    const/16 v14, 0x28

    .line 515
    .line 516
    goto/16 :goto_4

    .line 517
    .line 518
    :sswitch_1a
    const-string/jumbo v14, "tiered_cached_adj_decay_time"

    .line 519
    .line 520
    .line 521
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    move-result v14

    .line 525
    if-nez v14, :cond_1f

    .line 526
    .line 527
    goto/16 :goto_3

    .line 528
    .line 529
    :cond_1f
    const/16 v14, 0x27

    .line 530
    .line 531
    goto/16 :goto_4

    .line 532
    .line 533
    :sswitch_1b
    const-string/jumbo v14, "defer_boot_completed_broadcast"

    .line 534
    .line 535
    .line 536
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    move-result v14

    .line 540
    if-nez v14, :cond_20

    .line 541
    .line 542
    goto/16 :goto_3

    .line 543
    .line 544
    :cond_20
    const/16 v14, 0x26

    .line 545
    .line 546
    goto/16 :goto_4

    .line 547
    .line 548
    :sswitch_1c
    const-string/jumbo v14, "fgs_crash_extra_wait_duration"

    .line 549
    .line 550
    .line 551
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 552
    .line 553
    .line 554
    move-result v14

    .line 555
    if-nez v14, :cond_21

    .line 556
    .line 557
    goto/16 :goto_3

    .line 558
    .line 559
    :cond_21
    const/16 v14, 0x25

    .line 560
    .line 561
    goto/16 :goto_4

    .line 562
    .line 563
    :sswitch_1d
    const-string/jumbo v14, "imperceptible_kill_exempt_packages"

    .line 564
    .line 565
    .line 566
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    move-result v14

    .line 570
    if-nez v14, :cond_22

    .line 571
    .line 572
    goto/16 :goto_3

    .line 573
    .line 574
    :cond_22
    const/16 v14, 0x24

    .line 575
    .line 576
    goto/16 :goto_4

    .line 577
    .line 578
    :sswitch_1e
    const-string/jumbo v14, "top_to_fgs_grace_duration"

    .line 579
    .line 580
    .line 581
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    move-result v14

    .line 585
    if-nez v14, :cond_23

    .line 586
    .line 587
    goto/16 :goto_3

    .line 588
    .line 589
    :cond_23
    const/16 v14, 0x23

    .line 590
    .line 591
    goto/16 :goto_4

    .line 592
    .line 593
    :sswitch_1f
    const-string/jumbo v14, "deferred_fgs_notifications_api_gated"

    .line 594
    .line 595
    .line 596
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    move-result v14

    .line 600
    if-nez v14, :cond_24

    .line 601
    .line 602
    goto/16 :goto_3

    .line 603
    .line 604
    :cond_24
    const/16 v14, 0x22

    .line 605
    .line 606
    goto/16 :goto_4

    .line 607
    .line 608
    :sswitch_20
    const-string/jumbo v14, "no_kill_cached_processes_post_boot_completed_duration_millis"

    .line 609
    .line 610
    .line 611
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 612
    .line 613
    .line 614
    move-result v14

    .line 615
    if-nez v14, :cond_25

    .line 616
    .line 617
    goto/16 :goto_3

    .line 618
    .line 619
    :cond_25
    const/16 v14, 0x21

    .line 620
    .line 621
    goto/16 :goto_4

    .line 622
    .line 623
    :sswitch_21
    const-string/jumbo v14, "push_messaging_over_quota_behavior"

    .line 624
    .line 625
    .line 626
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 627
    .line 628
    .line 629
    move-result v14

    .line 630
    if-nez v14, :cond_26

    .line 631
    .line 632
    goto/16 :goto_3

    .line 633
    .line 634
    :cond_26
    const/16 v14, 0x20

    .line 635
    .line 636
    goto/16 :goto_4

    .line 637
    .line 638
    :sswitch_22
    const-string/jumbo v14, "binder_heavy_hitter_watcher_enabled"

    .line 639
    .line 640
    .line 641
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 642
    .line 643
    .line 644
    move-result v14

    .line 645
    if-nez v14, :cond_27

    .line 646
    .line 647
    goto/16 :goto_3

    .line 648
    .line 649
    :cond_27
    const/16 v14, 0x1f

    .line 650
    .line 651
    goto/16 :goto_4

    .line 652
    .line 653
    :sswitch_23
    const-string/jumbo v14, "default_fgs_starts_restriction_notification_enabled"

    .line 654
    .line 655
    .line 656
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    move-result v14

    .line 660
    if-nez v14, :cond_28

    .line 661
    .line 662
    goto/16 :goto_3

    .line 663
    .line 664
    :cond_28
    const/16 v14, 0x1e

    .line 665
    .line 666
    goto/16 :goto_4

    .line 667
    .line 668
    :sswitch_24
    const-string/jumbo v14, "fgs_start_allowed_log_sample_rate"

    .line 669
    .line 670
    .line 671
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    move-result v14

    .line 675
    if-nez v14, :cond_29

    .line 676
    .line 677
    goto/16 :goto_3

    .line 678
    .line 679
    :cond_29
    const/16 v14, 0x1d

    .line 680
    .line 681
    goto/16 :goto_4

    .line 682
    .line 683
    :sswitch_25
    const-string/jumbo v14, "pss_to_rss_threshold_modifier"

    .line 684
    .line 685
    .line 686
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 687
    .line 688
    .line 689
    move-result v14

    .line 690
    if-nez v14, :cond_2a

    .line 691
    .line 692
    goto/16 :goto_3

    .line 693
    .line 694
    :cond_2a
    const/16 v14, 0x1c

    .line 695
    .line 696
    goto/16 :goto_4

    .line 697
    .line 698
    :sswitch_26
    const-string/jumbo v14, "service_start_foreground_timeout_ms"

    .line 699
    .line 700
    .line 701
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 702
    .line 703
    .line 704
    move-result v14

    .line 705
    if-nez v14, :cond_2b

    .line 706
    .line 707
    goto/16 :goto_3

    .line 708
    .line 709
    :cond_2b
    const/16 v14, 0x1b

    .line 710
    .line 711
    goto/16 :goto_4

    .line 712
    .line 713
    :sswitch_27
    const-string/jumbo v14, "fgs_atom_sample_rate"

    .line 714
    .line 715
    .line 716
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 717
    .line 718
    .line 719
    move-result v14

    .line 720
    if-nez v14, :cond_2c

    .line 721
    .line 722
    goto/16 :goto_3

    .line 723
    .line 724
    :cond_2c
    const/16 v14, 0x1a

    .line 725
    .line 726
    goto/16 :goto_4

    .line 727
    .line 728
    :sswitch_28
    const-string/jumbo v14, "prioritize_alarm_broadcasts"

    .line 729
    .line 730
    .line 731
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 732
    .line 733
    .line 734
    move-result v14

    .line 735
    if-nez v14, :cond_2d

    .line 736
    .line 737
    goto/16 :goto_3

    .line 738
    .line 739
    :cond_2d
    const/16 v14, 0x19

    .line 740
    .line 741
    goto/16 :goto_4

    .line 742
    .line 743
    :sswitch_29
    const-string/jumbo v14, "process_kill_timeout"

    .line 744
    .line 745
    .line 746
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 747
    .line 748
    .line 749
    move-result v14

    .line 750
    if-nez v14, :cond_2e

    .line 751
    .line 752
    goto/16 :goto_3

    .line 753
    .line 754
    :cond_2e
    const/16 v14, 0x18

    .line 755
    .line 756
    goto/16 :goto_4

    .line 757
    .line 758
    :sswitch_2a
    const-string/jumbo v14, "min_assoc_log_duration"

    .line 759
    .line 760
    .line 761
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 762
    .line 763
    .line 764
    move-result v14

    .line 765
    if-nez v14, :cond_2f

    .line 766
    .line 767
    goto/16 :goto_3

    .line 768
    .line 769
    :cond_2f
    const/16 v14, 0x17

    .line 770
    .line 771
    goto/16 :goto_4

    .line 772
    .line 773
    :sswitch_2b
    const-string/jumbo v14, "network_access_timeout_ms"

    .line 774
    .line 775
    .line 776
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 777
    .line 778
    .line 779
    move-result v14

    .line 780
    if-nez v14, :cond_30

    .line 781
    .line 782
    goto/16 :goto_3

    .line 783
    .line 784
    :cond_30
    const/16 v14, 0x16

    .line 785
    .line 786
    goto/16 :goto_4

    .line 787
    .line 788
    :sswitch_2c
    const-string/jumbo v14, "data_sync_fgs_timeout_duration"

    .line 789
    .line 790
    .line 791
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 792
    .line 793
    .line 794
    move-result v14

    .line 795
    if-nez v14, :cond_31

    .line 796
    .line 797
    goto/16 :goto_3

    .line 798
    .line 799
    :cond_31
    const/16 v14, 0x15

    .line 800
    .line 801
    goto/16 :goto_4

    .line 802
    .line 803
    :sswitch_2d
    const-string/jumbo v14, "max_empty_time_millis"

    .line 804
    .line 805
    .line 806
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 807
    .line 808
    .line 809
    move-result v14

    .line 810
    if-nez v14, :cond_32

    .line 811
    .line 812
    goto/16 :goto_3

    .line 813
    .line 814
    :cond_32
    const/16 v14, 0x14

    .line 815
    .line 816
    goto/16 :goto_4

    .line 817
    .line 818
    :sswitch_2e
    const-string/jumbo v14, "max_cached_processes"

    .line 819
    .line 820
    .line 821
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 822
    .line 823
    .line 824
    move-result v14

    .line 825
    if-nez v14, :cond_33

    .line 826
    .line 827
    goto/16 :goto_3

    .line 828
    .line 829
    :cond_33
    const/16 v14, 0x13

    .line 830
    .line 831
    goto/16 :goto_4

    .line 832
    .line 833
    :sswitch_2f
    const-string/jumbo v14, "force_bg_check_on_restricted"

    .line 834
    .line 835
    .line 836
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 837
    .line 838
    .line 839
    move-result v14

    .line 840
    if-nez v14, :cond_34

    .line 841
    .line 842
    goto/16 :goto_3

    .line 843
    .line 844
    :cond_34
    const/16 v14, 0x12

    .line 845
    .line 846
    goto/16 :goto_4

    .line 847
    .line 848
    :sswitch_30
    const-string/jumbo v14, "default_background_fgs_starts_restriction_enabled"

    .line 849
    .line 850
    .line 851
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 852
    .line 853
    .line 854
    move-result v14

    .line 855
    if-nez v14, :cond_35

    .line 856
    .line 857
    goto/16 :goto_3

    .line 858
    .line 859
    :cond_35
    const/16 v14, 0x11

    .line 860
    .line 861
    goto/16 :goto_4

    .line 862
    .line 863
    :sswitch_31
    const-string/jumbo v14, "short_fgs_timeout_duration"

    .line 864
    .line 865
    .line 866
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 867
    .line 868
    .line 869
    move-result v14

    .line 870
    if-nez v14, :cond_36

    .line 871
    .line 872
    goto/16 :goto_3

    .line 873
    .line 874
    :cond_36
    const/16 v14, 0x10

    .line 875
    .line 876
    goto/16 :goto_4

    .line 877
    .line 878
    :sswitch_32
    const-string/jumbo v14, "max_phantom_processes"

    .line 879
    .line 880
    .line 881
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 882
    .line 883
    .line 884
    move-result v14

    .line 885
    if-nez v14, :cond_37

    .line 886
    .line 887
    goto/16 :goto_3

    .line 888
    .line 889
    :cond_37
    const/16 v14, 0xf

    .line 890
    .line 891
    goto/16 :goto_4

    .line 892
    .line 893
    :sswitch_33
    const-string/jumbo v14, "deferred_fgs_notification_interval"

    .line 894
    .line 895
    .line 896
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 897
    .line 898
    .line 899
    move-result v14

    .line 900
    if-nez v14, :cond_38

    .line 901
    .line 902
    goto/16 :goto_3

    .line 903
    .line 904
    :cond_38
    const/16 v14, 0xe

    .line 905
    .line 906
    goto/16 :goto_4

    .line 907
    .line 908
    :sswitch_34
    const-string/jumbo v14, "max_previous_time"

    .line 909
    .line 910
    .line 911
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 912
    .line 913
    .line 914
    move-result v14

    .line 915
    if-nez v14, :cond_39

    .line 916
    .line 917
    goto/16 :goto_3

    .line 918
    .line 919
    :cond_39
    const/16 v14, 0xd

    .line 920
    .line 921
    goto/16 :goto_4

    .line 922
    .line 923
    :sswitch_35
    const-string/jumbo v14, "oomadj_update_policy"

    .line 924
    .line 925
    .line 926
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 927
    .line 928
    .line 929
    move-result v14

    .line 930
    if-nez v14, :cond_3a

    .line 931
    .line 932
    goto/16 :goto_3

    .line 933
    .line 934
    :cond_3a
    const/16 v14, 0xc

    .line 935
    .line 936
    goto/16 :goto_4

    .line 937
    .line 938
    :sswitch_36
    const-string/jumbo v14, "vis_to_invis_uij_schedule_grace_duration"

    .line 939
    .line 940
    .line 941
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 942
    .line 943
    .line 944
    move-result v14

    .line 945
    if-nez v14, :cond_3b

    .line 946
    .line 947
    goto/16 :goto_3

    .line 948
    .line 949
    :cond_3b
    const/16 v14, 0xb

    .line 950
    .line 951
    goto/16 :goto_4

    .line 952
    .line 953
    :sswitch_37
    const-string/jumbo v14, "max_service_connections_per_process"

    .line 954
    .line 955
    .line 956
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 957
    .line 958
    .line 959
    move-result v14

    .line 960
    if-nez v14, :cond_3c

    .line 961
    .line 962
    goto/16 :goto_3

    .line 963
    .line 964
    :cond_3c
    const/16 v14, 0xa

    .line 965
    .line 966
    goto/16 :goto_4

    .line 967
    .line 968
    :sswitch_38
    const-string/jumbo v14, "deferred_fgs_notification_exclusion_time_for_short"

    .line 969
    .line 970
    .line 971
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 972
    .line 973
    .line 974
    move-result v14

    .line 975
    if-nez v14, :cond_3d

    .line 976
    .line 977
    goto/16 :goto_3

    .line 978
    .line 979
    :cond_3d
    const/16 v14, 0x9

    .line 980
    .line 981
    goto/16 :goto_4

    .line 982
    .line 983
    :sswitch_39
    const-string/jumbo v14, "fgs_start_denied_log_sample_rate"

    .line 984
    .line 985
    .line 986
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 987
    .line 988
    .line 989
    move-result v14

    .line 990
    if-nez v14, :cond_3e

    .line 991
    .line 992
    goto/16 :goto_3

    .line 993
    .line 994
    :cond_3e
    const/16 v14, 0x8

    .line 995
    .line 996
    goto/16 :goto_4

    .line 997
    .line 998
    :sswitch_3a
    const-string/jumbo v14, "fgs_allow_opt_out"

    .line 999
    .line 1000
    .line 1001
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1002
    .line 1003
    .line 1004
    move-result v14

    .line 1005
    if-nez v14, :cond_3f

    .line 1006
    .line 1007
    goto/16 :goto_3

    .line 1008
    .line 1009
    :cond_3f
    const/4 v14, 0x7

    .line 1010
    goto :goto_4

    .line 1011
    :sswitch_3b
    const-string/jumbo v14, "default_background_activity_starts_enabled"

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1015
    .line 1016
    .line 1017
    move-result v14

    .line 1018
    if-nez v14, :cond_40

    .line 1019
    .line 1020
    goto/16 :goto_3

    .line 1021
    .line 1022
    :cond_40
    move v14, v3

    .line 1023
    goto :goto_4

    .line 1024
    :sswitch_3c
    const-string/jumbo v14, "binder_heavy_hitter_watcher_batchsize"

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1028
    .line 1029
    .line 1030
    move-result v14

    .line 1031
    if-nez v14, :cond_41

    .line 1032
    .line 1033
    goto/16 :goto_3

    .line 1034
    .line 1035
    :cond_41
    const/4 v14, 0x5

    .line 1036
    goto :goto_4

    .line 1037
    :sswitch_3d
    const-string/jumbo v14, "service_start_foreground_anr_delay_ms"

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1041
    .line 1042
    .line 1043
    move-result v14

    .line 1044
    if-nez v14, :cond_42

    .line 1045
    .line 1046
    goto/16 :goto_3

    .line 1047
    .line 1048
    :cond_42
    const/4 v14, 0x4

    .line 1049
    goto :goto_4

    .line 1050
    :sswitch_3e
    const-string/jumbo v14, "default_fgs_starts_restriction_enabled"

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1054
    .line 1055
    .line 1056
    move-result v14

    .line 1057
    if-nez v14, :cond_43

    .line 1058
    .line 1059
    goto/16 :goto_3

    .line 1060
    .line 1061
    :cond_43
    const/4 v14, 0x3

    .line 1062
    goto :goto_4

    .line 1063
    :sswitch_3f
    const-string/jumbo v14, "kill_bg_restricted_cached_idle_settle_time"

    .line 1064
    .line 1065
    .line 1066
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1067
    .line 1068
    .line 1069
    move-result v14

    .line 1070
    if-nez v14, :cond_44

    .line 1071
    .line 1072
    goto/16 :goto_3

    .line 1073
    .line 1074
    :cond_44
    const/4 v14, 0x2

    .line 1075
    goto :goto_4

    .line 1076
    :sswitch_40
    const-string/jumbo v14, "short_fgs_anr_extra_wait_duration"

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1080
    .line 1081
    .line 1082
    move-result v14

    .line 1083
    if-nez v14, :cond_45

    .line 1084
    .line 1085
    goto/16 :goto_3

    .line 1086
    .line 1087
    :cond_45
    move v14, v7

    .line 1088
    goto :goto_4

    .line 1089
    :sswitch_41
    const-string/jumbo v14, "imperceptible_kill_exempt_proc_states"

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1093
    .line 1094
    .line 1095
    move-result v14

    .line 1096
    if-nez v14, :cond_46

    .line 1097
    .line 1098
    goto/16 :goto_3

    .line 1099
    .line 1100
    :cond_46
    move v14, v6

    .line 1101
    :goto_4
    packed-switch v14, :pswitch_data_1

    .line 1102
    .line 1103
    .line 1104
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1105
    .line 1106
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1107
    .line 1108
    .line 1109
    invoke-static {}, Landroid/app/ForegroundServiceTypePolicy;->getDefaultPolicy()Landroid/app/ForegroundServiceTypePolicy;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v1

    .line 1113
    invoke-virtual {v1, v9}, Landroid/app/ForegroundServiceTypePolicy;->updatePermissionEnforcementFlagIfNecessary(Ljava/lang/String;)V

    .line 1114
    .line 1115
    .line 1116
    :goto_5
    const/16 v4, 0x3a

    .line 1117
    .line 1118
    const/4 v5, 0x2

    .line 1119
    const/4 v9, -0x1

    .line 1120
    :goto_6
    const/16 v12, 0x20

    .line 1121
    .line 1122
    goto/16 :goto_2

    .line 1123
    .line 1124
    :pswitch_1
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1125
    .line 1126
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1127
    .line 1128
    .line 1129
    const-string v2, "activity_manager"

    .line 1130
    .line 1131
    const-string/jumbo v4, "service_bind_almost_perceptible_timeout_ms"

    .line 1132
    .line 1133
    .line 1134
    invoke-static {v2, v4, v12, v13}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 1135
    .line 1136
    .line 1137
    move-result-wide v4

    .line 1138
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mServiceBindAlmostPerceptibleTimeoutMs:J

    .line 1139
    .line 1140
    goto :goto_5

    .line 1141
    :pswitch_2
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1142
    .line 1143
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1144
    .line 1145
    .line 1146
    const-string v5, "activity_manager"

    .line 1147
    .line 1148
    const-string/jumbo v9, "deferred_fgs_notification_interval_for_short"

    .line 1149
    .line 1150
    .line 1151
    invoke-static {v5, v9, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 1152
    .line 1153
    .line 1154
    move-result-wide v1

    .line 1155
    iput-wide v1, v4, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralIntervalForShort:J

    .line 1156
    .line 1157
    goto :goto_5

    .line 1158
    :pswitch_3
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1159
    .line 1160
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1161
    .line 1162
    .line 1163
    const-string v5, "activity_manager"

    .line 1164
    .line 1165
    const-string/jumbo v9, "fgs_start_foreground_timeout"

    .line 1166
    .line 1167
    .line 1168
    invoke-static {v5, v9, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 1169
    .line 1170
    .line 1171
    move-result-wide v1

    .line 1172
    iput-wide v1, v4, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartForegroundTimeoutMs:J

    .line 1173
    .line 1174
    goto :goto_5

    .line 1175
    :pswitch_4
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1176
    .line 1177
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1178
    .line 1179
    .line 1180
    const-string v2, " in "

    .line 1181
    .line 1182
    const-string v4, "ActivityManagerConstants"

    .line 1183
    .line 1184
    const-string v5, ""

    .line 1185
    .line 1186
    const-string v9, "activity_manager"

    .line 1187
    .line 1188
    const-string/jumbo v10, "proc_state_debug_uids"

    .line 1189
    .line 1190
    .line 1191
    invoke-static {v9, v10, v5}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v5

    .line 1195
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v5

    .line 1199
    iput-boolean v6, v1, Lcom/android/server/am/ActivityManagerConstants;->mEnableProcStateStacktrace:Z

    .line 1200
    .line 1201
    iput v6, v1, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetProcStateDelay:I

    .line 1202
    .line 1203
    iput v6, v1, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetUidStateDelay:I

    .line 1204
    .line 1205
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 1206
    .line 1207
    .line 1208
    move-result v9

    .line 1209
    if-nez v9, :cond_47

    .line 1210
    .line 1211
    new-instance v2, Landroid/util/SparseBooleanArray;

    .line 1212
    .line 1213
    invoke-direct {v2, v6}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1214
    .line 1215
    .line 1216
    iput-object v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugUids:Landroid/util/SparseBooleanArray;

    .line 1217
    .line 1218
    goto :goto_5

    .line 1219
    :cond_47
    const-string v9, ","

    .line 1220
    .line 1221
    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v9

    .line 1225
    new-instance v10, Landroid/util/SparseBooleanArray;

    .line 1226
    .line 1227
    invoke-direct {v10, v6}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1228
    .line 1229
    .line 1230
    array-length v11, v9

    .line 1231
    move v12, v6

    .line 1232
    :goto_7
    if-ge v12, v11, :cond_4e

    .line 1233
    .line 1234
    aget-object v13, v9, v12

    .line 1235
    .line 1236
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 1237
    .line 1238
    .line 1239
    move-result v14

    .line 1240
    if-nez v14, :cond_48

    .line 1241
    .line 1242
    goto/16 :goto_9

    .line 1243
    .line 1244
    :cond_48
    const-string/jumbo v14, "stack"

    .line 1245
    .line 1246
    .line 1247
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1248
    .line 1249
    .line 1250
    move-result v14

    .line 1251
    if-eqz v14, :cond_49

    .line 1252
    .line 1253
    iput-boolean v7, v1, Lcom/android/server/am/ActivityManagerConstants;->mEnableProcStateStacktrace:Z

    .line 1254
    .line 1255
    goto :goto_9

    .line 1256
    :cond_49
    invoke-virtual {v13, v6}, Ljava/lang/String;->charAt(I)C

    .line 1257
    .line 1258
    .line 1259
    move-result v14

    .line 1260
    const/16 v15, 0x61

    .line 1261
    .line 1262
    if-gt v15, v14, :cond_4a

    .line 1263
    .line 1264
    const/16 v15, 0x7a

    .line 1265
    .line 1266
    if-gt v14, v15, :cond_4a

    .line 1267
    .line 1268
    invoke-virtual {v13, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1269
    .line 1270
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

    .line 1276
    .line 1277
    .line 1278
    move-result-object v16

    .line 1279
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1280
    .line 1281
    .line 1282
    move-result v13
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1283
    if-eqz v15, :cond_4b

    .line 1284
    .line 1285
    invoke-virtual {v10, v13, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1286
    .line 1287
    .line 1288
    goto :goto_9

    .line 1289
    :cond_4b
    const/16 v15, 0x70

    .line 1290
    .line 1291
    if-ne v14, v15, :cond_4c

    .line 1292
    .line 1293
    iput v13, v1, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetProcStateDelay:I

    .line 1294
    .line 1295
    goto :goto_9

    .line 1296
    :cond_4c
    const/16 v15, 0x75

    .line 1297
    .line 1298
    if-ne v14, v15, :cond_4d

    .line 1299
    .line 1300
    iput v13, v1, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetUidStateDelay:I

    .line 1301
    .line 1302
    goto :goto_9

    .line 1303
    :cond_4d
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1304
    .line 1305
    const-string v15, "Invalid prefix "

    .line 1306
    .line 1307
    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1308
    .line 1309
    .line 1310
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    .line 1315
    .line 1316
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    .line 1318
    .line 1319
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v13

    .line 1323
    invoke-static {v4, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    .line 1325
    .line 1326
    goto :goto_9

    .line 1327
    :catch_0
    new-instance v14, Ljava/lang/StringBuilder;

    .line 1328
    .line 1329
    const-string v15, "Invalid number "

    .line 1330
    .line 1331
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1332
    .line 1333
    .line 1334
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    .line 1336
    .line 1337
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    .line 1339
    .line 1340
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    .line 1342
    .line 1343
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v13

    .line 1347
    invoke-static {v4, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    .line 1349
    .line 1350
    :goto_9
    add-int/2addr v12, v7

    .line 1351
    goto :goto_7

    .line 1352
    :cond_4e
    iput-object v10, v1, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugUids:Landroid/util/SparseBooleanArray;

    .line 1353
    .line 1354
    goto/16 :goto_5

    .line 1355
    .line 1356
    :pswitch_5
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1357
    .line 1358
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1359
    .line 1360
    .line 1361
    const-string v2, "activity_manager"

    .line 1362
    .line 1363
    const-string/jumbo v4, "follow_up_oomadj_update_wait_duration"

    .line 1364
    .line 1365
    .line 1366
    const-wide/16 v9, 0x3e8

    .line 1367
    .line 1368
    invoke-static {v2, v4, v9, v10}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 1369
    .line 1370
    .line 1371
    move-result-wide v4

    .line 1372
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->FOLLOW_UP_OOMADJ_UPDATE_WAIT_DURATION:J

    .line 1373
    .line 1374
    goto/16 :goto_5

    .line 1375
    .line 1376
    :pswitch_6
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1377
    .line 1378
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1379
    .line 1380
    .line 1381
    const-string v2, "activity_manager"

    .line 1382
    .line 1383
    const-string/jumbo v4, "enable_wait_for_finish_attach_application"

    .line 1384
    .line 1385
    .line 1386
    invoke-static {v2, v4, v7}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1387
    .line 1388
    .line 1389
    move-result v2

    .line 1390
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mEnableWaitForFinishAttachApplication:Z

    .line 1391
    .line 1392
    goto/16 :goto_5

    .line 1393
    .line 1394
    :pswitch_7
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1395
    .line 1396
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1397
    .line 1398
    .line 1399
    const-string v2, "activity_manager"

    .line 1400
    .line 1401
    const-string/jumbo v4, "deferred_fgs_notifications_enabled"

    .line 1402
    .line 1403
    .line 1404
    invoke-static {v2, v4, v7}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1405
    .line 1406
    .line 1407
    move-result v2

    .line 1408
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralEnabled:Z

    .line 1409
    .line 1410
    goto/16 :goto_5

    .line 1411
    .line 1412
    :pswitch_8
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1413
    .line 1414
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1415
    .line 1416
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1417
    .line 1418
    .line 1419
    monitor-enter v2

    .line 1420
    :try_start_1
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1421
    .line 1422
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 1423
    .line 1424
    invoke-virtual {v4}, Lcom/android/server/am/AppProfiler;->getLastMemoryLevelLocked()I

    .line 1425
    .line 1426
    .line 1427
    move-result v4

    .line 1428
    iget-object v5, v1, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    .line 1429
    .line 1430
    const-string/jumbo v9, "extra_delay_svc_restart_mem_pressure"

    .line 1431
    .line 1432
    .line 1433
    sget-object v10, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:[J

    .line 1434
    .line 1435
    const-string v11, "activity_manager"

    .line 1436
    .line 1437
    invoke-static {v11, v9, v15}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v9

    .line 1441
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1442
    .line 1443
    .line 1444
    move-result v11

    .line 1445
    if-nez v11, :cond_50

    .line 1446
    .line 1447
    const-string v11, ","

    .line 1448
    .line 1449
    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1450
    .line 1451
    .line 1452
    move-result-object v9

    .line 1453
    array-length v11, v9

    .line 1454
    array-length v12, v10

    .line 1455
    if-ne v11, v12, :cond_50

    .line 1456
    .line 1457
    array-length v11, v9

    .line 1458
    new-array v11, v11, [J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1459
    .line 1460
    move v12, v6

    .line 1461
    :goto_a
    :try_start_2
    array-length v13, v9

    .line 1462
    if-ge v12, v13, :cond_4f

    .line 1463
    .line 1464
    aget-object v13, v9, v12

    .line 1465
    .line 1466
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1467
    .line 1468
    .line 1469
    move-result-wide v13

    .line 1470
    aput-wide v13, v11, v12
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1471
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

    .line 1476
    .line 1477
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1478
    .line 1479
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 1480
    .line 1481
    aget-wide v17, v10, v4

    .line 1482
    .line 1483
    aget-wide v19, v5, v4

    .line 1484
    .line 1485
    const-string/jumbo v23, "config"

    .line 1486
    .line 1487
    .line 1488
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1489
    .line 1490
    .line 1491
    move-result-wide v21

    .line 1492
    move-object/from16 v16, v1

    .line 1493
    .line 1494
    invoke-virtual/range {v16 .. v23}, Lcom/android/server/am/ActiveServices;->performRescheduleServiceRestartOnMemoryPressureLocked(JJJLjava/lang/String;)V

    .line 1495
    .line 1496
    .line 1497
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1498
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1499
    .line 1500
    .line 1501
    goto/16 :goto_5

    .line 1502
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

    .line 1506
    .line 1507
    .line 1508
    throw v0

    .line 1509
    :pswitch_9
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1510
    .line 1511
    iget-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mDefaultDisableAppProfilerPssProfiling:Z

    .line 1512
    .line 1513
    const-string v4, "activity_manager"

    .line 1514
    .line 1515
    const-string/jumbo v5, "disable_app_profiler_pss_profiling"

    .line 1516
    .line 1517
    .line 1518
    invoke-static {v4, v5, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1519
    .line 1520
    .line 1521
    move-result v2

    .line 1522
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    .line 1523
    .line 1524
    goto/16 :goto_5

    .line 1525
    .line 1526
    :pswitch_a
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1527
    .line 1528
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1529
    .line 1530
    .line 1531
    const-string v2, "activity_manager"

    .line 1532
    .line 1533
    const-string/jumbo v9, "media_processing_fgs_timeout_duration"

    .line 1534
    .line 1535
    .line 1536
    invoke-static {v2, v9, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 1537
    .line 1538
    .line 1539
    move-result-wide v4

    .line 1540
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mMediaProcessingFgsTimeoutDuration:J

    .line 1541
    .line 1542
    goto/16 :goto_5

    .line 1543
    .line 1544
    :pswitch_b
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1545
    .line 1546
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1547
    .line 1548
    .line 1549
    const-string v2, "activity_manager"

    .line 1550
    .line 1551
    const-string/jumbo v4, "short_fgs_proc_state_extra_wait_duration"

    .line 1552
    .line 1553
    .line 1554
    invoke-static {v2, v4, v10, v11}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 1555
    .line 1556
    .line 1557
    move-result-wide v4

    .line 1558
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsProcStateExtraWaitDuration:J

    .line 1559
    .line 1560
    goto/16 :goto_5

    .line 1561
    .line 1562
    :pswitch_c
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1563
    .line 1564
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1565
    .line 1566
    .line 1567
    const-string v2, "activity_manager"

    .line 1568
    .line 1569
    const-string/jumbo v4, "kill_bg_restricted_cached_idle"

    .line 1570
    .line 1571
    .line 1572
    invoke-static {v2, v4, v6}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1573
    .line 1574
    .line 1575
    move-result v2

    .line 1576
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    .line 1577
    .line 1578
    goto/16 :goto_5

    .line 1579
    .line 1580
    :pswitch_d
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1581
    .line 1582
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1583
    .line 1584
    .line 1585
    const-string v2, "activity_manager"

    .line 1586
    .line 1587
    const-string/jumbo v4, "boot_time_temp_allowlist_duration"

    .line 1588
    .line 1589
    .line 1590
    const-wide/16 v9, 0x4e20

    .line 1591
    .line 1592
    invoke-static {v2, v4, v9, v10}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 1593
    .line 1594
    .line 1595
    move-result-wide v4

    .line 1596
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mBootTimeTempAllowlistDuration:J

    .line 1597
    .line 1598
    goto/16 :goto_5

    .line 1599
    .line 1600
    :pswitch_e
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1601
    .line 1602
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1603
    .line 1604
    .line 1605
    const-string v1, "activity_manager"

    .line 1606
    .line 1607
    const-string/jumbo v2, "low_swap_threshold_percent"

    .line 1608
    .line 1609
    .line 1610
    const v4, 0x3dcccccd    # 0.1f

    .line 1611
    .line 1612
    .line 1613
    invoke-static {v1, v2, v4}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 1614
    .line 1615
    .line 1616
    move-result v1

    .line 1617
    sput v1, Lcom/android/server/am/ActivityManagerConstants;->LOW_SWAP_THRESHOLD_PERCENT:F

    .line 1618
    .line 1619
    goto/16 :goto_5

    .line 1620
    .line 1621
    :pswitch_f
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1622
    .line 1623
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1624
    .line 1625
    .line 1626
    const-string v2, "activity_manager"

    .line 1627
    .line 1628
    const-string/jumbo v4, "fg_to_bg_fgs_grace_duration"

    .line 1629
    .line 1630
    .line 1631
    invoke-static {v2, v4, v10, v11}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 1632
    .line 1633
    .line 1634
    move-result-wide v4

    .line 1635
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgToBgFgsGraceDuration:J

    .line 1636
    .line 1637
    goto/16 :goto_5

    .line 1638
    .line 1639
    :pswitch_10
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1640
    .line 1641
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1642
    .line 1643
    .line 1644
    const-string v2, "activity_manager"

    .line 1645
    .line 1646
    const-string/jumbo v4, "no_kill_cached_processes_until_boot_completed"

    .line 1647
    .line 1648
    .line 1649
    invoke-static {v2, v4, v6}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1650
    .line 1651
    .line 1652
    move-result v2

    .line 1653
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesUntilBootCompleted:Z

    .line 1654
    .line 1655
    goto/16 :goto_5

    .line 1656
    .line 1657
    :pswitch_11
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1658
    .line 1659
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1660
    .line 1661
    .line 1662
    const-string v2, "activity_manager"

    .line 1663
    .line 1664
    const-string/jumbo v4, "default_fgs_starts_restriction_check_caller_target_sdk"

    .line 1665
    .line 1666
    .line 1667
    invoke-static {v2, v4, v7}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1668
    .line 1669
    .line 1670
    move-result v2

    .line 1671
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionCheckCallerTargetSdk:Z

    .line 1672
    .line 1673
    goto/16 :goto_5

    .line 1674
    .line 1675
    :pswitch_12
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1676
    .line 1677
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1678
    .line 1679
    .line 1680
    const-string v2, "activity_manager"

    .line 1681
    .line 1682
    const-string/jumbo v4, "deferred_fgs_notification_exclusion_time"

    .line 1683
    .line 1684
    .line 1685
    const-wide/32 v9, 0x1d4c0

    .line 1686
    .line 1687
    .line 1688
    invoke-static {v2, v4, v9, v10}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 1689
    .line 1690
    .line 1691
    move-result-wide v4

    .line 1692
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTime:J

    .line 1693
    .line 1694
    goto/16 :goto_5

    .line 1695
    .line 1696
    :pswitch_13
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1697
    .line 1698
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1699
    .line 1700
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1701
    .line 1702
    .line 1703
    monitor-enter v2

    .line 1704
    :try_start_5
    iget-boolean v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mEnableExtraServiceRestartDelayOnMemPressure:Z

    .line 1705
    .line 1706
    const-string v5, "activity_manager"

    .line 1707
    .line 1708
    const-string/jumbo v9, "enable_extra_delay_svc_restart_mem_pressure"

    .line 1709
    .line 1710
    .line 1711
    invoke-static {v5, v9, v7}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1712
    .line 1713
    .line 1714
    move-result v5

    .line 1715
    iput-boolean v5, v1, Lcom/android/server/am/ActivityManagerConstants;->mEnableExtraServiceRestartDelayOnMemPressure:Z

    .line 1716
    .line 1717
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1718
    .line 1719
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 1720
    .line 1721
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1722
    .line 1723
    .line 1724
    move-result-wide v24

    .line 1725
    if-ne v4, v5, :cond_51

    .line 1726
    .line 1727
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1728
    .line 1729
    .line 1730
    goto :goto_d

    .line 1731
    :cond_51
    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 1732
    .line 1733
    iget-object v10, v9, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 1734
    .line 1735
    invoke-virtual {v10}, Lcom/android/server/am/AppProfiler;->getLastMemoryLevelLocked()I

    .line 1736
    .line 1737
    .line 1738
    move-result v10

    .line 1739
    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 1740
    .line 1741
    iget-object v9, v9, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    .line 1742
    .line 1743
    aget-wide v9, v9, v10

    .line 1744
    .line 1745
    if-eqz v4, :cond_52

    .line 1746
    .line 1747
    move-wide/from16 v20, v9

    .line 1748
    .line 1749
    goto :goto_b

    .line 1750
    :cond_52
    const-wide/16 v20, 0x0

    .line 1751
    .line 1752
    :goto_b
    if-eqz v5, :cond_53

    .line 1753
    .line 1754
    move-wide/from16 v22, v9

    .line 1755
    .line 1756
    goto :goto_c

    .line 1757
    :cond_53
    const-wide/16 v22, 0x0

    .line 1758
    .line 1759
    :goto_c
    const-string/jumbo v26, "config"

    .line 1760
    .line 1761
    .line 1762
    move-object/from16 v19, v1

    .line 1763
    .line 1764
    invoke-virtual/range {v19 .. v26}, Lcom/android/server/am/ActiveServices;->performRescheduleServiceRestartOnMemoryPressureLocked(JJJLjava/lang/String;)V

    .line 1765
    .line 1766
    .line 1767
    :goto_d
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1768
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1769
    .line 1770
    .line 1771
    goto/16 :goto_5

    .line 1772
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

    .line 1776
    .line 1777
    .line 1778
    throw v0

    .line 1779
    :pswitch_14
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1780
    .line 1781
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1782
    .line 1783
    .line 1784
    const-string v2, "activity_manager"

    .line 1785
    .line 1786
    const-string/jumbo v4, "system_exempt_power_restrictions_enabled"

    .line 1787
    .line 1788
    .line 1789
    invoke-static {v2, v4, v7}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1790
    .line 1791
    .line 1792
    move-result v2

    .line 1793
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFlagSystemExemptPowerRestrictionsEnabled:Z

    .line 1794
    .line 1795
    goto/16 :goto_5

    .line 1796
    .line 1797
    :pswitch_15
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1798
    .line 1799
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1800
    .line 1801
    .line 1802
    const-string v1, "activity_manager"

    .line 1803
    .line 1804
    const-string/jumbo v2, "proactive_kills_enabled"

    .line 1805
    .line 1806
    .line 1807
    invoke-static {v1, v2, v6}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1808
    .line 1809
    .line 1810
    move-result v1

    .line 1811
    sput-boolean v1, Lcom/android/server/am/ActivityManagerConstants;->PROACTIVE_KILLS_ENABLED:Z

    .line 1812
    .line 1813
    goto/16 :goto_5

    .line 1814
    .line 1815
    :pswitch_16
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1816
    .line 1817
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1818
    .line 1819
    .line 1820
    const-string v2, "activity_manager"

    .line 1821
    .line 1822
    const-string/jumbo v4, "use_tiered_cached_adj"

    .line 1823
    .line 1824
    .line 1825
    invoke-static {v2, v4, v6}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1826
    .line 1827
    .line 1828
    move-result v4

    .line 1829
    iput-boolean v4, v1, Lcom/android/server/am/ActivityManagerConstants;->USE_TIERED_CACHED_ADJ:Z

    .line 1830
    .line 1831
    const-string/jumbo v4, "tiered_cached_adj_decay_time"

    .line 1832
    .line 1833
    .line 1834
    const-wide/32 v9, 0xea60

    .line 1835
    .line 1836
    .line 1837
    invoke-static {v2, v4, v9, v10}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 1838
    .line 1839
    .line 1840
    move-result-wide v4

    .line 1841
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_DECAY_TIME:J

    .line 1842
    .line 1843
    goto/16 :goto_5

    .line 1844
    .line 1845
    :pswitch_17
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1846
    .line 1847
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1848
    .line 1849
    .line 1850
    const-string v2, "activity_manager"

    .line 1851
    .line 1852
    const-string/jumbo v4, "defer_boot_completed_broadcast"

    .line 1853
    .line 1854
    .line 1855
    invoke-static {v2, v4, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 1856
    .line 1857
    .line 1858
    move-result v2

    .line 1859
    iput v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mDeferBootCompletedBroadcast:I

    .line 1860
    .line 1861
    goto/16 :goto_5

    .line 1862
    .line 1863
    :pswitch_18
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1864
    .line 1865
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1866
    .line 1867
    .line 1868
    const-string v5, "activity_manager"

    .line 1869
    .line 1870
    const-string/jumbo v9, "fgs_crash_extra_wait_duration"

    .line 1871
    .line 1872
    .line 1873
    invoke-static {v5, v9, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 1874
    .line 1875
    .line 1876
    move-result-wide v1

    .line 1877
    iput-wide v1, v4, Lcom/android/server/am/ActivityManagerConstants;->mFgsCrashExtraWaitDuration:J

    .line 1878
    .line 1879
    goto/16 :goto_5

    .line 1880
    .line 1881
    :pswitch_19
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1882
    .line 1883
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1884
    .line 1885
    .line 1886
    const-string v2, "activity_manager"

    .line 1887
    .line 1888
    const-string/jumbo v4, "top_to_fgs_grace_duration"

    .line 1889
    .line 1890
    .line 1891
    invoke-static {v2, v4, v12, v13}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 1892
    .line 1893
    .line 1894
    move-result-wide v4

    .line 1895
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    .line 1896
    .line 1897
    goto/16 :goto_5

    .line 1898
    .line 1899
    :pswitch_1a
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1900
    .line 1901
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1902
    .line 1903
    .line 1904
    const-string v2, "activity_manager"

    .line 1905
    .line 1906
    const-string/jumbo v4, "deferred_fgs_notifications_api_gated"

    .line 1907
    .line 1908
    .line 1909
    invoke-static {v2, v4, v6}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1910
    .line 1911
    .line 1912
    move-result v2

    .line 1913
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralApiGated:Z

    .line 1914
    .line 1915
    goto/16 :goto_5

    .line 1916
    .line 1917
    :pswitch_1b
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1918
    .line 1919
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1920
    .line 1921
    .line 1922
    const-string v2, "activity_manager"

    .line 1923
    .line 1924
    const-string/jumbo v4, "no_kill_cached_processes_post_boot_completed_duration_millis"

    .line 1925
    .line 1926
    .line 1927
    const-wide/16 v9, 0x0

    .line 1928
    .line 1929
    invoke-static {v2, v4, v9, v10}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 1930
    .line 1931
    .line 1932
    move-result-wide v4

    .line 1933
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesPostBootCompletedDurationMillis:J

    .line 1934
    .line 1935
    goto/16 :goto_5

    .line 1936
    .line 1937
    :pswitch_1c
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1938
    .line 1939
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1940
    .line 1941
    .line 1942
    const-string v2, "activity_manager"

    .line 1943
    .line 1944
    const-string/jumbo v4, "push_messaging_over_quota_behavior"

    .line 1945
    .line 1946
    .line 1947
    invoke-static {v2, v4, v7}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 1948
    .line 1949
    .line 1950
    move-result v2

    .line 1951
    iput v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    .line 1952
    .line 1953
    iget v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    .line 1954
    .line 1955
    const/4 v9, -0x1

    .line 1956
    if-lt v2, v9, :cond_54

    .line 1957
    .line 1958
    iget v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    .line 1959
    .line 1960
    if-le v2, v7, :cond_55

    .line 1961
    .line 1962
    :cond_54
    iput v7, v1, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    .line 1963
    .line 1964
    :cond_55
    :goto_e
    const/16 v4, 0x3a

    .line 1965
    .line 1966
    const/4 v5, 0x2

    .line 1967
    goto/16 :goto_6

    .line 1968
    .line 1969
    :pswitch_1d
    const/4 v9, -0x1

    .line 1970
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1971
    .line 1972
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1973
    .line 1974
    .line 1975
    const-string v2, "activity_manager"

    .line 1976
    .line 1977
    const-string/jumbo v4, "default_fgs_starts_restriction_notification_enabled"

    .line 1978
    .line 1979
    .line 1980
    invoke-static {v2, v4, v6}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1981
    .line 1982
    .line 1983
    move-result v2

    .line 1984
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionNotificationEnabled:Z

    .line 1985
    .line 1986
    goto :goto_e

    .line 1987
    :pswitch_1e
    const/4 v9, -0x1

    .line 1988
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 1989
    .line 1990
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1991
    .line 1992
    .line 1993
    const-string v2, "activity_manager"

    .line 1994
    .line 1995
    const-string/jumbo v4, "fgs_start_allowed_log_sample_rate"

    .line 1996
    .line 1997
    .line 1998
    const/high16 v5, 0x3e800000    # 0.25f

    .line 1999
    .line 2000
    invoke-static {v2, v4, v5}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 2001
    .line 2002
    .line 2003
    move-result v2

    .line 2004
    iput v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartAllowedLogSampleRate:F

    .line 2005
    .line 2006
    goto :goto_e

    .line 2007
    :pswitch_1f
    const/4 v9, -0x1

    .line 2008
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2009
    .line 2010
    iget v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mDefaultPssToRssThresholdModifier:F

    .line 2011
    .line 2012
    const-string v4, "activity_manager"

    .line 2013
    .line 2014
    const-string/jumbo v5, "pss_to_rss_threshold_modifier"

    .line 2015
    .line 2016
    .line 2017
    invoke-static {v4, v5, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 2018
    .line 2019
    .line 2020
    move-result v2

    .line 2021
    iput v2, v1, Lcom/android/server/am/ActivityManagerConstants;->PSS_TO_RSS_THRESHOLD_MODIFIER:F

    .line 2022
    .line 2023
    goto :goto_e

    .line 2024
    :pswitch_20
    const/4 v9, -0x1

    .line 2025
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2026
    .line 2027
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2028
    .line 2029
    .line 2030
    const-string v2, "activity_manager"

    .line 2031
    .line 2032
    const-string/jumbo v4, "service_start_foreground_timeout_ms"

    .line 2033
    .line 2034
    .line 2035
    const/16 v5, 0x7530

    .line 2036
    .line 2037
    invoke-static {v2, v4, v5}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 2038
    .line 2039
    .line 2040
    move-result v2

    .line 2041
    iput v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundTimeoutMs:I

    .line 2042
    .line 2043
    goto :goto_e

    .line 2044
    :pswitch_21
    const/4 v9, -0x1

    .line 2045
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2046
    .line 2047
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2048
    .line 2049
    .line 2050
    const-string v2, "activity_manager"

    .line 2051
    .line 2052
    const-string/jumbo v4, "fgs_atom_sample_rate"

    .line 2053
    .line 2054
    .line 2055
    const/high16 v5, 0x3f800000    # 1.0f

    .line 2056
    .line 2057
    invoke-static {v2, v4, v5}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 2058
    .line 2059
    .line 2060
    move-result v2

    .line 2061
    iput v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsAtomSampleRate:F

    .line 2062
    .line 2063
    goto :goto_e

    .line 2064
    :pswitch_22
    const/4 v9, -0x1

    .line 2065
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2066
    .line 2067
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2068
    .line 2069
    .line 2070
    const-string v2, ""

    .line 2071
    .line 2072
    const-string v4, "activity_manager"

    .line 2073
    .line 2074
    const-string/jumbo v5, "prioritize_alarm_broadcasts"

    .line 2075
    .line 2076
    .line 2077
    invoke-static {v4, v5, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2078
    .line 2079
    .line 2080
    move-result-object v2

    .line 2081
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2082
    .line 2083
    .line 2084
    move-result v4

    .line 2085
    if-eqz v4, :cond_56

    .line 2086
    .line 2087
    move v2, v7

    .line 2088
    goto :goto_f

    .line 2089
    :cond_56
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 2090
    .line 2091
    .line 2092
    move-result v2

    .line 2093
    :goto_f
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mPrioritizeAlarmBroadcasts:Z

    .line 2094
    .line 2095
    goto/16 :goto_e

    .line 2096
    .line 2097
    :pswitch_23
    const/4 v9, -0x1

    .line 2098
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2099
    .line 2100
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2101
    .line 2102
    .line 2103
    const-string v5, "activity_manager"

    .line 2104
    .line 2105
    const-string/jumbo v10, "process_kill_timeout"

    .line 2106
    .line 2107
    .line 2108
    invoke-static {v5, v10, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 2109
    .line 2110
    .line 2111
    move-result-wide v1

    .line 2112
    iput-wide v1, v4, Lcom/android/server/am/ActivityManagerConstants;->mProcessKillTimeoutMs:J

    .line 2113
    .line 2114
    goto/16 :goto_e

    .line 2115
    .line 2116
    :pswitch_24
    const/4 v9, -0x1

    .line 2117
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2118
    .line 2119
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2120
    .line 2121
    .line 2122
    const-string v1, "activity_manager"

    .line 2123
    .line 2124
    const-string/jumbo v2, "min_assoc_log_duration"

    .line 2125
    .line 2126
    .line 2127
    const-wide/32 v4, 0x493e0

    .line 2128
    .line 2129
    .line 2130
    invoke-static {v1, v2, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 2131
    .line 2132
    .line 2133
    move-result-wide v1

    .line 2134
    sput-wide v1, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    .line 2135
    .line 2136
    goto/16 :goto_e

    .line 2137
    .line 2138
    :pswitch_25
    const/4 v9, -0x1

    .line 2139
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2140
    .line 2141
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2142
    .line 2143
    .line 2144
    const-string v2, "activity_manager"

    .line 2145
    .line 2146
    const-string/jumbo v4, "network_access_timeout_ms"

    .line 2147
    .line 2148
    .line 2149
    const-wide/16 v10, 0xc8

    .line 2150
    .line 2151
    invoke-static {v2, v4, v10, v11}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 2152
    .line 2153
    .line 2154
    move-result-wide v4

    .line 2155
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mNetworkAccessTimeoutMs:J

    .line 2156
    .line 2157
    goto/16 :goto_e

    .line 2158
    .line 2159
    :pswitch_26
    const/4 v9, -0x1

    .line 2160
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2161
    .line 2162
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2163
    .line 2164
    .line 2165
    const-string v2, "activity_manager"

    .line 2166
    .line 2167
    const-string/jumbo v10, "data_sync_fgs_timeout_duration"

    .line 2168
    .line 2169
    .line 2170
    invoke-static {v2, v10, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 2171
    .line 2172
    .line 2173
    move-result-wide v4

    .line 2174
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mDataSyncFgsTimeoutDuration:J

    .line 2175
    .line 2176
    goto/16 :goto_e

    .line 2177
    .line 2178
    :pswitch_27
    const/4 v9, -0x1

    .line 2179
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2180
    .line 2181
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2182
    .line 2183
    .line 2184
    const-string v2, "activity_manager"

    .line 2185
    .line 2186
    const-string/jumbo v4, "max_empty_time_millis"

    .line 2187
    .line 2188
    .line 2189
    const-wide v10, 0xd693a400L

    .line 2190
    .line 2191
    .line 2192
    .line 2193
    .line 2194
    invoke-static {v2, v4, v10, v11}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 2195
    .line 2196
    .line 2197
    move-result-wide v4

    .line 2198
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    .line 2199
    .line 2200
    goto/16 :goto_e

    .line 2201
    .line 2202
    :pswitch_28
    const/4 v9, -0x1

    .line 2203
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2204
    .line 2205
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcesses()V

    .line 2206
    .line 2207
    .line 2208
    goto/16 :goto_e

    .line 2209
    .line 2210
    :pswitch_29
    const/4 v9, -0x1

    .line 2211
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2212
    .line 2213
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2214
    .line 2215
    .line 2216
    const-string v2, "activity_manager"

    .line 2217
    .line 2218
    const-string/jumbo v4, "force_bg_check_on_restricted"

    .line 2219
    .line 2220
    .line 2221
    invoke-static {v2, v4, v7}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2222
    .line 2223
    .line 2224
    move-result v2

    .line 2225
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

    .line 2226
    .line 2227
    goto/16 :goto_e

    .line 2228
    .line 2229
    :pswitch_2a
    const/4 v9, -0x1

    .line 2230
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2231
    .line 2232
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2233
    .line 2234
    .line 2235
    const-string v2, "activity_manager"

    .line 2236
    .line 2237
    const-string/jumbo v4, "default_background_fgs_starts_restriction_enabled"

    .line 2238
    .line 2239
    .line 2240
    invoke-static {v2, v4, v7}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2241
    .line 2242
    .line 2243
    move-result v2

    .line 2244
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    .line 2245
    .line 2246
    goto/16 :goto_e

    .line 2247
    .line 2248
    :pswitch_2b
    const/4 v9, -0x1

    .line 2249
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2250
    .line 2251
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2252
    .line 2253
    .line 2254
    const-string v2, "activity_manager"

    .line 2255
    .line 2256
    const-string/jumbo v4, "short_fgs_timeout_duration"

    .line 2257
    .line 2258
    .line 2259
    const-wide/32 v10, 0x2bf20

    .line 2260
    .line 2261
    .line 2262
    invoke-static {v2, v4, v10, v11}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 2263
    .line 2264
    .line 2265
    move-result-wide v4

    .line 2266
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsTimeoutDuration:J

    .line 2267
    .line 2268
    goto/16 :goto_e

    .line 2269
    .line 2270
    :pswitch_2c
    const/4 v9, -0x1

    .line 2271
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2272
    .line 2273
    iget v2, v1, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    .line 2274
    .line 2275
    const-string v4, "activity_manager"

    .line 2276
    .line 2277
    const-string/jumbo v5, "max_phantom_processes"

    .line 2278
    .line 2279
    .line 2280
    const/16 v12, 0x20

    .line 2281
    .line 2282
    invoke-static {v4, v5, v12}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 2283
    .line 2284
    .line 2285
    move-result v4

    .line 2286
    iput v4, v1, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    .line 2287
    .line 2288
    if-le v2, v4, :cond_57

    .line 2289
    .line 2290
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2291
    .line 2292
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 2293
    .line 2294
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPhantomProcessList:Lcom/android/server/am/PhantomProcessList;

    .line 2295
    .line 2296
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2297
    .line 2298
    .line 2299
    new-instance v4, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda1;

    .line 2300
    .line 2301
    invoke-direct {v4, v1}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/PhantomProcessList;)V

    .line 2302
    .line 2303
    .line 2304
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2305
    .line 2306
    .line 2307
    :cond_57
    :goto_10
    const/16 v4, 0x3a

    .line 2308
    .line 2309
    const/4 v5, 0x2

    .line 2310
    goto/16 :goto_2

    .line 2311
    .line 2312
    :pswitch_2d
    const/4 v9, -0x1

    .line 2313
    const/16 v12, 0x20

    .line 2314
    .line 2315
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2316
    .line 2317
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2318
    .line 2319
    .line 2320
    const-string v5, "activity_manager"

    .line 2321
    .line 2322
    const-string/jumbo v10, "deferred_fgs_notification_interval"

    .line 2323
    .line 2324
    .line 2325
    invoke-static {v5, v10, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 2326
    .line 2327
    .line 2328
    move-result-wide v1

    .line 2329
    iput-wide v1, v4, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralInterval:J

    .line 2330
    .line 2331
    goto :goto_10

    .line 2332
    :pswitch_2e
    const/4 v9, -0x1

    .line 2333
    const/16 v12, 0x20

    .line 2334
    .line 2335
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2336
    .line 2337
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2338
    .line 2339
    .line 2340
    const-string v1, "activity_manager"

    .line 2341
    .line 2342
    const-string/jumbo v2, "max_previous_time"

    .line 2343
    .line 2344
    .line 2345
    const-wide/32 v4, 0xea60

    .line 2346
    .line 2347
    .line 2348
    invoke-static {v1, v2, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 2349
    .line 2350
    .line 2351
    move-result-wide v1

    .line 2352
    sput-wide v1, Lcom/android/server/am/ActivityManagerConstants;->MAX_PREVIOUS_TIME:J

    .line 2353
    .line 2354
    goto :goto_10

    .line 2355
    :pswitch_2f
    const/4 v9, -0x1

    .line 2356
    const/16 v12, 0x20

    .line 2357
    .line 2358
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2359
    .line 2360
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2361
    .line 2362
    .line 2363
    const-string v2, "activity_manager"

    .line 2364
    .line 2365
    const-string/jumbo v4, "oomadj_update_policy"

    .line 2366
    .line 2367
    .line 2368
    invoke-static {v2, v4, v7}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 2369
    .line 2370
    .line 2371
    move-result v2

    .line 2372
    if-ne v2, v7, :cond_58

    .line 2373
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

    .line 2378
    .line 2379
    goto :goto_10

    .line 2380
    :pswitch_30
    const/4 v9, -0x1

    .line 2381
    const/16 v12, 0x20

    .line 2382
    .line 2383
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2384
    .line 2385
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2386
    .line 2387
    .line 2388
    const-string v2, "activity_manager"

    .line 2389
    .line 2390
    const-string/jumbo v4, "fg_to_bg_fgs_grace_duration"

    .line 2391
    .line 2392
    .line 2393
    invoke-static {v2, v4, v10, v11}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 2394
    .line 2395
    .line 2396
    move-result-wide v4

    .line 2397
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgToBgFgsGraceDuration:J

    .line 2398
    .line 2399
    goto :goto_10

    .line 2400
    :pswitch_31
    const/4 v9, -0x1

    .line 2401
    const/16 v12, 0x20

    .line 2402
    .line 2403
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2404
    .line 2405
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2406
    .line 2407
    .line 2408
    const-string v2, "activity_manager"

    .line 2409
    .line 2410
    const-string/jumbo v4, "max_service_connections_per_process"

    .line 2411
    .line 2412
    .line 2413
    const/16 v5, 0xbb8

    .line 2414
    .line 2415
    invoke-static {v2, v4, v5}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 2416
    .line 2417
    .line 2418
    move-result v2

    .line 2419
    iput v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mMaxServiceConnectionsPerProcess:I

    .line 2420
    .line 2421
    goto :goto_10

    .line 2422
    :pswitch_32
    const/4 v9, -0x1

    .line 2423
    const/16 v12, 0x20

    .line 2424
    .line 2425
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2426
    .line 2427
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2428
    .line 2429
    .line 2430
    const-string v2, "activity_manager"

    .line 2431
    .line 2432
    const-string/jumbo v4, "deferred_fgs_notification_exclusion_time_for_short"

    .line 2433
    .line 2434
    .line 2435
    const-wide/32 v10, 0x1d4c0

    .line 2436
    .line 2437
    .line 2438
    invoke-static {v2, v4, v10, v11}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 2439
    .line 2440
    .line 2441
    move-result-wide v4

    .line 2442
    iput-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTimeForShort:J

    .line 2443
    .line 2444
    goto/16 :goto_10

    .line 2445
    .line 2446
    :pswitch_33
    const/4 v9, -0x1

    .line 2447
    const/16 v12, 0x20

    .line 2448
    .line 2449
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2450
    .line 2451
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2452
    .line 2453
    .line 2454
    const-string v2, "activity_manager"

    .line 2455
    .line 2456
    const-string/jumbo v4, "fgs_start_denied_log_sample_rate"

    .line 2457
    .line 2458
    .line 2459
    const/high16 v5, 0x3f800000    # 1.0f

    .line 2460
    .line 2461
    invoke-static {v2, v4, v5}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 2462
    .line 2463
    .line 2464
    move-result v2

    .line 2465
    iput v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartDeniedLogSampleRate:F

    .line 2466
    .line 2467
    goto/16 :goto_10

    .line 2468
    .line 2469
    :pswitch_34
    const/4 v9, -0x1

    .line 2470
    const/16 v12, 0x20

    .line 2471
    .line 2472
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2473
    .line 2474
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2475
    .line 2476
    .line 2477
    const-string v2, "activity_manager"

    .line 2478
    .line 2479
    const-string/jumbo v4, "fgs_allow_opt_out"

    .line 2480
    .line 2481
    .line 2482
    invoke-static {v2, v4, v6}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2483
    .line 2484
    .line 2485
    move-result v2

    .line 2486
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsAllowOptOut:Z

    .line 2487
    .line 2488
    goto/16 :goto_10

    .line 2489
    .line 2490
    :pswitch_35
    const/4 v9, -0x1

    .line 2491
    const/16 v12, 0x20

    .line 2492
    .line 2493
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2494
    .line 2495
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2496
    .line 2497
    .line 2498
    const-string v2, "activity_manager"

    .line 2499
    .line 2500
    const-string/jumbo v4, "default_background_activity_starts_enabled"

    .line 2501
    .line 2502
    .line 2503
    invoke-static {v2, v4, v6}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2504
    .line 2505
    .line 2506
    move-result v2

    .line 2507
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundActivityStartsEnabled:Z

    .line 2508
    .line 2509
    goto/16 :goto_10

    .line 2510
    .line 2511
    :pswitch_36
    const/4 v9, -0x1

    .line 2512
    const/16 v12, 0x20

    .line 2513
    .line 2514
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2515
    .line 2516
    iget-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherEnabled:Z

    .line 2517
    .line 2518
    const-string v4, "activity_manager"

    .line 2519
    .line 2520
    const-string/jumbo v5, "binder_heavy_hitter_watcher_enabled"

    .line 2521
    .line 2522
    .line 2523
    invoke-static {v4, v5, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2524
    .line 2525
    .line 2526
    move-result v2

    .line 2527
    sput-boolean v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z

    .line 2528
    .line 2529
    const-string/jumbo v2, "binder_heavy_hitter_watcher_batchsize"

    .line 2530
    .line 2531
    .line 2532
    iget v5, v1, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherBatchSize:I

    .line 2533
    .line 2534
    invoke-static {v4, v2, v5}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 2535
    .line 2536
    .line 2537
    move-result v2

    .line 2538
    sput v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:I

    .line 2539
    .line 2540
    const-string/jumbo v2, "binder_heavy_hitter_watcher_threshold"

    .line 2541
    .line 2542
    .line 2543
    iget v5, v1, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherThreshold:F

    .line 2544
    .line 2545
    invoke-static {v4, v2, v5}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 2546
    .line 2547
    .line 2548
    move-result v2

    .line 2549
    sput v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

    .line 2550
    .line 2551
    const-string/jumbo v2, "binder_heavy_hitter_auto_sampler_enabled"

    .line 2552
    .line 2553
    .line 2554
    iget-boolean v5, v1, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerEnabled:Z

    .line 2555
    .line 2556
    invoke-static {v4, v2, v5}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2557
    .line 2558
    .line 2559
    move-result v2

    .line 2560
    sput-boolean v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z

    .line 2561
    .line 2562
    const-string/jumbo v2, "binder_heavy_hitter_auto_sampler_batchsize"

    .line 2563
    .line 2564
    .line 2565
    iget v5, v1, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerBatchSize:I

    .line 2566
    .line 2567
    invoke-static {v4, v2, v5}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 2568
    .line 2569
    .line 2570
    move-result v2

    .line 2571
    sput v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I

    .line 2572
    .line 2573
    const-string/jumbo v2, "binder_heavy_hitter_auto_sampler_threshold"

    .line 2574
    .line 2575
    .line 2576
    iget v5, v1, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerThreshold:F

    .line 2577
    .line 2578
    invoke-static {v4, v2, v5}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 2579
    .line 2580
    .line 2581
    move-result v2

    .line 2582
    sput v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

    .line 2583
    .line 2584
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2585
    .line 2586
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 2587
    .line 2588
    new-instance v4, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;

    .line 2589
    .line 2590
    const/4 v5, 0x2

    .line 2591
    invoke-direct {v4, v1, v5}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/am/ActivityManagerService;I)V

    .line 2592
    .line 2593
    .line 2594
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2595
    .line 2596
    .line 2597
    goto :goto_12

    .line 2598
    :pswitch_37
    const/4 v5, 0x2

    .line 2599
    const/4 v9, -0x1

    .line 2600
    const/16 v12, 0x20

    .line 2601
    .line 2602
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2603
    .line 2604
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2605
    .line 2606
    .line 2607
    const-string v2, "activity_manager"

    .line 2608
    .line 2609
    const-string/jumbo v4, "service_start_foreground_anr_delay_ms"

    .line 2610
    .line 2611
    .line 2612
    const/16 v10, 0x2710

    .line 2613
    .line 2614
    invoke-static {v2, v4, v10}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 2615
    .line 2616
    .line 2617
    move-result v2

    .line 2618
    iput v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundAnrDelayMs:I

    .line 2619
    .line 2620
    goto :goto_12

    .line 2621
    :pswitch_38
    const/4 v5, 0x2

    .line 2622
    const/4 v9, -0x1

    .line 2623
    const/16 v12, 0x20

    .line 2624
    .line 2625
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2626
    .line 2627
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2628
    .line 2629
    .line 2630
    const-string v2, "activity_manager"

    .line 2631
    .line 2632
    const-string/jumbo v4, "default_fgs_starts_restriction_enabled"

    .line 2633
    .line 2634
    .line 2635
    invoke-static {v2, v4, v7}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2636
    .line 2637
    .line 2638
    move-result v2

    .line 2639
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsStartRestrictionEnabled:Z

    .line 2640
    .line 2641
    goto :goto_12

    .line 2642
    :pswitch_39
    const/4 v5, 0x2

    .line 2643
    const/4 v9, -0x1

    .line 2644
    const/16 v12, 0x20

    .line 2645
    .line 2646
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2647
    .line 2648
    iget-wide v10, v1, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    .line 2649
    .line 2650
    const-string v2, "activity_manager"

    .line 2651
    .line 2652
    const-string/jumbo v4, "kill_bg_restricted_cached_idle_settle_time"

    .line 2653
    .line 2654
    .line 2655
    const-wide/32 v13, 0xea60

    .line 2656
    .line 2657
    .line 2658
    invoke-static {v2, v4, v13, v14}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 2659
    .line 2660
    .line 2661
    move-result-wide v13

    .line 2662
    iput-wide v13, v1, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    .line 2663
    .line 2664
    iget-wide v13, v1, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    .line 2665
    .line 2666
    cmp-long v2, v13, v10

    .line 2667
    .line 2668
    if-gez v2, :cond_59

    .line 2669
    .line 2670
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2671
    .line 2672
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 2673
    .line 2674
    iget-wide v10, v1, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    .line 2675
    .line 2676
    const/16 v4, 0x3a

    .line 2677
    .line 2678
    invoke-virtual {v2, v4, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2679
    .line 2680
    .line 2681
    goto/16 :goto_2

    .line 2682
    .line 2683
    :cond_59
    :goto_12
    const/16 v4, 0x3a

    .line 2684
    .line 2685
    goto/16 :goto_2

    .line 2686
    .line 2687
    :pswitch_3a
    const/16 v4, 0x3a

    .line 2688
    .line 2689
    const/4 v5, 0x2

    .line 2690
    const/4 v9, -0x1

    .line 2691
    const/16 v12, 0x20

    .line 2692
    .line 2693
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2694
    .line 2695
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2696
    .line 2697
    .line 2698
    const-string v11, "activity_manager"

    .line 2699
    .line 2700
    const-string/jumbo v13, "short_fgs_anr_extra_wait_duration"

    .line 2701
    .line 2702
    .line 2703
    invoke-static {v11, v13, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 2704
    .line 2705
    .line 2706
    move-result-wide v1

    .line 2707
    iput-wide v1, v10, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsAnrExtraWaitDuration:J

    .line 2708
    .line 2709
    goto/16 :goto_2

    .line 2710
    .line 2711
    :pswitch_3b
    const/16 v4, 0x3a

    .line 2712
    .line 2713
    const/4 v5, 0x2

    .line 2714
    const/4 v9, -0x1

    .line 2715
    const/16 v12, 0x20

    .line 2716
    .line 2717
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    .line 2718
    .line 2719
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    .line 2720
    .line 2721
    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 2722
    .line 2723
    .line 2724
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    .line 2725
    .line 2726
    iget-object v10, v1, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptPackages:Ljava/util/List;

    .line 2727
    .line 2728
    invoke-virtual {v2, v10}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 2729
    .line 2730
    .line 2731
    const-string v2, "activity_manager"

    .line 2732
    .line 2733
    const-string/jumbo v10, "imperceptible_kill_exempt_packages"

    .line 2734
    .line 2735
    .line 2736
    invoke-static {v2, v10, v15}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2737
    .line 2738
    .line 2739
    move-result-object v10

    .line 2740
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2741
    .line 2742
    .line 2743
    move-result v11

    .line 2744
    const-string v13, ","

    .line 2745
    .line 2746
    if-nez v11, :cond_5a

    .line 2747
    .line 2748
    iget-object v11, v1, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    .line 2749
    .line 2750
    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 2751
    .line 2752
    .line 2753
    move-result-object v10

    .line 2754
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2755
    .line 2756
    .line 2757
    move-result-object v10

    .line 2758
    invoke-virtual {v11, v10}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 2759
    .line 2760
    .line 2761
    :cond_5a
    iget-object v10, v1, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    .line 2762
    .line 2763
    invoke-virtual {v10}, Landroid/util/ArraySet;->clear()V

    .line 2764
    .line 2765
    .line 2766
    iget-object v10, v1, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    .line 2767
    .line 2768
    iget-object v11, v1, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptProcStates:Ljava/util/List;

    .line 2769
    .line 2770
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 2771
    .line 2772
    .line 2773
    const-string/jumbo v10, "imperceptible_kill_exempt_proc_states"

    .line 2774
    .line 2775
    .line 2776
    invoke-static {v2, v10, v15}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2777
    .line 2778
    .line 2779
    move-result-object v2

    .line 2780
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2781
    .line 2782
    .line 2783
    move-result v10

    .line 2784
    if-nez v10, :cond_3

    .line 2785
    .line 2786
    invoke-virtual {v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 2787
    .line 2788
    .line 2789
    move-result-object v2

    .line 2790
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2791
    .line 2792
    .line 2793
    move-result-object v2

    .line 2794
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 2795
    .line 2796
    .line 2797
    move-result-object v2

    .line 2798
    new-instance v10, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda2;

    .line 2799
    .line 2800
    invoke-direct {v10, v1}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 2801
    .line 2802
    .line 2803
    invoke-interface {v2, v10}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 2804
    .line 2805
    .line 2806
    goto/16 :goto_2

    .line 2807
    .line 2808
    :cond_5b
    :goto_13
    return-void

    .line 2809
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 2810
    .line 2811
    .line 2812
    .line 2813
    .line 2814
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

    .line 2816
    .line 2817
    .line 2818
    .line 2819
    .line 2820
    .line 2821
    .line 2822
    .line 2823
    .line 2824
    .line 2825
    .line 2826
    .line 2827
    .line 2828
    .line 2829
    .line 2830
    .line 2831
    .line 2832
    .line 2833
    .line 2834
    .line 2835
    .line 2836
    .line 2837
    .line 2838
    .line 2839
    .line 2840
    .line 2841
    .line 2842
    .line 2843
    .line 2844
    .line 2845
    .line 2846
    .line 2847
    .line 2848
    .line 2849
    .line 2850
    .line 2851
    .line 2852
    .line 2853
    .line 2854
    .line 2855
    .line 2856
    .line 2857
    .line 2858
    .line 2859
    .line 2860
    .line 2861
    .line 2862
    .line 2863
    .line 2864
    .line 2865
    .line 2866
    .line 2867
    .line 2868
    .line 2869
    .line 2870
    .line 2871
    .line 2872
    .line 2873
    .line 2874
    .line 2875
    .line 2876
    .line 2877
    .line 2878
    .line 2879
    .line 2880
    .line 2881
    .line 2882
    .line 2883
    .line 2884
    .line 2885
    .line 2886
    .line 2887
    .line 2888
    .line 2889
    .line 2890
    .line 2891
    .line 2892
    .line 2893
    .line 2894
    .line 2895
    .line 2896
    .line 2897
    .line 2898
    .line 2899
    .line 2900
    .line 2901
    .line 2902
    .line 2903
    .line 2904
    .line 2905
    .line 2906
    .line 2907
    .line 2908
    .line 2909
    .line 2910
    .line 2911
    .line 2912
    .line 2913
    .line 2914
    .line 2915
    .line 2916
    .line 2917
    .line 2918
    .line 2919
    .line 2920
    .line 2921
    .line 2922
    .line 2923
    .line 2924
    .line 2925
    .line 2926
    .line 2927
    .line 2928
    .line 2929
    .line 2930
    .line 2931
    .line 2932
    .line 2933
    .line 2934
    .line 2935
    .line 2936
    .line 2937
    .line 2938
    .line 2939
    .line 2940
    .line 2941
    .line 2942
    .line 2943
    .line 2944
    .line 2945
    .line 2946
    .line 2947
    .line 2948
    .line 2949
    .line 2950
    .line 2951
    .line 2952
    .line 2953
    .line 2954
    .line 2955
    .line 2956
    .line 2957
    .line 2958
    .line 2959
    .line 2960
    .line 2961
    .line 2962
    .line 2963
    .line 2964
    .line 2965
    .line 2966
    .line 2967
    .line 2968
    .line 2969
    .line 2970
    .line 2971
    .line 2972
    .line 2973
    .line 2974
    .line 2975
    .line 2976
    .line 2977
    .line 2978
    .line 2979
    .line 2980
    .line 2981
    .line 2982
    .line 2983
    .line 2984
    .line 2985
    .line 2986
    .line 2987
    .line 2988
    .line 2989
    .line 2990
    .line 2991
    .line 2992
    .line 2993
    .line 2994
    .line 2995
    .line 2996
    .line 2997
    .line 2998
    .line 2999
    .line 3000
    .line 3001
    .line 3002
    .line 3003
    .line 3004
    .line 3005
    .line 3006
    .line 3007
    .line 3008
    .line 3009
    .line 3010
    .line 3011
    .line 3012
    .line 3013
    .line 3014
    .line 3015
    .line 3016
    .line 3017
    .line 3018
    .line 3019
    .line 3020
    .line 3021
    .line 3022
    .line 3023
    .line 3024
    .line 3025
    .line 3026
    .line 3027
    .line 3028
    .line 3029
    .line 3030
    .line 3031
    .line 3032
    .line 3033
    .line 3034
    .line 3035
    .line 3036
    .line 3037
    .line 3038
    .line 3039
    .line 3040
    .line 3041
    .line 3042
    .line 3043
    .line 3044
    .line 3045
    .line 3046
    .line 3047
    .line 3048
    .line 3049
    .line 3050
    .line 3051
    .line 3052
    .line 3053
    .line 3054
    .line 3055
    .line 3056
    .line 3057
    .line 3058
    .line 3059
    .line 3060
    .line 3061
    .line 3062
    .line 3063
    .line 3064
    .line 3065
    .line 3066
    .line 3067
    .line 3068
    .line 3069
    .line 3070
    .line 3071
    .line 3072
    .line 3073
    .line 3074
    .line 3075
    .line 3076
    .line 3077
    .line 3078
    .line 3079
    .line 3080
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
