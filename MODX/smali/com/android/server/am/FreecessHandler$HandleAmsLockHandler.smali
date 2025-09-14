.class public final Lcom/android/server/am/FreecessHandler$HandleAmsLockHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 4
    move-result-object p0

    .line 5
    iget v0, p1, Landroid/os/Message;->what:I

    .line 7
    const/16 v1, 0x1d

    .line 9
    if-eq v0, v1, :cond_3

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 14
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    const-string v1, "Unexpected value: "

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    iget p1, p1, Landroid/os/Message;->what:I

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p0

    .line 36
    :pswitch_0
    if-eqz p0, :cond_5

    .line 38
    const-string/jumbo p1, "uid"

    .line 41
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 44
    move-result p0

    .line 45
    sget-boolean p1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 47
    sget-object p1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 49
    iget-object v0, p1, Lcom/android/server/am/FreecessController;->mPendingRemoveConnectionMap:Landroid/util/ArrayMap;

    .line 51
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_5

    .line 61
    iget-object v0, p1, Lcom/android/server/am/FreecessController;->mPendingRemoveConnectionMap:Landroid/util/ArrayMap;

    .line 63
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Ljava/util/ArrayList;

    .line 73
    if-eqz p0, :cond_5

    .line 75
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_5

    .line 81
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 84
    move-result-object p0

    .line 85
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_5

    .line 91
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Lcom/android/server/am/ServiceRecord;

    .line 97
    iget-object v1, p1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 99
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 101
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    const-string v2, "ActivityManager"

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    .line 108
    const-string/jumbo v4, "unpendingRemoveConnection: s="

    .line 111
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v3

    .line 121
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 126
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 129
    monitor-enter v2

    .line 130
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    .line 132
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 135
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->pendingRemoveConnections:Ljava/util/ArrayList;

    .line 137
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 140
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->pendingRemoveConnections:Ljava/util/ArrayList;

    .line 142
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 145
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 148
    move-result-object v0

    .line 149
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    move-result v3

    .line 153
    if-eqz v3, :cond_0

    .line 155
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    move-result-object v3

    .line 159
    check-cast v3, Lcom/android/server/am/ServiceRecord$removeConnectionItem;

    .line 161
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord$removeConnectionItem;->c:Lcom/android/server/am/ConnectionRecord;

    .line 163
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord$removeConnectionItem;->skipApp:Lcom/android/server/am/ProcessRecord;

    .line 165
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord$removeConnectionItem;->skipAct:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 167
    iget-boolean v3, v3, Lcom/android/server/am/ServiceRecord$removeConnectionItem;->enqueueOomAdj:Z

    .line 169
    invoke-virtual {v1, v4, v5, v6, v3}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Z)I

    .line 172
    goto :goto_1

    .line 173
    :catchall_0
    move-exception p0

    .line 174
    goto :goto_2

    .line 175
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 179
    goto :goto_0

    .line 180
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 184
    throw p0

    .line 185
    :pswitch_1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 187
    check-cast p0, Lcom/android/server/am/ServiceRecord;

    .line 189
    sget-boolean p1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 191
    sget-object p1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 193
    iget-object p1, p1, Lcom/android/server/am/FreecessController;->mPendingRemoveConnectionMap:Landroid/util/ArrayMap;

    .line 195
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 197
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 199
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    move-result-object v0

    .line 203
    new-instance v1, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda7;

    .line 205
    const/4 v2, 0x0

    .line 206
    invoke-direct {v1, v2}, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda7;-><init>(I)V

    .line 209
    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 212
    move-result-object p1

    .line 213
    check-cast p1, Ljava/util/ArrayList;

    .line 215
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    goto/16 :goto_7

    .line 220
    :pswitch_2
    if-eqz p0, :cond_5

    .line 222
    const-string/jumbo p1, "uid"

    .line 225
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 228
    move-result p0

    .line 229
    sget-boolean p1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 231
    sget-object p1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 233
    iget-object v0, p1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 235
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 238
    monitor-enter v0

    .line 239
    :try_start_2
    iget-object v1, p1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 241
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 243
    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    .line 245
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 248
    move-result v1

    .line 249
    add-int/lit8 v1, v1, -0x1

    .line 251
    :goto_3
    if-ltz v1, :cond_2

    .line 253
    iget-object v2, p1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 255
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 257
    iget-object v2, v2, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    .line 259
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 262
    move-result-object v2

    .line 263
    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 265
    if-eqz v2, :cond_1

    .line 267
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 269
    if-eqz v3, :cond_1

    .line 271
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 273
    if-ne v3, p0, :cond_1

    .line 275
    iget-object v3, p1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 277
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 279
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    .line 281
    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 284
    move-result v3

    .line 285
    if-eqz v3, :cond_1

    .line 287
    iget-object v3, p1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 289
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 291
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    .line 293
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 296
    iget-object v3, p1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 298
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 300
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 302
    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/ActivityManagerService;->pendingScheduleServiceRestart(ILcom/android/server/am/ServiceRecord;)V

    .line 305
    goto :goto_4

    .line 306
    :catchall_1
    move-exception p0

    .line 307
    goto :goto_5

    .line 308
    :cond_1
    :goto_4
    add-int/lit8 v1, v1, -0x1

    .line 310
    goto :goto_3

    .line 311
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 312
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 315
    goto :goto_7

    .line 316
    :goto_5
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 317
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 320
    throw p0

    .line 321
    :cond_3
    if-eqz p0, :cond_5

    .line 323
    const-string/jumbo p1, "pids"

    .line 326
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 329
    move-result-object p0

    .line 330
    if-eqz p0, :cond_5

    .line 332
    sget-boolean p1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 334
    sget-object p1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 336
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 342
    move-result-object p0

    .line 343
    :cond_4
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 346
    move-result v0

    .line 347
    if-eqz v0, :cond_5

    .line 349
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 352
    move-result-object v0

    .line 353
    check-cast v0, Ljava/lang/Integer;

    .line 355
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 358
    move-result v0

    .line 359
    iget-object v1, p1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 361
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordFromPidLocked(I)Lcom/android/server/am/ProcessRecord;

    .line 364
    move-result-object v0

    .line 365
    if-eqz v0, :cond_4

    .line 367
    iget-object v1, p1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 369
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 372
    monitor-enter v1

    .line 373
    :try_start_4
    iget-object v2, p1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 375
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 377
    iget-object v2, v2, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    .line 379
    const/4 v3, 0x6

    .line 380
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 383
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 386
    move-result-object v0

    .line 387
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 390
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 391
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 394
    goto :goto_6

    .line 395
    :catchall_2
    move-exception p0

    .line 396
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 397
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 400
    throw p0

    .line 401
    :cond_5
    :goto_7
    return-void

    .line 402
    nop

    .line 403
    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
