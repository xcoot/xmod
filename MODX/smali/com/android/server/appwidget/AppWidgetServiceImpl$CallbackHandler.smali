.class public final Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 7
    goto/16 :goto_6

    .line 9
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 13
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 15
    check-cast v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 17
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 19
    check-cast v2, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 21
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 23
    check-cast v3, Ljava/lang/Long;

    .line 25
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 28
    move-result-wide v3

    .line 29
    iget v5, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 31
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 34
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    const-string p1, "Widget host dead: "

    .line 41
    const-string v6, "Trying to notify widget update deferred for id: "

    .line 43
    :try_start_0
    const-string v7, "AppWidgetServiceImpl"

    .line 45
    new-instance v8, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v6

    .line 57
    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-interface {v2, v5}, Lcom/android/internal/appwidget/IAppWidgetHost;->updateAppWidgetDeferred(I)V

    .line 63
    iput-wide v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto/16 :goto_6

    .line 67
    :catch_0
    move-exception v2

    .line 68
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 70
    monitor-enter v3

    .line 71
    :try_start_1
    const-string p0, "AppWidgetServiceImpl"

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    iget-object p1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 80
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    invoke-static {p0, p1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    iput-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 92
    monitor-exit v3

    .line 93
    goto/16 :goto_6

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    throw p0

    .line 98
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 102
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 104
    check-cast v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 106
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 108
    check-cast v2, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 110
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 112
    check-cast v3, Ljava/lang/Long;

    .line 114
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 117
    move-result-wide v3

    .line 118
    iget v5, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 120
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 123
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    const-string p1, "Widget host dead: "

    .line 130
    :try_start_2
    const-string v6, "AppWidgetServiceImpl"

    .line 132
    const-string v7, "Trying to notify widget removed"

    .line 134
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-interface {v2, v5}, Lcom/android/internal/appwidget/IAppWidgetHost;->appWidgetRemoved(I)V

    .line 140
    iput-wide v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 142
    goto/16 :goto_6

    .line 144
    :catch_1
    move-exception v2

    .line 145
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 147
    monitor-enter v3

    .line 148
    :try_start_3
    const-string p0, "AppWidgetServiceImpl"

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    .line 152
    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    iget-object p1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 157
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    move-result-object p1

    .line 164
    invoke-static {p0, p1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    iput-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 169
    monitor-exit v3

    .line 170
    goto/16 :goto_6

    .line 172
    :catchall_1
    move-exception p0

    .line 173
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 174
    throw p0

    .line 175
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 179
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 181
    check-cast v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 183
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 185
    check-cast v2, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 187
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 189
    check-cast v3, Ljava/lang/Long;

    .line 191
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 194
    move-result-wide v3

    .line 195
    iget v5, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 197
    iget v6, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 199
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 202
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    const-string p1, "Host dead #4 : "

    .line 209
    const/4 v7, 0x0

    .line 210
    :try_start_4
    const-string v8, "AppWidgetServiceImpl"

    .line 212
    const-string v9, "Trying to notify widget view data changed"

    .line 214
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-interface {v2, v5, v6}, Lcom/android/internal/appwidget/IAppWidgetHost;->viewDataChanged(II)V

    .line 220
    iput-wide v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 222
    goto :goto_0

    .line 223
    :catch_2
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 225
    if-eq v3, v2, :cond_0

    .line 227
    const/4 v7, 0x1

    .line 228
    :cond_0
    move-object v2, v1

    .line 229
    :goto_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 231
    monitor-enter v3

    .line 232
    if-nez v2, :cond_3

    .line 234
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 236
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    iget-object p1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 241
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    const-string p1, ", appWidgetId : "

    .line 246
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    const-string p1, ", callbackChanged : "

    .line 254
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    move-result-object p1

    .line 264
    const-string v2, "AppWidgetServiceImpl"

    .line 266
    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateHostHistoryLocked(Ljava/lang/String;)V

    .line 272
    if-nez v7, :cond_1

    .line 274
    iput-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 276
    goto :goto_1

    .line 277
    :catchall_2
    move-exception p0

    .line 278
    goto :goto_3

    .line 279
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    .line 281
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 284
    move-result-object p1

    .line 285
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 288
    move-result-object p1

    .line 289
    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 292
    move-result v0

    .line 293
    if-eqz v0, :cond_3

    .line 295
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 298
    move-result-object v0

    .line 299
    check-cast v0, Landroid/util/Pair;

    .line 301
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    .line 303
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    move-result-object v1

    .line 307
    check-cast v1, Ljava/util/HashSet;

    .line 309
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 312
    move-result-object v2

    .line 313
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 316
    move-result v1

    .line 317
    if-eqz v1, :cond_2

    .line 319
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$4;

    .line 321
    invoke-direct {v1, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$4;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    .line 324
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 326
    check-cast v2, Ljava/lang/Integer;

    .line 328
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 331
    move-result v2

    .line 332
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 335
    move-result v2

    .line 336
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 338
    check-cast v0, Landroid/content/Intent$FilterComparison;

    .line 340
    invoke-virtual {v0}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    .line 343
    move-result-object v0

    .line 344
    new-instance v4, Landroid/os/UserHandle;

    .line 346
    invoke-direct {v4, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 349
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 352
    move-result-wide v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 353
    :try_start_6
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 355
    const v8, 0x2000001

    .line 358
    invoke-virtual {v2, v0, v1, v8, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 361
    :try_start_7
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 364
    goto :goto_2

    .line 365
    :catchall_3
    move-exception p0

    .line 366
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 369
    throw p0

    .line 370
    :cond_3
    monitor-exit v3

    .line 371
    goto/16 :goto_6

    .line 373
    :goto_3
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 374
    throw p0

    .line 375
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 377
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 379
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 381
    check-cast v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 383
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 385
    check-cast v2, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 387
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 390
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 392
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    const-string p1, "Host dead #3 : "

    .line 397
    const-string v3, "Widget host dead: "

    .line 399
    :try_start_8
    const-string v4, "AppWidgetServiceImpl"

    .line 401
    const-string v5, "Trying to notify widget providers changed"

    .line 403
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-interface {v2}, Lcom/android/internal/appwidget/IAppWidgetHost;->providersChanged()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    .line 409
    goto/16 :goto_6

    .line 411
    :catch_3
    move-exception v4

    .line 412
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 414
    monitor-enter v5

    .line 415
    :try_start_9
    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 417
    if-eq v6, v2, :cond_4

    .line 419
    const-string p0, "AppWidgetServiceImpl"

    .line 421
    const-string p1, "Skip callback clear #3."

    .line 423
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    goto :goto_4

    .line 427
    :catchall_4
    move-exception p0

    .line 428
    goto :goto_5

    .line 429
    :cond_4
    const-string v2, "AppWidgetServiceImpl"

    .line 431
    new-instance v6, Ljava/lang/StringBuilder;

    .line 433
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 436
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 438
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    move-result-object v3

    .line 445
    invoke-static {v2, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    .line 450
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    iget-object p1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 455
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 458
    const-string p1, ", "

    .line 460
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 469
    move-result-object p1

    .line 470
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateHostHistoryLocked(Ljava/lang/String;)V

    .line 473
    iput-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 475
    :goto_4
    monitor-exit v5

    .line 476
    goto :goto_6

    .line 477
    :goto_5
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 478
    throw p0

    .line 479
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 481
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 483
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 485
    move-object v2, v0

    .line 486
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 488
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 490
    move-object v3, v0

    .line 491
    check-cast v3, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 493
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 495
    move-object v5, v0

    .line 496
    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    .line 498
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 500
    check-cast v0, Ljava/lang/Long;

    .line 502
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 505
    move-result-wide v6

    .line 506
    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 508
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 511
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 513
    invoke-static/range {v1 .. v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$mhandleNotifyProviderChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;J)V

    .line 516
    goto :goto_6

    .line 517
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 519
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 521
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 523
    move-object v2, v0

    .line 524
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 526
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 528
    move-object v3, v0

    .line 529
    check-cast v3, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 531
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 533
    move-object v5, v0

    .line 534
    check-cast v5, Landroid/widget/RemoteViews;

    .line 536
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 538
    check-cast v0, Ljava/lang/Long;

    .line 540
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 543
    move-result-wide v6

    .line 544
    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 546
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 549
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 551
    invoke-static/range {v1 .. v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$mhandleNotifyUpdateAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;J)V

    .line 554
    :goto_6
    return-void

    .line 555
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
