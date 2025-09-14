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

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/am/UserController;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;->f$1:I

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/am/UserController;

    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;->f$1:I

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Ljava/util/List;

    .line 13
    .line 14
    const-string v2, "Locking CE storage for user #"

    .line 15
    .line 16
    iget-object v3, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v3

    .line 19
    :try_start_0
    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    const-string p0, "ActivityManager"

    .line 28
    .line 29
    const-string v0, "User was restarted, skipping key eviction"

    .line 30
    .line 31
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
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

    .line 40
    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v3, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    const-string/jumbo v0, "mount"

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->lockCeStorage(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    .line 74
    .line 75
    if-nez p0, :cond_1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    const/4 v0, 0x0

    .line 79
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-ge v0, v2, :cond_2

    .line 84
    .line 85
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Lcom/android/server/am/UserController$4;

    .line 90
    .line 91
    iget-object v3, v2, Lcom/android/server/am/UserController$4;->this$0:Lcom/android/server/am/UserController;

    .line 92
    .line 93
    iget-object v3, v3, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 94
    .line 95
    new-instance v4, Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;

    .line 96
    .line 97
    iget v5, v2, Lcom/android/server/am/UserController$4;->val$userStartMode:I

    .line 98
    .line 99
    const/4 v6, 0x1

    .line 100
    invoke-direct {v4, v1, v5, v6, v2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;-><init>(IIILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    .line 105
    .line 106
    add-int/lit8 v0, v0, 0x1

    .line 107
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

    .line 112
    .line 113
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

    .line 119
    .line 120
    iget v1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;->f$1:I

    .line 121
    .line 122
    iget-object p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast p0, Lcom/android/server/am/UserState;

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-static {v1}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-nez v2, :cond_3

    .line 134
    .line 135
    const-string p0, "ActivityManager"

    .line 136
    .line 137
    const-string v0, "User\'s CE storage got locked unexpectedly, leaving user locked."

    .line 138
    .line 139
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    goto/16 :goto_4

    .line 143
    .line 144
    :cond_3
    iget v2, p0, Lcom/android/server/am/UserState;->state:I

    .line 145
    .line 146
    const-string/jumbo v3, "finishUserUnlocking"

    .line 147
    .line 148
    .line 149
    const-string v4, "Start getUserManager().onBeforeUnlockUser"

    .line 150
    .line 151
    const/4 v5, 0x1

    .line 152
    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 156
    .line 157
    invoke-direct {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 158
    .line 159
    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v4, "UM.onBeforeUnlockUser-"

    .line 163
    .line 164
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 178
    .line 179
    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v3, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    const/4 v6, 0x2

    .line 188
    if-nez v4, :cond_4

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_4
    sget-object v7, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    .line 192
    .line 193
    iget-object v8, v4, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    xor-int/2addr v7, v5

    .line 200
    new-instance v8, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 201
    .line 202
    invoke-direct {v8}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 203
    .line 204
    .line 205
    new-instance v9, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string/jumbo v10, "prepareUserData-"

    .line 208
    .line 209
    .line 210
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v9

    .line 220
    invoke-virtual {v8, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget-object v9, v3, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    .line 224
    .line 225
    invoke-virtual {v9, v6, v4}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(ILandroid/content/pm/UserInfo;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 229
    .line 230
    .line 231
    const-class v4, Landroid/os/storage/StorageManagerInternal;

    .line 232
    .line 233
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    check-cast v4, Landroid/os/storage/StorageManagerInternal;

    .line 238
    .line 239
    invoke-virtual {v4, v1}, Landroid/os/storage/StorageManagerInternal;->markCeStoragePrepared(I)V

    .line 240
    .line 241
    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    const-string/jumbo v9, "reconcileAppsData-"

    .line 245
    .line 246
    .line 247
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    invoke-virtual {v8, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 261
    .line 262
    if-nez v4, :cond_5

    .line 263
    .line 264
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    .line 265
    .line 266
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 271
    .line 272
    iput-object v4, v3, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 273
    .line 274
    :cond_5
    iget-object v3, v3, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 275
    .line 276
    invoke-virtual {v3, v1, v6, v7}, Landroid/content/pm/PackageManagerInternal;->reconcileAppsData(IIZ)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 280
    .line 281
    .line 282
    :goto_3
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 283
    .line 284
    .line 285
    iget v2, p0, Lcom/android/server/am/UserState;->state:I

    .line 286
    .line 287
    const-string/jumbo v3, "finishUserUnlocking"

    .line 288
    .line 289
    .line 290
    const-string v4, "End getUserManager().onBeforeUnlockUser"

    .line 291
    .line 292
    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    iget-object v2, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 296
    .line 297
    monitor-enter v2

    .line 298
    :try_start_3
    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/UserState;->setState(II)Z

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    if-nez v3, :cond_6

    .line 303
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

    .line 310
    .line 311
    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    iget v3, p0, Lcom/android/server/am/UserState;->state:I

    .line 316
    .line 317
    invoke-virtual {v2, v1, v3}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 318
    .line 319
    .line 320
    iget-object v2, p0, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    .line 321
    .line 322
    const/16 v3, 0x14

    .line 323
    .line 324
    invoke-virtual {v2, v3}, Lcom/android/internal/util/ProgressReporter;->setProgress(I)V

    .line 325
    .line 326
    .line 327
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 328
    .line 329
    .line 330
    move-result-wide v2

    .line 331
    iput-wide v2, v0, Lcom/android/server/am/UserController;->mLastUserUnlockingUptime:J

    .line 332
    .line 333
    iget-object v0, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 334
    .line 335
    const/16 v2, 0x64

    .line 336
    .line 337
    const/4 v3, 0x0

    .line 338
    invoke-virtual {v0, v2, v1, v3, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 343
    .line 344
    .line 345
    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    .line 346
    .line 347
    const-string/jumbo v0, "finishUserUnlocking"

    .line 348
    .line 349
    .line 350
    const-string/jumbo v2, "sendToTarget USER_UNLOCK_MSG"

    .line 351
    .line 352
    .line 353
    invoke-static {v1, p0, v5, v0, v2}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 354
    .line 355
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
