.class public final Lcom/android/server/devicestate/DeviceStateManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sLastBaseStateRequest:Landroid/hardware/devicestate/DeviceStateRequest;

.field public static sLastRequest:Landroid/hardware/devicestate/DeviceStateRequest;


# instance fields
.field public final mClient:Landroid/hardware/devicestate/DeviceStateManager;

.field public final mService:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 6
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 10
    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/hardware/devicestate/DeviceStateManager;

    .line 18
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mClient:Landroid/hardware/devicestate/DeviceStateManager;

    .line 20
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 14

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 14
    move-result-object v3

    .line 15
    const-string v4, "Error: requested state should be an integer"

    .line 17
    const-string/jumbo v5, "to get the list of currently supported device states"

    .line 20
    const-string v6, "    print-states"

    .line 22
    const-string v7, "Run:"

    .line 24
    const-string v8, "-------------------"

    .line 26
    const-string/jumbo v9, "reset"

    .line 29
    const-string v10, "Error: "

    .line 31
    const-string v11, ""

    .line 33
    const/4 v12, 0x0

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 37
    move-result v13

    .line 38
    sparse-switch v13, :sswitch_data_0

    .line 41
    :goto_0
    move v13, v0

    .line 42
    goto :goto_1

    .line 43
    :sswitch_0
    const-string/jumbo v13, "state"

    .line 46
    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v13

    .line 50
    if-nez v13, :cond_1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v13, 0x4

    .line 54
    goto :goto_1

    .line 55
    :sswitch_1
    const-string/jumbo v13, "print-states-simple"

    .line 58
    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v13

    .line 62
    if-nez v13, :cond_2

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 v13, 0x3

    .line 66
    goto :goto_1

    .line 67
    :sswitch_2
    const-string/jumbo v13, "print-states"

    .line 70
    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v13

    .line 74
    if-nez v13, :cond_3

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const/4 v13, 0x2

    .line 78
    goto :goto_1

    .line 79
    :sswitch_3
    const-string/jumbo v13, "print-state"

    .line 82
    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result v13

    .line 86
    if-nez v13, :cond_4

    .line 88
    goto :goto_0

    .line 89
    :cond_4
    move v13, v2

    .line 90
    goto :goto_1

    .line 91
    :sswitch_4
    const-string v13, "base-state"

    .line 93
    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v13

    .line 97
    if-nez v13, :cond_5

    .line 99
    goto :goto_0

    .line 100
    :cond_5
    move v13, v1

    .line 101
    :goto_1
    packed-switch v13, :pswitch_data_0

    .line 104
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 107
    move-result p0

    .line 108
    return p0

    .line 109
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 112
    move-result-object p1

    .line 113
    if-nez p1, :cond_6

    .line 115
    invoke-virtual {p0, v3}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->printAllStates(Ljava/io/PrintWriter;)V

    .line 118
    :goto_2
    move v0, v1

    .line 119
    goto/16 :goto_6

    .line 121
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 124
    move-result-wide v2

    .line 125
    :try_start_0
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    move-result v9

    .line 129
    if-eqz v9, :cond_7

    .line 131
    sget-object p1, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->sLastRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    .line 133
    if-eqz p1, :cond_8

    .line 135
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mClient:Landroid/hardware/devicestate/DeviceStateManager;

    .line 137
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceStateManager;->cancelStateRequest()V

    .line 140
    sput-object v12, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->sLastRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    .line 142
    goto :goto_3

    .line 143
    :catchall_0
    move-exception p0

    .line 144
    goto :goto_7

    .line 145
    :catch_0
    move-exception p1

    .line 146
    goto :goto_4

    .line 147
    :cond_7
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 150
    move-result p1

    .line 151
    invoke-static {p1}, Landroid/hardware/devicestate/DeviceStateRequest;->newBuilder(I)Landroid/hardware/devicestate/DeviceStateRequest$Builder;

    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceStateRequest$Builder;->build()Landroid/hardware/devicestate/DeviceStateRequest;

    .line 158
    move-result-object p1

    .line 159
    iget-object v9, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mClient:Landroid/hardware/devicestate/DeviceStateManager;

    .line 161
    invoke-virtual {v9, p1, v12, v12}, Landroid/hardware/devicestate/DeviceStateManager;->requestState(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V

    .line 164
    sput-object p1, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->sLastRequest:Landroid/hardware/devicestate/DeviceStateRequest;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :cond_8
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 169
    goto :goto_2

    .line 170
    :goto_4
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 173
    move-result-object v1

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    .line 176
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 217
    move-result-object p1

    .line 218
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 231
    move-result-object p0

    .line 232
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    :goto_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 238
    goto :goto_6

    .line 239
    :catch_1
    :try_start_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 242
    move-result-object p0

    .line 243
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    goto :goto_5

    .line 247
    :goto_6
    return v0

    .line 248
    :goto_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 251
    throw p0

    .line 252
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 254
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 256
    monitor-enter p1

    .line 257
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStatesLocked()Ljava/util/List;

    .line 260
    move-result-object p0

    .line 261
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 262
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 265
    move-result-object p0

    .line 266
    new-instance p1, Lcom/android/server/devicestate/DeviceStateManagerShellCommand$$ExternalSyntheticLambda0;

    .line 268
    invoke-direct {p1, v1}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand$$ExternalSyntheticLambda0;-><init>(I)V

    .line 271
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 274
    move-result-object p0

    .line 275
    new-instance p1, Lcom/android/server/devicestate/DeviceStateManagerShellCommand$$ExternalSyntheticLambda0;

    .line 277
    invoke-direct {p1, v2}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand$$ExternalSyntheticLambda0;-><init>(I)V

    .line 280
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 283
    move-result-object p0

    .line 284
    const-string p1, ","

    .line 286
    invoke-static {p1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    .line 289
    move-result-object p1

    .line 290
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 293
    move-result-object p0

    .line 294
    check-cast p0, Ljava/lang/String;

    .line 296
    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 299
    return v1

    .line 300
    :catchall_1
    move-exception p0

    .line 301
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 302
    throw p0

    .line 303
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 305
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 307
    monitor-enter p1

    .line 308
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStatesLocked()Ljava/util/List;

    .line 311
    move-result-object p0

    .line 312
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 313
    const-string p1, "Supported states: [\n"

    .line 315
    invoke-virtual {v3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    move p1, v1

    .line 319
    :goto_8
    move-object v0, p0

    .line 320
    check-cast v0, Ljava/util/ArrayList;

    .line 322
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 325
    move-result v4

    .line 326
    if-ge p1, v4, :cond_9

    .line 328
    new-instance v4, Ljava/lang/StringBuilder;

    .line 330
    const-string v5, "  "

    .line 332
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 342
    const-string v0, ",\n"

    .line 344
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 354
    add-int/2addr p1, v2

    .line 355
    goto :goto_8

    .line 356
    :cond_9
    const-string p0, "]"

    .line 358
    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    return v1

    .line 362
    :catchall_2
    move-exception p0

    .line 363
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 364
    throw p0

    .line 365
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 367
    iget-object v13, p1, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 369
    monitor-enter v13

    .line 370
    :try_start_7
    iget-object p1, p1, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    .line 372
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 373
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    .line 376
    move-result v0

    .line 377
    if-eqz v0, :cond_a

    .line 379
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 382
    move-result-object p0

    .line 383
    check-cast p0, Landroid/hardware/devicestate/DeviceState;

    .line 385
    invoke-virtual {p0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 388
    move-result p0

    .line 389
    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(I)V

    .line 392
    goto :goto_9

    .line 393
    :cond_a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 396
    move-result-object p0

    .line 397
    const-string p1, "Error: device state not available."

    .line 399
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    move v1, v2

    .line 403
    :goto_9
    return v1

    .line 404
    :catchall_3
    move-exception p0

    .line 405
    :try_start_8
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 406
    throw p0

    .line 407
    :pswitch_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 410
    move-result-object p1

    .line 411
    if-nez p1, :cond_b

    .line 413
    invoke-virtual {p0, v3}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->printAllStates(Ljava/io/PrintWriter;)V

    .line 416
    :goto_a
    move v0, v1

    .line 417
    goto/16 :goto_e

    .line 419
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 422
    move-result-wide v2

    .line 423
    :try_start_9
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 426
    move-result v9

    .line 427
    if-eqz v9, :cond_c

    .line 429
    sget-object p1, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->sLastBaseStateRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    .line 431
    if-eqz p1, :cond_d

    .line 433
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mClient:Landroid/hardware/devicestate/DeviceStateManager;

    .line 435
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceStateManager;->cancelBaseStateOverride()V

    .line 438
    sput-object v12, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->sLastBaseStateRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    .line 440
    goto :goto_b

    .line 441
    :catchall_4
    move-exception p0

    .line 442
    goto :goto_f

    .line 443
    :catch_2
    move-exception p1

    .line 444
    goto :goto_c

    .line 445
    :cond_c
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 448
    move-result p1

    .line 449
    invoke-static {p1}, Landroid/hardware/devicestate/DeviceStateRequest;->newBuilder(I)Landroid/hardware/devicestate/DeviceStateRequest$Builder;

    .line 452
    move-result-object p1

    .line 453
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceStateRequest$Builder;->build()Landroid/hardware/devicestate/DeviceStateRequest;

    .line 456
    move-result-object p1

    .line 457
    iget-object v9, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mClient:Landroid/hardware/devicestate/DeviceStateManager;

    .line 459
    invoke-virtual {v9, p1, v12, v12}, Landroid/hardware/devicestate/DeviceStateManager;->requestBaseStateOverride(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V

    .line 462
    sput-object p1, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->sLastBaseStateRequest:Landroid/hardware/devicestate/DeviceStateRequest;
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 464
    :cond_d
    :goto_b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 467
    goto :goto_a

    .line 468
    :goto_c
    :try_start_a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 471
    move-result-object v1

    .line 472
    new-instance v4, Ljava/lang/StringBuilder;

    .line 474
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 480
    move-result-object p1

    .line 481
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    move-result-object p1

    .line 488
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 494
    move-result-object p1

    .line 495
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 501
    move-result-object p1

    .line 502
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 508
    move-result-object p1

    .line 509
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 515
    move-result-object p1

    .line 516
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 522
    move-result-object p1

    .line 523
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 529
    move-result-object p0

    .line 530
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 533
    :goto_d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 536
    goto :goto_e

    .line 537
    :catch_3
    :try_start_b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 540
    move-result-object p0

    .line 541
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 544
    goto :goto_d

    .line 545
    :goto_e
    return v0

    .line 546
    :goto_f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 549
    throw p0

    .line 550
    nop

    .line 551
    :sswitch_data_0
    .sparse-switch
        -0x71a3416b -> :sswitch_4
        -0x54c2ea8f -> :sswitch_3
        -0x439a66de -> :sswitch_2
        -0x119b2743 -> :sswitch_1
        0x68ac491 -> :sswitch_0
    .end sparse-switch

    .line 573
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Device state manager (device_state) commands:"

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
    const-string v0, "  state [reset|OVERRIDE_DEVICE_STATE]"

    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    const-string v0, "    Return or override device state."

    .line 27
    const-string v1, "  print-state"

    .line 29
    const-string v2, "    Return the current device state."

    .line 31
    const-string v3, "  print-states"

    .line 33
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "    Return list of currently supported device states."

    .line 38
    const-string v1, "  print-states-simple"

    .line 40
    const-string v2, "    Return the currently supported device states in comma separated format."

    .line 42
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public final printAllStates(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 3
    iget-object v1, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v0, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    .line 8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 11
    iget-object v2, v1, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 13
    monitor-enter v2

    .line 14
    :try_start_1
    iget-object v1, v1, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 16
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 19
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getOverrideState()Ljava/util/Optional;

    .line 22
    move-result-object p0

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    const-string v3, "Committed state: "

    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 36
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/hardware/devicestate/DeviceState;

    .line 42
    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string v0, "(none)"

    .line 49
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 65
    const-string v0, "----------------------"

    .line 67
    const-string v2, "Base state: "

    .line 69
    invoke-static {p1, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_1

    .line 79
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Landroid/hardware/devicestate/DeviceState;

    .line 85
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->toString()Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    const-string v1, "(none)"

    .line 92
    :goto_1
    const-string v2, "Override state: "

    .line 94
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    :cond_2
    return-void

    .line 113
    :catchall_0
    move-exception p0

    .line 114
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    throw p0

    .line 116
    :catchall_1
    move-exception p0

    .line 117
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 118
    throw p0
.end method
