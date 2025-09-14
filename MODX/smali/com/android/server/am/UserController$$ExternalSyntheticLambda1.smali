.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/UserController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/am/UserState;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;ZI)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/UserController;

    .line 5
    iput p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    iput-object p3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/am/UserState;

    .line 9
    iput-boolean p4, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$3:Z

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget v1, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 5
    packed-switch v1, :pswitch_data_0

    .line 8
    iget-object v1, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/UserController;

    .line 10
    iget v2, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$1:I

    .line 12
    iget-object v3, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/am/UserState;

    .line 14
    iget-boolean v0, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$3:Z

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance v4, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 21
    invoke-direct {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    .line 26
    const-string/jumbo v6, "finishUserStopped-"

    .line 29
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, "-[stopUser]"

    .line 37
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v4, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1, v3, v0}, Lcom/android/server/am/UserController;->finishUserStopped(Lcom/android/server/am/UserState;Z)V

    .line 50
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 53
    return-void

    .line 54
    :pswitch_0
    iget-object v6, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/UserController;

    .line 56
    iget v7, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$1:I

    .line 58
    iget-object v8, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/am/UserState;

    .line 60
    iget-boolean v9, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$3:Z

    .line 62
    iget-object v0, v6, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;

    .line 66
    const/4 v10, 0x3

    .line 67
    move-object v5, v1

    .line 68
    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;ZI)V

    .line 71
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void

    .line 75
    :pswitch_1
    iget-object v1, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/UserController;

    .line 77
    iget v10, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$1:I

    .line 79
    iget-object v14, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/am/UserState;

    .line 81
    iget-boolean v15, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$3:Z

    .line 83
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 88
    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    .line 93
    const-string/jumbo v3, "finishUserStopping-"

    .line 96
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    const-string v3, "-[stopUser]"

    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v0, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 114
    const/16 v2, 0x7579

    .line 116
    invoke-static {v2, v10}, Landroid/util/EventLog;->writeEvent(II)I

    .line 119
    iget-object v2, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 121
    monitor-enter v2

    .line 122
    :try_start_0
    iget v3, v14, Lcom/android/server/am/UserState;->state:I

    .line 124
    const/4 v4, 0x4

    .line 125
    const/4 v5, 0x5

    .line 126
    if-eq v3, v4, :cond_1

    .line 128
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 130
    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 133
    move-result-object v3

    .line 134
    iget-object v3, v3, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 136
    invoke-virtual {v1, v10}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 139
    move-result-object v4

    .line 140
    const/4 v6, 0x3

    .line 141
    const/4 v7, -0x1

    .line 142
    invoke-virtual {v3, v7, v4, v5, v6}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 145
    move-result-object v3

    .line 146
    if-eqz v3, :cond_0

    .line 148
    iget-object v1, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 150
    const/16 v4, 0xc8

    .line 152
    invoke-virtual {v1, v4, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 155
    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    .line 157
    goto/16 :goto_2

    .line 159
    :cond_0
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 161
    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 164
    move-result-object v3

    .line 165
    iget-object v3, v3, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 167
    invoke-virtual {v1, v10}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 170
    move-result-object v1

    .line 171
    const/4 v4, 0x0

    .line 172
    invoke-virtual {v3, v7, v1, v5, v4}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 175
    :goto_0
    monitor-exit v2

    .line 176
    goto/16 :goto_1

    .line 178
    :cond_1
    invoke-virtual {v14, v5}, Lcom/android/server/am/UserState;->setState(I)V

    .line 181
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 184
    invoke-direct {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    .line 189
    const-string/jumbo v4, "setUserState-STATE_SHUTDOWN-"

    .line 192
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    const-string v4, "-[stopUser]"

    .line 200
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    move-result-object v3

    .line 207
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 210
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 212
    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 215
    move-result-object v3

    .line 216
    iget v4, v14, Lcom/android/server/am/UserState;->state:I

    .line 218
    invoke-virtual {v3, v10, v4}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 221
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 224
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 226
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 229
    move-result-object v3

    .line 230
    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 232
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 234
    const/16 v4, 0x4007

    .line 236
    invoke-virtual {v2, v4, v3, v10}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 239
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 241
    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 243
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 245
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    const/16 v3, 0x7586

    .line 250
    invoke-static {v3, v10}, Landroid/util/EventLog;->writeEvent(II)I

    .line 253
    const-string v3, "Stop"

    .line 255
    invoke-virtual {v2, v10, v3}, Lcom/android/server/SystemServiceManager;->onUser(ILjava/lang/String;)V

    .line 258
    new-instance v2, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;

    .line 260
    const/16 v16, 0x2

    .line 262
    move-object v11, v2

    .line 263
    move-object v12, v1

    .line 264
    move v13, v10

    .line 265
    invoke-direct/range {v11 .. v16}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;ZI)V

    .line 268
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 270
    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 273
    move-result-object v3

    .line 274
    invoke-virtual {v3, v10}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    .line 277
    move-result v3

    .line 278
    if-eqz v3, :cond_2

    .line 280
    invoke-virtual {v2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->run()V

    .line 283
    goto :goto_1

    .line 284
    :cond_2
    new-instance v3, Landroid/content/Intent;

    .line 286
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    .line 288
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    new-instance v4, Lcom/android/server/am/UserController$5;

    .line 293
    const/4 v5, 0x0

    .line 294
    invoke-direct {v4, v10, v2, v5}, Lcom/android/server/am/UserController$5;-><init>(ILcom/android/server/am/UserController$$ExternalSyntheticLambda1;B)V

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    .line 299
    const-string/jumbo v5, "broadcast-ACTION_SHUTDOWN-"

    .line 302
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    const-string v5, "-[stopUser]"

    .line 310
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    move-result-object v2

    .line 317
    invoke-static {v10, v2}, Lcom/android/server/am/UserController;->asyncTraceBegin(ILjava/lang/String;)V

    .line 320
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 322
    sget v7, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 324
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 327
    move-result v8

    .line 328
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 331
    move-result v9

    .line 332
    const/4 v5, 0x0

    .line 333
    const/4 v6, 0x0

    .line 334
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    .line 337
    :goto_1
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 340
    return-void

    .line 341
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    throw v0

    .line 343
    :pswitch_2
    iget-object v4, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/UserController;

    .line 345
    iget v5, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$1:I

    .line 347
    iget-object v6, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/am/UserState;

    .line 349
    iget-boolean v7, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$3:Z

    .line 351
    iget-object v0, v4, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 353
    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;

    .line 355
    const/4 v8, 0x1

    .line 356
    move-object v3, v1

    .line 357
    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;ZI)V

    .line 360
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 363
    return-void

    .line 364
    nop

    .line 365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
