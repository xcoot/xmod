.class public final Lcom/android/server/am/FreecessHandler$HandleAmsLockHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget v0, p1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/16 v1, 0x1d

    .line 8
    .line 9
    if-eq v0, v1, :cond_3

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "Unexpected value: "

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget p1, p1, Landroid/os/Message;->what:I

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0

    .line 36
    :pswitch_0
    if-eqz p0, :cond_5

    .line 37
    .line 38
    const-string/jumbo p1, "uid"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    sget-boolean p1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 46
    .line 47
    sget-object p1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 48
    .line 49
    iget-object v0, p1, Lcom/android/server/am/FreecessController;->mPendingRemoveConnectionMap:Landroid/util/ArrayMap;

    .line 50
    .line 51
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    iget-object v0, p1, Lcom/android/server/am/FreecessController;->mPendingRemoveConnectionMap:Landroid/util/ArrayMap;

    .line 62
    .line 63
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Ljava/util/ArrayList;

    .line 72
    .line 73
    if-eqz p0, :cond_5

    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_5

    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Lcom/android/server/am/ServiceRecord;

    .line 96
    .line 97
    iget-object v1, p1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 98
    .line 99
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    const-string v2, "ActivityManager"

    .line 105
    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string/jumbo v4, "unpendingRemoveConnection: s="

    .line 109
    .line 110
    .line 111
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 125
    .line 126
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 127
    .line 128
    .line 129
    monitor-enter v2

    .line 130
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .line 134
    .line 135
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->pendingRemoveConnections:Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    .line 139
    .line 140
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->pendingRemoveConnections:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-eqz v3, :cond_0

    .line 154
    .line 155
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    check-cast v3, Lcom/android/server/am/ServiceRecord$removeConnectionItem;

    .line 160
    .line 161
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord$removeConnectionItem;->c:Lcom/android/server/am/ConnectionRecord;

    .line 162
    .line 163
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord$removeConnectionItem;->skipApp:Lcom/android/server/am/ProcessRecord;

    .line 164
    .line 165
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord$removeConnectionItem;->skipAct:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 166
    .line 167
    iget-boolean v3, v3, Lcom/android/server/am/ServiceRecord$removeConnectionItem;->enqueueOomAdj:Z

    .line 168
    .line 169
    invoke-virtual {v1, v4, v5, v6, v3}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Z)I

    .line 170
    .line 171
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

    .line 177
    .line 178
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

    .line 182
    .line 183
    .line 184
    throw p0

    .line 185
    :pswitch_1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast p0, Lcom/android/server/am/ServiceRecord;

    .line 188
    .line 189
    sget-boolean p1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 190
    .line 191
    sget-object p1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 192
    .line 193
    iget-object p1, p1, Lcom/android/server/am/FreecessController;->mPendingRemoveConnectionMap:Landroid/util/ArrayMap;

    .line 194
    .line 195
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 196
    .line 197
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 198
    .line 199
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    new-instance v1, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda7;

    .line 204
    .line 205
    const/4 v2, 0x0

    .line 206
    invoke-direct {v1, v2}, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda7;-><init>(I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    check-cast p1, Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    goto/16 :goto_7

    .line 219
    .line 220
    :pswitch_2
    if-eqz p0, :cond_5

    .line 221
    .line 222
    const-string/jumbo p1, "uid"

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    move-result p0

    .line 229
    sget-boolean p1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 230
    .line 231
    sget-object p1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 232
    .line 233
    iget-object v0, p1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 234
    .line 235
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 236
    .line 237
    .line 238
    monitor-enter v0

    .line 239
    :try_start_2
    iget-object v1, p1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 240
    .line 241
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 242
    .line 243
    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    add-int/lit8 v1, v1, -0x1

    .line 250
    .line 251
    :goto_3
    if-ltz v1, :cond_2

    .line 252
    .line 253
    iget-object v2, p1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 254
    .line 255
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 256
    .line 257
    iget-object v2, v2, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 264
    .line 265
    if-eqz v2, :cond_1

    .line 266
    .line 267
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 268
    .line 269
    if-eqz v3, :cond_1

    .line 270
    .line 271
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 272
    .line 273
    if-ne v3, p0, :cond_1

    .line 274
    .line 275
    iget-object v3, p1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 276
    .line 277
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 278
    .line 279
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    .line 280
    .line 281
    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 282
    .line 283
    .line 284
    move-result v3

    .line 285
    if-eqz v3, :cond_1

    .line 286
    .line 287
    iget-object v3, p1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 288
    .line 289
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 290
    .line 291
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    .line 292
    .line 293
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 294
    .line 295
    .line 296
    iget-object v3, p1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 297
    .line 298
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 299
    .line 300
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 301
    .line 302
    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/ActivityManagerService;->pendingScheduleServiceRestart(ILcom/android/server/am/ServiceRecord;)V

    .line 303
    .line 304
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

    .line 309
    .line 310
    goto :goto_3

    .line 311
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 312
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 313
    .line 314
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

    .line 318
    .line 319
    .line 320
    throw p0

    .line 321
    :cond_3
    if-eqz p0, :cond_5

    .line 322
    .line 323
    const-string/jumbo p1, "pids"

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    if-eqz p0, :cond_5

    .line 331
    .line 332
    sget-boolean p1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 333
    .line 334
    sget-object p1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 335
    .line 336
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    .line 338
    .line 339
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 340
    .line 341
    .line 342
    move-result-object p0

    .line 343
    :cond_4
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    if-eqz v0, :cond_5

    .line 348
    .line 349
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    check-cast v0, Ljava/lang/Integer;

    .line 354
    .line 355
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    iget-object v1, p1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 360
    .line 361
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordFromPidLocked(I)Lcom/android/server/am/ProcessRecord;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    if-eqz v0, :cond_4

    .line 366
    .line 367
    iget-object v1, p1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 368
    .line 369
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 370
    .line 371
    .line 372
    monitor-enter v1

    .line 373
    :try_start_4
    iget-object v2, p1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 374
    .line 375
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 376
    .line 377
    iget-object v2, v2, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    .line 378
    .line 379
    const/4 v3, 0x6

    .line 380
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 388
    .line 389
    .line 390
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 391
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 392
    .line 393
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

    .line 398
    .line 399
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
