.class public final Lcom/android/server/am/MARsTrigger$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/am/MARsTrigger;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/MARsTrigger;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/am/MARsTrigger$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 1
    const/4 p1, 0x2

    .line 2
    const/16 v0, 0x9

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x6

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    iget v5, p0, Lcom/android/server/am/MARsTrigger$1;->$r8$classId:I

    .line 10
    packed-switch v5, :pswitch_data_0

    .line 13
    if-eqz p2, :cond_b

    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_0

    .line 21
    goto/16 :goto_3

    .line 23
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    const-string/jumbo v1, "broadcast received action : "

    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    const-string v1, "MARsTrigger"

    .line 44
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_b

    .line 55
    const-string p1, "android.intent.extra.user_handle"

    .line 57
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 60
    move-result p1

    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo v0, "mContext.id = "

    .line 66
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    .line 71
    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    .line 76
    move-result p0

    .line 77
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    .line 89
    if-eqz p0, :cond_1

    .line 91
    sget-object p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 93
    invoke-virtual {p0, v4}, Lcom/android/server/am/mars/database/MARsDBManager;->doUpdateCompHistory(Z)V

    .line 96
    :cond_1
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 98
    const-string p2, "DEV"

    .line 100
    const-string/jumbo v0, "switchUser"

    .line 103
    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-boolean p2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 108
    sget-object p2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 110
    iget-boolean v0, p2, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    .line 112
    if-eqz v0, :cond_3

    .line 114
    invoke-virtual {p2, v4}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    .line 117
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 119
    if-eqz v1, :cond_2

    .line 121
    const-string v1, "FreecessController"

    .line 123
    const-string/jumbo v2, "removeBgTriggerMsg...."

    .line 126
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_2
    sget-object v1, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 131
    invoke-virtual {v1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsg()V

    .line 134
    :cond_3
    iget-boolean v1, p2, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 136
    if-eqz v1, :cond_4

    .line 138
    const-string v1, "MUM"

    .line 140
    invoke-virtual {p2, v1}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    .line 143
    :cond_4
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    .line 145
    if-eqz v0, :cond_5

    .line 147
    invoke-virtual {p2, v3}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    .line 150
    :cond_5
    sget-object p2, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 152
    move v0, v3

    .line 153
    :goto_0
    iget-object v1, p2, Lcom/android/server/am/mars/filter/FilterManager;->mFF:Lcom/android/server/am/mars/filter/FilterFactory;

    .line 155
    const/16 v2, 0x22

    .line 157
    if-ge v0, v2, :cond_6

    .line 159
    iget-object v1, v1, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 161
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    move-result-object v1

    .line 169
    check-cast v1, Lcom/android/server/am/mars/filter/IFilter;

    .line 171
    invoke-interface {v1}, Lcom/android/server/am/mars/filter/IFilter;->deInit()V

    .line 174
    add-int/2addr v0, v3

    .line 175
    goto :goto_0

    .line 176
    :cond_6
    iget-object v0, v1, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 178
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 181
    iget-object p2, p2, Lcom/android/server/am/mars/filter/FilterManager;->mFCF:Lcom/android/server/am/mars/filter/FilterChainFactory;

    .line 183
    iget-object p2, p2, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 185
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 188
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    .line 190
    const-wide/16 v0, 0x0

    .line 192
    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    .line 194
    new-instance p2, Landroid/os/UserHandle;

    .line 196
    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 201
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v0, v1, v4, p2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 208
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    goto :goto_1

    .line 210
    :catch_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 212
    :goto_1
    sget-object p2, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 214
    iget-object v0, p2, Lcom/android/server/am/mars/database/MARsDBManager;->mCurrentContext:Landroid/content/Context;

    .line 216
    :try_start_1
    iget-boolean v1, p2, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerSettingsObserver:Z

    .line 218
    if-eqz v1, :cond_7

    .line 220
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 223
    move-result-object v1

    .line 224
    iget-object v2, p2, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerSettingsObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 226
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 229
    iput-boolean v4, p2, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerSettingsObserver:Z

    .line 231
    :cond_7
    iget-boolean v1, p2, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerFreezeExcludeListObserver:Z

    .line 233
    if-eqz v1, :cond_8

    .line 235
    iget-object v1, p2, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 237
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 240
    move-result-object v1

    .line 241
    iget-object v2, p2, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerFreezeExcludeListObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 243
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 246
    iput-boolean v4, p2, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerFreezeExcludeListObserver:Z

    .line 248
    :cond_8
    iget-boolean v1, p2, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerDefaultAllowedListObserver:Z

    .line 250
    if-eqz v1, :cond_9

    .line 252
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 255
    move-result-object v0

    .line 256
    iget-object v1, p2, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerDefaultAllowedListObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 258
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 261
    iput-boolean v4, p2, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerDefaultAllowedListObserver:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 263
    goto :goto_2

    .line 264
    :catch_1
    const-string v0, "MARsDBManager"

    .line 266
    const-string v1, "IllegalArgumentException occurred in unregisterContentObserver()"

    .line 268
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_9
    :goto_2
    iput-object p0, p2, Lcom/android/server/am/mars/database/MARsDBManager;->mCurrentContext:Landroid/content/Context;

    .line 273
    invoke-virtual {p2, p0}, Lcom/android/server/am/mars/database/MARsDBManager;->registerContentObservers(Landroid/content/Context;)V

    .line 276
    sget-object p2, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 278
    invoke-virtual {p2, p0}, Lcom/android/server/am/mars/filter/FilterManager;->init(Landroid/content/Context;)V

    .line 281
    sget-object p0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsHandler;->sendInitDisabledMsgToMainHandler(I)V

    .line 286
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 289
    sget-object p0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 291
    iget-object p2, p0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 293
    if-nez p2, :cond_a

    .line 295
    goto :goto_3

    .line 296
    :cond_a
    const-string/jumbo p2, "userId"

    .line 299
    invoke-static {p1, p2}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 302
    move-result-object p1

    .line 303
    iget-object p2, p0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 305
    const/4 v0, 0x7

    .line 306
    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 309
    move-result-object p2

    .line 310
    invoke-virtual {p2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 313
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 315
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 318
    :cond_b
    :goto_3
    return-void

    .line 319
    :pswitch_0
    if-eqz p2, :cond_f

    .line 321
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 324
    move-result-object p1

    .line 325
    if-nez p1, :cond_c

    .line 327
    goto/16 :goto_4

    .line 329
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 332
    move-result-object p1

    .line 333
    const-string p2, "android.intent.action.TIME_SET"

    .line 335
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    move-result p1

    .line 339
    if-eqz p1, :cond_f

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 344
    move-result-wide p1

    .line 345
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 348
    move-result-wide v0

    .line 349
    iget-object v5, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    .line 351
    iget-wide v6, v5, Lcom/android/server/am/MARsTrigger;->mLastTimeChangeClockTime:J

    .line 353
    iget-wide v8, v5, Lcom/android/server/am/MARsTrigger;->mLastTimeChangeRealtime:J

    .line 355
    sub-long v8, v0, v8

    .line 357
    add-long/2addr v8, v6

    .line 358
    sub-long v5, p1, v8

    .line 360
    sget-object v7, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 362
    new-instance v8, Landroid/os/Bundle;

    .line 364
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 367
    const-string/jumbo v9, "changedTime"

    .line 370
    invoke-virtual {v8, v9, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 373
    iget-object v9, v7, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 375
    invoke-virtual {v9, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 378
    move-result-object v2

    .line 379
    invoke-virtual {v2, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 382
    iget-object v7, v7, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 384
    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 387
    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    .line 389
    iput-wide p1, p0, Lcom/android/server/am/MARsTrigger;->mLastTimeChangeClockTime:J

    .line 391
    iput-wide v0, p0, Lcom/android/server/am/MARsTrigger;->mLastTimeChangeRealtime:J

    .line 393
    sget-boolean p0, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z

    .line 395
    sget-object p0, Lcom/android/server/am/mars/EventRecorder$EventRecorderHolder;->INSTANCE:Lcom/android/server/am/mars/EventRecorder;

    .line 397
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    const-string/jumbo p1, "file delete result : "

    .line 403
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    .line 406
    move-result-wide v0

    .line 407
    const-wide/16 v7, 0x7530

    .line 409
    cmp-long p2, v0, v7

    .line 411
    const-string v0, "EventRecorder"

    .line 413
    if-gez p2, :cond_d

    .line 415
    new-instance p0, Ljava/lang/StringBuilder;

    .line 417
    const-string/jumbo p1, "changed time is "

    .line 420
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 426
    const-string p1, ". ignore."

    .line 428
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    move-result-object p0

    .line 435
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    goto :goto_4

    .line 439
    :cond_d
    const-string/jumbo p2, "disable EventRecorder"

    .line 442
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 448
    move-result-wide v1

    .line 449
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/mars/EventRecorder;->performWrite(J)V

    .line 452
    sput-boolean v4, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z

    .line 454
    iget-object p0, p0, Lcom/android/server/am/mars/EventRecorder;->mContext:Landroid/content/Context;

    .line 456
    const-string/jumbo p2, "jobscheduler"

    .line 459
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 462
    move-result-object p0

    .line 463
    check-cast p0, Landroid/app/job/JobScheduler;

    .line 465
    if-eqz p0, :cond_e

    .line 467
    const-string p2, "MARsEventRecorderNamespace"

    .line 469
    invoke-virtual {p0, p2}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    .line 472
    move-result-object p0

    .line 473
    invoke-virtual {p0, v3}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 476
    :cond_e
    sget-object p0, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 478
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 481
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 483
    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    sget-object p1, Lcom/android/server/am/mars/EventRecorder;->file:Ljava/io/File;

    .line 488
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 491
    move-result p1

    .line 492
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 498
    move-result-object p1

    .line 499
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 502
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 505
    goto :goto_4

    .line 506
    :catchall_0
    move-exception p0

    .line 507
    sget-object p1, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 509
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 512
    throw p0

    .line 513
    :cond_f
    :goto_4
    return-void

    .line 514
    :pswitch_1
    if-eqz p2, :cond_19

    .line 516
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 519
    move-result-object p1

    .line 520
    if-nez p1, :cond_10

    .line 522
    goto/16 :goto_7

    .line 524
    :cond_10
    const-string/jumbo p1, "package"

    .line 527
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 530
    move-result-object p1

    .line 531
    if-eqz p1, :cond_11

    .line 533
    const-string/jumbo v2, "com.samsung.android.game.gos"

    .line 536
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 539
    move-result p1

    .line 540
    if-nez p1, :cond_11

    .line 542
    goto/16 :goto_7

    .line 544
    :cond_11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 547
    move-result-object p1

    .line 548
    const-string/jumbo v2, "com.android.server.am.MARS_TRIGGER_GAME_MODE_POLICY"

    .line 551
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 554
    move-result v2

    .line 555
    sget-object v5, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 557
    if-eqz v2, :cond_15

    .line 559
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 562
    move-result-object p2

    .line 563
    if-eqz p2, :cond_19

    .line 565
    const-string/jumbo v1, "survive_app"

    .line 568
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 571
    move-result-object v1

    .line 572
    const-string/jumbo v2, "lru_num"

    .line 575
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 578
    move-result p2

    .line 579
    sget-object v2, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter$LatestProtectedPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;

    .line 581
    iput p2, v2, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mProtectedAppSizeForGame:I

    .line 583
    sget-boolean p2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 585
    sget-object p2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 587
    iget-boolean v2, p2, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 589
    if-eqz v2, :cond_14

    .line 591
    sget-boolean v2, Lcom/android/server/am/FreecessController;->IS_SUPPORT_CALM_MODE:Z

    .line 593
    if-nez v2, :cond_12

    .line 595
    goto :goto_5

    .line 596
    :cond_12
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 598
    iget-object p1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 600
    if-nez p1, :cond_13

    .line 602
    goto/16 :goto_7

    .line 604
    :cond_13
    const/16 p2, 0x15

    .line 606
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 609
    new-instance p1, Landroid/os/Bundle;

    .line 611
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 614
    const-string/jumbo v0, "list"

    .line 617
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 620
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 622
    invoke-virtual {v0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 625
    move-result-object p2

    .line 626
    invoke-virtual {p2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 629
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 631
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 634
    goto :goto_7

    .line 635
    :cond_14
    :goto_5
    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    .line 637
    invoke-static {v2, p1}, Lcom/android/server/am/MARsTrigger;->-$$Nest$mactionToString(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    .line 640
    move-result-object p1

    .line 641
    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    .line 643
    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 645
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    .line 648
    move-result p0

    .line 649
    invoke-virtual {v5, v0, p0, p1, v1}, Lcom/android/server/am/MARsHandler;->sendRunPolicySpecificPkgMsgToMainHandler(IILjava/lang/String;Ljava/util/ArrayList;)V

    .line 652
    iget-boolean p0, p2, Lcom/android/server/am/FreecessController;->mGameModeEnabled:Z

    .line 654
    if-nez p0, :cond_19

    .line 656
    iput-boolean v3, p2, Lcom/android/server/am/FreecessController;->mGameModeEnabled:Z

    .line 658
    goto :goto_7

    .line 659
    :cond_15
    const-string/jumbo p0, "com.android.server.am.MARS_CANCEL_GAME_MODE_POLICY"

    .line 662
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 665
    move-result p0

    .line 666
    if-eqz p0, :cond_19

    .line 668
    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 670
    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 672
    iget-boolean p1, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 674
    if-nez p1, :cond_16

    .line 676
    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 678
    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 680
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 683
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 686
    move-result p1

    .line 687
    if-nez p1, :cond_18

    .line 689
    const/4 p1, -0x1

    .line 690
    invoke-virtual {v5, v0, p1, v1}, Lcom/android/server/am/MARsHandler;->sendCancelPolicyMsgToMainHandler(IILjava/util/ArrayList;)V

    .line 693
    iget-boolean p1, p0, Lcom/android/server/am/FreecessController;->mGameModeEnabled:Z

    .line 695
    if-eqz p1, :cond_18

    .line 697
    iput-boolean v4, p0, Lcom/android/server/am/FreecessController;->mGameModeEnabled:Z

    .line 699
    goto :goto_6

    .line 700
    :cond_16
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 702
    iget-object p1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 704
    if-nez p1, :cond_17

    .line 706
    goto :goto_6

    .line 707
    :cond_17
    const/16 p2, 0x17

    .line 709
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 712
    move-result-object p1

    .line 713
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 715
    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 718
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 720
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 723
    :cond_18
    :goto_6
    const-string p0, "MARsTrigger"

    .line 725
    const-string/jumbo p1, "broadcast received action : MARS_CANCEL_GAME_MODE_POLICY"

    .line 728
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_19
    :goto_7
    return-void

    .line 732
    :pswitch_2
    if-eqz p2, :cond_1d

    .line 734
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 737
    move-result-object p1

    .line 738
    if-nez p1, :cond_1a

    .line 740
    goto :goto_8

    .line 741
    :cond_1a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 744
    move-result-object p1

    .line 745
    const-string/jumbo v0, "com.android.server.am.MARS_TRIGGER_SBIKE_MODE_POLICY"

    .line 748
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 751
    move-result v0

    .line 752
    const-string v3, "PACKAGE_NAME"

    .line 754
    sget-object v4, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 756
    if-eqz v0, :cond_1b

    .line 758
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 761
    move-result-object p2

    .line 762
    if-eqz p2, :cond_1d

    .line 764
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 767
    move-result-object p2

    .line 768
    if-eqz p2, :cond_1d

    .line 770
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    .line 772
    invoke-static {v0, p1}, Lcom/android/server/am/MARsTrigger;->-$$Nest$mactionToString(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    .line 775
    move-result-object p1

    .line 776
    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    .line 778
    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 780
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    .line 783
    move-result p0

    .line 784
    invoke-virtual {v4, v2, p0, p1, p2}, Lcom/android/server/am/MARsHandler;->sendRunPolicySpecificPkgMsgToMainHandler(IILjava/lang/String;Ljava/util/ArrayList;)V

    .line 787
    goto :goto_8

    .line 788
    :cond_1b
    const-string/jumbo v0, "com.android.server.am.MARS_CANCEL_SBIKE_MODE_POLICY"

    .line 791
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 794
    move-result p1

    .line 795
    if-eqz p1, :cond_1d

    .line 797
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 800
    move-result-object p1

    .line 801
    if-eqz p1, :cond_1c

    .line 803
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 806
    move-result-object p1

    .line 807
    if-eqz p1, :cond_1d

    .line 809
    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    .line 811
    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 813
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    .line 816
    move-result p0

    .line 817
    invoke-virtual {v4, v2, p0, p1}, Lcom/android/server/am/MARsHandler;->sendCancelPolicyMsgToMainHandler(IILjava/util/ArrayList;)V

    .line 820
    goto :goto_8

    .line 821
    :cond_1c
    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    .line 823
    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 825
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    .line 828
    move-result p0

    .line 829
    invoke-virtual {v4, v2, p0, v1}, Lcom/android/server/am/MARsHandler;->sendCancelPolicyMsgToMainHandler(IILjava/util/ArrayList;)V

    .line 832
    :cond_1d
    :goto_8
    return-void

    .line 833
    :pswitch_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 836
    move-result-object v5

    .line 837
    if-nez v5, :cond_1e

    .line 839
    goto/16 :goto_a

    .line 841
    :cond_1e
    const-string v6, "FIRST_ALARM_TRIGGER_ACTION"

    .line 843
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 846
    move-result v6

    .line 847
    sget-object v7, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 849
    if-eqz v6, :cond_1f

    .line 851
    const-string/jumbo v6, "mPolicyIntentReceiver broadcast received action : "

    .line 854
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 857
    move-result-object v6

    .line 858
    const-string v8, "MARsTrigger"

    .line 860
    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    sget-boolean v6, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 865
    sget-object v6, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 867
    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    .line 870
    move-result v6

    .line 871
    if-nez v6, :cond_1f

    .line 873
    sget-boolean v6, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 875
    sget-object v6, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 877
    iget-boolean v6, v6, Lcom/android/server/am/FreecessController;->mIsDumpstateWorking:Z

    .line 879
    if-nez v6, :cond_1f

    .line 881
    invoke-virtual {v7}, Lcom/android/server/am/MARsHandler;->sendFirstTriggerMsgToMainHandler()V

    .line 884
    invoke-virtual {v7}, Lcom/android/server/am/MARsHandler;->sendRepeatTriggerMsgToMainHandler()V

    .line 887
    :cond_1f
    const-string/jumbo v6, "com.samsung.android.server.am.ACTION_UI_TRIGGER_POLICY"

    .line 890
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 893
    move-result v5

    .line 894
    if-eqz v5, :cond_25

    .line 896
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 899
    move-result-object p2

    .line 900
    if-eqz p2, :cond_25

    .line 902
    const-string v5, "POLICY_NAME"

    .line 904
    const-string v6, ""

    .line 906
    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 909
    move-result-object v5

    .line 910
    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    .line 912
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 915
    const-string v6, "applocker"

    .line 917
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 920
    move-result v6

    .line 921
    if-eqz v6, :cond_20

    .line 923
    move p1, v3

    .line 924
    goto :goto_9

    .line 925
    :cond_20
    const-string v3, "autorun"

    .line 927
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 930
    move-result v3

    .line 931
    if-eqz v3, :cond_21

    .line 933
    goto :goto_9

    .line 934
    :cond_21
    const-string/jumbo p1, "freecess"

    .line 937
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 940
    move-result p1

    .line 941
    if-eqz p1, :cond_22

    .line 943
    const/4 p1, 0x4

    .line 944
    goto :goto_9

    .line 945
    :cond_22
    const-string/jumbo p1, "sbikepolicy"

    .line 948
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 951
    move-result p1

    .line 952
    if-eqz p1, :cond_23

    .line 954
    move p1, v2

    .line 955
    goto :goto_9

    .line 956
    :cond_23
    const-string/jumbo p1, "gamepolicy"

    .line 959
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 962
    move-result p1

    .line 963
    if-eqz p1, :cond_24

    .line 965
    move p1, v0

    .line 966
    goto :goto_9

    .line 967
    :cond_24
    move p1, v4

    .line 968
    :goto_9
    const-string v0, "PACKAGE_NAME"

    .line 970
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 973
    move-result-object p2

    .line 974
    if-eqz p1, :cond_25

    .line 976
    if-eqz p2, :cond_25

    .line 978
    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    .line 980
    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 982
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    .line 985
    move-result p0

    .line 986
    invoke-virtual {v7, p1, p0, v1, p2}, Lcom/android/server/am/MARsHandler;->sendRunPolicySpecificPkgMsgToMainHandler(IILjava/lang/String;Ljava/util/ArrayList;)V

    .line 989
    :cond_25
    :goto_a
    return-void

    .line 990
    :pswitch_4
    if-eqz p2, :cond_2a

    .line 992
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 995
    move-result-object p1

    .line 996
    if-nez p1, :cond_26

    .line 998
    goto/16 :goto_b

    .line 1000
    :cond_26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1003
    move-result-object p1

    .line 1004
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 1006
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1009
    move-result p2

    .line 1010
    if-eqz p2, :cond_29

    .line 1012
    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 1014
    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1016
    invoke-virtual {p1, v4}, Lcom/android/server/am/MARsPolicyManager;->setScreenOnState(Z)V

    .line 1019
    sget-boolean p2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 1021
    sget-object p2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 1023
    iget-boolean p2, p2, Lcom/android/server/am/FreecessController;->mIsDumpstateWorking:Z

    .line 1025
    if-nez p2, :cond_2a

    .line 1027
    monitor-enter p1

    .line 1028
    :try_start_3
    iget-boolean p2, p1, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1030
    monitor-exit p1

    .line 1031
    if-nez p2, :cond_2a

    .line 1033
    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 1035
    if-eqz p1, :cond_27

    .line 1037
    sget-object p0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 1039
    invoke-virtual {p0}, Lcom/android/server/am/MARsHandler;->sendFirstTriggerMsgToMainHandler()V

    .line 1042
    goto :goto_b

    .line 1043
    :cond_27
    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    .line 1045
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1048
    iget-object p1, p0, Lcom/android/server/am/MARsTrigger;->mMARsFirstTriggerPolicyAlarmIntent:Landroid/app/PendingIntent;

    .line 1050
    if-nez p1, :cond_28

    .line 1052
    new-instance p1, Landroid/content/Intent;

    .line 1054
    const-string p2, "FIRST_ALARM_TRIGGER_ACTION"

    .line 1056
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1059
    const-string p2, "android"

    .line 1061
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1064
    move-result-object p1

    .line 1065
    const/high16 p2, 0x40000000    # 2.0f

    .line 1067
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1070
    move-result-object p1

    .line 1071
    iget-object p2, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 1073
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->user:Landroid/os/UserHandle;

    .line 1075
    const/high16 v1, 0x4000000

    .line 1077
    invoke-static {p2, v4, p1, v1, v0}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 1080
    move-result-object p1

    .line 1081
    iput-object p1, p0, Lcom/android/server/am/MARsTrigger;->mMARsFirstTriggerPolicyAlarmIntent:Landroid/app/PendingIntent;

    .line 1083
    :cond_28
    iget-object p1, p0, Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;

    .line 1085
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1088
    move-result-wide v0

    .line 1089
    const-wide/16 v4, 0x1388

    .line 1091
    add-long/2addr v0, v4

    .line 1092
    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mMARsFirstTriggerPolicyAlarmIntent:Landroid/app/PendingIntent;

    .line 1094
    invoke-virtual {p1, v3, v0, v1, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 1097
    goto :goto_b

    .line 1098
    :catchall_1
    move-exception p0

    .line 1099
    monitor-exit p1

    .line 1100
    throw p0

    .line 1101
    :cond_29
    sget-object p0, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    .line 1103
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1106
    move-result p0

    .line 1107
    if-eqz p0, :cond_2a

    .line 1109
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 1111
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1113
    monitor-enter p0

    .line 1114
    :try_start_4
    iput-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1116
    monitor-exit p0

    .line 1117
    goto :goto_b

    .line 1118
    :catchall_2
    move-exception p1

    .line 1119
    monitor-exit p0

    .line 1120
    throw p1

    .line 1121
    :cond_2a
    :goto_b
    return-void

    .line 1122
    :pswitch_5
    if-eqz p2, :cond_2e

    .line 1124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1127
    move-result-object p1

    .line 1128
    if-nez p1, :cond_2b

    .line 1130
    goto :goto_d

    .line 1131
    :cond_2b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1134
    move-result-object p1

    .line 1135
    const-string/jumbo v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 1138
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1141
    move-result p1

    .line 1142
    if-eqz p1, :cond_2e

    .line 1144
    const-string/jumbo p1, "reason"

    .line 1147
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1150
    move-result p1

    .line 1151
    const/4 p2, 0x5

    .line 1152
    if-ne p1, p2, :cond_2e

    .line 1154
    const-string p1, "MARsTrigger"

    .line 1156
    const-string/jumbo p2, "disable ultra power saving mode"

    .line 1159
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    sget-boolean p2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 1164
    if-nez p2, :cond_2d

    .line 1166
    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    .line 1168
    iget-boolean p2, p0, Lcom/android/server/am/MARsTrigger;->mEmStateReceiverRegistered:Z

    .line 1170
    if-nez p2, :cond_2c

    .line 1172
    goto :goto_c

    .line 1173
    :cond_2c
    :try_start_5
    iget-object p2, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 1175
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mEmergencyStateChangedReceiver:Lcom/android/server/am/MARsTrigger$1;

    .line 1177
    invoke-virtual {p2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1180
    iput-boolean v4, p0, Lcom/android/server/am/MARsTrigger;->mEmStateReceiverRegistered:Z
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1182
    goto :goto_c

    .line 1183
    :catch_2
    const-string p0, "IllegalArgumentException occurred in unregisterEmStateReceiver()"

    .line 1185
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :goto_c
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1190
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->postInit()V

    .line 1193
    goto :goto_d

    .line 1194
    :cond_2d
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1196
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->setSubUserIds()V

    .line 1199
    :cond_2e
    :goto_d
    return-void

    .line 1200
    :pswitch_6
    if-eqz p2, :cond_3b

    .line 1202
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1205
    move-result-object v0

    .line 1206
    if-nez v0, :cond_2f

    .line 1208
    goto/16 :goto_11

    .line 1210
    :cond_2f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1213
    move-result-object p2

    .line 1214
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 1216
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1219
    move-result v0

    .line 1220
    if-eqz v0, :cond_33

    .line 1222
    sget-boolean p2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 1224
    sget-object p2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1226
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPolicyManager;->setScreenOnState(Z)V

    .line 1229
    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    .line 1231
    iget-object p2, p0, Lcom/android/server/am/MARsTrigger;->mMARsFirstTriggerPolicyAlarmIntent:Landroid/app/PendingIntent;

    .line 1233
    if-eqz p2, :cond_30

    .line 1235
    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;

    .line 1237
    invoke-virtual {p0, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1240
    :cond_30
    sget-object p0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 1242
    iget-object p2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 1244
    if-nez p2, :cond_31

    .line 1246
    goto :goto_e

    .line 1247
    :cond_31
    invoke-virtual {p2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1250
    :goto_e
    iget-object p0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 1252
    if-nez p0, :cond_32

    .line 1254
    goto/16 :goto_11

    .line 1256
    :cond_32
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1259
    goto/16 :goto_11

    .line 1261
    :cond_33
    const-string p0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 1263
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1266
    move-result p0

    .line 1267
    if-eqz p0, :cond_35

    .line 1269
    sget-object p0, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter$ActiveTrafficFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;

    .line 1271
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;->mContext:Landroid/content/Context;

    .line 1273
    const-string/jumbo p2, "connectivity"

    .line 1276
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1279
    move-result-object p1

    .line 1280
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 1282
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 1285
    move-result-object p1

    .line 1286
    if-eqz p1, :cond_34

    .line 1288
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 1291
    move-result p1

    .line 1292
    if-eqz p1, :cond_34

    .line 1294
    goto :goto_f

    .line 1295
    :cond_34
    move v3, v4

    .line 1296
    :goto_f
    iput-boolean v3, p0, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;->mIsDataConnectionConnected:Z

    .line 1298
    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    .line 1300
    if-eqz p1, :cond_3b

    .line 1302
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1304
    const-string p2, "DataConnection: "

    .line 1306
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1309
    iget-boolean p0, p0, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;->mIsDataConnectionConnected:Z

    .line 1311
    const-string p2, "MARs:ActiveTrafficFilter"

    .line 1313
    invoke-static {p2, p1, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 1316
    goto/16 :goto_11

    .line 1318
    :cond_35
    sget-object p0, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    .line 1320
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1323
    move-result p0

    .line 1324
    if-eqz p0, :cond_36

    .line 1326
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 1328
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1330
    monitor-enter p0

    .line 1331
    :try_start_6
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1333
    monitor-exit p0

    .line 1334
    goto :goto_11

    .line 1335
    :catchall_3
    move-exception p1

    .line 1336
    monitor-exit p0

    .line 1337
    throw p1

    .line 1338
    :cond_36
    const-string p0, "android.intent.action.SIM_STATE_CHANGED"

    .line 1340
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1343
    move-result p0

    .line 1344
    if-eqz p0, :cond_37

    .line 1346
    sget-object p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter$AllowListFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AllowListFilter;

    .line 1348
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->setCarrierAllowList()V

    .line 1351
    goto :goto_11

    .line 1352
    :cond_37
    const-string p0, "MARS_REQUEST_DB_COMPLETE"

    .line 1354
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1357
    move-result p0

    .line 1358
    if-eqz p0, :cond_3a

    .line 1360
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 1362
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1364
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1367
    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 1369
    monitor-enter p1

    .line 1370
    :try_start_7
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 1372
    iget-object p0, p0, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 1374
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 1377
    move-result p0

    .line 1378
    if-lez p0, :cond_38

    .line 1380
    goto :goto_10

    .line 1381
    :cond_38
    move v3, v4

    .line 1382
    :goto_10
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1383
    if-nez v3, :cond_3b

    .line 1385
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 1388
    sget-object p0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 1390
    iget-object p1, p0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 1392
    if-nez p1, :cond_39

    .line 1394
    goto :goto_11

    .line 1395
    :cond_39
    const-string p1, "MARsDBHandler"

    .line 1397
    const-string/jumbo p2, "sendSdhmsDBCompleteMsgToDBHandler"

    .line 1400
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    iget-object p1, p0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 1405
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBHandler;->mFASDBupdateRunnable:Lcom/android/server/am/mars/database/MARsDBHandler$$ExternalSyntheticLambda0;

    .line 1407
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1410
    goto :goto_11

    .line 1411
    :catchall_4
    move-exception p0

    .line 1412
    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1413
    throw p0

    .line 1414
    :cond_3a
    const-string/jumbo p0, "com.samsung.android.sm.ACTION_SCPM_MARS_SETTINGS_UPDATED"

    .line 1417
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1420
    move-result p0

    .line 1421
    if-eqz p0, :cond_3b

    .line 1423
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 1426
    sget-object p0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 1428
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendGetSCPMPolicyMsgToDBHandler()V

    .line 1431
    :cond_3b
    :goto_11
    return-void

    .line 1432
    nop

    .line 1433
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
