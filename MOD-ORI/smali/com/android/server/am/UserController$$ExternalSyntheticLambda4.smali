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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/UserController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$1:Landroid/content/pm/UserInfo;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$2:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$4:Landroid/os/IProgressListener;

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$5:I

    .line 15
    .line 16
    iput p7, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$6:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/UserController;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$1:Landroid/content/pm/UserInfo;

    .line 6
    .line 7
    iget v3, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$2:I

    .line 8
    .line 9
    iget v4, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$3:I

    .line 10
    .line 11
    iget-object v5, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$4:Landroid/os/IProgressListener;

    .line 12
    .line 13
    iget v6, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$5:I

    .line 14
    .line 15
    iget v0, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$6:I

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const-string v7, "User #"

    .line 21
    .line 22
    new-instance v8, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 23
    .line 24
    invoke-direct {v8}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v9, 0x1

    .line 28
    if-ne v4, v9, :cond_0

    .line 29
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

    .line 34
    .line 35
    const-string/jumbo v13, "updateStartedUserArrayStarting"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v8, v13}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v13, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v13

    .line 44
    :try_start_0
    iget-object v14, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v14

    .line 50
    check-cast v14, Lcom/android/server/am/UserState;

    .line 51
    .line 52
    const/4 v15, 0x5

    .line 53
    if-nez v14, :cond_1

    .line 54
    .line 55
    new-instance v14, Lcom/android/server/am/UserState;

    .line 56
    .line 57
    invoke-static {v12}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-direct {v14, v7}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    .line 62
    .line 63
    .line 64
    iget-object v7, v14, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    .line 65
    .line 66
    new-instance v10, Lcom/android/server/am/UserController$UserProgressListener;

    .line 67
    .line 68
    invoke-direct {v10}, Landroid/os/IProgressListener$Stub;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v7, v10}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 72
    .line 73
    .line 74
    iget-object v7, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 75
    .line 76
    invoke-virtual {v7, v12, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 80
    .line 81
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

    .line 87
    .line 88
    :cond_1
    iget v10, v14, Lcom/android/server/am/UserState;->state:I

    .line 89
    .line 90
    if-ne v10, v15, :cond_2

    .line 91
    .line 92
    const-string v0, "ActivityManager"

    .line 93
    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v3, " is shutting down - will start after full shutdown"

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-static {v0, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    iget-object v0, v1, Lcom/android/server/am/UserController;->mPendingUserStarts:Ljava/util/List;

    .line 115
    .line 116
    new-instance v1, Lcom/android/server/am/UserController$PendingUserStart;

    .line 117
    .line 118
    invoke-direct {v1, v12, v4, v5}, Lcom/android/server/am/UserController$PendingUserStart;-><init>(IILandroid/os/IProgressListener;)V

    .line 119
    .line 120
    .line 121
    check-cast v0, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 127
    .line 128
    .line 129
    monitor-exit v13

    .line 130
    goto/16 :goto_c

    .line 131
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

    .line 136
    .line 137
    .line 138
    invoke-static {}, Landroid/multiuser/Flags;->scheduleStopOfBackgroundUser()Z

    .line 139
    .line 140
    .line 141
    move-result v13

    .line 142
    if-eqz v13, :cond_3

    .line 143
    .line 144
    iget-object v13, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 145
    .line 146
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v15

    .line 150
    const/16 v9, 0x96

    .line 151
    .line 152
    invoke-virtual {v13, v9, v15}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    :cond_3
    if-eqz v5, :cond_4

    .line 156
    .line 157
    iget-object v9, v14, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    .line 158
    .line 159
    invoke-virtual {v9, v5}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 160
    .line 161
    .line 162
    :cond_4
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 163
    .line 164
    .line 165
    if-eqz v7, :cond_5

    .line 166
    .line 167
    const-string/jumbo v5, "setUserState"

    .line 168
    .line 169
    .line 170
    invoke-virtual {v8, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-object v5, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 174
    .line 175
    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    iget v7, v14, Lcom/android/server/am/UserState;->state:I

    .line 180
    .line 181
    invoke-virtual {v5, v12, v7}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 185
    .line 186
    .line 187
    :cond_5
    const-string/jumbo v5, "updateConfigurationAndProfileIds"

    .line 188
    .line 189
    .line 190
    invoke-virtual {v8, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    if-eqz v11, :cond_a

    .line 194
    .line 195
    iget-object v7, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 196
    .line 197
    iget-object v7, v7, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 198
    .line 199
    const/16 v9, 0x10

    .line 200
    .line 201
    invoke-virtual {v7, v9}, Lcom/android/server/am/ActivityManagerService;->reportGlobalUsageEvent(I)V

    .line 202
    .line 203
    .line 204
    iget-object v7, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 205
    .line 206
    monitor-enter v7

    .line 207
    :try_start_1
    iput v12, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 208
    .line 209
    iget-boolean v13, v1, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 210
    .line 211
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 212
    iget-object v7, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 213
    .line 214
    invoke-virtual {v7}, Lcom/android/server/am/UserController$Injector;->updateUserConfiguration()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1}, Lcom/android/server/am/UserController;->updateProfileRelatedCaches()V

    .line 218
    .line 219
    .line 220
    iget-object v7, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 221
    .line 222
    iget-object v7, v7, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 223
    .line 224
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 225
    .line 226
    invoke-virtual {v7, v12}, Lcom/android/server/wm/WindowManagerService;->setCurrentUser(I)V

    .line 227
    .line 228
    .line 229
    iget-object v7, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 230
    .line 231
    iget-object v7, v7, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 232
    .line 233
    iget-object v15, v7, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 234
    .line 235
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 236
    .line 237
    .line 238
    move-result v15

    .line 239
    const/4 v9, 0x1

    .line 240
    if-ne v15, v9, :cond_6

    .line 241
    .line 242
    const/16 v9, 0xf

    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_6
    const/16 v9, 0x10

    .line 246
    .line 247
    :goto_2
    invoke-virtual {v7, v9}, Lcom/android/server/am/ActivityManagerService;->reportGlobalUsageEvent(I)V

    .line 248
    .line 249
    .line 250
    if-eqz v13, :cond_7

    .line 251
    .line 252
    iget-object v7, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 253
    .line 254
    iget-object v7, v7, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 255
    .line 256
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 257
    .line 258
    const/4 v9, 0x1

    .line 259
    invoke-virtual {v7, v9}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 260
    .line 261
    .line 262
    iget-object v7, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 263
    .line 264
    iget-object v7, v7, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 265
    .line 266
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 267
    .line 268
    const-class v9, Landroid/app/KeyguardManager;

    .line 269
    .line 270
    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v7

    .line 274
    check-cast v7, Landroid/app/KeyguardManager;

    .line 275
    .line 276
    invoke-virtual {v7, v12}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    .line 277
    .line 278
    .line 279
    move-result v7

    .line 280
    if-eqz v7, :cond_7

    .line 281
    .line 282
    iget-object v7, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 283
    .line 284
    iget-object v7, v7, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 285
    .line 286
    iget-object v9, v7, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 287
    .line 288
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    .line 289
    .line 290
    .line 291
    move-result v9

    .line 292
    if-eqz v9, :cond_8

    .line 293
    .line 294
    :cond_7
    move/from16 v16, v10

    .line 295
    .line 296
    move/from16 v17, v11

    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_8
    new-instance v9, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 300
    .line 301
    invoke-direct {v9}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 302
    .line 303
    .line 304
    const-string/jumbo v13, "lockDeviceNowAndWaitForKeyguardShown"

    .line 305
    .line 306
    .line 307
    invoke-virtual {v9, v13}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    new-instance v13, Ljava/util/concurrent/CountDownLatch;

    .line 311
    .line 312
    const/4 v15, 0x1

    .line 313
    invoke-direct {v13, v15}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 314
    .line 315
    .line 316
    new-instance v15, Lcom/android/server/am/UserController$Injector$3;

    .line 317
    .line 318
    invoke-direct {v15, v13}, Lcom/android/server/am/UserController$Injector$3;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 319
    .line 320
    .line 321
    iget-object v5, v7, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 322
    .line 323
    invoke-virtual {v5, v15}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 324
    .line 325
    .line 326
    iget-object v5, v7, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 327
    .line 328
    move/from16 v16, v10

    .line 329
    .line 330
    const/4 v10, 0x0

    .line 331
    invoke-virtual {v5, v10}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 332
    .line 333
    .line 334
    :try_start_2
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 335
    .line 336
    move/from16 v17, v11

    .line 337
    .line 338
    const-wide/16 v10, 0x14

    .line 339
    .line 340
    invoke-virtual {v13, v10, v11, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 341
    .line 342
    .line 343
    move-result v5
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 344
    if-eqz v5, :cond_9

    .line 345
    .line 346
    iget-object v5, v7, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 347
    .line 348
    check-cast v5, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 349
    .line 350
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 351
    .line 352
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    .line 353
    .line 354
    invoke-interface {v5, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    invoke-virtual {v9}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 358
    .line 359
    .line 360
    goto :goto_4

    .line 361
    :cond_9
    :try_start_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 362
    .line 363
    const-string v1, "Keyguard is not shown in 20 seconds"

    .line 364
    .line 365
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
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

    .line 373
    .line 374
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 375
    .line 376
    .line 377
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 378
    :goto_3
    iget-object v1, v7, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 379
    .line 380
    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 381
    .line 382
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 383
    .line 384
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    .line 385
    .line 386
    invoke-interface {v1, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    invoke-virtual {v9}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 390
    .line 391
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

    .line 397
    .line 398
    move/from16 v17, v11

    .line 399
    .line 400
    invoke-virtual {v1}, Lcom/android/server/am/UserController;->updateProfileRelatedCaches()V

    .line 401
    .line 402
    .line 403
    iget v5, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 404
    .line 405
    invoke-virtual {v1, v5}, Lcom/android/server/am/UserController;->addUserToUserLru(I)V

    .line 406
    .line 407
    .line 408
    :goto_4
    const/4 v5, 0x2

    .line 409
    if-ne v4, v5, :cond_b

    .line 410
    .line 411
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isProfile()Z

    .line 412
    .line 413
    .line 414
    move-result v4

    .line 415
    if-nez v4, :cond_b

    .line 416
    .line 417
    invoke-virtual {v1, v12}, Lcom/android/server/am/UserController;->scheduleStopOfBackgroundUser(I)V

    .line 418
    .line 419
    .line 420
    :cond_b
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 421
    .line 422
    .line 423
    iget v4, v14, Lcom/android/server/am/UserState;->state:I

    .line 424
    .line 425
    const/4 v5, 0x4

    .line 426
    if-ne v4, v5, :cond_c

    .line 427
    .line 428
    const-string/jumbo v4, "updateStateStopping"

    .line 429
    .line 430
    .line 431
    invoke-virtual {v8, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    iget v4, v14, Lcom/android/server/am/UserState;->lastState:I

    .line 435
    .line 436
    invoke-virtual {v14, v4}, Lcom/android/server/am/UserState;->setState(I)V

    .line 437
    .line 438
    .line 439
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 440
    .line 441
    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 442
    .line 443
    .line 444
    move-result-object v4

    .line 445
    iget v5, v14, Lcom/android/server/am/UserState;->state:I

    .line 446
    .line 447
    invoke-virtual {v4, v12, v5}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 448
    .line 449
    .line 450
    iget-object v5, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 451
    .line 452
    monitor-enter v5

    .line 453
    :try_start_6
    invoke-virtual {v1}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 454
    .line 455
    .line 456
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 457
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 458
    .line 459
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

    .line 467
    .line 468
    const-string/jumbo v4, "updateStateShutdown"

    .line 469
    .line 470
    .line 471
    invoke-virtual {v8, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    const/4 v4, 0x0

    .line 475
    invoke-virtual {v14, v4}, Lcom/android/server/am/UserState;->setState(I)V

    .line 476
    .line 477
    .line 478
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 479
    .line 480
    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 481
    .line 482
    .line 483
    move-result-object v4

    .line 484
    iget v5, v14, Lcom/android/server/am/UserState;->state:I

    .line 485
    .line 486
    invoke-virtual {v4, v12, v5}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 487
    .line 488
    .line 489
    iget-object v4, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 490
    .line 491
    monitor-enter v4

    .line 492
    :try_start_8
    invoke-virtual {v1}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 493
    .line 494
    .line 495
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 496
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 497
    .line 498
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

    .line 504
    .line 505
    :goto_6
    iget v4, v14, Lcom/android/server/am/UserState;->state:I

    .line 506
    .line 507
    if-nez v4, :cond_e

    .line 508
    .line 509
    const-string/jumbo v4, "updateStateBooting"

    .line 510
    .line 511
    .line 512
    invoke-virtual {v8, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 516
    .line 517
    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 518
    .line 519
    .line 520
    move-result-object v4

    .line 521
    invoke-virtual {v4, v12}, Lcom/android/server/pm/UserManagerService;->onBeforeStartUser(I)V

    .line 522
    .line 523
    .line 524
    iget-object v4, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 525
    .line 526
    const/16 v5, 0x32

    .line 527
    .line 528
    const/4 v7, 0x0

    .line 529
    invoke-virtual {v4, v5, v12, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 530
    .line 531
    .line 532
    move-result-object v5

    .line 533
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 534
    .line 535
    .line 536
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 537
    .line 538
    .line 539
    goto :goto_7

    .line 540
    :cond_e
    const/4 v7, 0x0

    .line 541
    :goto_7
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 542
    .line 543
    iget-object v4, v4, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 544
    .line 545
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 546
    .line 547
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 548
    .line 549
    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 550
    .line 551
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 552
    .line 553
    new-instance v9, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;

    .line 554
    .line 555
    move/from16 v11, v17

    .line 556
    .line 557
    invoke-direct {v9, v4, v12, v11, v10}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;IZZ)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v5, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 561
    .line 562
    .line 563
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 564
    .line 565
    iget-object v4, v4, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 566
    .line 567
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 568
    .line 569
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 570
    .line 571
    iget-object v5, v4, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    .line 572
    .line 573
    new-instance v9, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda12;

    .line 574
    .line 575
    invoke-direct {v9, v4, v12}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/MultiTaskingController;I)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v5, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 579
    .line 580
    .line 581
    const-string/jumbo v4, "sendMessages"

    .line 582
    .line 583
    .line 584
    invoke-virtual {v8, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    if-eqz v11, :cond_f

    .line 588
    .line 589
    iget-object v4, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 590
    .line 591
    const/16 v5, 0x3c

    .line 592
    .line 593
    invoke-virtual {v4, v5, v12, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 594
    .line 595
    .line 596
    move-result-object v5

    .line 597
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 598
    .line 599
    .line 600
    iget-object v4, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 601
    .line 602
    const/16 v5, 0xa

    .line 603
    .line 604
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 605
    .line 606
    .line 607
    iget-object v4, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 608
    .line 609
    const/16 v9, 0x1e

    .line 610
    .line 611
    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 612
    .line 613
    .line 614
    iget-object v4, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 615
    .line 616
    invoke-virtual {v4, v5, v3, v12, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 617
    .line 618
    .line 619
    move-result-object v5

    .line 620
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 621
    .line 622
    .line 623
    iget-object v4, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 624
    .line 625
    invoke-virtual {v4, v9, v3, v12, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 626
    .line 627
    .line 628
    move-result-object v3

    .line 629
    invoke-static {}, Lcom/android/server/am/UserController;->getUserSwitchTimeoutMs()I

    .line 630
    .line 631
    .line 632
    move-result v5

    .line 633
    move-object/from16 p0, v8

    .line 634
    .line 635
    int-to-long v7, v5

    .line 636
    invoke-virtual {v4, v3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 637
    .line 638
    .line 639
    goto :goto_8

    .line 640
    :cond_f
    move-object/from16 p0, v8

    .line 641
    .line 642
    :goto_8
    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 643
    .line 644
    if-eqz v2, :cond_10

    .line 645
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

    .line 650
    .line 651
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 652
    .line 653
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 654
    .line 655
    .line 656
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    .line 657
    .line 658
    .line 659
    move-result v2

    .line 660
    if-eqz v2, :cond_11

    .line 661
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

    .line 666
    .line 667
    if-eqz v9, :cond_13

    .line 668
    .line 669
    :cond_12
    invoke-virtual {v1, v12, v6, v0}, Lcom/android/server/am/UserController;->sendUserStartedBroadcast(III)V

    .line 670
    .line 671
    .line 672
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 673
    .line 674
    .line 675
    if-eqz v11, :cond_14

    .line 676
    .line 677
    const-string/jumbo v2, "moveUserToForeground"

    .line 678
    .line 679
    .line 680
    move-object/from16 v3, p0

    .line 681
    .line 682
    invoke-virtual {v3, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v1, v12, v14}, Lcom/android/server/am/UserController;->moveUserToForeground(ILcom/android/server/am/UserState;)V

    .line 686
    .line 687
    .line 688
    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 689
    .line 690
    .line 691
    goto :goto_b

    .line 692
    :cond_14
    move-object/from16 v3, p0

    .line 693
    .line 694
    const-string/jumbo v2, "finishUserBoot"

    .line 695
    .line 696
    .line 697
    invoke-virtual {v3, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    const/4 v2, 0x0

    .line 701
    invoke-virtual {v1, v14, v2}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Lcom/android/server/am/ActivityManagerService$12;)V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 705
    .line 706
    .line 707
    :goto_b
    if-nez v4, :cond_15

    .line 708
    .line 709
    if-eqz v9, :cond_16

    .line 710
    .line 711
    :cond_15
    const-string/jumbo v2, "sendRestartBroadcast"

    .line 712
    .line 713
    .line 714
    invoke-virtual {v3, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v1, v12, v6, v0}, Lcom/android/server/am/UserController;->sendUserStartingBroadcast(III)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 721
    .line 722
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
