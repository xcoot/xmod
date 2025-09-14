.class public final Lcom/android/server/job/controllers/QuotaController$QcHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/QuotaController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "#0"

    .line 6
    .line 7
    const-string v3, "Checking if "

    .line 8
    .line 9
    const-string v4, "Checking pkg "

    .line 10
    .line 11
    const-string v5, "#4"

    .line 12
    .line 13
    const-string v6, "Checking if "

    .line 14
    .line 15
    const-string v7, "Processing event "

    .line 16
    .line 17
    const-string v8, ">#6"

    .line 18
    .line 19
    const-string v9, "<"

    .line 20
    .line 21
    const-string v10, "#7"

    .line 22
    .line 23
    iget-object v11, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 24
    .line 25
    iget-object v11, v11, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v11

    .line 28
    :try_start_0
    iget v12, v1, Landroid/os/Message;->what:I

    .line 29
    .line 30
    const-wide/32 v13, 0x80000

    .line 31
    .line 32
    .line 33
    const/4 v15, 0x1

    .line 34
    packed-switch v12, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    goto/16 :goto_c

    .line 38
    .line 39
    :pswitch_0
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Landroid/content/pm/UserPackage;

    .line 42
    .line 43
    sget-boolean v2, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 44
    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    const-string v2, "JobScheduler.Quota"

    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v4, " has reached its count quota."

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    goto/16 :goto_d

    .line 72
    .line 73
    :cond_0
    :goto_0
    invoke-static {v13, v14}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    const-string v2, "JobScheduler"

    .line 80
    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-static {v13, v14, v2, v3}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 100
    .line 101
    iget-object v2, v0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 102
    .line 103
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 109
    .line 110
    .line 111
    move-result-wide v3

    .line 112
    iget v5, v1, Landroid/content/pm/UserPackage;->userId:I

    .line 113
    .line 114
    iget-object v1, v1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v0, v5, v1, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(ILjava/lang/String;J)Landroid/util/ArraySet;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v2, v0}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 121
    .line 122
    .line 123
    goto/16 :goto_c

    .line 124
    .line 125
    :pswitch_1
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 126
    .line 127
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 128
    .line 129
    iget-object v2, v2, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 130
    .line 131
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :try_start_1
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 133
    .line 134
    iget-object v3, v3, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    .line 135
    .line 136
    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-nez v3, :cond_b

    .line 141
    .line 142
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 143
    .line 144
    iget-object v3, v3, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    .line 145
    .line 146
    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-eqz v3, :cond_2

    .line 151
    .line 152
    goto/16 :goto_4

    .line 153
    .line 154
    :cond_2
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 155
    .line 156
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 160
    .line 161
    .line 162
    move-result-wide v3

    .line 163
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 164
    .line 165
    iget-object v5, v5, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    .line 166
    .line 167
    invoke-virtual {v5, v1}, Landroid/util/SparseLongArray;->get(I)J

    .line 168
    .line 169
    .line 170
    move-result-wide v5

    .line 171
    cmp-long v5, v3, v5

    .line 172
    .line 173
    if-ltz v5, :cond_9

    .line 174
    .line 175
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 176
    .line 177
    iget-object v5, v5, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    .line 178
    .line 179
    invoke-virtual {v5, v1}, Landroid/util/SparseLongArray;->get(I)J

    .line 180
    .line 181
    .line 182
    move-result-wide v5

    .line 183
    cmp-long v5, v3, v5

    .line 184
    .line 185
    if-gez v5, :cond_3

    .line 186
    .line 187
    goto/16 :goto_3

    .line 188
    .line 189
    :cond_3
    sget-boolean v5, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 190
    .line 191
    if-eqz v5, :cond_4

    .line 192
    .line 193
    const-string v5, "JobScheduler.Quota"

    .line 194
    .line 195
    new-instance v6, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v7, " is now out of grace period"

    .line 204
    .line 205
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    goto :goto_1

    .line 216
    :catchall_1
    move-exception v0

    .line 217
    goto/16 :goto_5

    .line 218
    .line 219
    :cond_4
    :goto_1
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 220
    .line 221
    iget-object v5, v5, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    .line 222
    .line 223
    invoke-virtual {v5, v1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 224
    .line 225
    .line 226
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 227
    .line 228
    iget-object v5, v5, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    .line 229
    .line 230
    invoke-virtual {v5, v1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 231
    .line 232
    .line 233
    invoke-static {v13, v14}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    if-eqz v5, :cond_5

    .line 238
    .line 239
    const-string v5, "JobScheduler"

    .line 240
    .line 241
    new-instance v6, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    invoke-static {v13, v14, v5, v6}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    :cond_5
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 260
    .line 261
    iget-object v5, v5, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 262
    .line 263
    invoke-virtual {v5, v1}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    if-eqz v5, :cond_8

    .line 268
    .line 269
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 270
    .line 271
    .line 272
    move-result v6

    .line 273
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 274
    .line 275
    .line 276
    move-result v7

    .line 277
    sub-int/2addr v7, v15

    .line 278
    :goto_2
    if-ltz v7, :cond_7

    .line 279
    .line 280
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 281
    .line 282
    iget-object v8, v8, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 283
    .line 284
    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v9

    .line 288
    check-cast v9, Ljava/lang/String;

    .line 289
    .line 290
    invoke-virtual {v8, v6, v9}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v8

    .line 294
    check-cast v8, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 295
    .line 296
    if-eqz v8, :cond_6

    .line 297
    .line 298
    const/4 v9, 0x0

    .line 299
    invoke-virtual {v8, v3, v4, v9}, Lcom/android/server/job/controllers/QuotaController$Timer;->onStateChangedLocked(JZ)V

    .line 300
    .line 301
    .line 302
    :cond_6
    add-int/lit8 v7, v7, -0x1

    .line 303
    .line 304
    goto :goto_2

    .line 305
    :cond_7
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 306
    .line 307
    invoke-static {v3, v1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mmaybeUpdateConstraintForUidLocked(Lcom/android/server/job/controllers/QuotaController;I)Landroid/util/ArraySet;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    if-lez v3, :cond_8

    .line 316
    .line 317
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 318
    .line 319
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 320
    .line 321
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 322
    .line 323
    .line 324
    :cond_8
    monitor-exit v2

    .line 325
    goto/16 :goto_c

    .line 326
    .line 327
    :cond_9
    :goto_3
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 328
    .line 329
    if-eqz v0, :cond_a

    .line 330
    .line 331
    const-string v0, "JobScheduler.Quota"

    .line 332
    .line 333
    new-instance v3, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    const-string v1, " is still in grace period"

    .line 342
    .line 343
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .line 352
    .line 353
    :cond_a
    monitor-exit v2

    .line 354
    goto/16 :goto_c

    .line 355
    .line 356
    :cond_b
    :goto_4
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 357
    .line 358
    if-eqz v0, :cond_c

    .line 359
    .line 360
    const-string v0, "JobScheduler.Quota"

    .line 361
    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    const-string v1, " is still allowed"

    .line 371
    .line 372
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .line 381
    .line 382
    :cond_c
    monitor-exit v2

    .line 383
    goto/16 :goto_c

    .line 384
    .line 385
    :goto_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 386
    :try_start_2
    throw v0

    .line 387
    :pswitch_2
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 388
    .line 389
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 390
    .line 391
    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    .line 392
    .line 393
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    sget-boolean v4, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 398
    .line 399
    if-eqz v4, :cond_d

    .line 400
    .line 401
    const-string v4, "JobScheduler.Quota"

    .line 402
    .line 403
    new-instance v5, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    .line 409
    .line 410
    .line 411
    move-result v6

    .line 412
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    const-string v6, " for "

    .line 416
    .line 417
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-static {v2, v3}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v6

    .line 424
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v5

    .line 431
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    .line 433
    .line 434
    :cond_d
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    .line 435
    .line 436
    .line 437
    move-result v4

    .line 438
    if-eq v4, v15, :cond_10

    .line 439
    .line 440
    const/4 v5, 0x2

    .line 441
    if-eq v4, v5, :cond_10

    .line 442
    .line 443
    const/4 v5, 0x7

    .line 444
    if-eq v4, v5, :cond_f

    .line 445
    .line 446
    const/16 v5, 0xc

    .line 447
    .line 448
    if-eq v4, v5, :cond_f

    .line 449
    .line 450
    const/16 v5, 0x9

    .line 451
    .line 452
    if-eq v4, v5, :cond_f

    .line 453
    .line 454
    const/16 v5, 0xa

    .line 455
    .line 456
    if-eq v4, v5, :cond_e

    .line 457
    .line 458
    const/16 v5, 0x17

    .line 459
    .line 460
    if-eq v4, v5, :cond_10

    .line 461
    .line 462
    const/16 v5, 0x18

    .line 463
    .line 464
    if-eq v4, v5, :cond_10

    .line 465
    .line 466
    goto/16 :goto_c

    .line 467
    .line 468
    :cond_e
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 469
    .line 470
    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    .line 471
    .line 472
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mgrantRewardForInstantEvent(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;J)V

    .line 473
    .line 474
    .line 475
    goto/16 :goto_c

    .line 476
    .line 477
    :cond_f
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 478
    .line 479
    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    .line 480
    .line 481
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mgrantRewardForInstantEvent(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;J)V

    .line 482
    .line 483
    .line 484
    goto/16 :goto_c

    .line 485
    .line 486
    :cond_10
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 487
    .line 488
    iget-object v4, v4, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 489
    .line 490
    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 491
    :try_start_3
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 492
    .line 493
    iget-object v5, v5, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    .line 494
    .line 495
    invoke-virtual {v5, v2, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v5

    .line 499
    check-cast v5, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;

    .line 500
    .line 501
    if-nez v5, :cond_11

    .line 502
    .line 503
    new-instance v5, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;

    .line 504
    .line 505
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 506
    .line 507
    invoke-direct {v5, v6, v2, v3}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;-><init>(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)V

    .line 508
    .line 509
    .line 510
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 511
    .line 512
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    .line 513
    .line 514
    invoke-virtual {v0, v2, v3, v5}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    goto :goto_6

    .line 518
    :catchall_2
    move-exception v0

    .line 519
    goto :goto_7

    .line 520
    :cond_11
    :goto_6
    invoke-virtual {v5, v1}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->processEventLocked(Landroid/app/usage/UsageEvents$Event;)V

    .line 521
    .line 522
    .line 523
    monitor-exit v4

    .line 524
    goto/16 :goto_c

    .line 525
    .line 526
    :goto_7
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 527
    :try_start_4
    throw v0

    .line 528
    :pswitch_3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 529
    .line 530
    check-cast v1, Landroid/content/pm/UserPackage;

    .line 531
    .line 532
    sget-boolean v2, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 533
    .line 534
    if-eqz v2, :cond_12

    .line 535
    .line 536
    const-string v3, "JobScheduler.Quota"

    .line 537
    .line 538
    new-instance v4, Ljava/lang/StringBuilder;

    .line 539
    .line 540
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    const-string v6, " has reached its EJ quota."

    .line 547
    .line 548
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v4

    .line 555
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    .line 557
    .line 558
    :cond_12
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 559
    .line 560
    iget v4, v1, Landroid/content/pm/UserPackage;->userId:I

    .line 561
    .line 562
    iget-object v6, v1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 563
    .line 564
    invoke-virtual {v3, v4, v6}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    .line 565
    .line 566
    .line 567
    move-result-wide v3

    .line 568
    const-wide/16 v6, 0x0

    .line 569
    .line 570
    cmp-long v3, v3, v6

    .line 571
    .line 572
    if-gtz v3, :cond_15

    .line 573
    .line 574
    if-eqz v2, :cond_13

    .line 575
    .line 576
    const-string v2, "JobScheduler.Quota"

    .line 577
    .line 578
    new-instance v3, Ljava/lang/StringBuilder;

    .line 579
    .line 580
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 581
    .line 582
    .line 583
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    const-string v4, " has reached its EJ quota."

    .line 587
    .line 588
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v3

    .line 595
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    .line 597
    .line 598
    :cond_13
    invoke-static {v13, v14}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 599
    .line 600
    .line 601
    move-result v2

    .line 602
    if-eqz v2, :cond_14

    .line 603
    .line 604
    const-string v2, "JobScheduler"

    .line 605
    .line 606
    new-instance v3, Ljava/lang/StringBuilder;

    .line 607
    .line 608
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v3

    .line 621
    invoke-static {v13, v14, v2, v3}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    :cond_14
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 625
    .line 626
    iget-object v2, v0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 627
    .line 628
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 629
    .line 630
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 631
    .line 632
    .line 633
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 634
    .line 635
    .line 636
    move-result-wide v3

    .line 637
    iget v5, v1, Landroid/content/pm/UserPackage;->userId:I

    .line 638
    .line 639
    iget-object v1, v1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 640
    .line 641
    invoke-virtual {v0, v5, v1, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(ILjava/lang/String;J)Landroid/util/ArraySet;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    invoke-virtual {v2, v0}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 646
    .line 647
    .line 648
    goto/16 :goto_c

    .line 649
    .line 650
    :cond_15
    const/4 v3, 0x4

    .line 651
    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 652
    .line 653
    .line 654
    move-result-object v3

    .line 655
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 656
    .line 657
    iget v5, v1, Landroid/content/pm/UserPackage;->userId:I

    .line 658
    .line 659
    iget-object v6, v1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 660
    .line 661
    invoke-virtual {v4, v5, v6}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    .line 662
    .line 663
    .line 664
    move-result-wide v4

    .line 665
    if-eqz v2, :cond_16

    .line 666
    .line 667
    const-string v2, "JobScheduler.Quota"

    .line 668
    .line 669
    new-instance v6, Ljava/lang/StringBuilder;

    .line 670
    .line 671
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 675
    .line 676
    .line 677
    const-string v1, " has "

    .line 678
    .line 679
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    const-string/jumbo v1, "ms left for EJ"

    .line 686
    .line 687
    .line 688
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v1

    .line 695
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    .line 697
    .line 698
    :cond_16
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 699
    .line 700
    .line 701
    goto/16 :goto_c

    .line 702
    .line 703
    :pswitch_4
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 704
    .line 705
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 706
    .line 707
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 708
    .line 709
    .line 710
    move-result v3

    .line 711
    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 712
    .line 713
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 714
    .line 715
    .line 716
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 717
    .line 718
    .line 719
    move-result-wide v4

    .line 720
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 721
    .line 722
    iget-object v6, v6, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 723
    .line 724
    monitor-enter v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 725
    const/4 v7, 0x2

    .line 726
    if-gt v1, v7, :cond_18

    .line 727
    .line 728
    :try_start_5
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 729
    .line 730
    iget-object v1, v1, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    .line 731
    .line 732
    invoke-virtual {v1, v2, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 733
    .line 734
    .line 735
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 736
    .line 737
    iget-object v1, v1, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    .line 738
    .line 739
    invoke-virtual {v1, v2}, Landroid/util/SparseLongArray;->delete(I)V

    .line 740
    .line 741
    .line 742
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 743
    .line 744
    iget-object v1, v1, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 745
    .line 746
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 747
    .line 748
    .line 749
    move-result v1

    .line 750
    if-eqz v1, :cond_17

    .line 751
    .line 752
    monitor-exit v6

    .line 753
    goto/16 :goto_c

    .line 754
    .line 755
    :catchall_3
    move-exception v0

    .line 756
    goto/16 :goto_b

    .line 757
    .line 758
    :cond_17
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 759
    .line 760
    iget-object v1, v1, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 761
    .line 762
    invoke-virtual {v1, v2, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 763
    .line 764
    .line 765
    move v7, v15

    .line 766
    goto :goto_9

    .line 767
    :cond_18
    const/4 v7, 0x4

    .line 768
    if-gt v1, v7, :cond_19

    .line 769
    .line 770
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 771
    .line 772
    iget-object v1, v1, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 773
    .line 774
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 775
    .line 776
    .line 777
    move-result v1

    .line 778
    xor-int/2addr v1, v15

    .line 779
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 780
    .line 781
    iget-object v7, v7, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 782
    .line 783
    invoke-virtual {v7, v2, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 784
    .line 785
    .line 786
    move v7, v15

    .line 787
    goto :goto_8

    .line 788
    :cond_19
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 789
    .line 790
    iget-object v1, v1, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 791
    .line 792
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 793
    .line 794
    .line 795
    move v1, v15

    .line 796
    const/4 v7, 0x0

    .line 797
    :goto_8
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 798
    .line 799
    iget-object v8, v8, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    .line 800
    .line 801
    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 802
    .line 803
    .line 804
    move-result v8

    .line 805
    if-eqz v8, :cond_1a

    .line 806
    .line 807
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 808
    .line 809
    iget-wide v9, v8, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    .line 810
    .line 811
    add-long/2addr v9, v4

    .line 812
    iget-object v8, v8, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    .line 813
    .line 814
    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 815
    .line 816
    .line 817
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 818
    .line 819
    iget-object v8, v8, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    .line 820
    .line 821
    invoke-virtual {v8, v2, v9, v10}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 822
    .line 823
    .line 824
    const/4 v8, 0x6

    .line 825
    const/4 v9, 0x0

    .line 826
    invoke-virtual {v0, v8, v2, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 827
    .line 828
    .line 829
    move-result-object v8

    .line 830
    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 831
    .line 832
    iget-wide v9, v9, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    .line 833
    .line 834
    invoke-virtual {v0, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 835
    .line 836
    .line 837
    :cond_1a
    if-nez v1, :cond_1b

    .line 838
    .line 839
    monitor-exit v6

    .line 840
    goto/16 :goto_c

    .line 841
    .line 842
    :cond_1b
    :goto_9
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 843
    .line 844
    iget-object v1, v1, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    .line 845
    .line 846
    invoke-virtual {v1, v3}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    .line 847
    .line 848
    .line 849
    move-result v1

    .line 850
    if-gez v1, :cond_1c

    .line 851
    .line 852
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 853
    .line 854
    iget-object v1, v1, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 855
    .line 856
    invoke-virtual {v1, v3}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    .line 857
    .line 858
    .line 859
    move-result v1

    .line 860
    if-ltz v1, :cond_1f

    .line 861
    .line 862
    :cond_1c
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 863
    .line 864
    iget-object v1, v1, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 865
    .line 866
    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    .line 867
    .line 868
    .line 869
    move-result-object v1

    .line 870
    if-eqz v1, :cond_1f

    .line 871
    .line 872
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 873
    .line 874
    .line 875
    move-result v8

    .line 876
    sub-int/2addr v8, v15

    .line 877
    :goto_a
    if-ltz v8, :cond_1f

    .line 878
    .line 879
    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 880
    .line 881
    iget-object v9, v9, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 882
    .line 883
    invoke-virtual {v1, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 884
    .line 885
    .line 886
    move-result-object v10

    .line 887
    check-cast v10, Ljava/lang/String;

    .line 888
    .line 889
    invoke-virtual {v9, v3, v10}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 890
    .line 891
    .line 892
    move-result-object v9

    .line 893
    check-cast v9, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 894
    .line 895
    if-eqz v9, :cond_1d

    .line 896
    .line 897
    invoke-virtual {v9, v4, v5, v7}, Lcom/android/server/job/controllers/QuotaController$Timer;->onStateChangedLocked(JZ)V

    .line 898
    .line 899
    .line 900
    :cond_1d
    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 901
    .line 902
    iget-object v9, v9, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    .line 903
    .line 904
    invoke-virtual {v1, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 905
    .line 906
    .line 907
    move-result-object v10

    .line 908
    check-cast v10, Ljava/lang/String;

    .line 909
    .line 910
    invoke-virtual {v9, v3, v10}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 911
    .line 912
    .line 913
    move-result-object v9

    .line 914
    check-cast v9, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 915
    .line 916
    if-eqz v9, :cond_1e

    .line 917
    .line 918
    invoke-virtual {v9, v4, v5, v7}, Lcom/android/server/job/controllers/QuotaController$Timer;->onStateChangedLocked(JZ)V

    .line 919
    .line 920
    .line 921
    :cond_1e
    add-int/lit8 v8, v8, -0x1

    .line 922
    .line 923
    goto :goto_a

    .line 924
    :cond_1f
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 925
    .line 926
    invoke-static {v1, v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mmaybeUpdateConstraintForUidLocked(Lcom/android/server/job/controllers/QuotaController;I)Landroid/util/ArraySet;

    .line 927
    .line 928
    .line 929
    move-result-object v1

    .line 930
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 931
    .line 932
    .line 933
    move-result v2

    .line 934
    if-lez v2, :cond_20

    .line 935
    .line 936
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 937
    .line 938
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 939
    .line 940
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 941
    .line 942
    .line 943
    :cond_20
    monitor-exit v6

    .line 944
    goto/16 :goto_c

    .line 945
    .line 946
    :goto_b
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 947
    :try_start_6
    throw v0

    .line 948
    :pswitch_5
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 949
    .line 950
    check-cast v2, Ljava/lang/String;

    .line 951
    .line 952
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 953
    .line 954
    sget-boolean v3, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 955
    .line 956
    if-eqz v3, :cond_21

    .line 957
    .line 958
    const-string v3, "JobScheduler.Quota"

    .line 959
    .line 960
    new-instance v5, Ljava/lang/StringBuilder;

    .line 961
    .line 962
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 963
    .line 964
    .line 965
    invoke-static {v1, v2}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    .line 966
    .line 967
    .line 968
    move-result-object v4

    .line 969
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    .line 971
    .line 972
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v4

    .line 976
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    .line 978
    .line 979
    :cond_21
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 980
    .line 981
    iget-object v3, v0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 982
    .line 983
    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 984
    .line 985
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 986
    .line 987
    .line 988
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 989
    .line 990
    .line 991
    move-result-wide v4

    .line 992
    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(ILjava/lang/String;J)Landroid/util/ArraySet;

    .line 993
    .line 994
    .line 995
    move-result-object v0

    .line 996
    invoke-virtual {v3, v0}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 997
    .line 998
    .line 999
    goto/16 :goto_c

    .line 1000
    .line 1001
    :pswitch_6
    sget-boolean v1, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 1002
    .line 1003
    if-eqz v1, :cond_22

    .line 1004
    .line 1005
    const-string v1, "JobScheduler.Quota"

    .line 1006
    .line 1007
    const-string v2, "Cleaning up timing sessions."

    .line 1008
    .line 1009
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    .line 1011
    .line 1012
    :cond_22
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 1013
    .line 1014
    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController;->deleteObsoleteSessionsLocked()V

    .line 1015
    .line 1016
    .line 1017
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 1018
    .line 1019
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleCleanupAlarmLocked()V

    .line 1020
    .line 1021
    .line 1022
    goto/16 :goto_c

    .line 1023
    .line 1024
    :pswitch_7
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1025
    .line 1026
    check-cast v1, Landroid/content/pm/UserPackage;

    .line 1027
    .line 1028
    sget-boolean v4, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 1029
    .line 1030
    if-eqz v4, :cond_23

    .line 1031
    .line 1032
    const-string v5, "JobScheduler.Quota"

    .line 1033
    .line 1034
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1035
    .line 1036
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1040
    .line 1041
    .line 1042
    const-string v3, " has reached its quota."

    .line 1043
    .line 1044
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    .line 1046
    .line 1047
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v3

    .line 1051
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    .line 1053
    .line 1054
    :cond_23
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 1055
    .line 1056
    iget v5, v1, Landroid/content/pm/UserPackage;->userId:I

    .line 1057
    .line 1058
    iget-object v6, v1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 1059
    .line 1060
    invoke-virtual {v3, v5, v6}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;)J

    .line 1061
    .line 1062
    .line 1063
    move-result-wide v5

    .line 1064
    const-wide/16 v7, 0x32

    .line 1065
    .line 1066
    cmp-long v3, v5, v7

    .line 1067
    .line 1068
    if-gtz v3, :cond_26

    .line 1069
    .line 1070
    if-eqz v4, :cond_24

    .line 1071
    .line 1072
    const-string v3, "JobScheduler.Quota"

    .line 1073
    .line 1074
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1075
    .line 1076
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1080
    .line 1081
    .line 1082
    const-string v5, " has reached its quota."

    .line 1083
    .line 1084
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v4

    .line 1091
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    .line 1093
    .line 1094
    :cond_24
    invoke-static {v13, v14}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 1095
    .line 1096
    .line 1097
    move-result v3

    .line 1098
    if-eqz v3, :cond_25

    .line 1099
    .line 1100
    const-string v3, "JobScheduler"

    .line 1101
    .line 1102
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1103
    .line 1104
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    .line 1112
    .line 1113
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v2

    .line 1117
    invoke-static {v13, v14, v3, v2}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 1118
    .line 1119
    .line 1120
    :cond_25
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 1121
    .line 1122
    iget-object v2, v0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 1123
    .line 1124
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 1125
    .line 1126
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1127
    .line 1128
    .line 1129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1130
    .line 1131
    .line 1132
    move-result-wide v3

    .line 1133
    iget v5, v1, Landroid/content/pm/UserPackage;->userId:I

    .line 1134
    .line 1135
    iget-object v1, v1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 1136
    .line 1137
    invoke-virtual {v0, v5, v1, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(ILjava/lang/String;J)Landroid/util/ArraySet;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v0

    .line 1141
    invoke-virtual {v2, v0}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 1142
    .line 1143
    .line 1144
    goto :goto_c

    .line 1145
    :cond_26
    const/4 v2, 0x0

    .line 1146
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v2

    .line 1150
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 1151
    .line 1152
    iget v5, v1, Landroid/content/pm/UserPackage;->userId:I

    .line 1153
    .line 1154
    iget-object v6, v1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 1155
    .line 1156
    invoke-virtual {v3, v5, v6}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J

    .line 1157
    .line 1158
    .line 1159
    move-result-wide v5

    .line 1160
    if-eqz v4, :cond_27

    .line 1161
    .line 1162
    const-string v3, "JobScheduler.Quota"

    .line 1163
    .line 1164
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1165
    .line 1166
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1167
    .line 1168
    .line 1169
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1170
    .line 1171
    .line 1172
    const-string v1, " has "

    .line 1173
    .line 1174
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    .line 1176
    .line 1177
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1178
    .line 1179
    .line 1180
    const-string/jumbo v1, "ms left."

    .line 1181
    .line 1182
    .line 1183
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    .line 1185
    .line 1186
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v1

    .line 1190
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    .line 1192
    .line 1193
    :cond_27
    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1194
    .line 1195
    .line 1196
    :goto_c
    monitor-exit v11

    .line 1197
    return-void

    .line 1198
    :goto_d
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1199
    throw v0

    .line 1200
    nop

    .line 1201
    :pswitch_data_0
    .packed-switch 0x0
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
