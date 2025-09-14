.class public final Lcom/android/server/am/ProcessList$ProcStartHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mService:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStartHandler;->$r8$classId:I

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    iput-object p1, p0, Lcom/android/server/am/ProcessList$ProcStartHandler;->mService:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStartHandler;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/am/ProcessList$ProcStartHandler;->mService:Ljava/lang/Object;

    .line 4
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 14

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStartHandler;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget v2, p1, Landroid/os/Message;->what:I

    .line 9
    .line 10
    if-eqz v2, :cond_7

    .line 11
    .line 12
    if-eq v2, v1, :cond_6

    .line 13
    .line 14
    if-eq v2, v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_7

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessList$ProcStartHandler;->mService:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    .line 21
    .line 22
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 23
    .line 24
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 29
    .line 30
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    const-class v3, Landroid/os/DropBoxManager;

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    move-object v11, v2

    .line 39
    check-cast v11, Landroid/os/DropBoxManager;

    .line 40
    .line 41
    if-eqz v11, :cond_1

    .line 42
    .line 43
    const-string/jumbo v2, "imperceptible_app_kill"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v11, v2}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    move v12, v1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v2, 0x0

    .line 55
    move v12, v2

    .line 56
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    .line 57
    .line 58
    iget-object v13, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 59
    .line 60
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 61
    .line 62
    .line 63
    monitor-enter v13

    .line 64
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mIdle:Z

    .line 65
    .line 66
    if-eqz v2, :cond_5

    .line 67
    .line 68
    iget-object v2, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    .line 69
    .line 70
    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 71
    .line 72
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 73
    .line 74
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    .line 75
    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_5

    .line 85
    .line 86
    iget-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Ljava/util/List;

    .line 93
    .line 94
    if-eqz p1, :cond_5

    .line 95
    .line 96
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    sub-int/2addr v2, v1

    .line 101
    move v1, v2

    .line 102
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mIdle:Z

    .line 103
    .line 104
    if-eqz v2, :cond_3

    .line 105
    .line 106
    if-ltz v1, :cond_3

    .line 107
    .line 108
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Landroid/os/Bundle;

    .line 113
    .line 114
    const-string/jumbo v3, "pid"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    const-string/jumbo v4, "uid"

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    const-string/jumbo v5, "timestamp"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 132
    .line 133
    .line 134
    move-result-wide v5

    .line 135
    const-string/jumbo v7, "reason"

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    const-string/jumbo v8, "requester"

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    move-object v2, p0

    .line 150
    move-object v9, v11

    .line 151
    move v10, v12

    .line 152
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->killProcessLocked(IIJLjava/lang/String;ILandroid/os/DropBoxManager;Z)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_2

    .line 157
    .line 158
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :catchall_0
    move-exception p0

    .line 163
    goto :goto_3

    .line 164
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-nez p1, :cond_4

    .line 172
    .line 173
    iget-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    .line 174
    .line 175
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 176
    .line 177
    .line 178
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->registerUidObserverIfNecessaryLocked()V

    .line 179
    .line 180
    .line 181
    :cond_5
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 183
    .line 184
    .line 185
    goto/16 :goto_7

    .line 186
    .line 187
    :goto_3
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 189
    .line 190
    .line 191
    throw p0

    .line 192
    :cond_6
    iget-object p0, p0, Lcom/android/server/am/ProcessList$ProcStartHandler;->mService:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    .line 195
    .line 196
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 197
    .line 198
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    .line 199
    .line 200
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 201
    .line 202
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 203
    .line 204
    .line 205
    monitor-enter v0

    .line 206
    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    .line 207
    .line 208
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->registerUidObserverIfNecessaryLocked()V

    .line 212
    .line 213
    .line 214
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 215
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_7

    .line 219
    .line 220
    :catchall_1
    move-exception p0

    .line 221
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 222
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 223
    .line 224
    .line 225
    throw p0

    .line 226
    :cond_7
    iget-object p0, p0, Lcom/android/server/am/ProcessList$ProcStartHandler;->mService:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    .line 229
    .line 230
    iget-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    .line 231
    .line 232
    iget-object p1, p1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 233
    .line 234
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 235
    .line 236
    const-class v0, Landroid/os/DropBoxManager;

    .line 237
    .line 238
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    check-cast p1, Landroid/os/DropBoxManager;

    .line 243
    .line 244
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    .line 245
    .line 246
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 247
    .line 248
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 249
    .line 250
    .line 251
    monitor-enter v11

    .line 252
    :try_start_4
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    .line 253
    .line 254
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    sub-int/2addr v0, v1

    .line 259
    :goto_4
    iget-boolean v2, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mIdle:Z

    .line 260
    .line 261
    if-eqz v2, :cond_b

    .line 262
    .line 263
    if-ltz v0, :cond_b

    .line 264
    .line 265
    iget-object v2, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    .line 266
    .line 267
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    move-object v12, v2

    .line 272
    check-cast v12, Ljava/util/List;

    .line 273
    .line 274
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    sub-int/2addr v2, v1

    .line 279
    move v13, v2

    .line 280
    :goto_5
    iget-boolean v2, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mIdle:Z

    .line 281
    .line 282
    if-eqz v2, :cond_9

    .line 283
    .line 284
    if-ltz v13, :cond_9

    .line 285
    .line 286
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    check-cast v2, Landroid/os/Bundle;

    .line 291
    .line 292
    const-string/jumbo v3, "pid"

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    const-string/jumbo v4, "uid"

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    move-result v4

    .line 306
    const-string/jumbo v5, "timestamp"

    .line 307
    .line 308
    .line 309
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 310
    .line 311
    .line 312
    move-result-wide v5

    .line 313
    const-string/jumbo v7, "reason"

    .line 314
    .line 315
    .line 316
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v7

    .line 320
    const-string/jumbo v8, "requester"

    .line 321
    .line 322
    .line 323
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 324
    .line 325
    .line 326
    move-result v8

    .line 327
    const/4 v10, 0x0

    .line 328
    move-object v2, p0

    .line 329
    move-object v9, p1

    .line 330
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->killProcessLocked(IIJLjava/lang/String;ILandroid/os/DropBoxManager;Z)Z

    .line 331
    .line 332
    .line 333
    move-result v2

    .line 334
    if-eqz v2, :cond_8

    .line 335
    .line 336
    invoke-interface {v12, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    goto :goto_6

    .line 340
    :catchall_2
    move-exception p0

    .line 341
    goto :goto_8

    .line 342
    :cond_8
    :goto_6
    add-int/lit8 v13, v13, -0x1

    .line 343
    .line 344
    goto :goto_5

    .line 345
    :cond_9
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    if-nez v2, :cond_a

    .line 350
    .line 351
    iget-object v2, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    .line 352
    .line 353
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 354
    .line 355
    .line 356
    :cond_a
    add-int/lit8 v0, v0, -0x1

    .line 357
    .line 358
    goto :goto_4

    .line 359
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->registerUidObserverIfNecessaryLocked()V

    .line 360
    .line 361
    .line 362
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 363
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 364
    .line 365
    .line 366
    :goto_7
    return-void

    .line 367
    :goto_8
    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 368
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 369
    .line 370
    .line 371
    throw p0

    .line 372
    :pswitch_0
    const-string v2, "MSG_PROCESS_KILL_TIMEOUT Process = "

    .line 373
    .line 374
    iget v3, p1, Landroid/os/Message;->what:I

    .line 375
    .line 376
    if-eq v3, v1, :cond_d

    .line 377
    .line 378
    if-eq v3, v0, :cond_c

    .line 379
    .line 380
    goto :goto_9

    .line 381
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStartHandler;->mService:Ljava/lang/Object;

    .line 382
    .line 383
    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    .line 384
    .line 385
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 386
    .line 387
    .line 388
    monitor-enter v0

    .line 389
    :try_start_6
    const-string v3, "ActivityManager_PRED"

    .line 390
    .line 391
    new-instance v4, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 397
    .line 398
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 399
    .line 400
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .line 409
    .line 410
    iget-object p0, p0, Lcom/android/server/am/ProcessList$ProcStartHandler;->mService:Ljava/lang/Object;

    .line 411
    .line 412
    check-cast p0, Lcom/android/server/am/ActivityManagerService;

    .line 413
    .line 414
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 415
    .line 416
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 417
    .line 418
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->handleProcessStartOrKillTimeoutLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 419
    .line 420
    .line 421
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 422
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 423
    .line 424
    .line 425
    goto :goto_9

    .line 426
    :catchall_3
    move-exception p0

    .line 427
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 428
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 429
    .line 430
    .line 431
    throw p0

    .line 432
    :cond_d
    iget-object p0, p0, Lcom/android/server/am/ProcessList$ProcStartHandler;->mService:Ljava/lang/Object;

    .line 433
    .line 434
    check-cast p0, Lcom/android/server/am/ActivityManagerService;

    .line 435
    .line 436
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 437
    .line 438
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 439
    .line 440
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 441
    .line 442
    sget v0, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    .line 443
    .line 444
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessorStartRunnable:Ljava/lang/Runnable;

    .line 448
    .line 449
    if-eqz p0, :cond_e

    .line 450
    .line 451
    const/4 v0, 0x0

    .line 452
    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessorStartRunnable:Ljava/lang/Runnable;

    .line 453
    .line 454
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 455
    .line 456
    .line 457
    :cond_e
    :goto_9
    return-void

    .line 458
    nop

    .line 459
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
