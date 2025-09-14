.class public final Lcom/android/server/am/MARsHandler$MainHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public extras:Landroid/os/Bundle;

.field public final mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

.field public final synthetic this$0:Lcom/android/server/am/MARsHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 3
    iput-object v0, p0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    .line 5
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 11
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 13
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 15
    iput-object v0, p0, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    .line 17
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 8
    move-result-object v2

    .line 9
    iput-object v2, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 11
    iget v3, v0, Landroid/os/Message;->what:I

    .line 13
    const/4 v4, 0x4

    .line 14
    const/4 v5, 0x2

    .line 15
    const/high16 v6, 0x1000000

    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v8, -0x1

    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v10, 0x1

    .line 21
    packed-switch v3, :pswitch_data_0

    .line 24
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    const-string v3, "Unexpected value: "

    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    iget v0, v0, Landroid/os/Message;->what:I

    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    throw v1

    .line 46
    :pswitch_0
    if-eqz v2, :cond_1e

    .line 48
    const-string/jumbo v0, "pkgName"

    .line 51
    invoke-virtual {v2, v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    iget-object v2, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 57
    const-string/jumbo v3, "uid"

    .line 60
    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 63
    move-result v2

    .line 64
    if-eqz v0, :cond_1e

    .line 66
    if-eq v2, v8, :cond_1e

    .line 68
    iget-object v1, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    .line 70
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    const-string/jumbo v3, "disable restriction uid:"

    .line 76
    const-string v4, "MARsPolicyManager"

    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    .line 80
    const-string/jumbo v6, "resetAbusiveEvents uid:"

    .line 83
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    const-string v6, " pkgname:"

    .line 91
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v5

    .line 101
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 106
    monitor-enter v4

    .line 107
    :try_start_0
    iget-object v1, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 109
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 112
    move-result v5

    .line 113
    invoke-static {v1, v0, v5}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 116
    move-result-object v1

    .line 117
    if-eqz v1, :cond_0

    .line 119
    const-string v5, "MARsPolicyManager"

    .line 121
    new-instance v6, Ljava/lang/StringBuilder;

    .line 123
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    const-string v2, " pkgname:"

    .line 131
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v0, " type:excessive_unfreeze"

    .line 139
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 146
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->resetAbusiveFlag(Lcom/android/server/am/MARsPackageInfo;)V

    .line 152
    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    .line 154
    goto :goto_1

    .line 155
    :cond_0
    :goto_0
    monitor-exit v4

    .line 156
    goto/16 :goto_17

    .line 158
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    throw v0

    .line 160
    :pswitch_1
    if-eqz v2, :cond_1e

    .line 162
    const-string v0, "AppRestrictionInfo"

    .line 164
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 167
    move-result-object v0

    .line 168
    iget-object v1, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    .line 170
    const-string v2, "added_from_mars_auto_specific"

    .line 172
    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/MARsPolicyManager;->disablePackageListForSpecific(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 175
    goto/16 :goto_17

    .line 177
    :pswitch_2
    if-nez v2, :cond_1

    .line 179
    goto/16 :goto_17

    .line 181
    :cond_1
    const-string v0, "TCPU: case MARS_MH_NOTIFY_ANOMALY_MSG_TCPU"

    .line 183
    const-string v2, "MARsHandler"

    .line 185
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 190
    const-string/jumbo v3, "pidList"

    .line 193
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 196
    move-result-object v0

    .line 197
    new-instance v7, Ljava/util/ArrayList;

    .line 199
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 202
    new-instance v3, Ljava/util/ArrayList;

    .line 204
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 207
    new-instance v4, Ljava/util/ArrayList;

    .line 209
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 212
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 215
    move-result-object v0

    .line 216
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    move-result v8

    .line 220
    if-eqz v8, :cond_5

    .line 222
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    move-result-object v8

    .line 226
    check-cast v8, Ljava/lang/Integer;

    .line 228
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 231
    move-result v9

    .line 232
    invoke-static {v9}, Landroid/os/Process;->getParentPid(I)I

    .line 235
    move-result v9

    .line 236
    if-ne v9, v5, :cond_3

    .line 238
    goto :goto_2

    .line 239
    :cond_3
    const-string/jumbo v10, "zygote"

    .line 242
    const-string/jumbo v11, "zygote64"

    .line 245
    filled-new-array {v10, v11}, [Ljava/lang/String;

    .line 248
    move-result-object v10

    .line 249
    invoke-static {v10}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    .line 252
    move-result-object v10

    .line 253
    invoke-static {v10}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 256
    move-result-object v10

    .line 257
    new-instance v11, Lcom/android/server/am/MARsHandler$MainHandler$$ExternalSyntheticLambda0;

    .line 259
    invoke-direct {v11, v9}, Lcom/android/server/am/MARsHandler$MainHandler$$ExternalSyntheticLambda0;-><init>(I)V

    .line 262
    invoke-interface {v10, v11}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    .line 265
    move-result v9

    .line 266
    if-eqz v9, :cond_4

    .line 268
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    goto :goto_2

    .line 272
    :cond_4
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 278
    move-result v9

    .line 279
    invoke-static {v9}, Landroid/os/Process;->getUidForPid(I)I

    .line 282
    move-result v9

    .line 283
    const/16 v10, 0x2710

    .line 285
    if-lt v9, v10, :cond_2

    .line 287
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    goto :goto_2

    .line 291
    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 293
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    const-string v5, "TCPU: java pid="

    .line 298
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    const-string v5, " native pid="

    .line 306
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    move-result-object v0

    .line 316
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-static {v3}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    .line 322
    move-result-object v10

    .line 323
    const/16 v17, 0x0

    .line 325
    const/16 v18, 0x0

    .line 327
    const/4 v13, 0x0

    .line 328
    const/4 v14, 0x0

    .line 329
    const/4 v8, 0x0

    .line 330
    const/4 v9, 0x0

    .line 331
    const/4 v11, 0x0

    .line 332
    const/4 v12, 0x0

    .line 333
    const/4 v15, 0x0

    .line 334
    const/16 v16, 0x0

    .line 336
    invoke-static/range {v7 .. v18}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;

    .line 339
    move-result-object v0

    .line 340
    new-instance v3, Ljava/io/File;

    .line 342
    const-string v5, "/data/log/TCPU.log"

    .line 344
    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 350
    move-result v0

    .line 351
    if-eqz v0, :cond_6

    .line 353
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 356
    move-result-object v0

    .line 357
    const/16 v2, 0x1a4

    .line 359
    invoke-static {v0, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 362
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 365
    move-result-object v0

    .line 366
    const/16 v2, 0x3e8

    .line 368
    const/16 v3, 0x3ef

    .line 370
    invoke-static {v0, v2, v3}, Landroid/system/Os;->chown(Ljava/lang/String;II)V

    .line 373
    goto :goto_4

    .line 374
    :catch_0
    move-exception v0

    .line 375
    goto :goto_3

    .line 376
    :cond_6
    const-string v0, "Log file not generated."

    .line 378
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 381
    goto :goto_4

    .line 382
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 385
    :goto_4
    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    .line 387
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 389
    if-eqz v1, :cond_7

    .line 391
    new-instance v1, Landroid/content/Intent;

    .line 393
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 396
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 399
    const-string/jumbo v2, "com.sec.android.sdhms.action.TCPU_LOG"

    .line 402
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    const-string/jumbo v2, "type"

    .line 408
    const-string/jumbo v3, "tcpu_log"

    .line 411
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 416
    new-instance v3, Landroid/os/UserHandle;

    .line 418
    iget v5, v0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    .line 420
    invoke-direct {v3, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 423
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 426
    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 429
    move-result v1

    .line 430
    if-nez v1, :cond_1e

    .line 432
    new-instance v1, Lcom/android/server/am/MARsPolicyManager$1;

    .line 434
    invoke-direct {v1, v0, v4}, Lcom/android/server/am/MARsPolicyManager$1;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/util/List;)V

    .line 437
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 440
    goto/16 :goto_17

    .line 442
    :pswitch_3
    if-eqz v2, :cond_1e

    .line 444
    const-string/jumbo v0, "pkgName"

    .line 447
    invoke-virtual {v2, v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 450
    move-result-object v2

    .line 451
    iget-object v3, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 453
    const-string/jumbo v4, "uid"

    .line 456
    invoke-virtual {v3, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 459
    move-result v3

    .line 460
    iget-object v5, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 462
    const-string/jumbo v7, "type"

    .line 465
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 468
    move-result-object v5

    .line 469
    if-eqz v2, :cond_1e

    .line 471
    if-eq v3, v8, :cond_1e

    .line 473
    iget-object v1, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    .line 475
    iget-object v8, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 477
    if-eqz v8, :cond_1e

    .line 479
    new-instance v8, Landroid/content/Intent;

    .line 481
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 484
    invoke-virtual {v8, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 487
    const-string/jumbo v6, "com.sec.android.sdhms.action.FGS_ANOMALY"

    .line 490
    invoke-virtual {v8, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    const-string/jumbo v0, "userId"

    .line 499
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 502
    move-result v6

    .line 503
    invoke-virtual {v8, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 506
    invoke-virtual {v8, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 509
    invoke-virtual {v8, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    const-string/jumbo v0, "com.sec.android.sdhms"

    .line 515
    invoke-virtual {v8, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 520
    new-instance v4, Landroid/os/UserHandle;

    .line 522
    iget v6, v1, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    .line 524
    invoke-direct {v4, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 527
    invoke-virtual {v0, v8, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    .line 532
    const-string/jumbo v4, "notifyAnomalyApp pkgname:"

    .line 535
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    const-string v2, " uid:"

    .line 543
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 549
    const-string v2, " type:"

    .line 551
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 560
    move-result-object v0

    .line 561
    const-string v2, "MARsPolicyManager"

    .line 563
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    .line 568
    const-string v2, "["

    .line 570
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    const-string v2, "]"

    .line 578
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 587
    move-result-object v0

    .line 588
    const-string v2, "NOTI"

    .line 590
    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    goto/16 :goto_17

    .line 595
    :pswitch_4
    if-nez v2, :cond_8

    .line 597
    goto/16 :goto_17

    .line 599
    :cond_8
    const-string/jumbo v0, "pkgName"

    .line 602
    invoke-virtual {v2, v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 605
    move-result-object v0

    .line 606
    iget-object v2, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 608
    const-string/jumbo v3, "uid"

    .line 611
    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 614
    move-result v2

    .line 615
    if-eqz v0, :cond_1e

    .line 617
    if-eq v2, v8, :cond_1e

    .line 619
    iget-object v1, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    .line 621
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 624
    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 626
    monitor-enter v3

    .line 627
    :try_start_2
    iget-object v1, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 629
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 632
    move-result v4

    .line 633
    invoke-static {v1, v0, v4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 636
    move-result-object v0

    .line 637
    if-eqz v0, :cond_9

    .line 639
    iget-wide v4, v0, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    .line 641
    const-wide/16 v6, 0x0

    .line 643
    cmp-long v1, v4, v6

    .line 645
    if-lez v1, :cond_9

    .line 647
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 650
    move-result-wide v4

    .line 651
    iget-wide v6, v0, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    .line 653
    sub-long/2addr v4, v6

    .line 654
    const-wide/32 v6, 0xf731400

    .line 657
    cmp-long v1, v4, v6

    .line 659
    if-ltz v1, :cond_9

    .line 661
    iget-wide v4, v0, Lcom/android/server/am/MARsPackageInfo;->BatteryUsage:D

    .line 663
    sget v1, Lcom/android/server/am/MARsPolicyManager;->FGS_BATTERY_USAGE_THRESHOLD:I

    .line 665
    int-to-double v6, v1

    .line 666
    cmpl-double v1, v4, v6

    .line 668
    if-ltz v1, :cond_9

    .line 670
    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager;->isAnomalyFGSPackage(I)Z

    .line 673
    move-result v1

    .line 674
    if-eqz v1, :cond_9

    .line 676
    sget-object v1, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 678
    iget-object v2, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 680
    iget v4, v0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 682
    const-string/jumbo v5, "excessive_fgs"

    .line 685
    invoke-virtual {v1, v4, v2, v5}, Lcom/android/server/am/MARsHandler;->sendAnomalyMsgToMainHandler(ILjava/lang/String;Ljava/lang/String;)V

    .line 688
    move-object v9, v0

    .line 689
    goto :goto_5

    .line 690
    :catchall_1
    move-exception v0

    .line 691
    goto :goto_7

    .line 692
    :cond_9
    :goto_5
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 693
    if-eqz v9, :cond_1e

    .line 695
    sget-object v1, Lcom/android/server/am/mars/MARsBigData$MARsBigDataHolder;->INSTANCE:Lcom/android/server/am/mars/MARsBigData;

    .line 697
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 700
    new-instance v2, Lorg/json/JSONObject;

    .line 702
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 705
    :try_start_3
    const-string v0, "PKGN"

    .line 707
    iget-object v3, v9, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 709
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 712
    move-result-object v0

    .line 713
    const-string v3, "UID"

    .line 715
    iget v4, v9, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 717
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 720
    move-result-object v0

    .line 721
    const-string v3, "NUSD"

    .line 723
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 726
    move-result-wide v4

    .line 727
    iget-wide v6, v9, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    .line 729
    sub-long/2addr v4, v6

    .line 730
    const-wide/32 v6, 0x36ee80

    .line 733
    div-long/2addr v4, v6

    .line 734
    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 737
    move-result-object v0

    .line 738
    const-string v3, "BUSE"

    .line 740
    iget-wide v4, v9, Lcom/android/server/am/MARsPackageInfo;->BatteryUsage:D

    .line 742
    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 745
    goto :goto_6

    .line 746
    :catch_1
    move-exception v0

    .line 747
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 750
    :goto_6
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 753
    move-result-object v0

    .line 754
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 757
    move-result v2

    .line 758
    sub-int/2addr v2, v10

    .line 759
    invoke-virtual {v0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 762
    move-result-object v0

    .line 763
    const-string v2, "FGSN"

    .line 765
    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/mars/MARsBigData;->sendBigData(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    goto/16 :goto_17

    .line 770
    :goto_7
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 771
    throw v0

    .line 772
    :pswitch_5
    if-eqz v2, :cond_1e

    .line 774
    const-string/jumbo v0, "pkgName"

    .line 777
    invoke-virtual {v2, v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 780
    move-result-object v14

    .line 781
    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 783
    const-string/jumbo v2, "uid"

    .line 786
    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 789
    move-result v12

    .line 790
    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 792
    const-string/jumbo v2, "userId"

    .line 795
    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 798
    move-result v13

    .line 799
    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 801
    const-string/jumbo v2, "minAdj"

    .line 804
    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 807
    move-result v0

    .line 808
    iget-object v2, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 810
    const-string v3, "allowRestart"

    .line 812
    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 815
    move-result v2

    .line 816
    iget-object v3, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 818
    const-string/jumbo v4, "reason"

    .line 821
    invoke-virtual {v3, v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 824
    move-result-object v15

    .line 825
    const-string/jumbo v3, "kill package processes. pkgName="

    .line 828
    const-string v4, ", uid="

    .line 830
    const-string v5, ", userId="

    .line 832
    invoke-static {v12, v3, v14, v4, v5}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    move-result-object v3

    .line 836
    const-string v4, ", minAdj="

    .line 838
    const-string v5, ", allowRestart="

    .line 840
    invoke-static {v13, v0, v4, v5, v3}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 843
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 846
    const-string v4, ", reason="

    .line 848
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 857
    move-result-object v3

    .line 858
    const-string v4, "MARsHandler"

    .line 860
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    if-eqz v14, :cond_1e

    .line 865
    if-eq v12, v8, :cond_1e

    .line 867
    if-eq v13, v8, :cond_1e

    .line 869
    if-eq v0, v8, :cond_1e

    .line 871
    if-eqz v15, :cond_1e

    .line 873
    iget-object v1, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    .line 875
    iget-object v11, v1, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 877
    move/from16 v16, v0

    .line 879
    move/from16 v17, v2

    .line 881
    invoke-virtual/range {v11 .. v17}, Lcom/android/server/am/ActivityManagerService;->killProcessForMARs(IILjava/lang/String;Ljava/lang/String;IZ)V

    .line 884
    goto/16 :goto_17

    .line 886
    :pswitch_6
    if-eqz v2, :cond_1e

    .line 888
    const-string/jumbo v0, "pkgName"

    .line 891
    invoke-virtual {v2, v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 894
    move-result-object v11

    .line 895
    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 897
    const-string/jumbo v2, "userId"

    .line 900
    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 903
    move-result v12

    .line 904
    if-eqz v11, :cond_1e

    .line 906
    if-eq v12, v8, :cond_1e

    .line 908
    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 910
    const-string/jumbo v2, "bucket"

    .line 913
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 916
    move-result v13

    .line 917
    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 919
    const-string/jumbo v2, "byUser"

    .line 922
    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 925
    move-result v16

    .line 926
    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    .line 928
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 931
    const-string/jumbo v1, "callSetAppStandbyBucket exception:"

    .line 934
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 937
    move-result-wide v2

    .line 938
    :try_start_5
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 940
    if-nez v4, :cond_a

    .line 942
    const-class v4, Lcom/android/server/usage/AppStandbyInternal;

    .line 944
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 947
    move-result-object v4

    .line 948
    check-cast v4, Lcom/android/server/usage/AppStandbyInternal;

    .line 950
    iput-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 952
    goto :goto_8

    .line 953
    :catchall_2
    move-exception v0

    .line 954
    goto :goto_b

    .line 955
    :catch_2
    move-exception v0

    .line 956
    goto :goto_a

    .line 957
    :cond_a
    :goto_8
    iget-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 959
    const/16 v14, 0x700

    .line 961
    const/4 v15, 0x0

    .line 962
    invoke-interface/range {v10 .. v16}, Lcom/android/server/usage/AppStandbyInternal;->setAppStandbyBucketForMARs(Ljava/lang/String;IIIZZ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 965
    :goto_9
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 968
    goto/16 :goto_17

    .line 970
    :goto_a
    :try_start_6
    const-string v4, "MARsPolicyManager"

    .line 972
    new-instance v5, Ljava/lang/StringBuilder;

    .line 974
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 977
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 980
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 983
    move-result-object v0

    .line 984
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 987
    goto :goto_9

    .line 988
    :goto_b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 991
    throw v0

    .line 992
    :pswitch_7
    if-eqz v2, :cond_1e

    .line 994
    const-string/jumbo v0, "userId"

    .line 997
    iget-object v3, v1, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    .line 999
    iget-object v3, v3, Lcom/android/server/am/MARsHandler;->mContext:Landroid/content/Context;

    .line 1001
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    .line 1004
    move-result v3

    .line 1005
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1008
    move-result v0

    .line 1009
    iget-object v1, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    .line 1011
    iget-object v2, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 1013
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1016
    move-result-object v2

    .line 1017
    const v3, 0x8000

    .line 1020
    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 1023
    move-result-object v3

    .line 1024
    :goto_c
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1027
    move-result v5

    .line 1028
    if-ge v7, v5, :cond_1e

    .line 1030
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1033
    move-result-object v5

    .line 1034
    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 1036
    if-eqz v5, :cond_b

    .line 1038
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1040
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1042
    if-eqz v5, :cond_b

    .line 1044
    iget v8, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1046
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 1048
    if-ne v5, v4, :cond_b

    .line 1050
    invoke-virtual {v1, v0, v6}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 1053
    move-result v5

    .line 1054
    if-nez v5, :cond_b

    .line 1056
    invoke-virtual {v2, v6, v8}, Landroid/content/pm/PackageManager;->isPackageAutoDisabled(Ljava/lang/String;I)Z

    .line 1059
    move-result v5

    .line 1060
    if-eqz v5, :cond_b

    .line 1062
    invoke-static {v0, v10, v10, v6}, Lcom/android/server/am/MARsPolicyManager;->setEnabledSetting(IIILjava/lang/String;)Z

    .line 1065
    :cond_b
    add-int/2addr v7, v10

    .line 1066
    goto :goto_c

    .line 1067
    :pswitch_8
    if-eqz v2, :cond_1e

    .line 1069
    const-string/jumbo v0, "extraType"

    .line 1072
    const-string v3, ""

    .line 1074
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1077
    move-result-object v0

    .line 1078
    iget-object v2, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1080
    const-string/jumbo v3, "packageList"

    .line 1083
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1086
    move-result-object v2

    .line 1087
    iget-object v3, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1089
    const-string/jumbo v4, "uidList"

    .line 1092
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1095
    move-result-object v3

    .line 1096
    iget-object v1, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    .line 1098
    iget-object v4, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 1100
    if-eqz v4, :cond_1e

    .line 1102
    new-instance v4, Landroid/content/Intent;

    .line 1104
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1107
    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1110
    const-string/jumbo v5, "com.sec.android.mars.APP_SLEEP_NOTIFY"

    .line 1113
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1116
    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->SMART_MANAGER_PKG_NAME:Ljava/lang/String;

    .line 1118
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1121
    const-string/jumbo v5, "type"

    .line 1124
    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1127
    const-string/jumbo v5, "specificpackagelist"

    .line 1130
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1133
    const-string/jumbo v2, "specificpackageUidlist"

    .line 1136
    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1139
    iget-object v2, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 1141
    new-instance v3, Landroid/os/UserHandle;

    .line 1143
    iget v5, v1, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    .line 1145
    invoke-direct {v3, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 1148
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1151
    const-string v2, "NOTI"

    .line 1153
    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    goto/16 :goto_17

    .line 1158
    :pswitch_9
    iget-object v2, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    .line 1160
    monitor-enter v2

    .line 1161
    :try_start_7
    iget-boolean v0, v2, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1163
    monitor-exit v2

    .line 1164
    if-nez v0, :cond_1e

    .line 1166
    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->checkUnusedTargetForDeepSleep()V

    .line 1169
    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1171
    if-eqz v0, :cond_1e

    .line 1173
    const-string/jumbo v2, "debug"

    .line 1176
    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 1179
    move-result v0

    .line 1180
    iget-object v1, v1, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    .line 1182
    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsHandler;->sendUpdateDisableMsgToMainHandler(Z)V

    .line 1185
    goto/16 :goto_17

    .line 1187
    :catchall_3
    move-exception v0

    .line 1188
    move-object v1, v0

    .line 1189
    monitor-exit v2

    .line 1190
    throw v1

    .line 1191
    :pswitch_a
    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    .line 1193
    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->triggerAction()V

    .line 1196
    goto/16 :goto_17

    .line 1198
    :pswitch_b
    if-nez v2, :cond_c

    .line 1200
    goto/16 :goto_17

    .line 1202
    :cond_c
    const-string/jumbo v0, "packageList"

    .line 1205
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1208
    move-result-object v0

    .line 1209
    iget-object v2, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1211
    const-string/jumbo v3, "policy-num"

    .line 1214
    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1217
    move-result v2

    .line 1218
    if-eqz v0, :cond_d

    .line 1220
    iget-object v3, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1222
    const-string/jumbo v4, "userId"

    .line 1225
    iget-object v5, v1, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    .line 1227
    iget-object v5, v5, Lcom/android/server/am/MARsHandler;->mContext:Landroid/content/Context;

    .line 1229
    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    .line 1232
    move-result v5

    .line 1233
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1236
    move-result v3

    .line 1237
    move v4, v7

    .line 1238
    :goto_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1241
    move-result v5

    .line 1242
    if-ge v4, v5, :cond_1e

    .line 1244
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1247
    move-result-object v5

    .line 1248
    check-cast v5, Ljava/lang/String;

    .line 1250
    iget-object v6, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    .line 1252
    invoke-virtual {v6, v2, v3, v5, v7}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(IILjava/lang/String;Z)V

    .line 1255
    add-int/2addr v4, v10

    .line 1256
    goto :goto_d

    .line 1257
    :cond_d
    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    .line 1259
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1262
    new-instance v1, Ljava/util/ArrayList;

    .line 1264
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1267
    new-instance v3, Ljava/util/ArrayList;

    .line 1269
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1272
    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 1274
    monitor-enter v4

    .line 1275
    move v5, v7

    .line 1276
    :goto_e
    :try_start_8
    iget-object v6, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 1278
    iget-object v6, v6, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 1280
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 1283
    move-result v6

    .line 1284
    if-ge v5, v6, :cond_15

    .line 1286
    iget-object v6, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 1288
    iget-object v6, v6, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 1290
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1293
    move-result-object v6

    .line 1294
    check-cast v6, Landroid/util/SparseArray;

    .line 1296
    move v11, v7

    .line 1297
    :goto_f
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 1300
    move-result v12

    .line 1301
    if-ge v11, v12, :cond_14

    .line 1303
    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1306
    move-result-object v12

    .line 1307
    check-cast v12, Lcom/android/server/am/MARsPackageInfo;

    .line 1309
    iput v7, v12, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 1311
    sget-boolean v13, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 1313
    sget-object v13, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 1315
    iget-boolean v14, v13, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 1317
    if-eqz v14, :cond_e

    .line 1319
    iget-object v14, v12, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 1321
    iget v15, v12, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 1323
    invoke-virtual {v13, v15, v14}, Lcom/android/server/am/FreecessController;->isFreezedPackage(ILjava/lang/String;)Z

    .line 1326
    move-result v14

    .line 1327
    if-eqz v14, :cond_e

    .line 1329
    iget-object v14, v12, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 1331
    iget v12, v12, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 1333
    const-string v15, "CancelPolicy"

    .line 1335
    invoke-virtual {v13, v12, v14, v15}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 1338
    goto :goto_10

    .line 1339
    :catchall_4
    move-exception v0

    .line 1340
    goto/16 :goto_14

    .line 1342
    :cond_e
    iget-object v13, v12, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1344
    if-eqz v13, :cond_12

    .line 1346
    iget v13, v13, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    .line 1348
    if-ne v13, v2, :cond_12

    .line 1350
    const/4 v13, 0x6

    .line 1351
    if-ne v2, v13, :cond_f

    .line 1353
    iput v7, v12, Lcom/android/server/am/MARsPackageInfo;->sbike:I

    .line 1355
    :cond_f
    const/16 v13, 0x8

    .line 1357
    if-ne v2, v13, :cond_11

    .line 1359
    iget-boolean v13, v12, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 1361
    if-nez v13, :cond_10

    .line 1363
    iget v13, v12, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 1365
    invoke-static {v13}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    .line 1368
    move-result v13

    .line 1369
    if-eqz v13, :cond_11

    .line 1371
    :cond_10
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    goto :goto_10

    .line 1375
    :cond_11
    iput-object v9, v12, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1377
    :cond_12
    iget-object v13, v12, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1379
    if-nez v13, :cond_13

    .line 1381
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1384
    :cond_13
    :goto_10
    add-int/2addr v11, v10

    .line 1385
    goto :goto_f

    .line 1386
    :cond_14
    add-int/2addr v5, v10

    .line 1387
    goto :goto_e

    .line 1388
    :cond_15
    move v2, v7

    .line 1389
    :goto_11
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1392
    move-result v5

    .line 1393
    if-ge v2, v5, :cond_16

    .line 1395
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1398
    move-result-object v5

    .line 1399
    check-cast v5, Lcom/android/server/am/MARsPackageInfo;

    .line 1401
    iget-object v6, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 1403
    iget-object v11, v5, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 1405
    iget v5, v5, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 1407
    invoke-virtual {v6, v5, v11}, Lcom/android/server/am/MARsPkgMap;->remove(ILjava/lang/String;)V

    .line 1410
    add-int/2addr v2, v10

    .line 1411
    goto :goto_11

    .line 1412
    :cond_16
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1413
    :goto_12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1416
    move-result v2

    .line 1417
    if-ge v7, v2, :cond_1e

    .line 1419
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 1421
    monitor-enter v2

    .line 1422
    :try_start_9
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1425
    move-result-object v3

    .line 1426
    check-cast v3, Lcom/android/server/am/MARsPackageInfo;

    .line 1428
    if-eqz v3, :cond_17

    .line 1430
    iget-object v4, v3, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 1432
    iget v3, v3, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 1434
    goto :goto_13

    .line 1435
    :cond_17
    move v3, v8

    .line 1436
    move-object v4, v9

    .line 1437
    :goto_13
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1438
    invoke-virtual {v0, v4, v3, v10}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    .line 1441
    add-int/2addr v7, v10

    .line 1442
    goto :goto_12

    .line 1443
    :catchall_5
    move-exception v0

    .line 1444
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1445
    throw v0

    .line 1446
    :goto_14
    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1447
    throw v0

    .line 1448
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsHandler$MainHandler;->handleSpecificPackage()V

    .line 1451
    goto/16 :goto_17

    .line 1453
    :pswitch_d
    if-eqz v2, :cond_1e

    .line 1455
    const-string/jumbo v0, "changedTime"

    .line 1458
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 1461
    move-result-wide v2

    .line 1462
    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    .line 1464
    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->onAppUsedForTimeChanged(J)V

    .line 1467
    goto/16 :goto_17

    .line 1469
    :pswitch_e
    if-nez v2, :cond_18

    .line 1471
    goto/16 :goto_17

    .line 1473
    :cond_18
    const-string/jumbo v0, "pkgName"

    .line 1476
    invoke-virtual {v2, v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1479
    move-result-object v13

    .line 1480
    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1482
    const-string/jumbo v2, "uid"

    .line 1485
    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1488
    move-result v12

    .line 1489
    if-eqz v13, :cond_1e

    .line 1491
    if-eq v12, v8, :cond_1e

    .line 1493
    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1495
    const-string/jumbo v2, "mode"

    .line 1498
    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1501
    move-result v14

    .line 1502
    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    .line 1504
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1507
    :try_start_c
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1509
    if-nez v1, :cond_19

    .line 1511
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 1513
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1515
    iput-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1517
    goto :goto_15

    .line 1518
    :catch_3
    move-exception v0

    .line 1519
    goto :goto_16

    .line 1520
    :cond_19
    :goto_15
    iget-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1522
    if-eqz v10, :cond_1e

    .line 1524
    const/4 v15, 0x0

    .line 1525
    const/16 v11, 0x46

    .line 1527
    invoke-virtual/range {v10 .. v15}, Lcom/android/server/appop/AppOpsService;->setMode(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_3

    .line 1530
    goto/16 :goto_17

    .line 1532
    :goto_16
    const-string/jumbo v1, "updateFasState exception:"

    .line 1535
    const-string v2, "MARsPolicyManager"

    .line 1537
    invoke-static {v1, v0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1540
    goto/16 :goto_17

    .line 1542
    :pswitch_f
    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    .line 1544
    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->getBatteryStats()V

    .line 1547
    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    .line 1549
    iget-object v1, v0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 1551
    if-nez v1, :cond_1a

    .line 1553
    goto :goto_17

    .line 1554
    :cond_1a
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1557
    iget-object v1, v0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 1559
    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 1562
    move-result-object v1

    .line 1563
    iget-object v0, v0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 1565
    const-wide/32 v2, 0x2932e00

    .line 1568
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1571
    goto :goto_17

    .line 1572
    :pswitch_10
    iget-object v2, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    .line 1574
    monitor-enter v2

    .line 1575
    :try_start_d
    iget-boolean v0, v2, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 1577
    monitor-exit v2

    .line 1578
    if-nez v0, :cond_1e

    .line 1580
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 1582
    if-eqz v0, :cond_1b

    .line 1584
    const-string v0, "MARsPolicyManager"

    .line 1586
    const-string/jumbo v3, "doUpdatePackages called!"

    .line 1589
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    :cond_1b
    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->updateFromMARsMainThread()V

    .line 1595
    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    .line 1597
    invoke-virtual {v0, v7}, Lcom/android/server/am/MARsHandler;->sendUpdatePkgMsgToMainHandler(Z)V

    .line 1600
    goto :goto_17

    .line 1601
    :catchall_6
    move-exception v0

    .line 1602
    move-object v1, v0

    .line 1603
    monitor-exit v2

    .line 1604
    throw v1

    .line 1605
    :pswitch_11
    iget-object v2, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    .line 1607
    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    .line 1610
    move-result v0

    .line 1611
    if-nez v0, :cond_1e

    .line 1613
    monitor-enter v2

    .line 1614
    :try_start_e
    iget-boolean v0, v2, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 1616
    monitor-exit v2

    .line 1617
    if-nez v0, :cond_1e

    .line 1619
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 1621
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 1623
    iget-boolean v0, v0, Lcom/android/server/am/FreecessController;->mIsDumpstateWorking:Z

    .line 1625
    if-eqz v0, :cond_1c

    .line 1627
    goto :goto_17

    .line 1628
    :cond_1c
    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->triggerAction()V

    .line 1631
    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    .line 1633
    if-ne v3, v10, :cond_1d

    .line 1635
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 1637
    if-eqz v1, :cond_1e

    .line 1639
    invoke-virtual {v0}, Lcom/android/server/am/MARsHandler;->sendRepeatTriggerMsgToMainHandler()V

    .line 1642
    goto :goto_17

    .line 1643
    :cond_1d
    if-ne v3, v5, :cond_1e

    .line 1645
    invoke-virtual {v0}, Lcom/android/server/am/MARsHandler;->sendRepeatTriggerMsgToMainHandler()V

    .line 1648
    goto :goto_17

    .line 1649
    :catchall_7
    move-exception v0

    .line 1650
    move-object v1, v0

    .line 1651
    monitor-exit v2

    .line 1652
    throw v1

    .line 1653
    :cond_1e
    :goto_17
    return-void

    .line 1654
    nop

    .line 1655
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public final handleSpecificPackage()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 6
    if-nez v2, :cond_0

    .line 8
    return-void

    .line 9
    :cond_0
    const-string/jumbo v3, "packageList"

    .line 12
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 15
    move-result-object v2

    .line 16
    iget-object v3, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 18
    const-string/jumbo v4, "policy-num"

    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 25
    move-result v3

    .line 26
    iget-object v4, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 28
    const-string/jumbo v6, "userId"

    .line 31
    iget-object v7, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    .line 33
    iget-object v7, v7, Lcom/android/server/am/MARsHandler;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    .line 38
    move-result v7

    .line 39
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 42
    move-result v4

    .line 43
    if-eqz v3, :cond_1e

    .line 45
    const/4 v8, 0x6

    .line 46
    if-eq v3, v8, :cond_19

    .line 48
    const/16 v4, 0x9

    .line 50
    if-eq v3, v4, :cond_18

    .line 52
    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    new-instance v4, Landroid/util/ArrayMap;

    .line 59
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 62
    new-instance v8, Ljava/util/ArrayList;

    .line 64
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 67
    new-instance v9, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    invoke-virtual {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 75
    move-result-object v10

    .line 76
    if-eqz v10, :cond_17

    .line 78
    iget-boolean v11, v10, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 80
    if-nez v11, :cond_1

    .line 82
    goto/16 :goto_11

    .line 84
    :cond_1
    sget-object v11, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    .line 86
    invoke-virtual {v11}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 89
    sget-object v11, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 91
    monitor-enter v11

    .line 92
    move v12, v5

    .line 93
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 96
    move-result v13

    .line 97
    const/4 v14, 0x2

    .line 98
    if-ge v12, v13, :cond_8

    .line 100
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    move-result-object v13

    .line 104
    check-cast v13, Ljava/lang/String;

    .line 106
    iget-object v15, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {v15}, Landroid/content/Context;->getUserId()I

    .line 111
    move-result v15

    .line 112
    if-eqz v13, :cond_5

    .line 114
    const-string v7, ","

    .line 116
    invoke-virtual {v13, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 119
    move-result v7

    .line 120
    if-eqz v7, :cond_5

    .line 122
    const-string v7, ","

    .line 124
    invoke-virtual {v13, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 127
    move-result-object v7

    .line 128
    if-eqz v7, :cond_4

    .line 130
    array-length v13, v7

    .line 131
    if-ne v13, v14, :cond_4

    .line 133
    aget-object v13, v7, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    if-eqz v13, :cond_2

    .line 137
    goto :goto_1

    .line 138
    :cond_2
    const/4 v13, 0x0

    .line 139
    :goto_1
    :try_start_1
    aget-object v7, v7, v1

    .line 141
    if-eqz v7, :cond_3

    .line 143
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 146
    move-result v15
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    goto :goto_2

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    goto/16 :goto_10

    .line 151
    :catch_0
    :try_start_2
    const-string v7, "MARsPolicyManager"

    .line 153
    const-string/jumbo v5, "forceRunPolicyForSpecificPackage parseInt error!"

    .line 156
    invoke-static {v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_3
    :goto_2
    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 161
    invoke-static {v5, v13, v15}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 164
    move-result-object v5

    .line 165
    goto :goto_3

    .line 166
    :cond_4
    const/4 v5, 0x0

    .line 167
    goto :goto_3

    .line 168
    :cond_5
    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 170
    invoke-static {v5, v13, v15}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 173
    move-result-object v5

    .line 174
    :goto_3
    if-eqz v5, :cond_7

    .line 176
    iget-object v7, v5, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 178
    iget v13, v5, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 180
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    move-result-object v15

    .line 184
    check-cast v15, Landroid/util/SparseArray;

    .line 186
    if-nez v15, :cond_6

    .line 188
    new-instance v15, Landroid/util/SparseArray;

    .line 190
    invoke-direct {v15, v14}, Landroid/util/SparseArray;-><init>(I)V

    .line 193
    invoke-virtual {v4, v7, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_6
    invoke-virtual {v15, v13, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 199
    :cond_7
    add-int/2addr v12, v1

    .line 200
    const/4 v5, 0x0

    .line 201
    goto :goto_0

    .line 202
    :cond_8
    const/4 v2, 0x0

    .line 203
    :goto_4
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 206
    move-result v5

    .line 207
    if-ge v2, v5, :cond_d

    .line 209
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 212
    move-result-object v5

    .line 213
    check-cast v5, Landroid/util/SparseArray;

    .line 215
    const/4 v7, 0x0

    .line 216
    :goto_5
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 219
    move-result v12

    .line 220
    if-ge v7, v12, :cond_c

    .line 222
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 225
    move-result-object v12

    .line 226
    check-cast v12, Lcom/android/server/am/MARsPackageInfo;

    .line 228
    iget-object v13, v12, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 230
    iget v15, v12, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 232
    iget v6, v10, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    .line 234
    invoke-virtual {v0, v15, v6, v13}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(IILjava/lang/String;)Z

    .line 237
    move-result v6

    .line 238
    if-eqz v6, :cond_9

    .line 240
    sget-boolean v6, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 242
    if-eqz v6, :cond_b

    .line 244
    const-string v6, "MARsPolicyManager"

    .line 246
    new-instance v13, Ljava/lang/StringBuilder;

    .line 248
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    const-string/jumbo v15, "package "

    .line 254
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget-object v12, v12, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 259
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v12, " inPolicyAllowList, don\'t execute this policy "

    .line 264
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    move-result-object v12

    .line 274
    invoke-static {v6, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    goto :goto_6

    .line 278
    :cond_9
    sget-object v6, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 280
    iget-object v13, v12, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 282
    iget v15, v12, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 284
    iget v14, v12, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 286
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    invoke-static {v1, v15, v14, v13}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    .line 292
    move-result v6

    .line 293
    if-lez v6, :cond_a

    .line 295
    goto :goto_6

    .line 296
    :cond_a
    new-instance v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 298
    iget-object v13, v12, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 300
    iget v14, v12, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 302
    iget v15, v12, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 304
    invoke-direct {v6, v14, v15, v13}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(IILjava/lang/String;)V

    .line 307
    invoke-static {v12, v6}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 310
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_b
    :goto_6
    add-int/2addr v7, v1

    .line 314
    const/4 v14, 0x2

    .line 315
    goto :goto_5

    .line 316
    :cond_c
    add-int/2addr v2, v1

    .line 317
    const/4 v14, 0x2

    .line 318
    goto :goto_4

    .line 319
    :cond_d
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 322
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 325
    monitor-enter v2

    .line 326
    :try_start_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 329
    move-result v4

    .line 330
    sub-int/2addr v4, v1

    .line 331
    const/4 v5, 0x0

    .line 332
    :goto_7
    if-ltz v4, :cond_10

    .line 334
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 337
    move-result-object v6

    .line 338
    check-cast v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 340
    sget-boolean v7, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 342
    sget-object v7, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 344
    iget-boolean v11, v7, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 346
    if-eqz v11, :cond_e

    .line 348
    iget-object v11, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 350
    iget v12, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    .line 352
    invoke-virtual {v7, v12, v11}, Lcom/android/server/am/FreecessController;->isFreezedPackage(ILjava/lang/String;)Z

    .line 355
    move-result v11

    .line 356
    if-eqz v11, :cond_e

    .line 358
    iget-object v11, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 360
    iget v12, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    .line 362
    const-string v13, "SMKill"

    .line 364
    invoke-virtual {v7, v12, v11, v13}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 367
    goto :goto_8

    .line 368
    :catchall_1
    move-exception v0

    .line 369
    goto/16 :goto_f

    .line 371
    :cond_e
    :goto_8
    iget-object v7, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 373
    iget v11, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    .line 375
    iget v12, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    .line 377
    invoke-virtual {v0, v7, v10, v11, v12}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;II)Z

    .line 380
    move-result v7

    .line 381
    if-eqz v7, :cond_f

    .line 383
    const/4 v5, 0x3

    .line 384
    iput v5, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I

    .line 386
    new-instance v5, Ljava/lang/StringBuilder;

    .line 388
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    const-string v7, " "

    .line 393
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    iget v6, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    .line 398
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    move-result-object v5

    .line 405
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    move v5, v1

    .line 409
    goto :goto_9

    .line 410
    :cond_f
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 413
    :goto_9
    add-int/lit8 v4, v4, -0x1

    .line 415
    goto :goto_7

    .line 416
    :cond_10
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 417
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 420
    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 422
    monitor-enter v4

    .line 423
    const/4 v2, 0x0

    .line 424
    :goto_a
    :try_start_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 427
    move-result v6

    .line 428
    if-ge v2, v6, :cond_16

    .line 430
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 433
    move-result-object v6

    .line 434
    check-cast v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 436
    iget-object v7, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 438
    iget-object v11, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 440
    iget v12, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    .line 442
    invoke-static {v7, v11, v12}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 445
    move-result-object v7

    .line 446
    if-eqz v7, :cond_15

    .line 448
    invoke-static {v7, v6}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 451
    iget-object v6, v7, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 453
    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 455
    if-eq v6, v11, :cond_11

    .line 457
    iput-object v10, v7, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 459
    const/4 v6, 0x2

    .line 460
    if-ne v3, v6, :cond_12

    .line 462
    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 465
    goto :goto_b

    .line 466
    :catchall_2
    move-exception v0

    .line 467
    goto :goto_e

    .line 468
    :cond_11
    const/4 v6, 0x2

    .line 469
    :cond_12
    :goto_b
    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 471
    iget-object v12, v7, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 473
    iget v13, v7, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 475
    invoke-virtual {v11, v13, v12}, Lcom/android/server/am/MARsPkgMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    .line 478
    move-result-object v11

    .line 479
    if-nez v11, :cond_13

    .line 481
    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 483
    iget-object v12, v7, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 485
    iget v13, v7, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 487
    invoke-virtual {v11, v12, v13, v7}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILcom/android/server/am/MARsPackageInfo;)V

    .line 490
    goto :goto_c

    .line 491
    :cond_13
    iget-object v11, v7, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 493
    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 495
    if-ne v11, v12, :cond_14

    .line 497
    iget v11, v7, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 499
    invoke-static {v11}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    .line 502
    move-result v11

    .line 503
    if-eqz v11, :cond_14

    .line 505
    const/4 v11, 0x4

    .line 506
    iput v11, v7, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 508
    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 510
    iget-object v12, v7, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 512
    iget v13, v7, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 514
    invoke-virtual {v11, v12, v13, v7}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILcom/android/server/am/MARsPackageInfo;)V

    .line 517
    :cond_14
    :goto_c
    const-string v11, "MARsPolicyManager"

    .line 519
    new-instance v12, Ljava/lang/StringBuilder;

    .line 521
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    const-string v13, "add mRestrictedPackages "

    .line 526
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    iget-object v13, v7, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 531
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    const-string v13, " policy --"

    .line 536
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    iget-object v7, v7, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 541
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 547
    move-result-object v7

    .line 548
    invoke-static {v11, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    goto :goto_d

    .line 552
    :cond_15
    const/4 v6, 0x2

    .line 553
    :goto_d
    add-int/2addr v2, v1

    .line 554
    goto/16 :goto_a

    .line 556
    :cond_16
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 557
    if-eqz v5, :cond_1e

    .line 559
    const-string v1, "SM"

    .line 561
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 564
    move-result-object v2

    .line 565
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    goto :goto_15

    .line 569
    :goto_e
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 570
    throw v0

    .line 571
    :goto_f
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 572
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 575
    throw v0

    .line 576
    :goto_10
    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 577
    throw v0

    .line 578
    :cond_17
    :goto_11
    const-string v0, "MARsPolicyManager"

    .line 580
    const-string/jumbo v1, "policy is not exist or not enabled!"

    .line 583
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    goto :goto_15

    .line 587
    :cond_18
    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    .line 589
    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->forceRunPolicyForSpecificPolicy(Ljava/util/ArrayList;I)V

    .line 592
    goto :goto_15

    .line 593
    :cond_19
    if-eqz v2, :cond_1d

    .line 595
    iget-object v5, v0, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    .line 597
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 600
    const/4 v6, 0x0

    .line 601
    :goto_12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 604
    move-result v7

    .line 605
    if-ge v6, v7, :cond_1d

    .line 607
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 610
    move-result-object v7

    .line 611
    check-cast v7, Ljava/lang/String;

    .line 613
    if-eqz v7, :cond_1c

    .line 615
    sget-object v9, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 617
    monitor-enter v9

    .line 618
    :try_start_8
    iget-object v10, v5, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 620
    invoke-static {v10, v7, v4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 623
    move-result-object v7

    .line 624
    if-eqz v7, :cond_1a

    .line 626
    iget v10, v7, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 628
    const/4 v11, 0x4

    .line 629
    if-eq v10, v11, :cond_1b

    .line 631
    if-ne v3, v8, :cond_1b

    .line 633
    iput v1, v7, Lcom/android/server/am/MARsPackageInfo;->sbike:I

    .line 635
    goto :goto_13

    .line 636
    :cond_1a
    const/4 v11, 0x4

    .line 637
    :cond_1b
    :goto_13
    monitor-exit v9

    .line 638
    goto :goto_14

    .line 639
    :catchall_3
    move-exception v0

    .line 640
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 641
    throw v0

    .line 642
    :cond_1c
    const/4 v11, 0x4

    .line 643
    :goto_14
    add-int/2addr v6, v1

    .line 644
    goto :goto_12

    .line 645
    :cond_1d
    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    .line 647
    const/4 v1, 0x0

    .line 648
    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/MARsPolicyManager;->forceRunPolicyForSpecificPolicy(Ljava/util/ArrayList;I)V

    .line 651
    :cond_1e
    :goto_15
    return-void
.end method
