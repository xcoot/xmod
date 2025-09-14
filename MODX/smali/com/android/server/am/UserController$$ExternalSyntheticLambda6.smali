.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/UserController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;ILjava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/am/UserController;

    .line 5
    iput p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;->f$1:I

    .line 7
    iput-object p3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/am/UserController;

    .line 8
    iget v1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;->f$1:I

    .line 10
    iget-object p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    .line 12
    check-cast p0, Ljava/util/List;

    .line 14
    const-string v2, "Locking CE storage for user #"

    .line 16
    iget-object v3, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 18
    monitor-enter v3

    .line 19
    :try_start_0
    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v4

    .line 25
    if-eqz v4, :cond_0

    .line 27
    const-string p0, "ActivityManager"

    .line 29
    const-string v0, "User was restarted, skipping key eviction"

    .line 31
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    monitor-exit v3

    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :try_start_1
    const-string v3, "ActivityManager"

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    invoke-static {v3, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    const-string/jumbo v0, "mount"

    .line 64
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    .line 71
    move-result-object v0

    .line 72
    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->lockCeStorage(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 75
    if-nez p0, :cond_1

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    const/4 v0, 0x0

    .line 79
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 82
    move-result v2

    .line 83
    if-ge v0, v2, :cond_2

    .line 85
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Lcom/android/server/am/UserController$4;

    .line 91
    iget-object v3, v2, Lcom/android/server/am/UserController$4;->this$0:Lcom/android/server/am/UserController;

    .line 93
    iget-object v3, v3, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 95
    new-instance v4, Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;

    .line 97
    iget v5, v2, Lcom/android/server/am/UserController$4;->val$userStartMode:I

    .line 99
    const/4 v6, 0x1

    .line 100
    invoke-direct {v4, v1, v5, v6, v2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;-><init>(IIILjava/lang/Object;)V

    .line 103
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    add-int/lit8 v0, v0, 0x1

    .line 108
    goto :goto_0

    .line 109
    :cond_2
    :goto_1
    return-void

    .line 110
    :catch_0
    move-exception p0

    .line 111
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 114
    move-result-object p0

    .line 115
    throw p0

    .line 116
    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    throw p0

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/am/UserController;

    .line 120
    iget v1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;->f$1:I

    .line 122
    iget-object p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    .line 124
    check-cast p0, Lcom/android/server/am/UserState;

    .line 126
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    invoke-static {v1}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    .line 132
    move-result v2

    .line 133
    if-nez v2, :cond_3

    .line 135
    const-string p0, "ActivityManager"

    .line 137
    const-string v0, "User\'s CE storage got locked unexpectedly, leaving user locked."

    .line 139
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    goto/16 :goto_4

    .line 144
    :cond_3
    iget v2, p0, Lcom/android/server/am/UserState;->state:I

    .line 146
    const-string/jumbo v3, "finishUserUnlocking"

    .line 149
    const-string v4, "Start getUserManager().onBeforeUnlockUser"

    .line 151
    const/4 v5, 0x1

    .line 152
    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 157
    invoke-direct {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    .line 162
    const-string v4, "UM.onBeforeUnlockUser-"

    .line 164
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 177
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 179
    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v3, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 186
    move-result-object v4

    .line 187
    const/4 v6, 0x2

    .line 188
    if-nez v4, :cond_4

    .line 190
    goto :goto_3

    .line 191
    :cond_4
    sget-object v7, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    .line 193
    iget-object v8, v4, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 195
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    move-result v7

    .line 199
    xor-int/2addr v7, v5

    .line 200
    new-instance v8, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 202
    invoke-direct {v8}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 205
    new-instance v9, Ljava/lang/StringBuilder;

    .line 207
    const-string/jumbo v10, "prepareUserData-"

    .line 210
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    move-result-object v9

    .line 220
    invoke-virtual {v8, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 223
    iget-object v9, v3, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    .line 225
    invoke-virtual {v9, v6, v4}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(ILandroid/content/pm/UserInfo;)V

    .line 228
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 231
    const-class v4, Landroid/os/storage/StorageManagerInternal;

    .line 233
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 236
    move-result-object v4

    .line 237
    check-cast v4, Landroid/os/storage/StorageManagerInternal;

    .line 239
    invoke-virtual {v4, v1}, Landroid/os/storage/StorageManagerInternal;->markCeStoragePrepared(I)V

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    .line 244
    const-string/jumbo v9, "reconcileAppsData-"

    .line 247
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    move-result-object v4

    .line 257
    invoke-virtual {v8, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 260
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 262
    if-nez v4, :cond_5

    .line 264
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    .line 266
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 269
    move-result-object v4

    .line 270
    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 272
    iput-object v4, v3, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 274
    :cond_5
    iget-object v3, v3, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 276
    invoke-virtual {v3, v1, v6, v7}, Landroid/content/pm/PackageManagerInternal;->reconcileAppsData(IIZ)V

    .line 279
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 282
    :goto_3
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 285
    iget v2, p0, Lcom/android/server/am/UserState;->state:I

    .line 287
    const-string/jumbo v3, "finishUserUnlocking"

    .line 290
    const-string v4, "End getUserManager().onBeforeUnlockUser"

    .line 292
    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v2, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 297
    monitor-enter v2

    .line 298
    :try_start_3
    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/UserState;->setState(II)Z

    .line 301
    move-result v3

    .line 302
    if-nez v3, :cond_6

    .line 304
    monitor-exit v2

    .line 305
    goto :goto_4

    .line 306
    :catchall_1
    move-exception p0

    .line 307
    goto :goto_5

    .line 308
    :cond_6
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 309
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 311
    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 314
    move-result-object v2

    .line 315
    iget v3, p0, Lcom/android/server/am/UserState;->state:I

    .line 317
    invoke-virtual {v2, v1, v3}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 320
    iget-object v2, p0, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    .line 322
    const/16 v3, 0x14

    .line 324
    invoke-virtual {v2, v3}, Lcom/android/internal/util/ProgressReporter;->setProgress(I)V

    .line 327
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 330
    move-result-wide v2

    .line 331
    iput-wide v2, v0, Lcom/android/server/am/UserController;->mLastUserUnlockingUptime:J

    .line 333
    iget-object v0, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 335
    const/16 v2, 0x64

    .line 337
    const/4 v3, 0x0

    .line 338
    invoke-virtual {v0, v2, v1, v3, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 341
    move-result-object v0

    .line 342
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 345
    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    .line 347
    const-string/jumbo v0, "finishUserUnlocking"

    .line 350
    const-string/jumbo v2, "sendToTarget USER_UNLOCK_MSG"

    .line 353
    invoke-static {v1, p0, v5, v0, v2}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 356
    :goto_4
    return-void

    .line 357
    :goto_5
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 358
    throw p0

    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
