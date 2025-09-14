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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mCacheConfigChanges:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    move v4, v3

    .line 8
    :goto_0
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 9
    .line 10
    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 11
    .line 12
    check-cast v5, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-ge v4, v5, :cond_0

    .line 19
    .line 20
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 21
    .line 22
    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 23
    .line 24
    check-cast v5, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Lcom/android/server/job/controllers/StateController;

    .line 31
    .line 32
    invoke-virtual {v5}, Lcom/android/server/job/controllers/StateController;->prepareForUpdatedConstantsLocked()V

    .line 33
    .line 34
    .line 35
    add-int/2addr v4, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 38
    .line 39
    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v4

    .line 42
    :try_start_0
    iget-boolean v5, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mCacheConfigChanges:Z

    .line 43
    .line 44
    if-eqz v5, :cond_1

    .line 45
    .line 46
    const-string/jumbo v5, "jobscheduler"

    .line 47
    .line 48
    .line 49
    new-array v6, v3, [Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v5, v6}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    iput-object v5, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mLastPropertiesPulled:Landroid/provider/DeviceConfig$Properties;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    move-object/from16 v16, v4

    .line 60
    .line 61
    goto/16 :goto_b

    .line 62
    .line 63
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
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

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    if-eqz v10, :cond_a

    .line 80
    .line 81
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    check-cast v10, Ljava/lang/String;

    .line 86
    .line 87
    if-nez v10, :cond_2

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    sget-boolean v11, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 91
    .line 92
    if-nez v11, :cond_3

    .line 93
    .line 94
    iget-boolean v11, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mCacheConfigChanges:Z

    .line 95
    .line 96
    if-eqz v11, :cond_4

    .line 97
    .line 98
    :cond_3
    const-string v11, "JobScheduler"

    .line 99
    .line 100
    new-instance v12, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v13, "DeviceConfig "

    .line 106
    .line 107
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v13, " changed to "

    .line 114
    .line 115
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const/4 v13, 0x0

    .line 119
    invoke-virtual {v1, v10, v13}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v13

    .line 123
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v12

    .line 130
    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    :cond_4
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    const/4 v12, 0x3

    .line 138
    sparse-switch v11, :sswitch_data_0

    .line 139
    .line 140
    .line 141
    goto/16 :goto_3

    .line 142
    .line 143
    :sswitch_0
    const-string/jumbo v11, "conn_prefetch_relax_frac"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v11

    .line 150
    if-eqz v11, :cond_5

    .line 151
    .line 152
    const/16 v11, 0x17

    .line 153
    .line 154
    goto/16 :goto_4

    .line 155
    .line 156
    :sswitch_1
    const-string/jumbo v11, "runtime_min_ui_guarantee_ms"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    if-eqz v11, :cond_5

    .line 164
    .line 165
    const/16 v11, 0x21

    .line 166
    .line 167
    goto/16 :goto_4

    .line 168
    .line 169
    :sswitch_2
    const-string/jumbo v11, "runtime_free_quota_max_limit_ms"

    .line 170
    .line 171
    .line 172
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v11

    .line 176
    if-eqz v11, :cond_5

    .line 177
    .line 178
    const/16 v11, 0x1e

    .line 179
    .line 180
    goto/16 :goto_4

    .line 181
    .line 182
    :sswitch_3
    const-string/jumbo v11, "runtime_min_ui_data_transfer_guarantee_buffer_factor"

    .line 183
    .line 184
    .line 185
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v11

    .line 189
    if-eqz v11, :cond_5

    .line 190
    .line 191
    const/16 v11, 0x23

    .line 192
    .line 193
    goto/16 :goto_4

    .line 194
    .line 195
    :sswitch_4
    const-string/jumbo v11, "max_cpu_only_job_batch_delay_ms"

    .line 196
    .line 197
    .line 198
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v11

    .line 202
    if-eqz v11, :cond_5

    .line 203
    .line 204
    const/16 v11, 0xf

    .line 205
    .line 206
    goto/16 :goto_4

    .line 207
    .line 208
    :sswitch_5
    const-string/jumbo v11, "persist_in_split_files"

    .line 209
    .line 210
    .line 211
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v11

    .line 215
    if-eqz v11, :cond_5

    .line 216
    .line 217
    const/16 v11, 0x28

    .line 218
    .line 219
    goto/16 :goto_4

    .line 220
    .line 221
    :sswitch_6
    const-string v11, "aq_schedule_throw_exception"

    .line 222
    .line 223
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v11

    .line 227
    if-eqz v11, :cond_5

    .line 228
    .line 229
    const/4 v11, 0x5

    .line 230
    goto/16 :goto_4

    .line 231
    .line 232
    :sswitch_7
    const-string/jumbo v11, "system_stop_to_failure_ratio"

    .line 233
    .line 234
    .line 235
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v11

    .line 239
    if-eqz v11, :cond_5

    .line 240
    .line 241
    const/16 v11, 0x15

    .line 242
    .line 243
    goto/16 :goto_4

    .line 244
    .line 245
    :sswitch_8
    const-string/jumbo v11, "min_ready_non_active_jobs_count"

    .line 246
    .line 247
    .line 248
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v11

    .line 252
    if-eqz v11, :cond_5

    .line 253
    .line 254
    const/16 v11, 0xe

    .line 255
    .line 256
    goto/16 :goto_4

    .line 257
    .line 258
    :sswitch_9
    const-string/jumbo v11, "conn_max_connectivity_job_batch_delay_ms"

    .line 259
    .line 260
    .line 261
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v11

    .line 265
    if-eqz v11, :cond_5

    .line 266
    .line 267
    const/16 v11, 0x19

    .line 268
    .line 269
    goto/16 :goto_4

    .line 270
    .line 271
    :sswitch_a
    const-string/jumbo v11, "runtime_cumulative_ui_limit_ms"

    .line 272
    .line 273
    .line 274
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v11

    .line 278
    if-eqz v11, :cond_5

    .line 279
    .line 280
    const/16 v11, 0x25

    .line 281
    .line 282
    goto/16 :goto_4

    .line 283
    .line 284
    :sswitch_b
    const-string/jumbo v11, "min_linear_backoff_time_ms"

    .line 285
    .line 286
    .line 287
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v11

    .line 291
    if-eqz v11, :cond_5

    .line 292
    .line 293
    const/16 v11, 0x13

    .line 294
    .line 295
    goto/16 :goto_4

    .line 296
    .line 297
    :sswitch_c
    const-string/jumbo v11, "es_u_timeout_ej_count"

    .line 298
    .line 299
    .line 300
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v11

    .line 304
    if-eqz v11, :cond_5

    .line 305
    .line 306
    const/4 v11, 0x7

    .line 307
    goto/16 :goto_4

    .line 308
    .line 309
    :sswitch_d
    const-string/jumbo v11, "es_u_timeout_window_ms"

    .line 310
    .line 311
    .line 312
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v11

    .line 316
    if-eqz v11, :cond_5

    .line 317
    .line 318
    const/16 v11, 0xa

    .line 319
    .line 320
    goto/16 :goto_4

    .line 321
    .line 322
    :sswitch_e
    const-string/jumbo v11, "es_u_timeout_reg_count"

    .line 323
    .line 324
    .line 325
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v11

    .line 329
    if-eqz v11, :cond_5

    .line 330
    .line 331
    const/16 v11, 0x8

    .line 332
    .line 333
    goto/16 :goto_4

    .line 334
    .line 335
    :sswitch_f
    const-string/jumbo v11, "heavy_use_factor"

    .line 336
    .line 337
    .line 338
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v11

    .line 342
    if-eqz v11, :cond_5

    .line 343
    .line 344
    const/16 v11, 0x11

    .line 345
    .line 346
    goto/16 :goto_4

    .line 347
    .line 348
    :sswitch_10
    const-string/jumbo v11, "min_exp_backoff_time_ms"

    .line 349
    .line 350
    .line 351
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v11

    .line 355
    if-eqz v11, :cond_5

    .line 356
    .line 357
    const/16 v11, 0x14

    .line 358
    .line 359
    goto/16 :goto_4

    .line 360
    .line 361
    :sswitch_11
    const-string/jumbo v11, "es_u_timeout_uij_count"

    .line 362
    .line 363
    .line 364
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result v11

    .line 368
    if-eqz v11, :cond_5

    .line 369
    .line 370
    const/4 v11, 0x6

    .line 371
    goto/16 :goto_4

    .line 372
    .line 373
    :sswitch_12
    const-string/jumbo v11, "runtime_use_data_estimates_for_limits"

    .line 374
    .line 375
    .line 376
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v11

    .line 380
    if-eqz v11, :cond_5

    .line 381
    .line 382
    const/16 v11, 0x26

    .line 383
    .line 384
    goto/16 :goto_4

    .line 385
    .line 386
    :sswitch_13
    const-string/jumbo v11, "max_non_active_job_batch_delay_ms"

    .line 387
    .line 388
    .line 389
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result v11

    .line 393
    if-eqz v11, :cond_5

    .line 394
    .line 395
    const/16 v11, 0x10

    .line 396
    .line 397
    goto/16 :goto_4

    .line 398
    .line 399
    :sswitch_14
    const-string/jumbo v11, "conn_congestion_delay_frac"

    .line 400
    .line 401
    .line 402
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result v11

    .line 406
    if-eqz v11, :cond_5

    .line 407
    .line 408
    const/16 v11, 0x16

    .line 409
    .line 410
    goto/16 :goto_4

    .line 411
    .line 412
    :sswitch_15
    const-string v11, "aq_schedule_return_failure"

    .line 413
    .line 414
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result v11

    .line 418
    if-eqz v11, :cond_5

    .line 419
    .line 420
    const/4 v11, 0x4

    .line 421
    goto/16 :goto_4

    .line 422
    .line 423
    :sswitch_16
    const-string/jumbo v11, "es_u_anr_window_ms"

    .line 424
    .line 425
    .line 426
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v11

    .line 430
    if-eqz v11, :cond_5

    .line 431
    .line 432
    const/16 v11, 0xc

    .line 433
    .line 434
    goto/16 :goto_4

    .line 435
    .line 436
    :sswitch_17
    const-string/jumbo v11, "max_num_persisted_job_work_items"

    .line 437
    .line 438
    .line 439
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result v11

    .line 443
    if-eqz v11, :cond_5

    .line 444
    .line 445
    const/16 v11, 0x27

    .line 446
    .line 447
    goto/16 :goto_4

    .line 448
    .line 449
    :sswitch_18
    const-string/jumbo v11, "conn_low_signal_strength_relax_frac"

    .line 450
    .line 451
    .line 452
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result v11

    .line 456
    if-eqz v11, :cond_5

    .line 457
    .line 458
    const/16 v11, 0x18

    .line 459
    .line 460
    goto/16 :goto_4

    .line 461
    .line 462
    :sswitch_19
    const-string/jumbo v11, "runtime_min_ui_data_transfer_guarantee_ms"

    .line 463
    .line 464
    .line 465
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result v11

    .line 469
    if-eqz v11, :cond_5

    .line 470
    .line 471
    const/16 v11, 0x24

    .line 472
    .line 473
    goto/16 :goto_4

    .line 474
    .line 475
    :sswitch_1a
    const-string/jumbo v11, "es_u_anr_count"

    .line 476
    .line 477
    .line 478
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    move-result v11

    .line 482
    if-eqz v11, :cond_5

    .line 483
    .line 484
    const/16 v11, 0xb

    .line 485
    .line 486
    goto/16 :goto_4

    .line 487
    .line 488
    :sswitch_1b
    const-string/jumbo v11, "moderate_use_factor"

    .line 489
    .line 490
    .line 491
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    move-result v11

    .line 495
    if-eqz v11, :cond_5

    .line 496
    .line 497
    const/16 v11, 0x12

    .line 498
    .line 499
    goto/16 :goto_4

    .line 500
    .line 501
    :sswitch_1c
    const-string/jumbo v11, "runtime_ui_limit_ms"

    .line 502
    .line 503
    .line 504
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    move-result v11

    .line 508
    if-eqz v11, :cond_5

    .line 509
    .line 510
    const/16 v11, 0x22

    .line 511
    .line 512
    goto/16 :goto_4

    .line 513
    .line 514
    :sswitch_1d
    const-string/jumbo v11, "min_ready_cpu_only_jobs_count"

    .line 515
    .line 516
    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    move-result v11

    .line 521
    if-eqz v11, :cond_5

    .line 522
    .line 523
    const/16 v11, 0xd

    .line 524
    .line 525
    goto/16 :goto_4

    .line 526
    .line 527
    :sswitch_1e
    const-string/jumbo v11, "runtime_min_guarantee_ms"

    .line 528
    .line 529
    .line 530
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    move-result v11

    .line 534
    if-eqz v11, :cond_5

    .line 535
    .line 536
    const/16 v11, 0x1f

    .line 537
    .line 538
    goto/16 :goto_4

    .line 539
    .line 540
    :sswitch_1f
    const-string/jumbo v11, "conn_transport_batch_threshold"

    .line 541
    .line 542
    .line 543
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    move-result v11

    .line 547
    if-eqz v11, :cond_5

    .line 548
    .line 549
    const/16 v11, 0x1a

    .line 550
    .line 551
    goto/16 :goto_4

    .line 552
    .line 553
    :sswitch_20
    const-string v11, "aq_schedule_window_ms"

    .line 554
    .line 555
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    move-result v11

    .line 559
    if-eqz v11, :cond_5

    .line 560
    .line 561
    move v11, v12

    .line 562
    goto :goto_4

    .line 563
    :sswitch_21
    const-string/jumbo v11, "enable_execution_safeguards_udc"

    .line 564
    .line 565
    .line 566
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    move-result v11

    .line 570
    if-eqz v11, :cond_5

    .line 571
    .line 572
    move v11, v2

    .line 573
    goto :goto_4

    .line 574
    :sswitch_22
    const-string/jumbo v11, "conn_update_all_jobs_min_interval_ms"

    .line 575
    .line 576
    .line 577
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    move-result v11

    .line 581
    if-eqz v11, :cond_5

    .line 582
    .line 583
    const/16 v11, 0x1c

    .line 584
    .line 585
    goto :goto_4

    .line 586
    :sswitch_23
    const-string/jumbo v11, "prefetch_force_batch_relax_threshold_ms"

    .line 587
    .line 588
    .line 589
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    move-result v11

    .line 593
    if-eqz v11, :cond_5

    .line 594
    .line 595
    const/16 v11, 0x1d

    .line 596
    .line 597
    goto :goto_4

    .line 598
    :sswitch_24
    const-string/jumbo v11, "conn_use_cell_signal_strength"

    .line 599
    .line 600
    .line 601
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 602
    .line 603
    .line 604
    move-result v11

    .line 605
    if-eqz v11, :cond_5

    .line 606
    .line 607
    const/16 v11, 0x1b

    .line 608
    .line 609
    goto :goto_4

    .line 610
    :sswitch_25
    const-string/jumbo v11, "runtime_min_ej_guarantee_ms"

    .line 611
    .line 612
    .line 613
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    move-result v11

    .line 617
    if-eqz v11, :cond_5

    .line 618
    .line 619
    const/16 v11, 0x20

    .line 620
    .line 621
    goto :goto_4

    .line 622
    :sswitch_26
    const-string/jumbo v11, "enable_api_quotas"

    .line 623
    .line 624
    .line 625
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 626
    .line 627
    .line 628
    move-result v11

    .line 629
    if-eqz v11, :cond_5

    .line 630
    .line 631
    move v11, v3

    .line 632
    goto :goto_4

    .line 633
    :sswitch_27
    const-string v11, "aq_schedule_count"

    .line 634
    .line 635
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 636
    .line 637
    .line 638
    move-result v11

    .line 639
    if-eqz v11, :cond_5

    .line 640
    .line 641
    const/4 v11, 0x2

    .line 642
    goto :goto_4

    .line 643
    :sswitch_28
    const-string/jumbo v11, "es_u_timeout_total_count"

    .line 644
    .line 645
    .line 646
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 647
    .line 648
    .line 649
    move-result v11

    .line 650
    if-eqz v11, :cond_5

    .line 651
    .line 652
    const/16 v11, 0x9

    .line 653
    .line 654
    goto :goto_4

    .line 655
    :cond_5
    :goto_3
    const/4 v11, -0x1

    .line 656
    :goto_4
    packed-switch v11, :pswitch_data_0

    .line 657
    .line 658
    .line 659
    const-string/jumbo v11, "concurrency_"

    .line 660
    .line 661
    .line 662
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 663
    .line 664
    .line 665
    move-result v11

    .line 666
    if-eqz v11, :cond_7

    .line 667
    .line 668
    if-nez v7, :cond_7

    .line 669
    .line 670
    iget-object v7, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 671
    .line 672
    iget-object v7, v7, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 673
    .line 674
    invoke-virtual {v7}, Lcom/android/server/job/JobConcurrencyManager;->updateConfigLocked()V

    .line 675
    .line 676
    .line 677
    move v7, v2

    .line 678
    :cond_6
    :goto_5
    move-object/from16 v16, v4

    .line 679
    .line 680
    goto/16 :goto_9

    .line 681
    .line 682
    :cond_7
    move v11, v3

    .line 683
    :goto_6
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 684
    .line 685
    iget-object v12, v12, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 686
    .line 687
    check-cast v12, Ljava/util/ArrayList;

    .line 688
    .line 689
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 690
    .line 691
    .line 692
    move-result v12

    .line 693
    if-ge v11, v12, :cond_6

    .line 694
    .line 695
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 696
    .line 697
    iget-object v12, v12, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 698
    .line 699
    check-cast v12, Ljava/util/ArrayList;

    .line 700
    .line 701
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 702
    .line 703
    .line 704
    move-result-object v12

    .line 705
    check-cast v12, Lcom/android/server/job/controllers/StateController;

    .line 706
    .line 707
    invoke-virtual {v12, v1, v10}, Lcom/android/server/job/controllers/StateController;->processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    add-int/2addr v11, v2

    .line 711
    goto :goto_6

    .line 712
    :pswitch_0
    if-nez v8, :cond_6

    .line 713
    .line 714
    iget-object v8, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 715
    .line 716
    iget-object v8, v8, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 717
    .line 718
    sget v10, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_MIN_READY_CPU_ONLY_JOBS_COUNT:I

    .line 719
    .line 720
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 721
    .line 722
    .line 723
    const-string/jumbo v10, "jobscheduler"

    .line 724
    .line 725
    .line 726
    const-string/jumbo v11, "persist_in_split_files"

    .line 727
    .line 728
    .line 729
    invoke-static {v10, v11, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 730
    .line 731
    .line 732
    move-result v11

    .line 733
    iput-boolean v11, v8, Lcom/android/server/job/JobSchedulerService$Constants;->PERSIST_IN_SPLIT_FILES:Z

    .line 734
    .line 735
    const-string/jumbo v11, "max_num_persisted_job_work_items"

    .line 736
    .line 737
    .line 738
    const v12, 0x186a0

    .line 739
    .line 740
    .line 741
    invoke-static {v10, v11, v12}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 742
    .line 743
    .line 744
    move-result v10

    .line 745
    iput v10, v8, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NUM_PERSISTED_JOB_WORK_ITEMS:I

    .line 746
    .line 747
    iget-object v8, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 748
    .line 749
    iget-object v10, v8, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 750
    .line 751
    iget-object v8, v8, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 752
    .line 753
    iget-boolean v8, v8, Lcom/android/server/job/JobSchedulerService$Constants;->PERSIST_IN_SPLIT_FILES:Z

    .line 754
    .line 755
    iget-object v11, v10, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    .line 756
    .line 757
    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    :try_start_1
    iget-boolean v12, v10, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    .line 759
    .line 760
    if-eq v12, v8, :cond_8

    .line 761
    .line 762
    iput-boolean v8, v10, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    .line 763
    .line 764
    invoke-virtual {v10}, Lcom/android/server/job/JobStore;->migrateJobFilesAsync()V

    .line 765
    .line 766
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

    .line 776
    .line 777
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 778
    .line 779
    iget-object v9, v9, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 780
    .line 781
    invoke-static {v9}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateRuntimeConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 782
    .line 783
    .line 784
    move v9, v2

    .line 785
    goto :goto_5

    .line 786
    :pswitch_2
    iget-object v10, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 787
    .line 788
    iget-object v10, v10, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 789
    .line 790
    sget v11, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_MIN_READY_CPU_ONLY_JOBS_COUNT:I

    .line 791
    .line 792
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 793
    .line 794
    .line 795
    const-string/jumbo v11, "jobscheduler"

    .line 796
    .line 797
    .line 798
    const-string/jumbo v12, "prefetch_force_batch_relax_threshold_ms"

    .line 799
    .line 800
    .line 801
    const-wide/32 v13, 0x36ee80

    .line 802
    .line 803
    .line 804
    invoke-static {v11, v12, v13, v14}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 805
    .line 806
    .line 807
    move-result-wide v11

    .line 808
    iput-wide v11, v10, Lcom/android/server/job/JobSchedulerService$Constants;->PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:J

    .line 809
    .line 810
    goto/16 :goto_5

    .line 811
    .line 812
    :pswitch_3
    iget-object v10, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 813
    .line 814
    iget-object v10, v10, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 815
    .line 816
    invoke-static {v10}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateConnectivityConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 817
    .line 818
    .line 819
    goto/16 :goto_5

    .line 820
    .line 821
    :pswitch_4
    iget-object v10, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 822
    .line 823
    iget-object v10, v10, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 824
    .line 825
    sget v11, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_MIN_READY_CPU_ONLY_JOBS_COUNT:I

    .line 826
    .line 827
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 828
    .line 829
    .line 830
    const-string/jumbo v11, "jobscheduler"

    .line 831
    .line 832
    .line 833
    const-string/jumbo v13, "min_linear_backoff_time_ms"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 834
    .line 835
    .line 836
    const-wide/16 v14, 0x2710

    .line 837
    .line 838
    move-object/from16 v16, v4

    .line 839
    .line 840
    :try_start_3
    invoke-static {v11, v13, v14, v15}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 841
    .line 842
    .line 843
    move-result-wide v3

    .line 844
    iput-wide v3, v10, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME_MS:J

    .line 845
    .line 846
    const-string/jumbo v3, "min_exp_backoff_time_ms"

    .line 847
    .line 848
    .line 849
    invoke-static {v11, v3, v14, v15}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 850
    .line 851
    .line 852
    move-result-wide v3

    .line 853
    iput-wide v3, v10, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME_MS:J

    .line 854
    .line 855
    const-string/jumbo v3, "system_stop_to_failure_ratio"

    .line 856
    .line 857
    .line 858
    invoke-static {v11, v3, v12}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 859
    .line 860
    .line 861
    move-result v3

    .line 862
    iput v3, v10, Lcom/android/server/job/JobSchedulerService$Constants;->SYSTEM_STOP_TO_FAILURE_RATIO:I

    .line 863
    .line 864
    goto :goto_9

    .line 865
    :pswitch_5
    move-object/from16 v16, v4

    .line 866
    .line 867
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 868
    .line 869
    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 870
    .line 871
    sget v4, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_MIN_READY_CPU_ONLY_JOBS_COUNT:I

    .line 872
    .line 873
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 874
    .line 875
    .line 876
    const-string/jumbo v4, "jobscheduler"

    .line 877
    .line 878
    .line 879
    const-string/jumbo v10, "heavy_use_factor"

    .line 880
    .line 881
    .line 882
    const v11, 0x3f666666    # 0.9f

    .line 883
    .line 884
    .line 885
    invoke-static {v4, v10, v11}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 886
    .line 887
    .line 888
    move-result v10

    .line 889
    iput v10, v3, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    .line 890
    .line 891
    const-string/jumbo v10, "moderate_use_factor"

    .line 892
    .line 893
    .line 894
    const/high16 v11, 0x3f000000    # 0.5f

    .line 895
    .line 896
    invoke-static {v4, v10, v11}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 897
    .line 898
    .line 899
    move-result v4

    .line 900
    iput v4, v3, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    .line 901
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

    .line 906
    .line 907
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 908
    .line 909
    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 910
    .line 911
    invoke-static {v3}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateBatchingConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 912
    .line 913
    .line 914
    goto :goto_9

    .line 915
    :pswitch_7
    move-object/from16 v16, v4

    .line 916
    .line 917
    if-nez v6, :cond_9

    .line 918
    .line 919
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 920
    .line 921
    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 922
    .line 923
    invoke-static {v3}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateApiQuotaConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 924
    .line 925
    .line 926
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 927
    .line 928
    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->updateQuotaTracker()V

    .line 929
    .line 930
    .line 931
    move v6, v2

    .line 932
    :cond_9
    :goto_9
    move-object/from16 v4, v16

    .line 933
    .line 934
    const/4 v3, 0x0

    .line 935
    goto/16 :goto_2

    .line 936
    .line 937
    :cond_a
    move-object/from16 v16, v4

    .line 938
    .line 939
    const/4 v3, 0x0

    .line 940
    :goto_a
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 941
    .line 942
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 943
    .line 944
    check-cast v1, Ljava/util/ArrayList;

    .line 945
    .line 946
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 947
    .line 948
    .line 949
    move-result v1

    .line 950
    if-ge v3, v1, :cond_b

    .line 951
    .line 952
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 953
    .line 954
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 955
    .line 956
    check-cast v1, Ljava/util/ArrayList;

    .line 957
    .line 958
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 959
    .line 960
    .line 961
    move-result-object v1

    .line 962
    check-cast v1, Lcom/android/server/job/controllers/StateController;

    .line 963
    .line 964
    invoke-virtual {v1}, Lcom/android/server/job/controllers/StateController;->onConstantsUpdatedLocked()V

    .line 965
    .line 966
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

    .line 971
    .line 972
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 973
    .line 974
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 975
    .line 976
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

    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
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
