.class public final Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 6
    return-void
.end method

.method public static requestSessionCommon(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)I
    .locals 3

    .line 1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 4
    const/4 p2, -0x1

    .line 5
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    const-wide/16 v1, 0x5

    .line 9
    invoke-virtual {p1, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 15
    const-string p1, "Timed out after 5 seconds"

    .line 17
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p2, 0x0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    const-string p1, "System call interrupted"

    .line 25
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 35
    :goto_0
    return p2
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, -0x1

    .line 5
    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 15
    move-result-object v4

    .line 16
    const-string v5, "Invalid set: "

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 21
    move-result v6

    .line 22
    sparse-switch v6, :sswitch_data_0

    .line 25
    :goto_0
    move v6, v3

    .line 26
    goto :goto_1

    .line 27
    :sswitch_0
    const-string/jumbo v6, "destroy"

    .line 30
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v6

    .line 34
    if-nez v6, :cond_1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v6, 0x3

    .line 38
    goto :goto_1

    .line 39
    :sswitch_1
    const-string/jumbo v6, "list"

    .line 42
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v6

    .line 46
    if-nez v6, :cond_2

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move v6, v0

    .line 50
    goto :goto_1

    .line 51
    :sswitch_2
    const-string/jumbo v6, "set"

    .line 54
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v6

    .line 58
    if-nez v6, :cond_3

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    move v6, v1

    .line 62
    goto :goto_1

    .line 63
    :sswitch_3
    const-string/jumbo v6, "get"

    .line 66
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v6

    .line 70
    if-nez v6, :cond_4

    .line 72
    goto :goto_0

    .line 73
    :cond_4
    move v6, v2

    .line 74
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 77
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 80
    move-result p0

    .line 81
    return p0

    .line 82
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    const-string/jumbo v0, "sessions"

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_5

    .line 95
    const-string p0, "Error: invalid list type"

    .line 97
    invoke-virtual {v4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    goto :goto_2

    .line 101
    :cond_5
    const-string p1, "--user"

    .line 103
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_6

    .line 113
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 116
    move-result-object p1

    .line 117
    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 120
    move-result v3

    .line 121
    :cond_6
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 123
    invoke-direct {p1, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 126
    new-instance v0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$1;

    .line 128
    invoke-direct {v0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$1;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 131
    new-instance v1, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$$ExternalSyntheticLambda0;

    .line 133
    invoke-direct {v1, p0, v3, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;ILcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$1;)V

    .line 136
    invoke-static {v4, p1, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->requestSessionCommon(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)I

    .line 139
    move-result v3

    .line 140
    :goto_2
    return v3

    .line 141
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 144
    move-result-object p1

    .line 145
    const-string/jumbo v0, "sessions"

    .line 148
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    move-result p1

    .line 152
    if-nez p1, :cond_7

    .line 154
    const-string p0, "Error: invalid list type"

    .line 156
    invoke-virtual {v4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    goto :goto_3

    .line 160
    :cond_7
    const-string p1, "--user"

    .line 162
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    move-result p1

    .line 170
    if-eqz p1, :cond_8

    .line 172
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 175
    move-result-object p1

    .line 176
    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 179
    move-result v3

    .line 180
    :cond_8
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 182
    invoke-direct {p1, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 185
    new-instance v0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$2;

    .line 187
    invoke-direct {v0, v4, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$2;-><init>(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)V

    .line 190
    new-instance v1, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$$ExternalSyntheticLambda0;

    .line 192
    invoke-direct {v1, p0, v3, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;ILcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$2;)V

    .line 195
    invoke-static {v4, p1, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->requestSessionCommon(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)I

    .line 198
    move-result v3

    .line 199
    :goto_3
    return v3

    .line 200
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 210
    move-result v6

    .line 211
    sparse-switch v6, :sswitch_data_1

    .line 214
    :goto_4
    move v0, v3

    .line 215
    goto :goto_5

    .line 216
    :sswitch_4
    const-string/jumbo v6, "temporary-service"

    .line 219
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    move-result v6

    .line 223
    if-nez v6, :cond_b

    .line 225
    goto :goto_4

    .line 226
    :sswitch_5
    const-string v0, "bind-instant-service-allowed"

    .line 228
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    move-result v0

    .line 232
    if-nez v0, :cond_9

    .line 234
    goto :goto_4

    .line 235
    :cond_9
    move v0, v1

    .line 236
    goto :goto_5

    .line 237
    :sswitch_6
    const-string/jumbo v0, "default-service-enabled"

    .line 240
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    move-result v0

    .line 244
    if-nez v0, :cond_a

    .line 246
    goto :goto_4

    .line 247
    :cond_a
    move v0, v2

    .line 248
    :cond_b
    :goto_5
    packed-switch v0, :pswitch_data_1

    .line 251
    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    move-result-object p0

    .line 255
    invoke-virtual {v4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    :goto_6
    move v2, v3

    .line 259
    goto/16 :goto_7

    .line 261
    :pswitch_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 264
    move-result-object p1

    .line 265
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 268
    move-result p1

    .line 269
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 272
    move-result-object v0

    .line 273
    if-nez v0, :cond_c

    .line 275
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->resetTemporaryService(I)V

    .line 280
    goto/16 :goto_7

    .line 282
    :cond_c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 285
    move-result-object v1

    .line 286
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 289
    move-result v1

    .line 290
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 292
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->setTemporaryService(ILjava/lang/String;I)V

    .line 295
    new-instance p0, Ljava/lang/StringBuilder;

    .line 297
    const-string p1, "ContentCaptureService temporarily set to "

    .line 299
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    const-string p1, " for "

    .line 304
    const-string/jumbo v3, "ms"

    .line 307
    invoke-static {v1, v0, p1, v3, p0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 310
    move-result-object p0

    .line 311
    invoke-virtual {v4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    goto :goto_7

    .line 315
    :pswitch_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 318
    move-result-object p1

    .line 319
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 322
    move-result-object v0

    .line 323
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    const-string/jumbo v5, "true"

    .line 329
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    move-result v5

    .line 333
    if-nez v5, :cond_e

    .line 335
    const-string/jumbo v1, "false"

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 341
    move-result v0

    .line 342
    if-nez v0, :cond_d

    .line 344
    const-string p0, "Invalid mode: "

    .line 346
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    move-result-object p0

    .line 350
    invoke-virtual {v4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    goto :goto_6

    .line 354
    :cond_d
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 356
    invoke-virtual {p0, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->setAllowInstantService(Z)V

    .line 359
    goto :goto_7

    .line 360
    :cond_e
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 362
    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->setAllowInstantService(Z)V

    .line 365
    goto :goto_7

    .line 366
    :pswitch_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 369
    move-result-object p1

    .line 370
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 373
    move-result p1

    .line 374
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 377
    move-result-object v0

    .line 378
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 381
    move-result v0

    .line 382
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 384
    invoke-virtual {p0, p1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->setDefaultServiceEnabled(IZ)Z

    .line 387
    move-result p0

    .line 388
    if-nez p0, :cond_f

    .line 390
    new-instance p0, Ljava/lang/StringBuilder;

    .line 392
    const-string p1, "already "

    .line 394
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    move-result-object p0

    .line 404
    invoke-virtual {v4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    :cond_f
    :goto_7
    return v2

    .line 408
    :pswitch_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 411
    move-result-object p1

    .line 412
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 415
    const-string/jumbo v0, "default-service-enabled"

    .line 418
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 421
    move-result v0

    .line 422
    if-nez v0, :cond_12

    .line 424
    const-string v0, "bind-instant-service-allowed"

    .line 426
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 429
    move-result v0

    .line 430
    if-nez v0, :cond_10

    .line 432
    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 435
    move-result-object p0

    .line 436
    invoke-virtual {v4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    move v2, v3

    .line 440
    goto :goto_8

    .line 441
    :cond_10
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 443
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->enforceCallingPermissionForManagement()V

    .line 446
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 448
    monitor-enter p1

    .line 449
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    .line 451
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    if-eqz p0, :cond_11

    .line 454
    const-string/jumbo p0, "true"

    .line 457
    invoke-virtual {v4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    goto :goto_8

    .line 461
    :cond_11
    const-string/jumbo p0, "false"

    .line 464
    invoke-virtual {v4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    goto :goto_8

    .line 468
    :catchall_0
    move-exception p0

    .line 469
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    throw p0

    .line 471
    :cond_12
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 474
    move-result-object p1

    .line 475
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 478
    move-result p1

    .line 479
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 481
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->isDefaultServiceEnabled(I)Z

    .line 484
    move-result p0

    .line 485
    invoke-virtual {v4, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 488
    :goto_8
    return v2

    .line 489
    :sswitch_data_0
    .sparse-switch
        0x18f56 -> :sswitch_3
        0x1bc62 -> :sswitch_2
        0x32b09e -> :sswitch_1
        0x5cd39ffa -> :sswitch_0
    .end sparse-switch

    .line 507
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 519
    :sswitch_data_1
    .sparse-switch
        0x1f91e49d -> :sswitch_6
        0x30420514 -> :sswitch_5
        0x77724739 -> :sswitch_4
    .end sparse-switch

    .line 533
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 2

    .line 1
    const-string v0, ""

    .line 3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    const-string v1, "ContentCapture Service (content_capture) commands:"

    .line 9
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    const-string v1, "  help"

    .line 14
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    const-string v1, "    Prints this help text."

    .line 19
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    const-string v1, "  get bind-instant-service-allowed"

    .line 27
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    const-string v1, "    Gets whether binding to services provided by instant apps is allowed"

    .line 32
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    const-string v1, "  set bind-instant-service-allowed [true | false]"

    .line 40
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    const-string v1, "    Sets whether binding to services provided by instant apps is allowed"

    .line 45
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    const-string v1, "  set temporary-service USER_ID [COMPONENT_NAME DURATION]"

    .line 53
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    const-string v1, "    Temporarily (for DURATION ms) changes the service implemtation."

    .line 58
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    const-string v1, "    To reset, call with just the USER_ID argument."

    .line 63
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    const-string v1, "  set default-service-enabled USER_ID [true|false]"

    .line 71
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    const-string v1, "    Enable / disable the default service for the user."

    .line 76
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    const-string v1, "  get default-service-enabled USER_ID"

    .line 84
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const-string v1, "    Checks whether the default service is enabled for the user."

    .line 89
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    const-string v1, "  list sessions [--user USER_ID]"

    .line 97
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    const-string v1, "    Lists all pending sessions."

    .line 102
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    const-string v1, "  destroy sessions [--user USER_ID]"

    .line 110
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    const-string v1, "    Destroys all pending sessions."

    .line 115
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    .line 124
    return-void

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    if-eqz p0, :cond_0

    .line 128
    :try_start_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    goto :goto_0

    .line 132
    :catchall_1
    move-exception p0

    .line 133
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 136
    :cond_0
    :goto_0
    throw v0
.end method
