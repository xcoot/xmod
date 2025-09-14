.class public final Lcom/android/server/audio/AudioManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    const/4 v3, -0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x1

    .line 8
    if-nez v1, :cond_0

    .line 10
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 13
    move-result v0

    .line 14
    return v0

    .line 15
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 18
    const-string v6, "Error: wrong format specified for surroundFormat"

    .line 20
    const-string v7, "Error: invalid value of surroundFormat"

    .line 22
    const-string v8, "Error: no surroundFormat specified"

    .line 24
    const/4 v9, 0x0

    .line 25
    const/high16 v10, 0x10000000

    .line 27
    const/high16 v11, 0x4000000

    .line 29
    const-string/jumbo v12, "ro.product_ship"

    .line 32
    const-string/jumbo v13, "calling AudioManager.adjustStreamVolume("

    .line 35
    const-string v14, ", 0)"

    .line 37
    const-string v15, ", "

    .line 39
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 42
    move-result v16

    .line 43
    sparse-switch v16, :sswitch_data_0

    .line 46
    :goto_0
    move v1, v3

    .line 47
    goto/16 :goto_1

    .line 49
    :sswitch_0
    const-string/jumbo v2, "set-volume"

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/16 v1, 0x10

    .line 61
    goto/16 :goto_1

    .line 63
    :sswitch_1
    const-string/jumbo v2, "get-encoded-surround-mode"

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_2

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const/16 v1, 0xf

    .line 75
    goto/16 :goto_1

    .line 77
    :sswitch_2
    const-string/jumbo v2, "get-sound-dose-value"

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_3

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    const/16 v1, 0xe

    .line 89
    goto/16 :goto_1

    .line 91
    :sswitch_3
    const-string/jumbo v2, "sendScpm"

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_4

    .line 100
    goto :goto_0

    .line 101
    :cond_4
    const/16 v1, 0xd

    .line 103
    goto/16 :goto_1

    .line 105
    :sswitch_4
    const-string/jumbo v2, "get-is-surround-format-enabled"

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_5

    .line 114
    goto :goto_0

    .line 115
    :cond_5
    const/16 v1, 0xc

    .line 117
    goto/16 :goto_1

    .line 119
    :sswitch_5
    const-string/jumbo v2, "set-sound-dose-value"

    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    move-result v1

    .line 126
    if-nez v1, :cond_6

    .line 128
    goto :goto_0

    .line 129
    :cond_6
    const/16 v1, 0xb

    .line 131
    goto/16 :goto_1

    .line 133
    :sswitch_6
    const-string/jumbo v2, "set-device-volume"

    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    move-result v1

    .line 140
    if-nez v1, :cond_7

    .line 142
    goto :goto_0

    .line 143
    :cond_7
    const/16 v1, 0xa

    .line 145
    goto/16 :goto_1

    .line 147
    :sswitch_7
    const-string/jumbo v2, "reset-sound-dose-timeout"

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    move-result v1

    .line 154
    if-nez v1, :cond_8

    .line 156
    goto :goto_0

    .line 157
    :cond_8
    const/16 v1, 0x9

    .line 159
    goto/16 :goto_1

    .line 161
    :sswitch_8
    const-string v2, "adj-mute"

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    move-result v1

    .line 167
    if-nez v1, :cond_9

    .line 169
    goto :goto_0

    .line 170
    :cond_9
    const/16 v1, 0x8

    .line 172
    goto/16 :goto_1

    .line 174
    :sswitch_9
    const-string/jumbo v2, "clearScpm"

    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    move-result v1

    .line 181
    if-nez v1, :cond_a

    .line 183
    goto/16 :goto_0

    .line 185
    :cond_a
    const/4 v1, 0x7

    .line 186
    goto :goto_1

    .line 187
    :sswitch_a
    const-string/jumbo v2, "set-group-volume"

    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    move-result v1

    .line 194
    if-nez v1, :cond_b

    .line 196
    goto/16 :goto_0

    .line 198
    :cond_b
    const/4 v1, 0x6

    .line 199
    goto :goto_1

    .line 200
    :sswitch_b
    const-string/jumbo v2, "set-surround-format-enabled"

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    move-result v1

    .line 207
    if-nez v1, :cond_c

    .line 209
    goto/16 :goto_0

    .line 211
    :cond_c
    const/4 v1, 0x5

    .line 212
    goto :goto_1

    .line 213
    :sswitch_c
    const-string v2, "adj-group-volume"

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    move-result v1

    .line 219
    if-nez v1, :cond_d

    .line 221
    goto/16 :goto_0

    .line 223
    :cond_d
    const/4 v1, 0x4

    .line 224
    goto :goto_1

    .line 225
    :sswitch_d
    const-string v2, "adj-volume"

    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    move-result v1

    .line 231
    if-nez v1, :cond_e

    .line 233
    goto/16 :goto_0

    .line 235
    :cond_e
    const/4 v1, 0x3

    .line 236
    goto :goto_1

    .line 237
    :sswitch_e
    const-string v2, "adj-unmute"

    .line 239
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    move-result v1

    .line 243
    if-nez v1, :cond_f

    .line 245
    goto/16 :goto_0

    .line 247
    :cond_f
    const/4 v1, 0x2

    .line 248
    goto :goto_1

    .line 249
    :sswitch_f
    const-string/jumbo v2, "set-encoded-surround-mode"

    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    move-result v1

    .line 256
    if-nez v1, :cond_10

    .line 258
    goto/16 :goto_0

    .line 260
    :cond_10
    move v1, v5

    .line 261
    goto :goto_1

    .line 262
    :sswitch_10
    const-string/jumbo v2, "set-ringer-mode"

    .line 265
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    move-result v1

    .line 269
    if-nez v1, :cond_11

    .line 271
    goto/16 :goto_0

    .line 273
    :cond_11
    move v1, v4

    .line 274
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 277
    return v4

    .line 278
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 280
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 282
    const-class v2, Landroid/media/AudioManager;

    .line 284
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 287
    move-result-object v1

    .line 288
    check-cast v1, Landroid/media/AudioManager;

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    .line 293
    move-result v2

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    .line 297
    move-result v3

    .line 298
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 301
    move-result-object v0

    .line 302
    const-string/jumbo v5, "calling AudioManager.setStreamVolume("

    .line 305
    invoke-static {v2, v3, v5, v15, v14}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    move-result-object v5

    .line 309
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 315
    return v4

    .line 316
    :pswitch_1
    iget-object v1, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 318
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 320
    const-class v2, Landroid/media/AudioManager;

    .line 322
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 325
    move-result-object v1

    .line 326
    check-cast v1, Landroid/media/AudioManager;

    .line 328
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 331
    move-result-object v0

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    .line 334
    const-string v3, "Encoded surround mode: "

    .line 336
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v1}, Landroid/media/AudioManager;->getEncodedSurroundMode()I

    .line 342
    move-result v1

    .line 343
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    move-result-object v1

    .line 350
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    return v4

    .line 354
    :pswitch_2
    iget-object v1, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 356
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 358
    const-class v2, Landroid/media/AudioManager;

    .line 360
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 363
    move-result-object v1

    .line 364
    check-cast v1, Landroid/media/AudioManager;

    .line 366
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 369
    move-result-object v0

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    .line 372
    const-string v3, "Sound dose value: "

    .line 374
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v1}, Landroid/media/AudioManager;->getCsd()F

    .line 380
    move-result v1

    .line 381
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    move-result-object v1

    .line 388
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    return v4

    .line 392
    :pswitch_3
    invoke-static {v12, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 395
    move-result v1

    .line 396
    if-nez v1, :cond_12

    .line 398
    iget-object v0, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 400
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 402
    new-instance v1, Landroid/content/Intent;

    .line 404
    const-string/jumbo v2, "com.samsung.android.scpm.policy.UPDATE.Audio"

    .line 407
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 413
    invoke-virtual {v1, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 416
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 419
    move-result-wide v2

    .line 420
    :try_start_0
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 422
    invoke-virtual {v0, v1, v5, v9, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 428
    goto :goto_2

    .line 429
    :catchall_0
    move-exception v0

    .line 430
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 433
    throw v0

    .line 434
    :cond_12
    :goto_2
    return v4

    .line 435
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 438
    move-result-object v1

    .line 439
    if-nez v1, :cond_13

    .line 441
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 444
    move-result-object v0

    .line 445
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    :goto_3
    move v4, v5

    .line 449
    goto :goto_4

    .line 450
    :cond_13
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 453
    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 454
    if-gez v1, :cond_14

    .line 456
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 459
    move-result-object v0

    .line 460
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    goto :goto_3

    .line 464
    :cond_14
    iget-object v2, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 466
    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 468
    const-class v3, Landroid/media/AudioManager;

    .line 470
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 473
    move-result-object v2

    .line 474
    check-cast v2, Landroid/media/AudioManager;

    .line 476
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 479
    move-result-object v0

    .line 480
    const-string v3, "Value of enabled for "

    .line 482
    const-string v5, " is: "

    .line 484
    invoke-static {v1, v3, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    move-result-object v3

    .line 488
    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->isSurroundFormatEnabled(I)Z

    .line 491
    move-result v1

    .line 492
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 498
    move-result-object v1

    .line 499
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    goto :goto_4

    .line 503
    :catch_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 506
    move-result-object v0

    .line 507
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 510
    goto :goto_3

    .line 511
    :goto_4
    return v4

    .line 512
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 515
    move-result-object v1

    .line 516
    if-nez v1, :cond_15

    .line 518
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 521
    move-result-object v0

    .line 522
    const-string v1, "Error: no sound dose value specified"

    .line 524
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 527
    :goto_5
    move v4, v5

    .line 528
    goto :goto_6

    .line 529
    :cond_15
    :try_start_2
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 532
    move-result v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 533
    const/4 v2, 0x0

    .line 534
    cmpg-float v2, v1, v2

    .line 536
    if-gez v2, :cond_16

    .line 538
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 541
    move-result-object v0

    .line 542
    const-string v1, "Error: invalid value of sound dose"

    .line 544
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    goto :goto_5

    .line 548
    :cond_16
    iget-object v0, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 550
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 552
    const-class v2, Landroid/media/AudioManager;

    .line 554
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 557
    move-result-object v0

    .line 558
    check-cast v0, Landroid/media/AudioManager;

    .line 560
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setCsd(F)V

    .line 563
    goto :goto_6

    .line 564
    :catch_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 567
    move-result-object v0

    .line 568
    const-string v1, "Error: wrong format specified for sound dose"

    .line 570
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    goto :goto_5

    .line 574
    :goto_6
    return v4

    .line 575
    :pswitch_6
    iget-object v1, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 577
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 579
    const-string v2, "audio_device_volume"

    .line 581
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 584
    move-result-object v1

    .line 585
    check-cast v1, Landroid/media/AudioDeviceVolumeManager;

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    .line 590
    move-result v2

    .line 591
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    .line 594
    move-result v3

    .line 595
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    .line 598
    move-result v5

    .line 599
    new-instance v6, Landroid/media/VolumeInfo$Builder;

    .line 601
    invoke-direct {v6, v2}, Landroid/media/VolumeInfo$Builder;-><init>(I)V

    .line 604
    invoke-virtual {v6, v3}, Landroid/media/VolumeInfo$Builder;->setVolumeIndex(I)Landroid/media/VolumeInfo$Builder;

    .line 607
    move-result-object v2

    .line 608
    invoke-virtual {v2}, Landroid/media/VolumeInfo$Builder;->build()Landroid/media/VolumeInfo;

    .line 611
    move-result-object v2

    .line 612
    new-instance v3, Landroid/media/AudioDeviceAttributes;

    .line 614
    const-string/jumbo v6, "foo"

    .line 617
    invoke-direct {v3, v5, v6}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    .line 620
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 623
    move-result-object v0

    .line 624
    new-instance v5, Ljava/lang/StringBuilder;

    .line 626
    const-string/jumbo v6, "calling AudioDeviceVolumeManager.setDeviceVolume("

    .line 629
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 641
    const-string v6, ")"

    .line 643
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 649
    move-result-object v5

    .line 650
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    invoke-virtual {v1, v2, v3}, Landroid/media/AudioDeviceVolumeManager;->setDeviceVolume(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;)V

    .line 656
    return v4

    .line 657
    :pswitch_7
    iget-object v1, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 659
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 661
    const-class v2, Landroid/media/AudioManager;

    .line 663
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 666
    move-result-object v1

    .line 667
    check-cast v1, Landroid/media/AudioManager;

    .line 669
    const/high16 v2, -0x40800000    # -1.0f

    .line 671
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setCsd(F)V

    .line 674
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 677
    move-result-object v0

    .line 678
    const-string v1, "Reset sound dose momentary exposure timeout"

    .line 680
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 683
    return v4

    .line 684
    :pswitch_8
    iget-object v1, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 686
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 688
    const-class v2, Landroid/media/AudioManager;

    .line 690
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 693
    move-result-object v1

    .line 694
    check-cast v1, Landroid/media/AudioManager;

    .line 696
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    .line 699
    move-result v2

    .line 700
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 703
    move-result-object v0

    .line 704
    const-string v3, ", AudioManager.ADJUST_MUTE, 0)"

    .line 706
    invoke-static {v2, v0, v13, v3}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const/16 v0, -0x64

    .line 711
    invoke-virtual {v1, v2, v0, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 714
    return v4

    .line 715
    :pswitch_9
    invoke-static {v12, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 718
    move-result v1

    .line 719
    if-nez v1, :cond_17

    .line 721
    iget-object v0, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 723
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 725
    new-instance v1, Landroid/content/Intent;

    .line 727
    const-string/jumbo v2, "com.samsung.android.scpm.policy.CLEAR_DATA"

    .line 730
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 733
    invoke-virtual {v1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 736
    invoke-virtual {v1, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 739
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 742
    move-result-wide v2

    .line 743
    :try_start_3
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 745
    invoke-virtual {v0, v1, v5, v9, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 748
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 751
    goto :goto_7

    .line 752
    :catchall_1
    move-exception v0

    .line 753
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 756
    throw v0

    .line 757
    :cond_17
    :goto_7
    return v4

    .line 758
    :pswitch_a
    iget-object v1, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 760
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 762
    const-class v2, Landroid/media/AudioManager;

    .line 764
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 767
    move-result-object v1

    .line 768
    check-cast v1, Landroid/media/AudioManager;

    .line 770
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    .line 773
    move-result v2

    .line 774
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    .line 777
    move-result v3

    .line 778
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 781
    move-result-object v0

    .line 782
    const-string/jumbo v5, "calling AudioManager.setVolumeGroupVolumeIndex("

    .line 785
    invoke-static {v2, v3, v5, v15, v14}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 788
    move-result-object v5

    .line 789
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 792
    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setVolumeGroupVolumeIndex(III)V

    .line 795
    return v4

    .line 796
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 799
    move-result-object v1

    .line 800
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 803
    move-result-object v2

    .line 804
    if-nez v1, :cond_18

    .line 806
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 809
    move-result-object v0

    .line 810
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 813
    :goto_8
    move v4, v5

    .line 814
    goto :goto_9

    .line 815
    :cond_18
    if-nez v2, :cond_19

    .line 817
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 820
    move-result-object v0

    .line 821
    const-string v1, "Error: no enabled value for surroundFormat specified"

    .line 823
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    goto :goto_8

    .line 827
    :cond_19
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 830
    move-result v1

    .line 831
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 834
    move-result v2
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    .line 835
    if-gez v1, :cond_1a

    .line 837
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 840
    move-result-object v0

    .line 841
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 844
    goto :goto_8

    .line 845
    :cond_1a
    iget-object v0, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 847
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 849
    const-class v3, Landroid/media/AudioManager;

    .line 851
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 854
    move-result-object v0

    .line 855
    check-cast v0, Landroid/media/AudioManager;

    .line 857
    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setSurroundFormatEnabled(IZ)Z

    .line 860
    goto :goto_9

    .line 861
    :catch_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 864
    move-result-object v0

    .line 865
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 868
    goto :goto_8

    .line 869
    :goto_9
    return v4

    .line 870
    :pswitch_c
    iget-object v1, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 872
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 874
    const-class v2, Landroid/media/AudioManager;

    .line 876
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 879
    move-result-object v1

    .line 880
    check-cast v1, Landroid/media/AudioManager;

    .line 882
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    .line 885
    move-result v2

    .line 886
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readDirectionArg()I

    .line 889
    move-result v3

    .line 890
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 893
    move-result-object v0

    .line 894
    const-string/jumbo v5, "calling AudioManager.adjustVolumeGroupVolume("

    .line 897
    invoke-static {v2, v3, v5, v15, v14}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 900
    move-result-object v5

    .line 901
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 904
    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->adjustVolumeGroupVolume(III)V

    .line 907
    return v4

    .line 908
    :pswitch_d
    iget-object v1, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 910
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 912
    const-class v2, Landroid/media/AudioManager;

    .line 914
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 917
    move-result-object v1

    .line 918
    check-cast v1, Landroid/media/AudioManager;

    .line 920
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    .line 923
    move-result v2

    .line 924
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readDirectionArg()I

    .line 927
    move-result v3

    .line 928
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 931
    move-result-object v0

    .line 932
    invoke-static {v2, v3, v13, v15, v14}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 935
    move-result-object v5

    .line 936
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 939
    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 942
    return v4

    .line 943
    :pswitch_e
    iget-object v1, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 945
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 947
    const-class v2, Landroid/media/AudioManager;

    .line 949
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 952
    move-result-object v1

    .line 953
    check-cast v1, Landroid/media/AudioManager;

    .line 955
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    .line 958
    move-result v2

    .line 959
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 962
    move-result-object v0

    .line 963
    const-string v3, ", AudioManager.ADJUST_UNMUTE, 0)"

    .line 965
    invoke-static {v2, v0, v13, v3}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    const/16 v0, 0x64

    .line 970
    invoke-virtual {v1, v2, v0, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 973
    return v4

    .line 974
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 977
    move-result-object v1

    .line 978
    if-nez v1, :cond_1b

    .line 980
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 983
    move-result-object v0

    .line 984
    const-string v1, "Error: no encodedSurroundMode specified"

    .line 986
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 989
    :goto_a
    move v4, v5

    .line 990
    goto :goto_b

    .line 991
    :cond_1b
    :try_start_5
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 994
    move-result v1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    .line 995
    if-gez v1, :cond_1c

    .line 997
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1000
    move-result-object v0

    .line 1001
    const-string v1, "Error: invalid value of encodedSurroundMode"

    .line 1003
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1006
    goto :goto_a

    .line 1007
    :cond_1c
    iget-object v0, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 1009
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 1011
    const-class v2, Landroid/media/AudioManager;

    .line 1013
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1016
    move-result-object v0

    .line 1017
    check-cast v0, Landroid/media/AudioManager;

    .line 1019
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setEncodedSurroundMode(I)Z

    .line 1022
    goto :goto_b

    .line 1023
    :catch_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1026
    move-result-object v0

    .line 1027
    const-string v1, "Error: wrong format specified for encoded surround mode"

    .line 1029
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1032
    goto :goto_a

    .line 1033
    :goto_b
    return v4

    .line 1034
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1037
    move-result-object v1

    .line 1038
    if-nez v1, :cond_1d

    .line 1040
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1043
    move-result-object v0

    .line 1044
    const-string v1, "Error: no ringer mode specified"

    .line 1046
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1049
    :goto_c
    move v4, v5

    .line 1050
    goto :goto_10

    .line 1051
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 1054
    move-result v2

    .line 1055
    sparse-switch v2, :sswitch_data_1

    .line 1058
    :goto_d
    move v1, v3

    .line 1059
    goto :goto_e

    .line 1060
    :sswitch_11
    const-string v2, "VIBRATE"

    .line 1062
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1065
    move-result v1

    .line 1066
    if-nez v1, :cond_1e

    .line 1068
    goto :goto_d

    .line 1069
    :cond_1e
    const/4 v1, 0x2

    .line 1070
    goto :goto_e

    .line 1071
    :sswitch_12
    const-string v2, "SILENT"

    .line 1073
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1076
    move-result v1

    .line 1077
    if-nez v1, :cond_1f

    .line 1079
    goto :goto_d

    .line 1080
    :cond_1f
    move v1, v5

    .line 1081
    goto :goto_e

    .line 1082
    :sswitch_13
    const-string v2, "NORMAL"

    .line 1084
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1087
    move-result v1

    .line 1088
    if-nez v1, :cond_20

    .line 1090
    goto :goto_d

    .line 1091
    :cond_20
    move v1, v4

    .line 1092
    :goto_e
    packed-switch v1, :pswitch_data_1

    .line 1095
    move v2, v3

    .line 1096
    goto :goto_f

    .line 1097
    :pswitch_11
    move v2, v5

    .line 1098
    goto :goto_f

    .line 1099
    :pswitch_12
    move v2, v4

    .line 1100
    goto :goto_f

    .line 1101
    :pswitch_13
    const/4 v2, 0x2

    .line 1102
    :goto_f
    invoke-static {v2}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    .line 1105
    move-result v1

    .line 1106
    if-nez v1, :cond_21

    .line 1108
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1111
    move-result-object v0

    .line 1112
    const-string v1, "Error: invalid value of ringerMode, should be one of NORMAL|SILENT|VIBRATE"

    .line 1114
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1117
    goto :goto_c

    .line 1118
    :cond_21
    iget-object v0, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 1120
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 1122
    const-class v1, Landroid/media/AudioManager;

    .line 1124
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1127
    move-result-object v0

    .line 1128
    check-cast v0, Landroid/media/AudioManager;

    .line 1130
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 1133
    :goto_10
    return v4

    .line 1134
    nop

    .line 1135
    :sswitch_data_0
    .sparse-switch
        -0x7352c258 -> :sswitch_10
        -0x6fa638d8 -> :sswitch_f
        -0x67d35be8 -> :sswitch_e
        -0x6610e100 -> :sswitch_d
        -0x5710ee72 -> :sswitch_c
        -0x4fdec891 -> :sswitch_b
        -0x4e4a0a4d -> :sswitch_a
        -0x4bc0fbc6 -> :sswitch_9
        -0x422fb481 -> :sswitch_8
        -0x1b6c3313 -> :sswitch_7
        0x1c836046 -> :sswitch_6
        0x339d8d4a -> :sswitch_5
        0x37e12d0e -> :sswitch_4
        0x4a5a07f5 -> :sswitch_3
        0x580780d6 -> :sswitch_2
        0x5e162b1c -> :sswitch_1
        0x6a2942e5 -> :sswitch_0
    .end sparse-switch

    .line 1205
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1243
    :sswitch_data_1
    .sparse-switch
        -0x76664f19 -> :sswitch_13
        -0x6e3577ab -> :sswitch_12
        0x45b2014f -> :sswitch_11
    .end sparse-switch

    .line 1257
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Audio manager commands:"

    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    const-string v0, "  help"

    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    const-string v0, "    Print this help text."

    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 23
    const-string v0, "  set-surround-format-enabled SURROUND_FORMAT IS_ENABLED"

    .line 25
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    const-string v0, "    Enables/disabled the SURROUND_FORMAT based on IS_ENABLED"

    .line 30
    const-string v1, "  get-is-surround-format-enabled SURROUND_FORMAT"

    .line 32
    const-string v2, "    Returns if the SURROUND_FORMAT is enabled"

    .line 34
    const-string v3, "  set-encoded-surround-mode SURROUND_SOUND_MODE"

    .line 36
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "    Sets the encoded surround sound mode to SURROUND_SOUND_MODE"

    .line 41
    const-string v1, "  get-encoded-surround-mode"

    .line 43
    const-string v2, "    Returns the encoded surround sound mode"

    .line 45
    const-string v3, "  set-sound-dose-value"

    .line 47
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v0, "    Sets the current sound dose value"

    .line 52
    const-string v1, "  get-sound-dose-value"

    .line 54
    const-string v2, "    Returns the current sound dose value"

    .line 56
    const-string v3, "  reset-sound-dose-timeout"

    .line 58
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "    Resets the sound dose timeout used for momentary exposure"

    .line 63
    const-string v1, "  set-ringer-mode NORMAL|SILENT|VIBRATE"

    .line 65
    const-string v2, "    Sets the Ringer mode to one of NORMAL|SILENT|VIBRATE"

    .line 67
    const-string v3, "  set-volume STREAM_TYPE VOLUME_INDEX"

    .line 69
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "    Sets the volume for STREAM_TYPE to VOLUME_INDEX"

    .line 74
    const-string v1, "  set-device-volume STREAM_TYPE VOLUME_INDEX NATIVE_DEVICE_TYPE"

    .line 76
    const-string v2, "    Sets for NATIVE_DEVICE_TYPE the STREAM_TYPE volume to VOLUME_INDEX"

    .line 78
    const-string v3, "  adj-mute STREAM_TYPE"

    .line 80
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "    mutes the STREAM_TYPE"

    .line 85
    const-string v1, "  adj-unmute STREAM_TYPE"

    .line 87
    const-string v2, "    unmutes the STREAM_TYPE"

    .line 89
    const-string v3, "  adj-volume STREAM_TYPE <RAISE|LOWER|MUTE|UNMUTE>"

    .line 91
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "    Adjusts the STREAM_TYPE volume given the specified direction"

    .line 96
    const-string v1, "  set-group-volume GROUP_ID VOLUME_INDEX"

    .line 98
    const-string v2, "    Sets the volume for GROUP_ID to VOLUME_INDEX"

    .line 100
    const-string v3, "  adj-group-volume GROUP_ID <RAISE|LOWER|MUTE|UNMUTE>"

    .line 102
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "    Adjusts the group volume for GROUP_ID given the specified direction"

    .line 107
    const-string v1, "  sendScpm"

    .line 109
    const-string v2, "  clearScpm"

    .line 111
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public final readDirectionArg()I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, -0x1

    .line 3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 6
    move-result-object v2

    .line 7
    if-eqz v2, :cond_4

    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 12
    move-result p0

    .line 13
    sparse-switch p0, :sswitch_data_0

    .line 16
    :goto_0
    move p0, v1

    .line 17
    goto :goto_1

    .line 18
    :sswitch_0
    const-string p0, "RAISE"

    .line 20
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p0

    .line 24
    if-nez p0, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x3

    .line 28
    goto :goto_1

    .line 29
    :sswitch_1
    const-string p0, "LOWER"

    .line 31
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p0, 0x2

    .line 39
    goto :goto_1

    .line 40
    :sswitch_2
    const-string p0, "MUTE"

    .line 42
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result p0

    .line 46
    if-nez p0, :cond_2

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move p0, v0

    .line 50
    goto :goto_1

    .line 51
    :sswitch_3
    const-string p0, "UNMUTE"

    .line 53
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_3

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const/4 p0, 0x0

    .line 61
    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 66
    const-string v0, "Wrong direction argument: "

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    throw p0

    .line 76
    :pswitch_0
    move v0, v1

    .line 77
    goto :goto_2

    .line 78
    :pswitch_1
    const/16 v0, -0x64

    .line 80
    goto :goto_2

    .line 81
    :pswitch_2
    const/16 v0, 0x64

    .line 83
    :goto_2
    :pswitch_3
    return v0

    .line 84
    :cond_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 87
    move-result-object p0

    .line 88
    const-string v0, "Error: no argument provided"

    .line 90
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 95
    const-string v0, "No argument provided"

    .line 97
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 100
    throw p0

    .line 101
    :sswitch_data_0
    .sparse-switch
        -0x6a849fce -> :sswitch_3
        0x244a19 -> :sswitch_2
        0x45432e1 -> :sswitch_1
        0x4a22fcc -> :sswitch_0
    .end sparse-switch

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final readIntArg()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p0

    .line 12
    :catch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 15
    move-result-object p0

    .line 16
    const-string v1, "Error: wrong format for argument "

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 27
    const-string v1, "Wrong format for argument "

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p0

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 40
    move-result-object p0

    .line 41
    const-string v0, "Error: no argument provided"

    .line 43
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 48
    const-string v0, "No argument provided"

    .line 50
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p0
.end method
