.class public final Lcom/android/server/BatteryService$Shell;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/BatteryService$Shell;->this$0:Lcom/android/server/BatteryService;

    .line 3
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 3
    const-string/jumbo v1, "current_average"

    .line 6
    const-string/jumbo v2, "present"

    .line 9
    const-string v3, "ac"

    .line 11
    const-string/jumbo v4, "usb"

    .line 14
    const-string/jumbo v5, "dock"

    .line 17
    const-string/jumbo v7, "temp"

    .line 20
    const-string/jumbo v8, "level"

    .line 23
    const-string/jumbo v10, "current_now"

    .line 26
    const-string/jumbo v12, "counter"

    .line 29
    const-string/jumbo v14, "invalid"

    .line 32
    const/16 v16, 0x5

    .line 34
    const/16 v17, 0x4

    .line 36
    const/16 v18, 0x3

    .line 38
    const/16 v19, 0x2

    .line 40
    const/16 v20, 0x0

    .line 42
    const/16 v21, -0x1

    .line 44
    move-object/from16 v9, p0

    .line 46
    iget-object v11, v9, Lcom/android/server/BatteryService$Shell;->this$0:Lcom/android/server/BatteryService;

    .line 48
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    const-string v13, "Unknown set option: "

    .line 53
    if-nez v0, :cond_0

    .line 55
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 58
    move-result v20

    .line 59
    goto/16 :goto_12

    .line 61
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 64
    move-result-object v15

    .line 65
    const-string v6, "No property specified"

    .line 67
    const-string v9, "android.permission.DEVICE_POWER"

    .line 69
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 72
    move-result v23

    .line 73
    sparse-switch v23, :sswitch_data_0

    .line 76
    move-object/from16 v23, v13

    .line 78
    :goto_0
    move/from16 v13, v21

    .line 80
    goto/16 :goto_2

    .line 82
    :sswitch_0
    move-object/from16 v23, v13

    .line 84
    const-string/jumbo v13, "sleepstatus"

    .line 87
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v13

    .line 91
    if-nez v13, :cond_1

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    const/4 v13, 0x6

    .line 95
    goto :goto_2

    .line 96
    :sswitch_1
    move-object/from16 v23, v13

    .line 98
    const-string/jumbo v13, "reset"

    .line 101
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result v13

    .line 105
    if-nez v13, :cond_2

    .line 107
    goto :goto_1

    .line 108
    :cond_2
    move/from16 v13, v16

    .line 110
    goto :goto_2

    .line 111
    :sswitch_2
    move-object/from16 v23, v13

    .line 113
    const-string/jumbo v13, "set"

    .line 116
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result v13

    .line 120
    if-nez v13, :cond_3

    .line 122
    goto :goto_1

    .line 123
    :cond_3
    move/from16 v13, v17

    .line 125
    goto :goto_2

    .line 126
    :sswitch_3
    move-object/from16 v23, v13

    .line 128
    const-string/jumbo v13, "get"

    .line 131
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    move-result v13

    .line 135
    if-nez v13, :cond_4

    .line 137
    goto :goto_1

    .line 138
    :cond_4
    move/from16 v13, v18

    .line 140
    goto :goto_2

    .line 141
    :sswitch_4
    move-object/from16 v23, v13

    .line 143
    const-string/jumbo v13, "sleeptime"

    .line 146
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    move-result v13

    .line 150
    if-nez v13, :cond_5

    .line 152
    goto :goto_1

    .line 153
    :cond_5
    move/from16 v13, v19

    .line 155
    goto :goto_2

    .line 156
    :sswitch_5
    move-object/from16 v23, v13

    .line 158
    const-string/jumbo v13, "suspend_input"

    .line 161
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    move-result v13

    .line 165
    if-nez v13, :cond_6

    .line 167
    goto :goto_1

    .line 168
    :cond_6
    const/4 v13, 0x1

    .line 169
    goto :goto_2

    .line 170
    :sswitch_6
    move-object/from16 v23, v13

    .line 172
    const-string/jumbo v13, "unplug"

    .line 175
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    move-result v13

    .line 179
    if-nez v13, :cond_7

    .line 181
    :goto_1
    goto :goto_0

    .line 182
    :cond_7
    move/from16 v13, v20

    .line 184
    :goto_2
    packed-switch v13, :pswitch_data_0

    .line 187
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 190
    move-result v20

    .line 191
    goto/16 :goto_12

    .line 193
    :pswitch_0
    invoke-static/range {p0 .. p0}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    .line 196
    move-result v0

    .line 197
    invoke-virtual {v11}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 200
    move-result-object v1

    .line 201
    const/4 v13, 0x0

    .line 202
    invoke-virtual {v1, v9, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v1, 0x1

    .line 206
    and-int/2addr v0, v1

    .line 207
    if-eqz v0, :cond_8

    .line 209
    const/4 v6, 0x1

    .line 210
    goto :goto_3

    .line 211
    :cond_8
    move/from16 v6, v20

    .line 213
    :goto_3
    invoke-virtual {v11, v15, v6}, Lcom/android/server/BatteryService;->resetBattery(Ljava/io/PrintWriter;Z)V

    .line 216
    goto/16 :goto_12

    .line 218
    :pswitch_1
    const/4 v13, 0x0

    .line 219
    invoke-static/range {p0 .. p0}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    .line 222
    move-result v0

    .line 223
    move/from16 p1, v0

    .line 225
    invoke-virtual {v11}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {v0, v9, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 235
    move-result-object v0

    .line 236
    if-nez v0, :cond_9

    .line 238
    invoke-virtual {v15, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    :goto_4
    move/from16 v20, v21

    .line 243
    goto/16 :goto_12

    .line 245
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 248
    move-result-object v6

    .line 249
    if-nez v6, :cond_a

    .line 251
    const-string v0, "No value specified"

    .line 253
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    goto :goto_4

    .line 257
    :cond_a
    :try_start_0
    iget-boolean v9, v11, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 259
    if-nez v9, :cond_b

    .line 261
    iget-object v9, v11, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 263
    iget-object v13, v11, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 265
    invoke-static {v9, v13}, Lcom/android/server/health/Utils;->copySehV1Battery(Lvendor/samsung/hardware/health/SehHealthInfo;Lvendor/samsung/hardware/health/SehHealthInfo;)V

    .line 268
    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 271
    move-result v9

    .line 272
    sparse-switch v9, :sswitch_data_1

    .line 275
    goto/16 :goto_5

    .line 277
    :sswitch_7
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    move-result v1

    .line 281
    if-eqz v1, :cond_c

    .line 283
    const/16 v1, 0xb

    .line 285
    goto/16 :goto_6

    .line 287
    :sswitch_8
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    move-result v1

    .line 291
    if-eqz v1, :cond_c

    .line 293
    const/4 v1, 0x7

    .line 294
    goto/16 :goto_6

    .line 296
    :sswitch_9
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    move-result v1

    .line 300
    if-eqz v1, :cond_c

    .line 302
    const/16 v1, 0x8

    .line 304
    goto :goto_6

    .line 305
    :sswitch_a
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    move-result v1

    .line 309
    if-eqz v1, :cond_c

    .line 311
    const/4 v1, 0x6

    .line 312
    goto :goto_6

    .line 313
    :sswitch_b
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    move-result v1

    .line 317
    if-eqz v1, :cond_c

    .line 319
    const/16 v1, 0xa

    .line 321
    goto :goto_6

    .line 322
    :sswitch_c
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    move-result v1

    .line 326
    if-eqz v1, :cond_c

    .line 328
    move/from16 v1, v17

    .line 330
    goto :goto_6

    .line 331
    :sswitch_d
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    move-result v1

    .line 335
    if-eqz v1, :cond_c

    .line 337
    move/from16 v1, v19

    .line 339
    goto :goto_6

    .line 340
    :sswitch_e
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 343
    move-result v1

    .line 344
    if-eqz v1, :cond_c

    .line 346
    const/4 v1, 0x1

    .line 347
    goto :goto_6

    .line 348
    :sswitch_f
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 351
    move-result v1

    .line 352
    if-eqz v1, :cond_c

    .line 354
    move/from16 v1, v20

    .line 356
    goto :goto_6

    .line 357
    :sswitch_10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 360
    move-result v1

    .line 361
    if-eqz v1, :cond_c

    .line 363
    const/16 v1, 0x9

    .line 365
    goto :goto_6

    .line 366
    :sswitch_11
    const-string/jumbo v1, "status"

    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    move-result v1

    .line 373
    if-eqz v1, :cond_c

    .line 375
    move/from16 v1, v16

    .line 377
    goto :goto_6

    .line 378
    :sswitch_12
    const-string/jumbo v1, "wireless"

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 384
    move-result v1

    .line 385
    if-eqz v1, :cond_c

    .line 387
    move/from16 v1, v18

    .line 389
    goto :goto_6

    .line 390
    :cond_c
    :goto_5
    move/from16 v1, v21

    .line 392
    :goto_6
    packed-switch v1, :pswitch_data_1

    .line 395
    move-object/from16 v1, v23

    .line 397
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 400
    move-result-object v0

    .line 401
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    goto/16 :goto_12

    .line 406
    :pswitch_2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 409
    move-result v0

    .line 410
    iput v0, v11, Lcom/android/server/BatteryService;->mInvalidCharger:I

    .line 412
    goto/16 :goto_c

    .line 414
    :pswitch_3
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->batteryServiceSupportCurrentAdbCommand()Z

    .line 417
    move-result v0

    .line 418
    if-eqz v0, :cond_d

    .line 420
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 422
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 425
    move-result v1

    .line 426
    iput v1, v0, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    .line 428
    :cond_d
    :pswitch_4
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 430
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 433
    move-result v1

    .line 434
    iput v1, v0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 436
    goto/16 :goto_c

    .line 438
    :pswitch_5
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->batteryServiceSupportCurrentAdbCommand()Z

    .line 441
    move-result v0

    .line 442
    if-eqz v0, :cond_13

    .line 444
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 446
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 449
    move-result v1

    .line 450
    iput v1, v0, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    .line 452
    goto/16 :goto_c

    .line 454
    :pswitch_6
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 456
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 459
    move-result v1

    .line 460
    iput v1, v0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 462
    goto :goto_c

    .line 463
    :pswitch_7
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 465
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 468
    move-result v1

    .line 469
    iput v1, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 471
    goto :goto_c

    .line 472
    :pswitch_8
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 474
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 477
    move-result v1

    .line 478
    iput v1, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 480
    goto :goto_c

    .line 481
    :pswitch_9
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 483
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 486
    move-result v1

    .line 487
    if-eqz v1, :cond_e

    .line 489
    const/4 v1, 0x1

    .line 490
    goto :goto_7

    .line 491
    :cond_e
    move/from16 v1, v20

    .line 493
    :goto_7
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    .line 495
    goto :goto_c

    .line 496
    :pswitch_a
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 498
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 501
    move-result v1

    .line 502
    if-eqz v1, :cond_f

    .line 504
    const/4 v1, 0x1

    .line 505
    goto :goto_8

    .line 506
    :cond_f
    move/from16 v1, v20

    .line 508
    :goto_8
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 510
    goto :goto_c

    .line 511
    :pswitch_b
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 513
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 516
    move-result v1

    .line 517
    if-eqz v1, :cond_10

    .line 519
    const/4 v1, 0x1

    .line 520
    goto :goto_9

    .line 521
    :cond_10
    move/from16 v1, v20

    .line 523
    :goto_9
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 525
    goto :goto_c

    .line 526
    :pswitch_c
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 528
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 531
    move-result v1

    .line 532
    if-eqz v1, :cond_11

    .line 534
    const/4 v1, 0x1

    .line 535
    goto :goto_a

    .line 536
    :cond_11
    move/from16 v1, v20

    .line 538
    :goto_a
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 540
    goto :goto_c

    .line 541
    :pswitch_d
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 543
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 546
    move-result v1

    .line 547
    if-eqz v1, :cond_12

    .line 549
    const/4 v1, 0x1

    .line 550
    goto :goto_b

    .line 551
    :cond_12
    move/from16 v1, v20

    .line 553
    :goto_b
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 555
    :cond_13
    :goto_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 558
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    const/4 v0, 0x1

    .line 560
    :try_start_1
    iput-boolean v0, v11, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 562
    and-int/lit8 v3, p1, 0x1

    .line 564
    if-eqz v3, :cond_14

    .line 566
    const/4 v0, 0x1

    .line 567
    goto :goto_d

    .line 568
    :cond_14
    move/from16 v0, v20

    .line 570
    :goto_d
    invoke-virtual {v11, v0}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 573
    if-eqz v15, :cond_15

    .line 575
    if-eqz v0, :cond_15

    .line 577
    iget v0, v11, Lcom/android/server/BatteryService;->mSequence:I

    .line 579
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    :cond_15
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 585
    goto/16 :goto_12

    .line 587
    :catchall_0
    move-exception v0

    .line 588
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 591
    throw v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 592
    :catch_0
    const-string v0, "Bad value: "

    .line 594
    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 597
    move-result-object v0

    .line 598
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    goto/16 :goto_4

    .line 603
    :pswitch_e
    invoke-static/range {p0 .. p0}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    .line 606
    move-result v0

    .line 607
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 610
    move-result-object v9

    .line 611
    if-nez v9, :cond_16

    .line 613
    invoke-virtual {v15, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    goto/16 :goto_4

    .line 618
    :cond_16
    const-string v6, "Unable to update health service data."

    .line 620
    const-string v13, "BatteryService"

    .line 622
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 625
    move-result v22

    .line 626
    sparse-switch v22, :sswitch_data_2

    .line 629
    goto/16 :goto_e

    .line 631
    :sswitch_13
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 634
    move-result v1

    .line 635
    if-nez v1, :cond_17

    .line 637
    goto/16 :goto_e

    .line 639
    :cond_17
    const/16 v21, 0xb

    .line 641
    goto/16 :goto_e

    .line 643
    :sswitch_14
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 646
    move-result v1

    .line 647
    if-nez v1, :cond_18

    .line 649
    goto/16 :goto_e

    .line 651
    :cond_18
    const/16 v21, 0xa

    .line 653
    goto/16 :goto_e

    .line 655
    :sswitch_15
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 658
    move-result v1

    .line 659
    if-nez v1, :cond_19

    .line 661
    goto/16 :goto_e

    .line 663
    :cond_19
    const/16 v1, 0x9

    .line 665
    move/from16 v21, v1

    .line 667
    goto/16 :goto_e

    .line 669
    :sswitch_16
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 672
    move-result v1

    .line 673
    if-nez v1, :cond_1a

    .line 675
    goto/16 :goto_e

    .line 677
    :cond_1a
    const/16 v21, 0x8

    .line 679
    goto/16 :goto_e

    .line 681
    :sswitch_17
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 684
    move-result v1

    .line 685
    if-nez v1, :cond_1b

    .line 687
    goto :goto_e

    .line 688
    :cond_1b
    const/16 v21, 0x7

    .line 690
    goto :goto_e

    .line 691
    :sswitch_18
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 694
    move-result v1

    .line 695
    if-nez v1, :cond_1c

    .line 697
    goto :goto_e

    .line 698
    :cond_1c
    const/16 v21, 0x6

    .line 700
    goto :goto_e

    .line 701
    :sswitch_19
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 704
    move-result v1

    .line 705
    if-nez v1, :cond_1d

    .line 707
    goto :goto_e

    .line 708
    :cond_1d
    move/from16 v21, v16

    .line 710
    goto :goto_e

    .line 711
    :sswitch_1a
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 714
    move-result v1

    .line 715
    if-nez v1, :cond_1e

    .line 717
    goto :goto_e

    .line 718
    :cond_1e
    move/from16 v21, v17

    .line 720
    goto :goto_e

    .line 721
    :sswitch_1b
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 724
    move-result v1

    .line 725
    if-nez v1, :cond_1f

    .line 727
    goto :goto_e

    .line 728
    :cond_1f
    move/from16 v21, v18

    .line 730
    goto :goto_e

    .line 731
    :sswitch_1c
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 734
    move-result v1

    .line 735
    if-nez v1, :cond_20

    .line 737
    goto :goto_e

    .line 738
    :cond_20
    move/from16 v21, v19

    .line 740
    goto :goto_e

    .line 741
    :sswitch_1d
    const-string/jumbo v1, "status"

    .line 744
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 747
    move-result v1

    .line 748
    if-nez v1, :cond_21

    .line 750
    goto :goto_e

    .line 751
    :cond_21
    const/16 v21, 0x1

    .line 753
    goto :goto_e

    .line 754
    :sswitch_1e
    const-string/jumbo v1, "wireless"

    .line 757
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 760
    move-result v1

    .line 761
    if-nez v1, :cond_22

    .line 763
    goto :goto_e

    .line 764
    :cond_22
    move/from16 v21, v20

    .line 766
    :goto_e
    packed-switch v21, :pswitch_data_2

    .line 769
    const-string v0, "Unknown get option: "

    .line 771
    invoke-virtual {v0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 774
    move-result-object v0

    .line 775
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 778
    goto/16 :goto_12

    .line 780
    :pswitch_f
    iget v0, v11, Lcom/android/server/BatteryService;->mInvalidCharger:I

    .line 782
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 785
    goto/16 :goto_12

    .line 787
    :pswitch_10
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 789
    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 791
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 794
    goto/16 :goto_12

    .line 796
    :pswitch_11
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->batteryServiceSupportCurrentAdbCommand()Z

    .line 799
    move-result v1

    .line 800
    if-eqz v1, :cond_27

    .line 802
    const/4 v1, 0x1

    .line 803
    and-int/2addr v0, v1

    .line 804
    if-eqz v0, :cond_23

    .line 806
    :try_start_3
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    .line 808
    invoke-virtual {v0}, Lcom/android/server/health/HealthServiceWrapper;->scheduleUpdate()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 811
    goto :goto_f

    .line 812
    :catch_1
    move-exception v0

    .line 813
    invoke-static {v13, v6, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 816
    :cond_23
    :goto_f
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 818
    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    .line 820
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 823
    goto/16 :goto_12

    .line 825
    :pswitch_12
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 827
    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 829
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 832
    goto/16 :goto_12

    .line 834
    :pswitch_13
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 836
    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 838
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 841
    goto/16 :goto_12

    .line 843
    :pswitch_14
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 845
    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    .line 847
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 850
    goto/16 :goto_12

    .line 852
    :pswitch_15
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 854
    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 856
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 859
    goto/16 :goto_12

    .line 861
    :pswitch_16
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 863
    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 865
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 868
    goto/16 :goto_12

    .line 870
    :pswitch_17
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 872
    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 874
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 877
    goto/16 :goto_12

    .line 879
    :pswitch_18
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->batteryServiceSupportCurrentAdbCommand()Z

    .line 882
    move-result v1

    .line 883
    if-eqz v1, :cond_27

    .line 885
    const/4 v1, 0x1

    .line 886
    and-int/2addr v0, v1

    .line 887
    if-eqz v0, :cond_24

    .line 889
    :try_start_4
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    .line 891
    invoke-virtual {v0}, Lcom/android/server/health/HealthServiceWrapper;->scheduleUpdate()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 894
    goto :goto_10

    .line 895
    :catch_2
    move-exception v0

    .line 896
    invoke-static {v13, v6, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 899
    :cond_24
    :goto_10
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 901
    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    .line 903
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 906
    goto :goto_12

    .line 907
    :pswitch_19
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 909
    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 911
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 914
    goto :goto_12

    .line 915
    :pswitch_1a
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 917
    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 919
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 922
    goto :goto_12

    .line 923
    :pswitch_1b
    const-string v1, "[onShellCommand]cmd:"

    .line 925
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 928
    move-result-object v0

    .line 929
    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 931
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    const-string/jumbo v0, "user build cannot use this cmd"

    .line 937
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 943
    goto :goto_12

    .line 944
    :pswitch_1c
    invoke-virtual {v11}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 947
    move-result-object v0

    .line 948
    const/4 v1, 0x0

    .line 949
    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 954
    if-eqz v0, :cond_25

    .line 956
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 958
    invoke-static {v0}, Landroid/sysprop/PowerProperties;->battery_input_suspended(Ljava/lang/Boolean;)V

    .line 961
    const/4 v0, 0x1

    .line 962
    iput-boolean v0, v11, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    .line 964
    goto :goto_12

    .line 965
    :cond_25
    new-instance v0, Ljava/lang/SecurityException;

    .line 967
    const-string v1, "battery suspend_input is only supported on debuggable builds"

    .line 969
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 972
    throw v0

    .line 973
    :pswitch_1d
    const/4 v0, 0x1

    .line 974
    invoke-static/range {p0 .. p0}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    .line 977
    move-result v1

    .line 978
    invoke-virtual {v11}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 981
    move-result-object v2

    .line 982
    const/4 v3, 0x0

    .line 983
    invoke-virtual {v2, v9, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    and-int/2addr v1, v0

    .line 987
    if-eqz v1, :cond_26

    .line 989
    move v6, v0

    .line 990
    goto :goto_11

    .line 991
    :cond_26
    move/from16 v6, v20

    .line 993
    :goto_11
    invoke-virtual {v11, v15, v6}, Lcom/android/server/BatteryService;->unplugBattery(Ljava/io/PrintWriter;Z)V

    .line 996
    :cond_27
    :goto_12
    return v20

    .line 997
    :sswitch_data_0
    .sparse-switch
        -0x32165859 -> :sswitch_6
        -0x204dc1f9 -> :sswitch_5
        -0xb3c1dc -> :sswitch_4
        0x18f56 -> :sswitch_3
        0x1bc62 -> :sswitch_2
        0x6761d4f -> :sswitch_1
        0x5c164189 -> :sswitch_0
    .end sparse-switch

    .line 1027
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_e
        :pswitch_1
        :pswitch_0
        :pswitch_1b
    .end packed-switch

    .line 1045
    :sswitch_data_1
    .sparse-switch
        -0x3b9b7862 -> :sswitch_12
        -0x3532300e -> :sswitch_11
        -0x169c46a9 -> :sswitch_10
        -0x12f88745 -> :sswitch_f
        0xc22 -> :sswitch_e
        0x1c584 -> :sswitch_d
        0x2f2233 -> :sswitch_c
        0x3643d4 -> :sswitch_b
        0x6219b84 -> :sswitch_a
        0x23db3310 -> :sswitch_9
        0x391755fc -> :sswitch_8
        0x74cff1f7 -> :sswitch_7
    .end sparse-switch

    .line 1095
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch

    .line 1123
    :sswitch_data_2
    .sparse-switch
        -0x3b9b7862 -> :sswitch_1e
        -0x3532300e -> :sswitch_1d
        -0x169c46a9 -> :sswitch_1c
        -0x12f88745 -> :sswitch_1b
        0xc22 -> :sswitch_1a
        0x1c584 -> :sswitch_19
        0x2f2233 -> :sswitch_18
        0x3643d4 -> :sswitch_17
        0x6219b84 -> :sswitch_16
        0x23db3310 -> :sswitch_15
        0x391755fc -> :sswitch_14
        0x74cff1f7 -> :sswitch_13
    .end sparse-switch

    .line 1173
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
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
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 7
    const-string v0, "Battery service (battery) commands:"

    .line 9
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    const-string v0, "  help"

    .line 14
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    const-string v0, "    Print this help text."

    .line 19
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->batteryServiceSupportCurrentAdbCommand()Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 28
    const-string v0, "ac|usb|wireless|dock|status|level|temp|present|counter|invalid|current_now|current_average"

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string v0, "ac|usb|wireless|dock|status|level|temp|present|counter|invalid"

    .line 33
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    const-string v2, "  get [-f] ["

    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v2, "]"

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    const-string v2, "  set [-f] ["

    .line 59
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v0, "] <value>"

    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    const-string v0, "    Force a battery property value, freezing battery state."

    .line 79
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    const-string v0, "    -f: force a battery change broadcast be sent, prints new sequence."

    .line 84
    const-string v1, "  unplug [-f]"

    .line 86
    const-string v2, "    Force battery unplugged, freezing battery state."

    .line 88
    invoke-static {p0, v0, v1, v2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "  reset [-f]"

    .line 93
    const-string v2, "    Unfreeze battery state, returning to current hardware values."

    .line 95
    invoke-static {p0, v1, v2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 100
    if-eqz v0, :cond_1

    .line 102
    const-string v0, "  suspend_input"

    .line 104
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    const-string v0, "    Suspend charging even if plugged in. "

    .line 109
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    :cond_1
    return-void
.end method
