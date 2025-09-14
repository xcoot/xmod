.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/UserController;

.field public final synthetic f$1:Landroid/content/pm/UserInfo;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/os/IProgressListener;

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;IILandroid/os/IProgressListener;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/UserController;

    .line 6
    iput-object p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$1:Landroid/content/pm/UserInfo;

    .line 8
    iput p3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$2:I

    .line 10
    iput p4, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$3:I

    .line 12
    iput-object p5, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$4:Landroid/os/IProgressListener;

    .line 14
    iput p6, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$5:I

    .line 16
    iput p7, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$6:I

    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/UserController;

    .line 5
    iget-object v2, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$1:Landroid/content/pm/UserInfo;

    .line 7
    iget v3, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$2:I

    .line 9
    iget v4, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$3:I

    .line 11
    iget-object v5, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$4:Landroid/os/IProgressListener;

    .line 13
    iget v6, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$5:I

    .line 15
    iget v0, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$6:I

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    const-string v7, "User #"

    .line 22
    new-instance v8, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 24
    invoke-direct {v8}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 27
    const/4 v9, 0x1

    .line 28
    if-ne v4, v9, :cond_0

    .line 30
    move v11, v9

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v11, 0x0

    .line 33
    :goto_0
    iget v12, v2, Landroid/content/pm/UserInfo;->id:I

    .line 35
    const-string/jumbo v13, "updateStartedUserArrayStarting"

    .line 38
    invoke-virtual {v8, v13}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 41
    iget-object v13, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 43
    monitor-enter v13

    .line 44
    :try_start_0
    iget-object v14, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 46
    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v14

    .line 50
    check-cast v14, Lcom/android/server/am/UserState;

    .line 52
    const/4 v15, 0x5

    .line 53
    if-nez v14, :cond_1

    .line 55
    new-instance v14, Lcom/android/server/am/UserState;

    .line 57
    invoke-static {v12}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 60
    move-result-object v7

    .line 61
    invoke-direct {v14, v7}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    .line 64
    iget-object v7, v14, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    .line 66
    new-instance v10, Lcom/android/server/am/UserController$UserProgressListener;

    .line 68
    invoke-direct {v10}, Landroid/os/IProgressListener$Stub;-><init>()V

    .line 71
    invoke-virtual {v7, v10}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 74
    iget-object v7, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 76
    invoke-virtual {v7, v12, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    invoke-virtual {v1}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 82
    move v7, v9

    .line 83
    move v10, v7

    .line 84
    goto :goto_1

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    goto/16 :goto_d

    .line 88
    :cond_1
    iget v10, v14, Lcom/android/server/am/UserState;->state:I

    .line 90
    if-ne v10, v15, :cond_2

    .line 92
    const-string v0, "ActivityManager"

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    const-string v3, " is shutting down - will start after full shutdown"

    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v2

    .line 111
    invoke-static {v0, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, v1, Lcom/android/server/am/UserController;->mPendingUserStarts:Ljava/util/List;

    .line 116
    new-instance v1, Lcom/android/server/am/UserController$PendingUserStart;

    .line 118
    invoke-direct {v1, v12, v4, v5}, Lcom/android/server/am/UserController$PendingUserStart;-><init>(IILandroid/os/IProgressListener;)V

    .line 121
    check-cast v0, Ljava/util/ArrayList;

    .line 123
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 129
    monitor-exit v13

    .line 130
    goto/16 :goto_c

    .line 132
    :cond_2
    const/4 v7, 0x0

    .line 133
    const/4 v10, 0x0

    .line 134
    :goto_1
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-virtual {v1, v12}, Lcom/android/server/am/UserController;->addUserToUserLru(I)V

    .line 138
    invoke-static {}, Landroid/multiuser/Flags;->scheduleStopOfBackgroundUser()Z

    .line 141
    move-result v13

    .line 142
    if-eqz v13, :cond_3

    .line 144
    iget-object v13, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 146
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    move-result-object v15

    .line 150
    const/16 v9, 0x96

    .line 152
    invoke-virtual {v13, v9, v15}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 155
    :cond_3
    if-eqz v5, :cond_4

    .line 157
    iget-object v9, v14, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    .line 159
    invoke-virtual {v9, v5}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 162
    :cond_4
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 165
    if-eqz v7, :cond_5

    .line 167
    const-string/jumbo v5, "setUserState"

    .line 170
    invoke-virtual {v8, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 173
    iget-object v5, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 175
    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 178
    move-result-object v5

    .line 179
    iget v7, v14, Lcom/android/server/am/UserState;->state:I

    .line 181
    invoke-virtual {v5, v12, v7}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 184
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 187
    :cond_5
    const-string/jumbo v5, "updateConfigurationAndProfileIds"

    .line 190
    invoke-virtual {v8, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 193
    if-eqz v11, :cond_a

    .line 195
    iget-object v7, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 197
    iget-object v7, v7, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 199
    const/16 v9, 0x10

    .line 201
    invoke-virtual {v7, v9}, Lcom/android/server/am/ActivityManagerService;->reportGlobalUsageEvent(I)V

    .line 204
    iget-object v7, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 206
    monitor-enter v7

    .line 207
    :try_start_1
    iput v12, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 209
    iget-boolean v13, v1, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 211
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 212
    iget-object v7, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 214
    invoke-virtual {v7}, Lcom/android/server/am/UserController$Injector;->updateUserConfiguration()V

    .line 217
    invoke-virtual {v1}, Lcom/android/server/am/UserController;->updateProfileRelatedCaches()V

    .line 220
    iget-object v7, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 222
    iget-object v7, v7, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 224
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 226
    invoke-virtual {v7, v12}, Lcom/android/server/wm/WindowManagerService;->setCurrentUser(I)V

    .line 229
    iget-object v7, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 231
    iget-object v7, v7, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 233
    iget-object v15, v7, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 235
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 238
    move-result v15

    .line 239
    const/4 v9, 0x1

    .line 240
    if-ne v15, v9, :cond_6

    .line 242
    const/16 v9, 0xf

    .line 244
    goto :goto_2

    .line 245
    :cond_6
    const/16 v9, 0x10

    .line 247
    :goto_2
    invoke-virtual {v7, v9}, Lcom/android/server/am/ActivityManagerService;->reportGlobalUsageEvent(I)V

    .line 250
    if-eqz v13, :cond_7

    .line 252
    iget-object v7, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 254
    iget-object v7, v7, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 256
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 258
    const/4 v9, 0x1

    .line 259
    invoke-virtual {v7, v9}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 262
    iget-object v7, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 264
    iget-object v7, v7, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 266
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 268
    const-class v9, Landroid/app/KeyguardManager;

    .line 270
    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 273
    move-result-object v7

    .line 274
    check-cast v7, Landroid/app/KeyguardManager;

    .line 276
    invoke-virtual {v7, v12}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    .line 279
    move-result v7

    .line 280
    if-eqz v7, :cond_7

    .line 282
    iget-object v7, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 284
    iget-object v7, v7, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 286
    iget-object v9, v7, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 288
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    .line 291
    move-result v9

    .line 292
    if-eqz v9, :cond_8

    .line 294
    :cond_7
    move/from16 v16, v10

    .line 296
    move/from16 v17, v11

    .line 298
    goto :goto_4

    .line 299
    :cond_8
    new-instance v9, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 301
    invoke-direct {v9}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 304
    const-string/jumbo v13, "lockDeviceNowAndWaitForKeyguardShown"

    .line 307
    invoke-virtual {v9, v13}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 310
    new-instance v13, Ljava/util/concurrent/CountDownLatch;

    .line 312
    const/4 v15, 0x1

    .line 313
    invoke-direct {v13, v15}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 316
    new-instance v15, Lcom/android/server/am/UserController$Injector$3;

    .line 318
    invoke-direct {v15, v13}, Lcom/android/server/am/UserController$Injector$3;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 321
    iget-object v5, v7, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 323
    invoke-virtual {v5, v15}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 326
    iget-object v5, v7, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 328
    move/from16 v16, v10

    .line 330
    const/4 v10, 0x0

    .line 331
    invoke-virtual {v5, v10}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 334
    :try_start_2
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 336
    move/from16 v17, v11

    .line 338
    const-wide/16 v10, 0x14

    .line 340
    invoke-virtual {v13, v10, v11, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 343
    move-result v5
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 344
    if-eqz v5, :cond_9

    .line 346
    iget-object v5, v7, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 348
    check-cast v5, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 350
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 352
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    .line 354
    invoke-interface {v5, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 357
    invoke-virtual {v9}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 360
    goto :goto_4

    .line 361
    :cond_9
    :try_start_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 363
    const-string v1, "Keyguard is not shown in 20 seconds"

    .line 365
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 368
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 369
    :catchall_1
    move-exception v0

    .line 370
    goto :goto_3

    .line 371
    :catch_0
    move-exception v0

    .line 372
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    .line 374
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 377
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 378
    :goto_3
    iget-object v1, v7, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 380
    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 382
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 384
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    .line 386
    invoke-interface {v1, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 389
    invoke-virtual {v9}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 392
    throw v0

    .line 393
    :catchall_2
    move-exception v0

    .line 394
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 395
    throw v0

    .line 396
    :cond_a
    move/from16 v16, v10

    .line 398
    move/from16 v17, v11

    .line 400
    invoke-virtual {v1}, Lcom/android/server/am/UserController;->updateProfileRelatedCaches()V

    .line 403
    iget v5, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 405
    invoke-virtual {v1, v5}, Lcom/android/server/am/UserController;->addUserToUserLru(I)V

    .line 408
    :goto_4
    const/4 v5, 0x2

    .line 409
    if-ne v4, v5, :cond_b

    .line 411
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isProfile()Z

    .line 414
    move-result v4

    .line 415
    if-nez v4, :cond_b

    .line 417
    invoke-virtual {v1, v12}, Lcom/android/server/am/UserController;->scheduleStopOfBackgroundUser(I)V

    .line 420
    :cond_b
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 423
    iget v4, v14, Lcom/android/server/am/UserState;->state:I

    .line 425
    const/4 v5, 0x4

    .line 426
    if-ne v4, v5, :cond_c

    .line 428
    const-string/jumbo v4, "updateStateStopping"

    .line 431
    invoke-virtual {v8, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 434
    iget v4, v14, Lcom/android/server/am/UserState;->lastState:I

    .line 436
    invoke-virtual {v14, v4}, Lcom/android/server/am/UserState;->setState(I)V

    .line 439
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 441
    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 444
    move-result-object v4

    .line 445
    iget v5, v14, Lcom/android/server/am/UserState;->state:I

    .line 447
    invoke-virtual {v4, v12, v5}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 450
    iget-object v5, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 452
    monitor-enter v5

    .line 453
    :try_start_6
    invoke-virtual {v1}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 456
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 457
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 460
    :goto_5
    const/4 v10, 0x1

    .line 461
    goto :goto_6

    .line 462
    :catchall_3
    move-exception v0

    .line 463
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 464
    throw v0

    .line 465
    :cond_c
    const/4 v7, 0x5

    .line 466
    if-ne v4, v7, :cond_d

    .line 468
    const-string/jumbo v4, "updateStateShutdown"

    .line 471
    invoke-virtual {v8, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 474
    const/4 v4, 0x0

    .line 475
    invoke-virtual {v14, v4}, Lcom/android/server/am/UserState;->setState(I)V

    .line 478
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 480
    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 483
    move-result-object v4

    .line 484
    iget v5, v14, Lcom/android/server/am/UserState;->state:I

    .line 486
    invoke-virtual {v4, v12, v5}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 489
    iget-object v4, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 491
    monitor-enter v4

    .line 492
    :try_start_8
    invoke-virtual {v1}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 495
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 496
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 499
    goto :goto_5

    .line 500
    :catchall_4
    move-exception v0

    .line 501
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 502
    throw v0

    .line 503
    :cond_d
    move/from16 v10, v16

    .line 505
    :goto_6
    iget v4, v14, Lcom/android/server/am/UserState;->state:I

    .line 507
    if-nez v4, :cond_e

    .line 509
    const-string/jumbo v4, "updateStateBooting"

    .line 512
    invoke-virtual {v8, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 515
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 517
    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 520
    move-result-object v4

    .line 521
    invoke-virtual {v4, v12}, Lcom/android/server/pm/UserManagerService;->onBeforeStartUser(I)V

    .line 524
    iget-object v4, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 526
    const/16 v5, 0x32

    .line 528
    const/4 v7, 0x0

    .line 529
    invoke-virtual {v4, v5, v12, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 532
    move-result-object v5

    .line 533
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 536
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 539
    goto :goto_7

    .line 540
    :cond_e
    const/4 v7, 0x0

    .line 541
    :goto_7
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 543
    iget-object v4, v4, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 545
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 547
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 549
    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 551
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 553
    new-instance v9, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;

    .line 555
    move/from16 v11, v17

    .line 557
    invoke-direct {v9, v4, v12, v11, v10}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;IZZ)V

    .line 560
    invoke-virtual {v5, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 563
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 565
    iget-object v4, v4, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 567
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 569
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 571
    iget-object v5, v4, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    .line 573
    new-instance v9, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda12;

    .line 575
    invoke-direct {v9, v4, v12}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/MultiTaskingController;I)V

    .line 578
    invoke-virtual {v5, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 581
    const-string/jumbo v4, "sendMessages"

    .line 584
    invoke-virtual {v8, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 587
    if-eqz v11, :cond_f

    .line 589
    iget-object v4, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 591
    const/16 v5, 0x3c

    .line 593
    invoke-virtual {v4, v5, v12, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 596
    move-result-object v5

    .line 597
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 600
    iget-object v4, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 602
    const/16 v5, 0xa

    .line 604
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 607
    iget-object v4, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 609
    const/16 v9, 0x1e

    .line 611
    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 614
    iget-object v4, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 616
    invoke-virtual {v4, v5, v3, v12, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 619
    move-result-object v5

    .line 620
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 623
    iget-object v4, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 625
    invoke-virtual {v4, v9, v3, v12, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 628
    move-result-object v3

    .line 629
    invoke-static {}, Lcom/android/server/am/UserController;->getUserSwitchTimeoutMs()I

    .line 632
    move-result v5

    .line 633
    move-object/from16 p0, v8

    .line 635
    int-to-long v7, v5

    .line 636
    invoke-virtual {v4, v3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 639
    goto :goto_8

    .line 640
    :cond_f
    move-object/from16 p0, v8

    .line 642
    :goto_8
    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 644
    if-eqz v2, :cond_10

    .line 646
    const/4 v4, 0x0

    .line 647
    goto :goto_9

    .line 648
    :cond_10
    move v4, v10

    .line 649
    :goto_9
    if-nez v12, :cond_11

    .line 651
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 653
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 656
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    .line 659
    move-result v2

    .line 660
    if-eqz v2, :cond_11

    .line 662
    const/4 v9, 0x1

    .line 663
    goto :goto_a

    .line 664
    :cond_11
    const/4 v9, 0x0

    .line 665
    :goto_a
    if-nez v4, :cond_12

    .line 667
    if-eqz v9, :cond_13

    .line 669
    :cond_12
    invoke-virtual {v1, v12, v6, v0}, Lcom/android/server/am/UserController;->sendUserStartedBroadcast(III)V

    .line 672
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 675
    if-eqz v11, :cond_14

    .line 677
    const-string/jumbo v2, "moveUserToForeground"

    .line 680
    move-object/from16 v3, p0

    .line 682
    invoke-virtual {v3, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 685
    invoke-virtual {v1, v12, v14}, Lcom/android/server/am/UserController;->moveUserToForeground(ILcom/android/server/am/UserState;)V

    .line 688
    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 691
    goto :goto_b

    .line 692
    :cond_14
    move-object/from16 v3, p0

    .line 694
    const-string/jumbo v2, "finishUserBoot"

    .line 697
    invoke-virtual {v3, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 700
    const/4 v2, 0x0

    .line 701
    invoke-virtual {v1, v14, v2}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Lcom/android/server/am/ActivityManagerService$12;)V

    .line 704
    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 707
    :goto_b
    if-nez v4, :cond_15

    .line 709
    if-eqz v9, :cond_16

    .line 711
    :cond_15
    const-string/jumbo v2, "sendRestartBroadcast"

    .line 714
    invoke-virtual {v3, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 717
    invoke-virtual {v1, v12, v6, v0}, Lcom/android/server/am/UserController;->sendUserStartingBroadcast(III)V

    .line 720
    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 723
    :cond_16
    :goto_c
    return-void

    .line 724
    :goto_d
    :try_start_a
    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 725
    throw v0
.end method
