.class public final Lcom/android/server/hdmi/HdmiControlShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

.field public final mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mHdmiControlCallback:Lcom/android/server/hdmi/HdmiControlShellCommand$1;

.field public final mLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Landroid/hardware/hdmi/IHdmiControlService$Stub;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    .line 6
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 12
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 14
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    new-instance p1, Lcom/android/server/hdmi/HdmiControlShellCommand$1;

    .line 23
    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiControlShellCommand$1;-><init>(Lcom/android/server/hdmi/HdmiControlShellCommand;)V

    .line 26
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mHdmiControlCallback:Lcom/android/server/hdmi/HdmiControlShellCommand$1;

    .line 28
    return-void
.end method


# virtual methods
.method public final handleShellCommand(Ljava/lang/String;)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    const-string/jumbo v2, "set"

    .line 8
    const-string/jumbo v3, "get"

    .line 11
    const/4 v5, 0x5

    .line 12
    const/4 v6, 0x4

    .line 13
    const/4 v7, 0x3

    .line 14
    const/4 v8, 0x2

    .line 15
    const/4 v9, 0x6

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 19
    move-result-object v10

    .line 20
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    const-string/jumbo v11, "off"

    .line 26
    const-string/jumbo v12, "on"

    .line 29
    const-string v13, "Unknown operation: "

    .line 31
    const/4 v14, 0x1

    .line 32
    const/4 v15, 0x0

    .line 33
    const/16 v16, -0x1

    .line 35
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 38
    move-result v17

    .line 39
    sparse-switch v17, :sswitch_data_0

    .line 42
    :goto_0
    move/from16 v4, v16

    .line 44
    goto/16 :goto_1

    .line 46
    :sswitch_0
    const-string/jumbo v4, "cec_setting"

    .line 49
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/16 v4, 0x8

    .line 58
    goto/16 :goto_1

    .line 60
    :sswitch_1
    const-string/jumbo v4, "vendorcommand"

    .line 63
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 v4, 0x7

    .line 71
    goto :goto_1

    .line 72
    :sswitch_2
    const-string/jumbo v4, "otp"

    .line 75
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result v4

    .line 79
    if-nez v4, :cond_2

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    move v4, v9

    .line 83
    goto :goto_1

    .line 84
    :sswitch_3
    const-string/jumbo v4, "deviceselect"

    .line 87
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v4

    .line 91
    if-nez v4, :cond_3

    .line 93
    goto :goto_0

    .line 94
    :cond_3
    move v4, v5

    .line 95
    goto :goto_1

    .line 96
    :sswitch_4
    const-string/jumbo v4, "setsystemaudiomode"

    .line 99
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result v4

    .line 103
    if-nez v4, :cond_4

    .line 105
    goto :goto_0

    .line 106
    :cond_4
    move v4, v6

    .line 107
    goto :goto_1

    .line 108
    :sswitch_5
    const-string/jumbo v4, "setsam"

    .line 111
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result v4

    .line 115
    if-nez v4, :cond_5

    .line 117
    goto :goto_0

    .line 118
    :cond_5
    move v4, v7

    .line 119
    goto :goto_1

    .line 120
    :sswitch_6
    const-string/jumbo v4, "setarc"

    .line 123
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    move-result v4

    .line 127
    if-nez v4, :cond_6

    .line 129
    goto :goto_0

    .line 130
    :cond_6
    move v4, v8

    .line 131
    goto :goto_1

    .line 132
    :sswitch_7
    const-string/jumbo v4, "onetouchplay"

    .line 135
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    move-result v4

    .line 139
    if-nez v4, :cond_7

    .line 141
    goto :goto_0

    .line 142
    :cond_7
    move v4, v14

    .line 143
    goto :goto_1

    .line 144
    :sswitch_8
    const-string/jumbo v4, "history_size"

    .line 147
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    move-result v4

    .line 151
    if-nez v4, :cond_8

    .line 153
    goto :goto_0

    .line 154
    :cond_8
    move v4, v15

    .line 155
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 158
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 161
    move-result v0

    .line 162
    return v0

    .line 163
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    .line 166
    move-result v1

    .line 167
    if-lt v1, v14, :cond_b

    .line 169
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    const-string v4, " = "

    .line 178
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    move-result v3

    .line 182
    if-nez v3, :cond_a

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_9

    .line 190
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 193
    move-result-object v1

    .line 194
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 197
    move-result-object v2

    .line 198
    :try_start_0
    iget-object v3, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    .line 200
    invoke-virtual {v3, v1, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setCecSettingStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    .line 205
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object v3

    .line 221
    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    goto :goto_2

    .line 225
    :catch_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 228
    move-result v2

    .line 229
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    .line 231
    invoke-virtual {v0, v1, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setCecSettingIntValue(Ljava/lang/String;I)V

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    .line 236
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-static {v0, v2, v10}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 248
    goto :goto_2

    .line 249
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 251
    invoke-virtual {v13, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    move-result-object v1

    .line 255
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 258
    throw v0

    .line 259
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 262
    move-result-object v1

    .line 263
    :try_start_1
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    .line 265
    invoke-virtual {v2, v1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getCecSettingStringValue(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    move-result-object v2

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    .line 271
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    move-result-object v2

    .line 287
    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 290
    goto :goto_2

    .line 291
    :catch_1
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    .line 293
    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getCecSettingIntValue(Ljava/lang/String;)I

    .line 296
    move-result v0

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    .line 299
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    move-result-object v0

    .line 315
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    :goto_2
    return v15

    .line 319
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 321
    const-string v1, "Expected at least 1 argument (operation)."

    .line 323
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 326
    throw v0

    .line 327
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    .line 330
    move-result v1

    .line 331
    if-gt v9, v1, :cond_16

    .line 333
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 336
    move-result-object v1

    .line 337
    const-string v2, ""

    .line 339
    move v11, v15

    .line 340
    move/from16 v3, v16

    .line 342
    move v4, v3

    .line 343
    :goto_3
    if-eqz v1, :cond_14

    .line 345
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 348
    move-result v12

    .line 349
    sparse-switch v12, :sswitch_data_1

    .line 352
    :goto_4
    move/from16 v12, v16

    .line 354
    goto/16 :goto_5

    .line 356
    :sswitch_9
    const-string v12, "--args"

    .line 358
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 361
    move-result v12

    .line 362
    if-nez v12, :cond_c

    .line 364
    goto :goto_4

    .line 365
    :cond_c
    const/4 v12, 0x7

    .line 366
    goto :goto_5

    .line 367
    :sswitch_a
    const-string v12, "--id"

    .line 369
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    move-result v12

    .line 373
    if-nez v12, :cond_d

    .line 375
    goto :goto_4

    .line 376
    :cond_d
    move v12, v9

    .line 377
    goto :goto_5

    .line 378
    :sswitch_b
    const-string v12, "-t"

    .line 380
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    move-result v12

    .line 384
    if-nez v12, :cond_e

    .line 386
    goto :goto_4

    .line 387
    :cond_e
    move v12, v5

    .line 388
    goto :goto_5

    .line 389
    :sswitch_c
    const-string v12, "-i"

    .line 391
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    move-result v12

    .line 395
    if-nez v12, :cond_f

    .line 397
    goto :goto_4

    .line 398
    :cond_f
    move v12, v6

    .line 399
    goto :goto_5

    .line 400
    :sswitch_d
    const-string v12, "-d"

    .line 402
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 405
    move-result v12

    .line 406
    if-nez v12, :cond_10

    .line 408
    goto :goto_4

    .line 409
    :cond_10
    move v12, v7

    .line 410
    goto :goto_5

    .line 411
    :sswitch_e
    const-string v12, "-a"

    .line 413
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    move-result v12

    .line 417
    if-nez v12, :cond_11

    .line 419
    goto :goto_4

    .line 420
    :cond_11
    move v12, v8

    .line 421
    goto :goto_5

    .line 422
    :sswitch_f
    const-string v12, "--destination"

    .line 424
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 427
    move-result v12

    .line 428
    if-nez v12, :cond_12

    .line 430
    goto :goto_4

    .line 431
    :cond_12
    move v12, v14

    .line 432
    goto :goto_5

    .line 433
    :sswitch_10
    const-string v12, "--device_type"

    .line 435
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    move-result v12

    .line 439
    if-nez v12, :cond_13

    .line 441
    goto :goto_4

    .line 442
    :cond_13
    move v12, v15

    .line 443
    :goto_5
    packed-switch v12, :pswitch_data_1

    .line 446
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 448
    const-string v2, "Unknown argument: "

    .line 450
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 453
    move-result-object v1

    .line 454
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 457
    throw v0

    .line 458
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 461
    move-result-object v1

    .line 462
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 465
    move-result v11

    .line 466
    goto :goto_6

    .line 467
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 470
    move-result-object v1

    .line 471
    move-object v2, v1

    .line 472
    goto :goto_6

    .line 473
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 476
    move-result-object v1

    .line 477
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 480
    move-result v4

    .line 481
    goto :goto_6

    .line 482
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 485
    move-result-object v1

    .line 486
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 489
    move-result v3

    .line 490
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 493
    move-result-object v1

    .line 494
    goto/16 :goto_3

    .line 496
    :cond_14
    const-string v1, ":"

    .line 498
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 501
    move-result-object v1

    .line 502
    array-length v2, v1

    .line 503
    new-array v5, v2, [B

    .line 505
    move v6, v15

    .line 506
    :goto_7
    if-ge v6, v2, :cond_15

    .line 508
    aget-object v7, v1, v6

    .line 510
    const/16 v8, 0x10

    .line 512
    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 515
    move-result v7

    .line 516
    int-to-byte v7, v7

    .line 517
    aput-byte v7, v5, v6

    .line 519
    add-int/2addr v6, v14

    .line 520
    goto :goto_7

    .line 521
    :cond_15
    const-string v1, "Sending <Vendor Command>"

    .line 523
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    .line 528
    invoke-virtual {v0, v3, v4, v5, v11}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendVendorCommand(II[BZ)V

    .line 531
    return v15

    .line 532
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 534
    const-string v1, "Expected 3 arguments."

    .line 536
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 539
    throw v0

    .line 540
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    .line 543
    move-result v1

    .line 544
    if-ne v1, v14, :cond_19

    .line 546
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 549
    move-result-object v1

    .line 550
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 553
    move-result v1

    .line 554
    const-string v2, "Sending Device Select..."

    .line 556
    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 559
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    .line 561
    iget-object v3, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mHdmiControlCallback:Lcom/android/server/hdmi/HdmiControlShellCommand$1;

    .line 563
    invoke-virtual {v2, v1, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 566
    const-string v1, "Device Select"

    .line 568
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlShellCommand;->receiveCallback(Ljava/lang/String;)Z

    .line 571
    move-result v1

    .line 572
    if-nez v1, :cond_17

    .line 574
    goto :goto_8

    .line 575
    :cond_17
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 577
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 580
    move-result v0

    .line 581
    if-nez v0, :cond_18

    .line 583
    move v14, v15

    .line 584
    :cond_18
    :goto_8
    return v14

    .line 585
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 587
    const-string v1, "Expected exactly 1 argument."

    .line 589
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 592
    throw v0

    .line 593
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    .line 596
    move-result v1

    .line 597
    const-string v2, "Please indicate if System Audio Mode should be turned \"on\" or \"off\"."

    .line 599
    if-gt v14, v1, :cond_1e

    .line 601
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 604
    move-result-object v1

    .line 605
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 608
    move-result v3

    .line 609
    if-eqz v3, :cond_1a

    .line 611
    const-string v1, "Setting System Audio Mode on"

    .line 613
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    .line 618
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mHdmiControlCallback:Lcom/android/server/hdmi/HdmiControlShellCommand$1;

    .line 620
    invoke-virtual {v1, v14, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 623
    goto :goto_9

    .line 624
    :cond_1a
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 627
    move-result v1

    .line 628
    if-eqz v1, :cond_1d

    .line 630
    const-string v1, "Setting System Audio Mode off"

    .line 632
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 635
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    .line 637
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mHdmiControlCallback:Lcom/android/server/hdmi/HdmiControlShellCommand$1;

    .line 639
    invoke-virtual {v1, v15, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 642
    :goto_9
    const-string v1, "Set System Audio Mode"

    .line 644
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlShellCommand;->receiveCallback(Ljava/lang/String;)Z

    .line 647
    move-result v1

    .line 648
    if-nez v1, :cond_1b

    .line 650
    goto :goto_a

    .line 651
    :cond_1b
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 653
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 656
    move-result v0

    .line 657
    if-nez v0, :cond_1c

    .line 659
    move v14, v15

    .line 660
    :cond_1c
    :goto_a
    return v14

    .line 661
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 663
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 666
    throw v0

    .line 667
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 669
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 672
    throw v0

    .line 673
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    .line 676
    move-result v1

    .line 677
    const-string v2, "Please indicate if ARC mode should be turned \"on\" or \"off\"."

    .line 679
    if-gt v14, v1, :cond_21

    .line 681
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 684
    move-result-object v1

    .line 685
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 688
    move-result v3

    .line 689
    if-eqz v3, :cond_1f

    .line 691
    const-string v1, "Setting ARC mode on"

    .line 693
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    .line 698
    invoke-virtual {v0, v14}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setArcMode(Z)V

    .line 701
    goto :goto_b

    .line 702
    :cond_1f
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 705
    move-result v1

    .line 706
    if-eqz v1, :cond_20

    .line 708
    const-string v1, "Setting ARC mode off"

    .line 710
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 713
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    .line 715
    invoke-virtual {v0, v15}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setArcMode(Z)V

    .line 718
    :goto_b
    return v15

    .line 719
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 721
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 724
    throw v0

    .line 725
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 727
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 730
    throw v0

    .line 731
    :pswitch_9
    const-string v1, "Sending One Touch Play..."

    .line 733
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 736
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    .line 738
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mHdmiControlCallback:Lcom/android/server/hdmi/HdmiControlShellCommand$1;

    .line 740
    invoke-virtual {v1, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 743
    const-string v1, "One Touch Play"

    .line 745
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlShellCommand;->receiveCallback(Ljava/lang/String;)Z

    .line 748
    move-result v1

    .line 749
    if-nez v1, :cond_22

    .line 751
    goto :goto_c

    .line 752
    :cond_22
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 754
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 757
    move-result v0

    .line 758
    if-nez v0, :cond_23

    .line 760
    move v14, v15

    .line 761
    :cond_23
    :goto_c
    return v14

    .line 762
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    .line 765
    move-result v1

    .line 766
    if-gt v14, v1, :cond_27

    .line 768
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 771
    move-result-object v1

    .line 772
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 775
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 778
    move-result v3

    .line 779
    if-nez v3, :cond_26

    .line 781
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 784
    move-result v2

    .line 785
    if-eqz v2, :cond_25

    .line 787
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 790
    move-result-object v1

    .line 791
    :try_start_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 794
    move-result v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 795
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    .line 797
    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setMessageHistorySize(I)Z

    .line 800
    move-result v0

    .line 801
    if-eqz v0, :cond_24

    .line 803
    const-string v0, "Setting CEC dumpsys message history size to "

    .line 805
    invoke-static {v10, v0, v1}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 808
    goto :goto_d

    .line 809
    :cond_24
    const-string v0, "Message history size not changed, was it lower than the minimum size?"

    .line 811
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 814
    :goto_d
    move v14, v15

    .line 815
    goto :goto_e

    .line 816
    :catch_2
    const-string v0, "Cannot set CEC dumpsys message history size to "

    .line 818
    invoke-static {v10, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    goto :goto_e

    .line 822
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 824
    invoke-virtual {v13, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 827
    move-result-object v1

    .line 828
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 831
    throw v0

    .line 832
    :cond_26
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    .line 834
    invoke-virtual {v0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getMessageHistorySize()I

    .line 837
    move-result v0

    .line 838
    const-string v1, "CEC dumpsys message history size = "

    .line 840
    invoke-static {v10, v1, v0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 843
    goto :goto_d

    .line 844
    :goto_e
    return v14

    .line 845
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 847
    const-string v1, "Use \'set\' or \'get\' for the command action"

    .line 849
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 852
    throw v0

    .line 853
    :sswitch_data_0
    .sparse-switch
        -0x74f38f34 -> :sswitch_8
        -0x38ff28b3 -> :sswitch_7
        -0x35fd3550 -> :sswitch_6
        -0x35fcf3c3 -> :sswitch_5
        -0x1bd7bf78 -> :sswitch_4
        -0x18c452e -> :sswitch_3
        0x1af2b -> :sswitch_2
        0x25083903 -> :sswitch_1
        0x4ed06452 -> :sswitch_0
    .end sparse-switch

    .line 891
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 913
    :sswitch_data_1
    .sparse-switch
        -0x14b41a1d -> :sswitch_10
        -0xdf78592 -> :sswitch_f
        0x5d4 -> :sswitch_e
        0x5d7 -> :sswitch_d
        0x5dc -> :sswitch_c
        0x5e7 -> :sswitch_b
        0x152abb -> :sswitch_a
        0x4f72067d -> :sswitch_9
    .end sparse-switch

    .line 947
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlShellCommand;->handleShellCommand(Ljava/lang/String;)I

    .line 11
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return p0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 17
    move-result-object p0

    .line 18
    const-string v1, "Caught error for command \'"

    .line 20
    const-string v2, "\': "

    .line 22
    invoke-static {v1, p1, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    const-string p0, "Error handling hdmi_control shell command: "

    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    const-string p1, "HdmiShellCommand"

    .line 48
    invoke-static {p1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    const/4 p0, 0x1

    .line 52
    return p0
.end method

.method public final onHelp()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "HdmiControlManager (hdmi_control) commands:"

    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    const-string v0, "  help"

    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    const-string v0, "      Print this help text."

    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    const-string v0, "  onetouchplay, otp"

    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    const-string v0, "      Send the \"One Touch Play\" feature from a source to the TV"

    .line 27
    const-string v1, "  vendorcommand --device_type <originating device type>"

    .line 29
    const-string v2, "                --destination <destination device>"

    .line 31
    const-string v3, "                --args <vendor specific arguments>"

    .line 33
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "                [--id <true if vendor command should be sent with vendor id>]"

    .line 38
    const-string v1, "      Send a Vendor Command to the given target device"

    .line 40
    const-string v2, "  cec_setting get <setting name>"

    .line 42
    const-string v3, "      Get the current value of a CEC setting"

    .line 44
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "  cec_setting set <setting name> <value>"

    .line 49
    const-string v1, "      Set the value of a CEC setting"

    .line 51
    const-string v2, "  setsystemaudiomode, setsam [on|off]"

    .line 53
    const-string v3, "      Sets the System Audio Mode feature on or off on TV devices"

    .line 55
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "  setarc [on|off]"

    .line 60
    const-string v1, "      Sets the ARC feature on or off on TV devices"

    .line 62
    const-string v2, "  deviceselect <device id>"

    .line 64
    const-string v3, "      Switch to device with given id"

    .line 66
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "      The device\'s id is represented by its logical address."

    .line 71
    const-string v1, "  history_size get"

    .line 73
    const-string v2, "      Gets the number of messages that can be stored in dumpsys history"

    .line 75
    const-string v3, "  history_size set <new_size>"

    .line 77
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "      Changes the number of messages that can be stored in dumpsys history to new_size"

    .line 82
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public final receiveCallback(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, " timed out."

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 5
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    const-wide/16 v3, 0x7d0

    .line 9
    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 15
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :catch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 31
    move-result-object p0

    .line 32
    const-string p1, "Caught InterruptedException"

    .line 34
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 44
    :cond_0
    const/4 p0, 0x1

    .line 45
    return p0
.end method
