.class public final Lcom/android/server/autofill/AutofillManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/autofill/AutofillManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/AutofillManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    .line 6
    return-void
.end method

.method public static waitForLatch(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    const-wide/16 v2, 0x5

    .line 6
    invoke-virtual {p1, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 12
    const-string p1, "Timed out after 5 seconds"

    .line 14
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return v0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :catch_0
    const-string p1, "System call interrupted"

    .line 22
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 32
    return v0
.end method


# virtual methods
.method public final getLogLevel(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 6
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x4

    .line 13
    if-eqz v0, :cond_0

    .line 15
    monitor-exit p0

    .line 16
    move p0, v2

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 22
    if-eqz v0, :cond_1

    .line 24
    monitor-exit p0

    .line 25
    move p0, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    const/4 p0, 0x0

    .line 29
    :goto_0
    if-eqz p0, :cond_4

    .line 31
    if-eq p0, v1, :cond_3

    .line 33
    if-eq p0, v2, :cond_2

    .line 35
    const-string/jumbo v0, "unknow ("

    .line 38
    const-string v1, ")"

    .line 40
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void

    .line 44
    :cond_2
    const-string/jumbo p0, "verbose"

    .line 47
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    return-void

    .line 51
    :cond_3
    const-string/jumbo p0, "debug"

    .line 54
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    return-void

    .line 58
    :cond_4
    const-string/jumbo p0, "off"

    .line 61
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    return-void

    .line 65
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    throw p1
.end method

.method public final getNextIntArgRequired()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 10

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x2

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, -0x1

    .line 7
    const/4 v6, 0x1

    .line 8
    if-nez p1, :cond_0

    .line 10
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 18
    move-result-object v7

    .line 19
    const/4 v8, 0x0

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 23
    move-result v9

    .line 24
    sparse-switch v9, :sswitch_data_0

    .line 27
    :goto_0
    move v9, v5

    .line 28
    goto :goto_1

    .line 29
    :sswitch_0
    const-string/jumbo v9, "destroy"

    .line 32
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v9

    .line 36
    if-nez v9, :cond_1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v9, v0

    .line 40
    goto :goto_1

    .line 41
    :sswitch_1
    const-string/jumbo v9, "reset"

    .line 44
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v9

    .line 48
    if-nez v9, :cond_2

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    move v9, v2

    .line 52
    goto :goto_1

    .line 53
    :sswitch_2
    const-string/jumbo v9, "flags"

    .line 56
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v9

    .line 60
    if-nez v9, :cond_3

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    move v9, v1

    .line 64
    goto :goto_1

    .line 65
    :sswitch_3
    const-string/jumbo v9, "list"

    .line 68
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v9

    .line 72
    if-nez v9, :cond_4

    .line 74
    goto :goto_0

    .line 75
    :cond_4
    move v9, v3

    .line 76
    goto :goto_1

    .line 77
    :sswitch_4
    const-string/jumbo v9, "set"

    .line 80
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v9

    .line 84
    if-nez v9, :cond_5

    .line 86
    goto :goto_0

    .line 87
    :cond_5
    move v9, v6

    .line 88
    goto :goto_1

    .line 89
    :sswitch_5
    const-string/jumbo v9, "get"

    .line 92
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    move-result v9

    .line 96
    if-nez v9, :cond_6

    .line 98
    goto :goto_0

    .line 99
    :cond_6
    move v9, v4

    .line 100
    :goto_1
    packed-switch v9, :pswitch_data_0

    .line 103
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 106
    move-result p0

    .line 107
    return p0

    .line 108
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 111
    move-result-object p1

    .line 112
    const-string/jumbo v0, "sessions"

    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_7

    .line 121
    const-string p0, "Error: invalid list type"

    .line 123
    invoke-virtual {v7, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    goto :goto_2

    .line 127
    :cond_7
    const-string p1, "--user"

    .line 129
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_8

    .line 139
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 142
    move-result-object p1

    .line 143
    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 146
    move-result v5

    .line 147
    :cond_8
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 149
    invoke-direct {p1, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 152
    new-instance v0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$2;

    .line 154
    invoke-direct {v0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$2;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 157
    new-instance v1, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$$ExternalSyntheticLambda1;

    .line 159
    invoke-direct {v1, p0, v5, v0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/AutofillManagerServiceShellCommand;ILcom/android/server/autofill/AutofillManagerServiceShellCommand$2;)V

    .line 162
    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$$ExternalSyntheticLambda1;->run()V

    .line 165
    invoke-static {v7, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->waitForLatch(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)I

    .line 168
    move-result v5

    .line 169
    :goto_2
    return v5

    .line 170
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    const-string p1, "AutofillManagerService"

    .line 177
    const-string/jumbo v0, "reset()"

    .line 180
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 186
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 188
    monitor-enter p1

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    .line 191
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 194
    move-result v0

    .line 195
    move v1, v4

    .line 196
    :goto_3
    if-ge v1, v0, :cond_a

    .line 198
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    .line 200
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 203
    move-result-object v2

    .line 204
    check-cast v2, Ljava/util/List;

    .line 206
    move v3, v4

    .line 207
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 210
    move-result v5

    .line 211
    if-ge v3, v5, :cond_9

    .line 213
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 216
    move-result-object v5

    .line 217
    check-cast v5, Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 219
    check-cast v5, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 221
    invoke-virtual {v5}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroyLocked()V

    .line 224
    add-int/2addr v3, v6

    .line 225
    goto :goto_4

    .line 226
    :cond_9
    add-int/2addr v1, v6

    .line 227
    goto :goto_3

    .line 228
    :cond_a
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    .line 230
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 233
    monitor-exit p1

    .line 234
    return v4

    .line 235
    :catchall_0
    move-exception p0

    .line 236
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    throw p0

    .line 238
    :pswitch_2
    invoke-static {}, Landroid/service/autofill/Flags;->test()Z

    .line 241
    move-result p0

    .line 242
    const-string p1, ""

    .line 244
    if-eqz p0, :cond_b

    .line 246
    const-string p0, "Hello Flag World!"

    .line 248
    invoke-virtual {v7, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v7, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    :cond_b
    new-array p0, v4, [Ljava/lang/reflect/Method;

    .line 256
    :try_start_1
    const-class p0, Landroid/service/autofill/Flags;

    .line 258
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 261
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 262
    array-length v0, p0

    .line 263
    move v1, v4

    .line 264
    :goto_5
    if-ge v1, v0, :cond_d

    .line 266
    aget-object v2, p0, v1

    .line 268
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 271
    move-result v3

    .line 272
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 275
    move-result v3

    .line 276
    if-nez v3, :cond_c

    .line 278
    goto :goto_7

    .line 279
    :cond_c
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 281
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 287
    move-result-object v5

    .line 288
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string v5, ": "

    .line 293
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    move-result-object v3

    .line 300
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v2, v8, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    move-result-object v2

    .line 307
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 310
    :goto_6
    invoke-virtual {v7, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    goto :goto_7

    .line 314
    :catchall_1
    move-exception p0

    .line 315
    goto :goto_8

    .line 316
    :catch_0
    move-exception v2

    .line 317
    :try_start_3
    invoke-virtual {v2, v7}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 320
    goto :goto_6

    .line 321
    :goto_7
    add-int/2addr v1, v6

    .line 322
    goto :goto_5

    .line 323
    :goto_8
    invoke-virtual {v7, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    throw p0

    .line 327
    :catch_1
    move-exception p0

    .line 328
    invoke-virtual {p0, v7}, Ljava/lang/SecurityException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 331
    move v4, v5

    .line 332
    :cond_d
    return v4

    .line 333
    :pswitch_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 336
    move-result-object p1

    .line 337
    const-string/jumbo v0, "sessions"

    .line 340
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 343
    move-result p1

    .line 344
    if-nez p1, :cond_e

    .line 346
    const-string p0, "Error: invalid list type"

    .line 348
    invoke-virtual {v7, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    goto :goto_9

    .line 352
    :cond_e
    const-string p1, "--user"

    .line 354
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 357
    move-result-object v0

    .line 358
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 361
    move-result p1

    .line 362
    if-eqz p1, :cond_f

    .line 364
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 367
    move-result-object p1

    .line 368
    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 371
    move-result v5

    .line 372
    :cond_f
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 374
    invoke-direct {p1, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 377
    new-instance v0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$1;

    .line 379
    invoke-direct {v0, v7, p1, v6}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$1;-><init>(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;I)V

    .line 382
    new-instance v1, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$$ExternalSyntheticLambda1;

    .line 384
    invoke-direct {v1, p0, v5, v0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/AutofillManagerServiceShellCommand;ILcom/android/server/autofill/AutofillManagerServiceShellCommand$1;)V

    .line 387
    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$$ExternalSyntheticLambda1;->run()V

    .line 390
    invoke-static {v7, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->waitForLatch(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)I

    .line 393
    move-result v5

    .line 394
    :goto_9
    return v5

    .line 395
    :pswitch_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 398
    move-result-object p1

    .line 399
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 405
    move-result v9

    .line 406
    sparse-switch v9, :sswitch_data_1

    .line 409
    :goto_a
    move v0, v5

    .line 410
    goto/16 :goto_b

    .line 412
    :sswitch_6
    const-string/jumbo v0, "temporary-detection-service"

    .line 415
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 418
    move-result v0

    .line 419
    if-nez v0, :cond_10

    .line 421
    goto :goto_a

    .line 422
    :cond_10
    const/4 v0, 0x7

    .line 423
    goto :goto_b

    .line 424
    :sswitch_7
    const-string/jumbo v0, "max_partitions"

    .line 427
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 430
    move-result v0

    .line 431
    if-nez v0, :cond_11

    .line 433
    goto :goto_a

    .line 434
    :cond_11
    const/4 v0, 0x6

    .line 435
    goto :goto_b

    .line 436
    :sswitch_8
    const-string/jumbo v1, "max_visible_datasets"

    .line 439
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 442
    move-result v1

    .line 443
    if-nez v1, :cond_17

    .line 445
    goto :goto_a

    .line 446
    :sswitch_9
    const-string/jumbo v0, "default-augmented-service-enabled"

    .line 449
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 452
    move-result v0

    .line 453
    if-nez v0, :cond_12

    .line 455
    goto :goto_a

    .line 456
    :cond_12
    move v0, v2

    .line 457
    goto :goto_b

    .line 458
    :sswitch_a
    const-string v0, "bind-instant-service-allowed"

    .line 460
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 463
    move-result v0

    .line 464
    if-nez v0, :cond_13

    .line 466
    goto :goto_a

    .line 467
    :cond_13
    move v0, v1

    .line 468
    goto :goto_b

    .line 469
    :sswitch_b
    const-string/jumbo v0, "temporary-augmented-service"

    .line 472
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 475
    move-result v0

    .line 476
    if-nez v0, :cond_14

    .line 478
    goto :goto_a

    .line 479
    :cond_14
    move v0, v3

    .line 480
    goto :goto_b

    .line 481
    :sswitch_c
    const-string/jumbo v0, "full_screen_mode"

    .line 484
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 487
    move-result v0

    .line 488
    if-nez v0, :cond_15

    .line 490
    goto :goto_a

    .line 491
    :cond_15
    move v0, v6

    .line 492
    goto :goto_b

    .line 493
    :sswitch_d
    const-string/jumbo v0, "log_level"

    .line 496
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 499
    move-result v0

    .line 500
    if-nez v0, :cond_16

    .line 502
    goto :goto_a

    .line 503
    :cond_16
    move v0, v4

    .line 504
    :cond_17
    :goto_b
    packed-switch v0, :pswitch_data_1

    .line 507
    const-string p0, "Invalid set: "

    .line 509
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 512
    move-result-object p0

    .line 513
    invoke-virtual {v7, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    :goto_c
    move v4, v5

    .line 517
    goto/16 :goto_12

    .line 519
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextIntArgRequired()I

    .line 522
    move-result p1

    .line 523
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 526
    move-result-object v0

    .line 527
    if-nez v0, :cond_18

    .line 529
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    .line 531
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 534
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mFieldClassificationResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 536
    invoke-virtual {p0, p1}, Lcom/android/server/infra/ServiceNameBaseResolver;->resetTemporaryService(I)V

    .line 539
    goto/16 :goto_12

    .line 541
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextIntArgRequired()I

    .line 544
    move-result v1

    .line 545
    if-gtz v1, :cond_19

    .line 547
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    .line 549
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 552
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mFieldClassificationResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 554
    invoke-virtual {p0, p1}, Lcom/android/server/infra/ServiceNameBaseResolver;->resetTemporaryService(I)V

    .line 557
    goto/16 :goto_12

    .line 559
    :cond_19
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    .line 561
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 564
    new-instance v2, Ljava/lang/StringBuilder;

    .line 566
    const-string/jumbo v3, "setTemporaryDetectionService("

    .line 569
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 575
    const-string v3, ") to "

    .line 577
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    const-string v3, " for "

    .line 585
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 591
    const-string/jumbo v5, "ms"

    .line 594
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 600
    move-result-object v2

    .line 601
    iget-object v6, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 603
    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 609
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mFieldClassificationResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 611
    filled-new-array {v0}, [Ljava/lang/String;

    .line 614
    move-result-object v2

    .line 615
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/infra/ServiceNameBaseResolver;->setTemporaryServices(II[Ljava/lang/String;)V

    .line 618
    const-string p0, "Autofill Detection Service temporarily set to "

    .line 620
    invoke-static {v1, p0, v0, v3, v5}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 623
    move-result-object p0

    .line 624
    invoke-virtual {v7, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 627
    goto/16 :goto_12

    .line 629
    :pswitch_6
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    .line 631
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 634
    move-result-object p0

    .line 635
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 638
    move-result p0

    .line 639
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    .line 644
    const-string/jumbo v1, "setMaxPartitions(): "

    .line 647
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 650
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 653
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 656
    move-result-object v0

    .line 657
    const-string v1, "AutofillManagerService"

    .line 659
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-virtual {p1}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 665
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 668
    move-result-wide v0

    .line 669
    :try_start_4
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 672
    move-result-object p1

    .line 673
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 676
    move-result-object p1

    .line 677
    const-string v2, "autofill_max_partitions_size"

    .line 679
    invoke-static {p1, v2, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 682
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 685
    goto/16 :goto_12

    .line 687
    :catchall_2
    move-exception p0

    .line 688
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 691
    throw p0

    .line 692
    :pswitch_7
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    .line 694
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 697
    move-result-object p0

    .line 698
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 701
    move-result p0

    .line 702
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    .line 707
    const-string/jumbo v1, "setMaxVisibleDatasets(): "

    .line 710
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 713
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 716
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 719
    move-result-object v0

    .line 720
    const-string v1, "AutofillManagerService"

    .line 722
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-virtual {p1}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 728
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 731
    move-result-wide v0

    .line 732
    :try_start_5
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 735
    move-result-object p1

    .line 736
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 739
    move-result-object p1

    .line 740
    const-string v2, "autofill_max_visible_datasets"

    .line 742
    invoke-static {p1, v2, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 745
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 748
    goto/16 :goto_12

    .line 750
    :catchall_3
    move-exception p0

    .line 751
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 754
    throw p0

    .line 755
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextIntArgRequired()I

    .line 758
    move-result p1

    .line 759
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 762
    move-result-object v0

    .line 763
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 766
    move-result v0

    .line 767
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    .line 769
    const-string/jumbo v1, "setDefaultAugmentedServiceEnabled(): already "

    .line 772
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 774
    new-instance v3, Ljava/lang/StringBuilder;

    .line 776
    const-string/jumbo v5, "setDefaultAugmentedServiceEnabled() for userId "

    .line 779
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 782
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 785
    const-string v5, ": "

    .line 787
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 793
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 796
    move-result-object v3

    .line 797
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 803
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 805
    monitor-enter v2

    .line 806
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 809
    move-result-object v3

    .line 810
    check-cast v3, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 812
    if-eqz v3, :cond_1b

    .line 814
    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 816
    invoke-virtual {v5, p1, v0}, Lcom/android/server/infra/ServiceNameBaseResolver;->setDefaultServiceEnabled(IZ)Z

    .line 819
    move-result p1

    .line 820
    if-eqz p1, :cond_1a

    .line 822
    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateRemoteAugmentedAutofillService()V

    .line 825
    monitor-exit v2

    .line 826
    goto/16 :goto_12

    .line 828
    :catchall_4
    move-exception p0

    .line 829
    goto :goto_d

    .line 830
    :cond_1a
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 832
    if-eqz p0, :cond_1b

    .line 834
    const-string p0, "AutofillManagerService"

    .line 836
    new-instance p1, Ljava/lang/StringBuilder;

    .line 838
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 844
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 847
    move-result-object p1

    .line 848
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_1b
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 852
    new-instance p0, Ljava/lang/StringBuilder;

    .line 854
    const-string p1, "already "

    .line 856
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 859
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 862
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 865
    move-result-object p0

    .line 866
    invoke-virtual {v7, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 869
    goto/16 :goto_12

    .line 871
    :goto_d
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 872
    throw p0

    .line 873
    :pswitch_9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 876
    move-result-object p1

    .line 877
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 880
    move-result-object v0

    .line 881
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 884
    const-string/jumbo v1, "true"

    .line 887
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 890
    move-result v1

    .line 891
    if-nez v1, :cond_1d

    .line 893
    const-string/jumbo v1, "false"

    .line 896
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 899
    move-result v0

    .line 900
    if-nez v0, :cond_1c

    .line 902
    const-string p0, "Invalid mode: "

    .line 904
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 907
    move-result-object p0

    .line 908
    invoke-virtual {v7, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 911
    goto/16 :goto_c

    .line 913
    :cond_1c
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    .line 915
    invoke-virtual {p0, v4}, Lcom/android/server/infra/AbstractMasterSystemService;->setAllowInstantService(Z)V

    .line 918
    goto/16 :goto_12

    .line 920
    :cond_1d
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    .line 922
    invoke-virtual {p0, v6}, Lcom/android/server/infra/AbstractMasterSystemService;->setAllowInstantService(Z)V

    .line 925
    goto/16 :goto_12

    .line 927
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextIntArgRequired()I

    .line 930
    move-result p1

    .line 931
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 934
    move-result-object v0

    .line 935
    if-nez v0, :cond_1e

    .line 937
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    .line 939
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 942
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 944
    invoke-virtual {p0, p1}, Lcom/android/server/infra/ServiceNameBaseResolver;->resetTemporaryService(I)V

    .line 947
    goto/16 :goto_12

    .line 949
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextIntArgRequired()I

    .line 952
    move-result v1

    .line 953
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    .line 955
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 958
    new-instance v2, Ljava/lang/StringBuilder;

    .line 960
    const-string/jumbo v3, "setTemporaryAugmentedAutofillService("

    .line 963
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 966
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 969
    const-string v3, ") to "

    .line 971
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    const-string v3, " for "

    .line 979
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 985
    const-string/jumbo v5, "ms"

    .line 988
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 994
    move-result-object v2

    .line 995
    iget-object v6, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 997
    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 1003
    const v2, 0x1d4c0

    .line 1006
    if-gt v1, v2, :cond_1f

    .line 1008
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 1010
    filled-new-array {v0}, [Ljava/lang/String;

    .line 1013
    move-result-object v2

    .line 1014
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/infra/ServiceNameBaseResolver;->setTemporaryServices(II[Ljava/lang/String;)V

    .line 1017
    const-string p0, "AugmentedAutofillService temporarily set to "

    .line 1019
    invoke-static {v1, p0, v0, v3, v5}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1022
    move-result-object p0

    .line 1023
    invoke-virtual {v7, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1026
    goto/16 :goto_12

    .line 1028
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 1030
    const-string p1, "Max duration is 120000 (called with "

    .line 1032
    const-string v0, ")"

    .line 1034
    invoke-static {v1, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1037
    move-result-object p1

    .line 1038
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1041
    throw p0

    .line 1042
    :pswitch_b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1045
    move-result-object p1

    .line 1046
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 1049
    move-result-object v0

    .line 1050
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1053
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 1056
    move-result v1

    .line 1057
    sparse-switch v1, :sswitch_data_2

    .line 1060
    :goto_e
    move v3, v5

    .line 1061
    goto :goto_f

    .line 1062
    :sswitch_e
    const-string/jumbo v1, "default"

    .line 1065
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1068
    move-result v0

    .line 1069
    if-nez v0, :cond_22

    .line 1071
    goto :goto_e

    .line 1072
    :sswitch_f
    const-string/jumbo v1, "false"

    .line 1075
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1078
    move-result v0

    .line 1079
    if-nez v0, :cond_20

    .line 1081
    goto :goto_e

    .line 1082
    :cond_20
    move v3, v6

    .line 1083
    goto :goto_f

    .line 1084
    :sswitch_10
    const-string/jumbo v1, "true"

    .line 1087
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1090
    move-result v0

    .line 1091
    if-nez v0, :cond_21

    .line 1093
    goto :goto_e

    .line 1094
    :cond_21
    move v3, v4

    .line 1095
    :cond_22
    :goto_f
    packed-switch v3, :pswitch_data_2

    .line 1098
    const-string p0, "Invalid mode: "

    .line 1100
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1103
    move-result-object p0

    .line 1104
    invoke-virtual {v7, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1107
    goto/16 :goto_c

    .line 1109
    :pswitch_c
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    .line 1111
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 1114
    sput-object v8, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    .line 1116
    goto/16 :goto_12

    .line 1118
    :pswitch_d
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    .line 1120
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1122
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 1125
    sput-object p1, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    .line 1127
    goto :goto_12

    .line 1128
    :pswitch_e
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    .line 1130
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1132
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 1135
    sput-object p1, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    .line 1137
    goto :goto_12

    .line 1138
    :pswitch_f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1141
    move-result-object p1

    .line 1142
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 1145
    move-result-object v0

    .line 1146
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1149
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 1152
    move-result v1

    .line 1153
    sparse-switch v1, :sswitch_data_3

    .line 1156
    :goto_10
    move v6, v5

    .line 1157
    goto :goto_11

    .line 1158
    :sswitch_11
    const-string/jumbo v1, "verbose"

    .line 1161
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1164
    move-result v0

    .line 1165
    if-nez v0, :cond_23

    .line 1167
    goto :goto_10

    .line 1168
    :cond_23
    move v6, v3

    .line 1169
    goto :goto_11

    .line 1170
    :sswitch_12
    const-string/jumbo v1, "debug"

    .line 1173
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1176
    move-result v0

    .line 1177
    if-nez v0, :cond_25

    .line 1179
    goto :goto_10

    .line 1180
    :sswitch_13
    const-string/jumbo v1, "off"

    .line 1183
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1186
    move-result v0

    .line 1187
    if-nez v0, :cond_24

    .line 1189
    goto :goto_10

    .line 1190
    :cond_24
    move v6, v4

    .line 1191
    :cond_25
    :goto_11
    packed-switch v6, :pswitch_data_3

    .line 1194
    const-string p0, "Invalid level: "

    .line 1196
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1199
    move-result-object p0

    .line 1200
    invoke-virtual {v7, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1203
    goto/16 :goto_c

    .line 1205
    :pswitch_10
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    .line 1207
    invoke-virtual {p0, v2}, Lcom/android/server/autofill/AutofillManagerService;->setLogLevel(I)V

    .line 1210
    goto :goto_12

    .line 1211
    :pswitch_11
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    .line 1213
    invoke-virtual {p0, v3}, Lcom/android/server/autofill/AutofillManagerService;->setLogLevel(I)V

    .line 1216
    goto :goto_12

    .line 1217
    :pswitch_12
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    .line 1219
    invoke-virtual {p0, v4}, Lcom/android/server/autofill/AutofillManagerService;->setLogLevel(I)V

    .line 1222
    :goto_12
    return v4

    .line 1223
    :pswitch_13
    invoke-virtual {p0, v7}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->requestGet(Ljava/io/PrintWriter;)I

    .line 1226
    move-result p0

    .line 1227
    return p0

    .line 1228
    nop

    .line 1229
    :sswitch_data_0
    .sparse-switch
        0x18f56 -> :sswitch_5
        0x1bc62 -> :sswitch_4
        0x32b09e -> :sswitch_3
        0x5cfee87 -> :sswitch_2
        0x6761d4f -> :sswitch_1
        0x5cd39ffa -> :sswitch_0
    .end sparse-switch

    .line 1255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1271
    :sswitch_data_1
    .sparse-switch
        -0x779ee137 -> :sswitch_d
        -0x4d6a481a -> :sswitch_c
        -0x2211efa4 -> :sswitch_b
        0x30420514 -> :sswitch_a
        0x32ceaec0 -> :sswitch_9
        0x53092da3 -> :sswitch_8
        0x69a17484 -> :sswitch_7
        0x78decaf1 -> :sswitch_6
    .end sparse-switch

    .line 1305
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 1325
    :sswitch_data_2
    .sparse-switch
        0x36758e -> :sswitch_10
        0x5cb1923 -> :sswitch_f
        0x5c13d641 -> :sswitch_e
    .end sparse-switch

    .line 1339
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    .line 1349
    :sswitch_data_3
    .sparse-switch
        0x1ad6f -> :sswitch_13
        0x5b09653 -> :sswitch_12
        0x14ed7982 -> :sswitch_11
    .end sparse-switch

    .line 1363
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
    const-string v1, "AutoFill Service (autofill) commands:"

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
    const-string v1, "  get log_level "

    .line 27
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    const-string v1, "    Gets the Autofill log level (off | debug | verbose)."

    .line 32
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    const-string v1, "  get max_partitions"

    .line 40
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    const-string v1, "    Gets the maximum number of partitions per session."

    .line 45
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    const-string v1, "  get max_visible_datasets"

    .line 53
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    const-string v1, "    Gets the maximum number of visible datasets in the UI."

    .line 58
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    const-string v1, "  get full_screen_mode"

    .line 66
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    const-string v1, "    Gets the Fill UI full screen mode"

    .line 71
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    const-string v1, "  get fc_score [--algorithm ALGORITHM] value1 value2"

    .line 79
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    const-string v1, "    Gets the field classification score for 2 fields."

    .line 84
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string v1, "  get bind-instant-service-allowed"

    .line 92
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    const-string v1, "    Gets whether binding to services provided by instant apps is allowed"

    .line 97
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    const-string v1, "  get saved-password-count"

    .line 105
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    const-string v1, "    Gets the number of saved passwords in the current service."

    .line 110
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    const-string v1, "  set log_level [off | debug | verbose]"

    .line 118
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    const-string v1, "    Sets the Autofill log level."

    .line 123
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    const-string v1, "  set max_partitions number"

    .line 131
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    const-string v1, "    Sets the maximum number of partitions per session."

    .line 136
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    const-string v1, "  set max_visible_datasets number"

    .line 144
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    const-string v1, "    Sets the maximum number of visible datasets in the UI."

    .line 149
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    const-string v1, "  set full_screen_mode [true | false | default]"

    .line 157
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    const-string v1, "    Sets the Fill UI full screen mode"

    .line 162
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    const-string v1, "  set bind-instant-service-allowed [true | false]"

    .line 170
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    const-string v1, "    Sets whether binding to services provided by instant apps is allowed"

    .line 175
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    const-string v1, "  set temporary-augmented-service USER_ID [COMPONENT_NAME DURATION]"

    .line 183
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    const-string v1, "    Temporarily (for DURATION ms) changes the augmented autofill service implementation."

    .line 188
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    const-string v1, "    To reset, call with just the USER_ID argument."

    .line 193
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    const-string v1, "  set default-augmented-service-enabled USER_ID [true|false]"

    .line 201
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    const-string v1, "    Enable / disable the default augmented autofill service for the user."

    .line 206
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    const-string v1, "  set temporary-detection-service USER_ID [COMPONENT_NAME DURATION]"

    .line 214
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    const-string v1, "    Temporarily (for DURATION ms) changes the autofill detection service implementation."

    .line 219
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    const-string v1, "    To reset, call with [COMPONENT_NAME 0]."

    .line 224
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    const-string v1, "  get default-augmented-service-enabled USER_ID"

    .line 232
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    const-string v1, "    Checks whether the default augmented autofill service is enabled for the user."

    .line 237
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    const-string v1, "  list sessions [--user USER_ID]"

    .line 245
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    const-string v1, "    Lists all pending sessions."

    .line 250
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    const-string v1, "  destroy sessions [--user USER_ID]"

    .line 258
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    const-string v1, "    Destroys all pending sessions."

    .line 263
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    const-string v1, "  reset"

    .line 271
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    const-string v1, "    Resets all pending sessions and cached service connections."

    .line 276
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    const-string v1, "  flags"

    .line 284
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    const-string v1, "    Prints out all autofill related flags."

    .line 289
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    .line 298
    return-void

    .line 299
    :catchall_0
    move-exception v0

    .line 300
    if-eqz p0, :cond_0

    .line 302
    :try_start_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 305
    goto :goto_0

    .line 306
    :catchall_1
    move-exception p0

    .line 307
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 310
    :cond_0
    :goto_0
    throw v0
.end method

.method public final requestGet(Ljava/io/PrintWriter;)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, -0x1

    .line 15
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 18
    move-result v6

    .line 19
    sparse-switch v6, :sswitch_data_0

    .line 22
    :goto_0
    move v6, v5

    .line 23
    goto/16 :goto_1

    .line 25
    :sswitch_0
    const-string/jumbo v6, "max_partitions"

    .line 28
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v6

    .line 32
    if-nez v6, :cond_0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/16 v6, 0x8

    .line 37
    goto/16 :goto_1

    .line 39
    :sswitch_1
    const-string/jumbo v6, "max_visible_datasets"

    .line 42
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v6

    .line 46
    if-nez v6, :cond_1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v6, 0x7

    .line 50
    goto :goto_1

    .line 51
    :sswitch_2
    const-string/jumbo v6, "default-augmented-service-enabled"

    .line 54
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v6

    .line 58
    if-nez v6, :cond_2

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const/4 v6, 0x6

    .line 62
    goto :goto_1

    .line 63
    :sswitch_3
    const-string v6, "bind-instant-service-allowed"

    .line 65
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v6

    .line 69
    if-nez v6, :cond_3

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    const/4 v6, 0x5

    .line 73
    goto :goto_1

    .line 74
    :sswitch_4
    const-string/jumbo v6, "saved-password-count"

    .line 77
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result v6

    .line 81
    if-nez v6, :cond_4

    .line 83
    goto :goto_0

    .line 84
    :cond_4
    const/4 v6, 0x4

    .line 85
    goto :goto_1

    .line 86
    :sswitch_5
    const-string/jumbo v6, "field-detection-service-enabled"

    .line 89
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result v6

    .line 93
    if-nez v6, :cond_5

    .line 95
    goto :goto_0

    .line 96
    :cond_5
    const/4 v6, 0x3

    .line 97
    goto :goto_1

    .line 98
    :sswitch_6
    const-string/jumbo v6, "full_screen_mode"

    .line 101
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result v6

    .line 105
    if-nez v6, :cond_6

    .line 107
    goto :goto_0

    .line 108
    :cond_6
    const/4 v6, 0x2

    .line 109
    goto :goto_1

    .line 110
    :sswitch_7
    const-string/jumbo v6, "log_level"

    .line 113
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result v6

    .line 117
    if-nez v6, :cond_7

    .line 119
    goto :goto_0

    .line 120
    :cond_7
    move v6, v3

    .line 121
    goto :goto_1

    .line 122
    :sswitch_8
    const-string/jumbo v6, "fc_score"

    .line 125
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    move-result v6

    .line 129
    if-nez v6, :cond_8

    .line 131
    goto :goto_0

    .line 132
    :cond_8
    move v6, v4

    .line 133
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 136
    const-string v0, "Invalid set: "

    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    return v5

    .line 146
    :pswitch_0
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    .line 148
    iget-object v2, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 150
    monitor-enter v2

    .line 151
    :try_start_0
    sget v0, Lcom/android/server/autofill/AutofillManagerService;->sPartitionMaxCount:I

    .line 153
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 157
    return v4

    .line 158
    :catchall_0
    move-exception v0

    .line 159
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    throw v0

    .line 161
    :pswitch_1
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    .line 163
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    const-class v2, Lcom/android/server/autofill/AutofillManagerService;

    .line 168
    monitor-enter v2

    .line 169
    :try_start_2
    sget v0, Lcom/android/server/autofill/AutofillManagerService;->sVisibleDatasetsMaxCount:I

    .line 171
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 172
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 175
    return v4

    .line 176
    :catchall_1
    move-exception v0

    .line 177
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 178
    throw v0

    .line 179
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextIntArgRequired()I

    .line 182
    move-result v2

    .line 183
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    .line 185
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 188
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 190
    iget-object v5, v0, Lcom/android/server/infra/ServiceNameBaseResolver;->mLock:Ljava/lang/Object;

    .line 192
    monitor-enter v5

    .line 193
    :try_start_4
    iget-object v0, v0, Lcom/android/server/infra/ServiceNameBaseResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    .line 195
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 198
    move-result v0

    .line 199
    xor-int/2addr v0, v3

    .line 200
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 201
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 204
    return v4

    .line 205
    :catchall_2
    move-exception v0

    .line 206
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 207
    throw v0

    .line 208
    :pswitch_3
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    .line 210
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 213
    iget-object v2, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 215
    monitor-enter v2

    .line 216
    :try_start_6
    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    .line 218
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 219
    if-eqz v0, :cond_9

    .line 221
    const-string/jumbo v0, "true"

    .line 224
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    goto :goto_2

    .line 228
    :cond_9
    const-string/jumbo v0, "false"

    .line 231
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    :goto_2
    return v4

    .line 235
    :catchall_3
    move-exception v0

    .line 236
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 237
    throw v0

    .line 238
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextIntArgRequired()I

    .line 241
    move-result v2

    .line 242
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    .line 244
    invoke-direct {v5, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 247
    new-instance v3, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$1;

    .line 249
    invoke-direct {v3, v1, v5, v4}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$1;-><init>(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;I)V

    .line 252
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    .line 254
    const-string/jumbo v6, "requestSavedPasswordCount(): no service for "

    .line 257
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 260
    iget-object v7, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 262
    monitor-enter v7

    .line 263
    :try_start_8
    invoke-virtual {v0, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 266
    move-result-object v0

    .line 267
    check-cast v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 269
    if-eqz v0, :cond_a

    .line 271
    invoke-virtual {v0, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->requestSavedPasswordCount(Lcom/android/server/autofill/AutofillManagerServiceShellCommand$1;)V

    .line 274
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 275
    invoke-static {v1, v5}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->waitForLatch(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)I

    .line 278
    goto :goto_3

    .line 279
    :catchall_4
    move-exception v0

    .line 280
    goto :goto_4

    .line 281
    :cond_a
    :try_start_9
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 283
    if-eqz v0, :cond_b

    .line 285
    const-string v0, "AutofillManagerService"

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    .line 289
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    move-result-object v1

    .line 299
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_b
    monitor-exit v7

    .line 303
    :goto_3
    return v4

    .line 304
    :goto_4
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 305
    throw v0

    .line 306
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextIntArgRequired()I

    .line 309
    move-result v2

    .line 310
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    .line 312
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 315
    iget-object v3, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 317
    monitor-enter v3

    .line 318
    :try_start_a
    invoke-virtual {v0, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 321
    move-result-object v0

    .line 322
    check-cast v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 324
    if-eqz v0, :cond_c

    .line 326
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isPccClassificationEnabled()Z

    .line 329
    move-result v0

    .line 330
    monitor-exit v3

    .line 331
    goto :goto_5

    .line 332
    :catchall_5
    move-exception v0

    .line 333
    goto :goto_6

    .line 334
    :cond_c
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 335
    move v0, v4

    .line 336
    :goto_5
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 339
    return v4

    .line 340
    :goto_6
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 341
    throw v0

    .line 342
    :pswitch_6
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    .line 344
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 347
    sget-object v0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    .line 349
    if-nez v0, :cond_d

    .line 351
    const-string/jumbo v0, "default"

    .line 354
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    goto :goto_7

    .line 358
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 361
    move-result v0

    .line 362
    if-eqz v0, :cond_e

    .line 364
    const-string/jumbo v0, "true"

    .line 367
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    goto :goto_7

    .line 371
    :cond_e
    const-string/jumbo v0, "false"

    .line 374
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    :goto_7
    return v4

    .line 378
    :pswitch_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getLogLevel(Ljava/io/PrintWriter;)V

    .line 381
    return v4

    .line 382
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 385
    move-result-object v2

    .line 386
    const-string v5, "--algorithm"

    .line 388
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 391
    move-result v5

    .line 392
    const/4 v6, 0x0

    .line 393
    if-eqz v5, :cond_f

    .line 395
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 398
    move-result-object v2

    .line 399
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 402
    move-result-object v5

    .line 403
    move-object v12, v2

    .line 404
    move-object v2, v5

    .line 405
    goto :goto_8

    .line 406
    :cond_f
    move-object v12, v6

    .line 407
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 410
    move-result-object v5

    .line 411
    new-instance v15, Ljava/util/concurrent/CountDownLatch;

    .line 413
    invoke-direct {v15, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 416
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    .line 418
    new-instance v8, Landroid/os/RemoteCallback;

    .line 420
    new-instance v7, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$$ExternalSyntheticLambda0;

    .line 422
    invoke-direct {v7, v1, v15}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)V

    .line 425
    invoke-direct {v8, v7}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 428
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 431
    new-instance v7, Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 433
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 436
    move-result-object v0

    .line 437
    const/4 v9, -0x2

    .line 438
    invoke-direct {v7, v0, v9}, Lcom/android/server/autofill/FieldClassificationStrategy;-><init>(Landroid/content/Context;I)V

    .line 441
    new-array v0, v3, [Landroid/view/autofill/AutofillValue;

    .line 443
    invoke-static {v2}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    .line 446
    move-result-object v2

    .line 447
    aput-object v2, v0, v4

    .line 449
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 452
    move-result-object v9

    .line 453
    filled-new-array {v5}, [Ljava/lang/String;

    .line 456
    move-result-object v10

    .line 457
    filled-new-array {v6}, [Ljava/lang/String;

    .line 460
    move-result-object v11

    .line 461
    const/4 v14, 0x0

    .line 462
    const/4 v0, 0x0

    .line 463
    const/4 v13, 0x0

    .line 464
    move-object v2, v15

    .line 465
    move-object v15, v0

    .line 466
    invoke-virtual/range {v7 .. v15}, Lcom/android/server/autofill/FieldClassificationStrategy;->calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 469
    invoke-static {v1, v2}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->waitForLatch(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)I

    .line 472
    move-result v0

    .line 473
    return v0

    .line 474
    nop

    .line 475
    :sswitch_data_0
    .sparse-switch
        -0x7e9f9370 -> :sswitch_8
        -0x779ee137 -> :sswitch_7
        -0x4d6a481a -> :sswitch_6
        -0x25be9632 -> :sswitch_5
        -0xf41009d -> :sswitch_4
        0x30420514 -> :sswitch_3
        0x32ceaec0 -> :sswitch_2
        0x53092da3 -> :sswitch_1
        0x69a17484 -> :sswitch_0
    .end sparse-switch

    .line 513
    :pswitch_data_0
    .packed-switch 0x0
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
.end method
