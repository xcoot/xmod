.class public final Lcom/android/server/am/ActivityManagerService$UiHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method private final handleMessage$com$android$server$am$ActivityManagerService$UiHandler(Landroid/os/Message;)V
    .locals 8

    .line 1
    const-string v0, "App already has strict mode dialog: "

    .line 3
    iget v1, p1, Landroid/os/Message;->what:I

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq v1, v2, :cond_20

    .line 8
    const/4 v3, 0x2

    .line 9
    if-eq v1, v3, :cond_1f

    .line 11
    const/4 v3, 0x6

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eq v1, v3, :cond_1b

    .line 15
    const/16 v3, 0x1a

    .line 17
    if-eq v1, v3, :cond_17

    .line 19
    const/16 v0, 0x44

    .line 21
    if-eq v1, v0, :cond_16

    .line 23
    const/16 v0, 0x46

    .line 25
    if-eq v1, v0, :cond_15

    .line 27
    const/16 v0, 0x1f

    .line 29
    if-eq v1, v0, :cond_14

    .line 31
    const/16 v0, 0x20

    .line 33
    if-eq v1, v0, :cond_11

    .line 35
    const/16 v0, 0x50

    .line 37
    if-eq v1, v0, :cond_8

    .line 39
    const/16 v0, 0x51

    .line 41
    if-eq v1, v0, :cond_0

    .line 43
    goto/16 :goto_e

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 47
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUidObserverController:Lcom/android/server/am/UidObserverController;

    .line 49
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 51
    check-cast v0, Landroid/os/IBinder;

    .line 53
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 55
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 57
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 60
    move-result v1

    .line 61
    :goto_0
    add-int/lit8 v3, v1, -0x1

    .line 63
    if-lez v1, :cond_7

    .line 65
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 67
    invoke-virtual {v1, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 73
    iget-object v5, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mToken:Landroid/os/IBinder;

    .line 75
    invoke-interface {v5, v0}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_5

    .line 81
    iget-object v0, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 83
    if-eqz v0, :cond_7

    .line 85
    array-length v3, v0

    .line 86
    if-nez v3, :cond_1

    .line 88
    goto :goto_3

    .line 89
    :cond_1
    array-length v3, v0

    .line 90
    sub-int/2addr v3, v2

    .line 91
    new-array v3, v3, [I

    .line 93
    iput-object v3, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 95
    move v3, v4

    .line 96
    :goto_1
    array-length v5, v0

    .line 97
    if-ge v4, v5, :cond_7

    .line 99
    if-nez v3, :cond_4

    .line 101
    aget v5, v0, v4

    .line 103
    if-ne v5, p1, :cond_2

    .line 105
    move v3, v2

    .line 106
    goto :goto_2

    .line 107
    :cond_2
    array-length v6, v0

    .line 108
    sub-int/2addr v6, v2

    .line 109
    if-ne v4, v6, :cond_3

    .line 111
    iput-object v0, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 113
    goto :goto_3

    .line 114
    :cond_3
    iget-object v6, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 116
    aput v5, v6, v4

    .line 118
    goto :goto_2

    .line 119
    :cond_4
    iget-object v5, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 121
    add-int/lit8 v6, v4, -0x1

    .line 123
    aget v7, v0, v4

    .line 125
    aput v7, v5, v6

    .line 127
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 129
    goto :goto_1

    .line 130
    :cond_5
    if-nez v3, :cond_6

    .line 132
    const-string v1, "ActivityManager"

    .line 134
    const-string v5, "Unable to find UidObserver by token"

    .line 136
    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_6
    move v1, v3

    .line 140
    goto :goto_0

    .line 141
    :cond_7
    :goto_3
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 143
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 146
    goto/16 :goto_e

    .line 148
    :cond_8
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 150
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUidObserverController:Lcom/android/server/am/UidObserverController;

    .line 152
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 154
    check-cast v0, Landroid/os/IBinder;

    .line 156
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 158
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 160
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 163
    move-result v1

    .line 164
    :goto_4
    add-int/lit8 v3, v1, -0x1

    .line 166
    if-lez v1, :cond_10

    .line 168
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 170
    invoke-virtual {v1, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 173
    move-result-object v1

    .line 174
    check-cast v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 176
    iget-object v5, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mToken:Landroid/os/IBinder;

    .line 178
    invoke-interface {v5, v0}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 181
    move-result v5

    .line 182
    if-eqz v5, :cond_e

    .line 184
    iget-object v0, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 186
    if-nez v0, :cond_9

    .line 188
    goto :goto_7

    .line 189
    :cond_9
    array-length v3, v0

    .line 190
    add-int/2addr v3, v2

    .line 191
    new-array v3, v3, [I

    .line 193
    iput-object v3, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 195
    move v3, v4

    .line 196
    :goto_5
    array-length v5, v0

    .line 197
    if-ge v4, v5, :cond_d

    .line 199
    if-nez v3, :cond_c

    .line 201
    aget v5, v0, v4

    .line 203
    if-ge v5, p1, :cond_a

    .line 205
    iget-object v6, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 207
    aput v5, v6, v4

    .line 209
    goto :goto_6

    .line 210
    :cond_a
    if-ne v5, p1, :cond_b

    .line 212
    iput-object v0, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 214
    goto :goto_7

    .line 215
    :cond_b
    iget-object v3, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 217
    aput p1, v3, v4

    .line 219
    add-int/lit8 v5, v4, 0x1

    .line 221
    aget v6, v0, v4

    .line 223
    aput v6, v3, v5

    .line 225
    move v3, v2

    .line 226
    goto :goto_6

    .line 227
    :cond_c
    iget-object v5, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 229
    add-int/lit8 v6, v4, 0x1

    .line 231
    aget v7, v0, v4

    .line 233
    aput v7, v5, v6

    .line 235
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 237
    goto :goto_5

    .line 238
    :cond_d
    if-nez v3, :cond_10

    .line 240
    iget-object v1, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 242
    array-length v0, v0

    .line 243
    aput p1, v1, v0

    .line 245
    goto :goto_7

    .line 246
    :cond_e
    if-nez v3, :cond_f

    .line 248
    const-string v1, "ActivityManager"

    .line 250
    const-string v5, "Unable to find UidObserver by token"

    .line 252
    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_f
    move v1, v3

    .line 256
    goto :goto_4

    .line 257
    :cond_10
    :goto_7
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 259
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 262
    goto/16 :goto_e

    .line 264
    :cond_11
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 266
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 268
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 270
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 272
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    .line 274
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 277
    move-result v1

    .line 278
    :catch_0
    :cond_12
    :goto_8
    if-lez v1, :cond_13

    .line 280
    add-int/lit8 v1, v1, -0x1

    .line 282
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    .line 284
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 287
    move-result-object v2

    .line 288
    check-cast v2, Landroid/app/IProcessObserver;

    .line 290
    if-eqz v2, :cond_12

    .line 292
    :try_start_0
    invoke-interface {v2, v0, p1}, Landroid/app/IProcessObserver;->onProcessDied(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    goto :goto_8

    .line 296
    :cond_13
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    .line 298
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 301
    goto/16 :goto_e

    .line 303
    :cond_14
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 305
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 307
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->dispatchProcessesChanged()V

    .line 310
    goto/16 :goto_e

    .line 312
    :cond_15
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 314
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 316
    check-cast p1, Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjObserverLock:Ljava/lang/Object;

    .line 320
    monitor-enter v0

    .line 321
    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjObserver:Lcom/android/server/am/ActivityManagerService$OomAdjObserver;

    .line 323
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 324
    if-eqz p0, :cond_22

    .line 326
    check-cast p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;

    .line 328
    monitor-enter p0

    .line 329
    :try_start_2
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 332
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 333
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    .line 335
    const-string v2, "# "

    .line 337
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    .line 342
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    .line 347
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 350
    :try_start_4
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 353
    monitor-exit p0

    .line 354
    goto/16 :goto_e

    .line 356
    :catchall_0
    move-exception p1

    .line 357
    goto :goto_9

    .line 358
    :catchall_1
    move-exception p1

    .line 359
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 362
    throw p1

    .line 363
    :goto_9
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 364
    throw p1

    .line 365
    :catchall_2
    move-exception p0

    .line 366
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 367
    throw p0

    .line 368
    :cond_16
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 370
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->pushTempAllowlist()V

    .line 373
    goto/16 :goto_e

    .line 375
    :cond_17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 377
    check-cast p1, Ljava/util/HashMap;

    .line 379
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 381
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 383
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 386
    monitor-enter v1

    .line 387
    :try_start_6
    const-string v2, "app"

    .line 389
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    move-result-object v2

    .line 393
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 395
    if-nez v2, :cond_18

    .line 397
    const-string p0, "ActivityManager"

    .line 399
    const-string p1, "App not found when showing strict mode dialog."

    .line 401
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 405
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 408
    goto/16 :goto_e

    .line 410
    :catchall_3
    move-exception p0

    .line 411
    goto :goto_b

    .line 412
    :cond_18
    :try_start_7
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 414
    iget-object v3, v3, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 416
    iget-object v3, v3, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    .line 418
    if-eqz v3, :cond_19

    .line 420
    const-string p0, "ActivityManager"

    .line 422
    new-instance p1, Ljava/lang/StringBuilder;

    .line 424
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    move-result-object p1

    .line 434
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 438
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 441
    return-void

    .line 442
    :cond_19
    :try_start_8
    const-string/jumbo v0, "result"

    .line 445
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    move-result-object p1

    .line 449
    check-cast p1, Lcom/android/server/am/AppErrorResult;

    .line 451
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 453
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 455
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->showStrictModeViolationDialog()Z

    .line 458
    move-result v0

    .line 459
    if-eqz v0, :cond_1a

    .line 461
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 463
    iget-object v0, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 465
    invoke-virtual {v0, p1}, Lcom/android/server/am/ErrorDialogController;->showViolationDialogs(Lcom/android/server/am/AppErrorResult;)V

    .line 468
    goto :goto_a

    .line 469
    :cond_1a
    invoke-virtual {p1, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 472
    :goto_a
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 473
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 476
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 478
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    .line 481
    goto/16 :goto_e

    .line 483
    :goto_b
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 484
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 487
    throw p0

    .line 488
    :cond_1b
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 490
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 492
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 495
    monitor-enter v0

    .line 496
    :try_start_a
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 498
    check-cast p0, Lcom/android/server/am/ProcessRecord;

    .line 500
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 502
    if-eqz p1, :cond_1c

    .line 504
    iget-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mWaitedForDebugger:Z

    .line 506
    if-nez p1, :cond_1e

    .line 508
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 510
    iget-object p1, p1, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 512
    invoke-virtual {p1, v2}, Lcom/android/server/am/ErrorDialogController;->getDisplayContexts(Z)Ljava/util/List;

    .line 515
    move-result-object v1

    .line 516
    check-cast v1, Ljava/util/ArrayList;

    .line 518
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 521
    move-result-object v1

    .line 522
    check-cast v1, Landroid/content/Context;

    .line 524
    new-instance v3, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 526
    iget-object v4, p1, Lcom/android/server/am/ErrorDialogController;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 528
    iget-object v5, p1, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 530
    invoke-direct {v3, v5, v1, v4}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .line 533
    iput-object v3, p1, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 535
    iget-object v1, v5, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 537
    new-instance v3, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;

    .line 539
    const/4 v4, 0x0

    .line 540
    invoke-direct {v3, v4, p1}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 543
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 546
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mWaitedForDebugger:Z

    .line 548
    goto :goto_c

    .line 549
    :catchall_4
    move-exception p0

    .line 550
    goto :goto_d

    .line 551
    :cond_1c
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 553
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 555
    iget-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 557
    if-nez p1, :cond_1d

    .line 559
    goto :goto_c

    .line 560
    :cond_1d
    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 562
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 564
    new-instance v2, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;

    .line 566
    const/4 v3, 0x2

    .line 567
    invoke-direct {v2, v3, p1}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 570
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 573
    const/4 p1, 0x0

    .line 574
    iput-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 576
    :cond_1e
    :goto_c
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 577
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 580
    goto :goto_e

    .line 581
    :goto_d
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 582
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 585
    throw p0

    .line 586
    :cond_1f
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 588
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    .line 590
    invoke-virtual {v0, p1}, Lcom/android/server/am/AppErrors;->handleShowAnrUi(Landroid/os/Message;)V

    .line 593
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 595
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    .line 598
    goto :goto_e

    .line 599
    :cond_20
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 601
    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 603
    if-nez v0, :cond_21

    .line 605
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 607
    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 609
    if-nez v0, :cond_21

    .line 611
    const-string v0, "ActivityManager"

    .line 613
    const-string v1, "SHOW_ERROR_UI_MSG will deliver again in 5s"

    .line 615
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 620
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 622
    iget v1, p1, Landroid/os/Message;->what:I

    .line 624
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 626
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 629
    move-result-object p1

    .line 630
    const-wide/16 v0, 0x1388

    .line 632
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 635
    goto :goto_e

    .line 636
    :cond_21
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 638
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    .line 640
    invoke-virtual {v0, p1}, Lcom/android/server/am/AppErrors;->handleShowAppErrorUi(Landroid/os/Message;)V

    .line 643
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 645
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    .line 648
    :cond_22
    :goto_e
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget v0, p1, Landroid/os/Message;->what:I

    .line 8
    const/4 v1, 0x5

    .line 9
    if-eq v0, v1, :cond_15

    .line 11
    const/16 v1, 0x14

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eq v0, v1, :cond_14

    .line 16
    const/16 v1, 0x16

    .line 18
    if-eq v0, v1, :cond_13

    .line 20
    const/16 v1, 0x21

    .line 22
    if-eq v0, v1, :cond_12

    .line 24
    const/16 v1, 0x29

    .line 26
    if-eq v0, v1, :cond_f

    .line 28
    const/16 v1, 0x3f

    .line 30
    if-eq v0, v1, :cond_c

    .line 32
    const/16 v1, 0x45

    .line 34
    if-eq v0, v1, :cond_b

    .line 36
    const/16 v1, 0x5a

    .line 38
    if-eq v0, v1, :cond_9

    .line 40
    const/16 v1, 0xc

    .line 42
    if-eq v0, v1, :cond_8

    .line 44
    const/16 v1, 0xd

    .line 46
    if-eq v0, v1, :cond_7

    .line 48
    const/16 v1, 0x42

    .line 50
    if-eq v0, v1, :cond_6

    .line 52
    const/16 v1, 0x43

    .line 54
    if-eq v0, v1, :cond_5

    .line 56
    packed-switch v0, :pswitch_data_1

    .line 59
    packed-switch v0, :pswitch_data_2

    .line 62
    packed-switch v0, :pswitch_data_3

    .line 65
    packed-switch v0, :pswitch_data_4

    .line 68
    packed-switch v0, :pswitch_data_5

    .line 71
    goto/16 :goto_b

    .line 73
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 75
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mhandleFollowUpOomAdjusterUpdate(Lcom/android/server/am/ActivityManagerService;)V

    .line 78
    goto/16 :goto_b

    .line 80
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 82
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 84
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 86
    check-cast p1, Lcom/android/server/am/ServiceRecord;

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->onFgsCrashTimeout(Lcom/android/server/am/ServiceRecord;)V

    .line 91
    goto/16 :goto_b

    .line 93
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 95
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 97
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 99
    check-cast p1, Lcom/android/server/am/ServiceRecord;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->onFgsTimeout(Lcom/android/server/am/ServiceRecord;)V

    .line 104
    goto/16 :goto_b

    .line 106
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 108
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 110
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->handleBindApplicationTimeoutHard(Lcom/android/server/am/ProcessRecord;)V

    .line 115
    goto/16 :goto_b

    .line 117
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 119
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 121
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 123
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 130
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 132
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 134
    iget-object v1, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 136
    invoke-virtual {v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuDelayTimeForPid(I)J

    .line 139
    move-result-wide v1

    .line 140
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 142
    iget-object v3, v3, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuDelayTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 144
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 147
    move-result-wide v3

    .line 148
    sub-long v5, v1, v3

    .line 150
    const-wide/16 v7, 0x0

    .line 152
    int-to-long v9, p1

    .line 153
    invoke-static/range {v5 .. v10}, Landroid/util/MathUtils;->constrain(JJJ)J

    .line 156
    move-result-wide v1

    .line 157
    const-wide/16 v3, 0x0

    .line 159
    cmp-long p1, v1, v3

    .line 161
    if-nez p1, :cond_0

    .line 163
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService;->handleBindApplicationTimeoutHard(Lcom/android/server/am/ProcessRecord;)V

    .line 166
    goto/16 :goto_b

    .line 168
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 170
    const-string v3, "Extending process start timeout by "

    .line 172
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 178
    const-string/jumbo v3, "ms for "

    .line 181
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object p1

    .line 191
    const-string v3, "ActivityManager"

    .line 193
    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    .line 198
    const-string v3, "bindApplicationTimeSoft "

    .line 200
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 205
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string v3, "("

    .line 210
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 215
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    const-string v3, ")"

    .line 220
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    move-result-object p1

    .line 227
    const-wide/16 v3, 0x40

    .line 229
    invoke-static {v3, v4, p1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 232
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 234
    const/16 v3, 0x53

    .line 236
    invoke-virtual {p1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 239
    move-result-object p1

    .line 240
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 242
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 245
    goto/16 :goto_b

    .line 247
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 249
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 251
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mCachedAppsWatermarkData:Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

    .line 253
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 255
    check-cast p1, Ljava/lang/Long;

    .line 257
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 260
    move-result-wide v0

    .line 261
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->updateCachedAppsSnapshot(J)V

    .line 264
    goto/16 :goto_b

    .line 266
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 268
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 270
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 272
    check-cast p1, Lcom/android/server/am/ServiceRecord;

    .line 274
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->onShortFgsAnrTimeout(Lcom/android/server/am/ServiceRecord;)V

    .line 277
    goto/16 :goto_b

    .line 279
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 281
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 283
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 285
    check-cast p1, Lcom/android/server/am/ServiceRecord;

    .line 287
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->onShortFgsProcstateTimeout(Lcom/android/server/am/ServiceRecord;)V

    .line 290
    goto/16 :goto_b

    .line 292
    :pswitch_8
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 294
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 296
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 298
    check-cast p1, Lcom/android/server/am/ServiceRecord;

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->onShortFgsTimeout(Lcom/android/server/am/ServiceRecord;)V

    .line 303
    goto/16 :goto_b

    .line 305
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 307
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mBindServiceEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 309
    new-instance v0, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda1;

    .line 311
    const/4 v1, 0x1

    .line 312
    invoke-direct {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda1;-><init>(Landroid/os/Message;I)V

    .line 315
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 318
    goto/16 :goto_b

    .line 320
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 322
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mBroadcastEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 324
    new-instance v0, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda1;

    .line 326
    const/4 v1, 0x0

    .line 327
    invoke-direct {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda1;-><init>(Landroid/os/Message;I)V

    .line 330
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 333
    goto/16 :goto_b

    .line 335
    :pswitch_b
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 337
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 340
    monitor-enter v0

    .line 341
    :try_start_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 343
    check-cast p0, Lcom/android/server/am/ContentProviderRecord;

    .line 345
    invoke-virtual {p0, v2}, Lcom/android/server/am/ContentProviderRecord;->onProviderPublishStatusLocked(Z)V

    .line 348
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 352
    goto/16 :goto_b

    .line 354
    :catchall_0
    move-exception p0

    .line 355
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 359
    throw p0

    .line 360
    :pswitch_c
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 362
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mhandleBinderHeavyHitterAutoSamplerTimeOut(Lcom/android/server/am/ActivityManagerService;)V

    .line 365
    goto/16 :goto_b

    .line 367
    :pswitch_d
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 369
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 372
    monitor-enter v0

    .line 373
    :try_start_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 375
    check-cast p1, Landroid/os/AppZygote;

    .line 377
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 379
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 381
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V

    .line 384
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 385
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 388
    goto/16 :goto_b

    .line 390
    :catchall_1
    move-exception p0

    .line 391
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 392
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 395
    throw p0

    .line 396
    :pswitch_e
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 398
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->idleUids()V

    .line 401
    goto/16 :goto_b

    .line 403
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 405
    move-object v1, p1

    .line 406
    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 408
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 410
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 413
    monitor-enter v8

    .line 414
    :try_start_4
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 416
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mCpHelper:Lcom/android/server/am/ContentProviderHelper;

    .line 418
    const/4 p1, 0x1

    .line 419
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/ContentProviderHelper;->cleanupAppInLaunchingProvidersLocked(Lcom/android/server/am/ProcessRecord;Z)Z

    .line 422
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 424
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 426
    const-string/jumbo v6, "timeout publishing content providers"

    .line 429
    const/4 v4, 0x7

    .line 430
    const/4 v5, 0x0

    .line 431
    const/4 v7, 0x1

    .line 432
    const/4 v2, 0x0

    .line 433
    const/4 v3, 0x1

    .line 434
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    .line 437
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 438
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 441
    goto/16 :goto_b

    .line 443
    :catchall_2
    move-exception p0

    .line 444
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 445
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 448
    throw p0

    .line 449
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 451
    check-cast p1, Landroid/app/IUiAutomationConnection;

    .line 453
    :try_start_6
    invoke-interface {p1}, Landroid/app/IUiAutomationConnection;->shutdown()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 456
    goto :goto_0

    .line 457
    :catch_0
    const-string p1, "ActivityManager"

    .line 459
    const-string v0, "Error shutting down UiAutomationConnection"

    .line 461
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 466
    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerService;->mUserIsMonkey:Z

    .line 468
    goto/16 :goto_b

    .line 470
    :pswitch_11
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 472
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 474
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 476
    check-cast p1, Ljava/lang/String;

    .line 478
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppProfiler;->handleAbortDumpHeap(Ljava/lang/String;)V

    .line 481
    goto/16 :goto_b

    .line 483
    :pswitch_12
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 485
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 487
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->handlePostDumpHeapNotification()V

    .line 490
    goto/16 :goto_b

    .line 492
    :pswitch_13
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 494
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 496
    check-cast p1, [B

    .line 498
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 500
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 502
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 505
    monitor-enter v1

    .line 506
    :try_start_7
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 508
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 510
    monitor-enter v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 511
    :goto_1
    :try_start_8
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 513
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 515
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Ljava/lang/Object;

    .line 517
    check-cast v4, Landroid/util/SparseArray;

    .line 519
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 522
    move-result v4

    .line 523
    if-ge v2, v4, :cond_2

    .line 525
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 527
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 529
    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    .line 532
    move-result-object v4

    .line 533
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 535
    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 537
    if-ne v4, v0, :cond_1

    .line 539
    if-eqz v5, :cond_1

    .line 541
    :try_start_9
    invoke-interface {v5, p1}, Landroid/app/IApplicationThread;->notifyCleartextNetwork([B)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 544
    goto :goto_2

    .line 545
    :catchall_3
    move-exception p0

    .line 546
    goto :goto_3

    .line 547
    :catch_1
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 549
    goto :goto_1

    .line 550
    :cond_2
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 551
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 552
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 555
    goto/16 :goto_b

    .line 557
    :catchall_4
    move-exception p0

    .line 558
    goto :goto_4

    .line 559
    :goto_3
    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 560
    :try_start_d
    throw p0

    .line 561
    :goto_4
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 562
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 565
    throw p0

    .line 566
    :pswitch_14
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 568
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 570
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->setAllHttpProxy()V

    .line 573
    goto/16 :goto_b

    .line 575
    :pswitch_15
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 577
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 579
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 582
    monitor-enter p1

    .line 583
    :try_start_e
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 585
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 587
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 589
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 592
    move-result v0

    .line 593
    add-int/lit8 v0, v0, -0x1

    .line 595
    :goto_5
    if-ltz v0, :cond_4

    .line 597
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 599
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 602
    move-result-object v1

    .line 603
    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 605
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 607
    if-eqz v2, :cond_3

    .line 609
    :try_start_f
    invoke-interface {v2}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 612
    goto :goto_6

    .line 613
    :catch_2
    :try_start_10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 615
    const-string v3, "Failed to clear dns cache for: "

    .line 617
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 620
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 622
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 624
    const-string v3, "ActivityManager"

    .line 626
    invoke-static {v2, v1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_3
    :goto_6
    add-int/lit8 v0, v0, -0x1

    .line 631
    goto :goto_5

    .line 632
    :cond_4
    monitor-exit p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 633
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 636
    goto/16 :goto_b

    .line 638
    :catchall_5
    move-exception p0

    .line 639
    :try_start_11
    monitor-exit p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 640
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 643
    throw p0

    .line 644
    :pswitch_16
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 646
    invoke-static {p1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mcheckExcessivePowerUsage(Lcom/android/server/am/ActivityManagerService;)V

    .line 649
    const/16 p1, 0x1b

    .line 651
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 654
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 657
    move-result-object p1

    .line 658
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 660
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 662
    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    .line 664
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 667
    goto/16 :goto_b

    .line 669
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 671
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 673
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 675
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 677
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 679
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 681
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 683
    check-cast v1, Lcom/android/internal/os/TimeoutRecord;

    .line 685
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 687
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAnrHelper:Lcom/android/server/am/AnrHelper;

    .line 689
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)V

    .line 692
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 695
    goto/16 :goto_b

    .line 697
    :cond_6
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 699
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 701
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 703
    check-cast p1, Lcom/android/server/am/ServiceRecord;

    .line 705
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->serviceForegroundTimeout(Lcom/android/server/am/ServiceRecord;)V

    .line 708
    goto/16 :goto_b

    .line 710
    :cond_7
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 712
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 714
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 717
    monitor-enter v0

    .line 718
    :try_start_12
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 720
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 722
    new-instance p1, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda0;

    .line 724
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 727
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(Ljava/util/function/Consumer;Z)V

    .line 730
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 731
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 734
    goto/16 :goto_b

    .line 736
    :catchall_6
    move-exception p0

    .line 737
    :try_start_13
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 738
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 741
    throw p0

    .line 742
    :cond_8
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 744
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 746
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 748
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 750
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    .line 753
    goto/16 :goto_b

    .line 755
    :cond_9
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 757
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mDvfsMgr:Lcom/samsung/android/os/SemDvfsManager;

    .line 759
    if-nez v0, :cond_a

    .line 761
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 763
    const-string v1, "APP_LAUNCH"

    .line 765
    invoke-static {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    .line 768
    move-result-object v0

    .line 769
    iput-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mDvfsMgr:Lcom/samsung/android/os/SemDvfsManager;

    .line 771
    :cond_a
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 773
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mDvfsMgr:Lcom/samsung/android/os/SemDvfsManager;

    .line 775
    if-eqz p1, :cond_16

    .line 777
    const/16 v0, 0x12

    .line 779
    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 782
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 784
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mDvfsMgr:Lcom/samsung/android/os/SemDvfsManager;

    .line 786
    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 789
    goto/16 :goto_b

    .line 791
    :cond_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 793
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 795
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 797
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 799
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 801
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 803
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 805
    check-cast v1, Ljava/lang/String;

    .line 807
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 809
    check-cast v2, Landroid/content/ComponentName;

    .line 811
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 813
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 815
    iget v5, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 817
    iget-object p0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 819
    iget-object v6, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 821
    iget v7, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 823
    const-string p0, "Context.startForegroundService() did not then call Service.startForeground(): "

    .line 825
    invoke-static {p0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 828
    move-result-object v8

    .line 829
    invoke-static {v2}, Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;->createExtrasForService(Landroid/content/ComponentName;)Landroid/os/Bundle;

    .line 832
    move-result-object v11

    .line 833
    const/4 v9, 0x0

    .line 834
    const/4 v10, 0x1

    .line 835
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/ActivityManagerService;->crashApplicationWithTypeWithExtras(IILjava/lang/String;ILjava/lang/String;ZILandroid/os/Bundle;)V

    .line 838
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 841
    goto/16 :goto_b

    .line 843
    :cond_c
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 845
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 847
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 850
    monitor-enter v0

    .line 851
    :try_start_14
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 853
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 855
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 857
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 860
    move-result p1

    .line 861
    add-int/lit8 p1, p1, -0x1

    .line 863
    :goto_7
    if-ltz p1, :cond_e

    .line 865
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 867
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 870
    move-result-object v1

    .line 871
    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 873
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 875
    if-eqz v2, :cond_d

    .line 877
    :try_start_15
    invoke-interface {v2}, Landroid/app/IApplicationThread;->handleTrustStorageUpdate()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 880
    goto :goto_8

    .line 881
    :catch_3
    :try_start_16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 883
    const-string v3, "Failed to handle trust storage update for: "

    .line 885
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 888
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 890
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 892
    const-string v3, "ActivityManager"

    .line 894
    invoke-static {v2, v1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :cond_d
    :goto_8
    add-int/lit8 p1, p1, -0x1

    .line 899
    goto :goto_7

    .line 900
    :cond_e
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 901
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 904
    goto/16 :goto_b

    .line 906
    :catchall_7
    move-exception p0

    .line 907
    :try_start_17
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 908
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 911
    throw p0

    .line 912
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 914
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 916
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 919
    monitor-enter v0

    .line 920
    :try_start_18
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 922
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 924
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 926
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 928
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 931
    move-result v1

    .line 932
    add-int/lit8 v1, v1, -0x1

    .line 934
    :goto_9
    if-ltz v1, :cond_11

    .line 936
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 938
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 941
    move-result-object v2

    .line 942
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 944
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 946
    if-eqz v3, :cond_10

    .line 948
    :try_start_19
    invoke-interface {v3, p1}, Landroid/app/IApplicationThread;->updateTimePrefs(I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_4
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    .line 951
    goto :goto_a

    .line 952
    :catch_4
    :try_start_1a
    new-instance v3, Ljava/lang/StringBuilder;

    .line 954
    const-string v4, "Failed to update preferences for: "

    .line 956
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 959
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 961
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 963
    const-string v4, "ActivityManager"

    .line 965
    invoke-static {v3, v2, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    :cond_10
    :goto_a
    add-int/lit8 v1, v1, -0x1

    .line 970
    goto :goto_9

    .line 971
    :cond_11
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    .line 972
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 975
    goto :goto_b

    .line 976
    :catchall_8
    move-exception p0

    .line 977
    :try_start_1b
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    .line 978
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 981
    throw p0

    .line 982
    :cond_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 984
    check-cast p1, Ljava/util/ArrayList;

    .line 986
    new-instance v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    .line 988
    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$UiHandler;Ljava/util/ArrayList;)V

    .line 991
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 994
    goto :goto_b

    .line 995
    :cond_13
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 997
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1000
    monitor-enter v0

    .line 1001
    :try_start_1c
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1003
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 1005
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1007
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1009
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1011
    move-object v7, v1

    .line 1012
    check-cast v7, Ljava/lang/String;

    .line 1014
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1016
    move-object v8, v1

    .line 1017
    check-cast v8, Ljava/lang/String;

    .line 1019
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1021
    check-cast v1, Ljava/lang/Integer;

    .line 1023
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1026
    move-result v4

    .line 1027
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1030
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1032
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 1034
    const/4 v6, 0x0

    .line 1035
    const/4 v5, 0x0

    .line 1036
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityManagerServiceExt;->forceStopPackageLocked(IIIZZLjava/lang/String;Ljava/lang/String;)Z

    .line 1039
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    .line 1040
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1043
    goto :goto_b

    .line 1044
    :catchall_9
    move-exception p0

    .line 1045
    :try_start_1d
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    .line 1046
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1049
    throw p0

    .line 1050
    :cond_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1052
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 1054
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1056
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1059
    monitor-enter v0

    .line 1060
    :try_start_1e
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1062
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ActivityManagerService;->handleProcessStartOrKillTimeoutLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1065
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    .line 1066
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1069
    goto :goto_b

    .line 1070
    :catchall_a
    move-exception p0

    .line 1071
    :try_start_1f
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    .line 1072
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1075
    throw p0

    .line 1076
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1078
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1081
    monitor-enter v0

    .line 1082
    :try_start_20
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1084
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 1086
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->performAppGcsIfAppropriateLocked()V

    .line 1089
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    .line 1090
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1093
    :cond_16
    :goto_b
    return-void

    .line 1094
    :catchall_b
    move-exception p0

    .line 1095
    :try_start_21
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    .line 1096
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1099
    throw p0

    .line 1100
    :pswitch_17
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$UiHandler;->handleMessage$com$android$server$am$ActivityManagerService$UiHandler(Landroid/os/Message;)V

    .line 1103
    return-void

    .line 1104
    nop

    .line 1105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
    .end packed-switch

    .line 1111
    :pswitch_data_1
    .packed-switch 0x1b
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    .line 1121
    :pswitch_data_2
    .packed-switch 0x31
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    .line 1131
    :pswitch_data_3
    .packed-switch 0x38
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    .line 1141
    :pswitch_data_4
    .packed-switch 0x47
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 1163
    :pswitch_data_5
    .packed-switch 0x52
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
