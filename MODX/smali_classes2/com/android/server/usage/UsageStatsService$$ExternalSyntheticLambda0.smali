.class public final synthetic Lcom/android/server/usage/UsageStatsService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usage/UsageStatsService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usage/UsageStatsService;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v2, "Failed to update counter set: "

    .line 11
    .line 12
    iget v3, v1, Landroid/os/Message;->what:I

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x3

    .line 16
    if-eq v3, v5, :cond_f

    .line 17
    .line 18
    const/16 v2, 0x8

    .line 19
    .line 20
    if-eq v3, v2, :cond_2

    .line 21
    .line 22
    const/16 v2, 0xc

    .line 23
    .line 24
    if-eq v3, v2, :cond_0

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    goto/16 :goto_10

    .line 28
    .line 29
    :cond_0
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 30
    .line 31
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    .line 34
    .line 35
    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService;->mUsageEventListeners:Landroid/util/ArraySet;

    .line 36
    .line 37
    monitor-enter v3

    .line 38
    :try_start_0
    iget-object v5, v0, Lcom/android/server/usage/UsageStatsService;->mUsageEventListeners:Landroid/util/ArraySet;

    .line 39
    .line 40
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const/4 v6, 0x0

    .line 45
    :goto_0
    if-ge v6, v5, :cond_1

    .line 46
    .line 47
    iget-object v7, v0, Lcom/android/server/usage/UsageStatsService;->mUsageEventListeners:Landroid/util/ArraySet;

    .line 48
    .line 49
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    check-cast v7, Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;

    .line 54
    .line 55
    invoke-interface {v7, v2, v1}, Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;->onUsageEvent(ILandroid/app/usage/UsageEvents$Event;)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v6, v6, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    monitor-exit v3

    .line 64
    goto/16 :goto_10

    .line 65
    .line 66
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw v0

    .line 68
    :cond_2
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 69
    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string/jumbo v3, "usageStatsHandleEstimatedLaunchTimesOnUser("

    .line 73
    .line 74
    .line 75
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v3, ")"

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    const-wide/32 v7, 0x80000

    .line 91
    .line 92
    .line 93
    invoke-static {v7, v8, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 97
    .line 98
    .line 99
    move-result-wide v2

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 101
    .line 102
    .line 103
    move-result-wide v9

    .line 104
    const-wide/32 v11, 0x240c8400

    .line 105
    .line 106
    .line 107
    sub-long v13, v9, v11

    .line 108
    .line 109
    const-string v5, "Failed to query earliest events for locked user "

    .line 110
    .line 111
    iget-object v15, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 112
    .line 113
    monitor-enter v15

    .line 114
    :try_start_1
    iget-object v6, v0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 115
    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    const/4 v7, 0x0

    .line 125
    if-nez v6, :cond_3

    .line 126
    .line 127
    const-string v6, "UsageStatsService"

    .line 128
    .line 129
    new-instance v8, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    monitor-exit v15

    .line 145
    goto :goto_2

    .line 146
    :catchall_1
    move-exception v0

    .line 147
    goto/16 :goto_d

    .line 148
    .line 149
    :cond_3
    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    if-nez v5, :cond_4

    .line 154
    .line 155
    monitor-exit v15

    .line 156
    goto :goto_2

    .line 157
    :cond_4
    invoke-virtual {v5, v13, v14, v9, v10}, Lcom/android/server/usage/UserUsageStatsService;->queryEarliestAppEvents(JJ)Landroid/app/usage/UsageEvents;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 162
    :goto_2
    if-nez v7, :cond_6

    .line 163
    .line 164
    :cond_5
    :goto_3
    const-wide/32 v0, 0x80000

    .line 165
    .line 166
    .line 167
    goto/16 :goto_b

    .line 168
    .line 169
    :cond_6
    new-instance v5, Landroid/util/ArrayMap;

    .line 170
    .line 171
    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 172
    .line 173
    .line 174
    new-instance v6, Landroid/app/usage/UsageEvents$Event;

    .line 175
    .line 176
    invoke-direct {v6}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsService;->getOrCreateLaunchTimeAlarmQueue(I)Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    .line 180
    .line 181
    .line 182
    move-result-object v8

    .line 183
    invoke-virtual {v7, v6}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 184
    .line 185
    .line 186
    move-result v13

    .line 187
    const/4 v14, 0x0

    .line 188
    :goto_4
    if-eqz v13, :cond_e

    .line 189
    .line 190
    invoke-virtual {v6}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v13

    .line 194
    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v15

    .line 198
    const-wide/32 v16, 0x5265c00

    .line 199
    .line 200
    .line 201
    if-nez v15, :cond_8

    .line 202
    .line 203
    invoke-virtual {v6}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    .line 204
    .line 205
    .line 206
    move-result-wide v18

    .line 207
    sub-long v18, v9, v18

    .line 208
    .line 209
    cmp-long v15, v18, v16

    .line 210
    .line 211
    if-lez v15, :cond_7

    .line 212
    .line 213
    move v15, v4

    .line 214
    goto :goto_5

    .line 215
    :cond_7
    const/4 v15, 0x0

    .line 216
    :goto_5
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 217
    .line 218
    .line 219
    move-result-object v15

    .line 220
    invoke-virtual {v5, v13, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    :cond_8
    invoke-virtual {v6}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    .line 224
    .line 225
    .line 226
    move-result v15

    .line 227
    if-ne v15, v4, :cond_d

    .line 228
    .line 229
    iget-object v15, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 230
    .line 231
    invoke-interface {v15, v13, v1}, Lcom/android/server/usage/AppStandbyInternal;->getEstimatedLaunchTime(Ljava/lang/String;I)J

    .line 232
    .line 233
    .line 234
    move-result-wide v18

    .line 235
    cmp-long v15, v18, v9

    .line 236
    .line 237
    if-ltz v15, :cond_a

    .line 238
    .line 239
    const-wide v20, 0x7fffffffffffffffL

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    cmp-long v15, v18, v20

    .line 245
    .line 246
    if-nez v15, :cond_9

    .line 247
    .line 248
    goto :goto_6

    .line 249
    :cond_9
    move-object/from16 p1, v5

    .line 250
    .line 251
    goto :goto_9

    .line 252
    :cond_a
    :goto_6
    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v15

    .line 256
    check-cast v15, Ljava/lang/Boolean;

    .line 257
    .line 258
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    .line 259
    .line 260
    .line 261
    move-result v15

    .line 262
    invoke-virtual {v6}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    .line 263
    .line 264
    .line 265
    move-result-wide v18

    .line 266
    if-eqz v15, :cond_b

    .line 267
    .line 268
    add-long v18, v18, v11

    .line 269
    .line 270
    :goto_7
    move-object/from16 p1, v5

    .line 271
    .line 272
    move-wide/from16 v4, v18

    .line 273
    .line 274
    goto :goto_8

    .line 275
    :cond_b
    add-long v18, v18, v16

    .line 276
    .line 277
    goto :goto_7

    .line 278
    :goto_8
    iget-object v15, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 279
    .line 280
    invoke-interface {v15, v13, v1, v4, v5}, Lcom/android/server/usage/AppStandbyInternal;->setEstimatedLaunchTime(Ljava/lang/String;IJ)V

    .line 281
    .line 282
    .line 283
    move-wide/from16 v18, v4

    .line 284
    .line 285
    :goto_9
    add-long v4, v9, v11

    .line 286
    .line 287
    cmp-long v4, v18, v4

    .line 288
    .line 289
    if-gez v4, :cond_c

    .line 290
    .line 291
    invoke-virtual {v0, v1, v13}, Lcom/android/server/usage/UsageStatsService;->stageChangedEstimatedLaunchTime(ILjava/lang/String;)Z

    .line 292
    .line 293
    .line 294
    move-result v4

    .line 295
    or-int/2addr v14, v4

    .line 296
    :cond_c
    sub-long v18, v18, v9

    .line 297
    .line 298
    add-long v4, v18, v2

    .line 299
    .line 300
    invoke-virtual {v8, v4, v5, v13}, Lcom/android/server/utils/AlarmQueue;->addAlarm(JLjava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    goto :goto_a

    .line 304
    :cond_d
    move-object/from16 p1, v5

    .line 305
    .line 306
    :goto_a
    invoke-virtual {v7, v6}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 307
    .line 308
    .line 309
    move-result v13

    .line 310
    move-object/from16 v5, p1

    .line 311
    .line 312
    const/4 v4, 0x1

    .line 313
    goto :goto_4

    .line 314
    :cond_e
    if-eqz v14, :cond_5

    .line 315
    .line 316
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    .line 317
    .line 318
    const/16 v1, 0x9

    .line 319
    .line 320
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 321
    .line 322
    .line 323
    goto/16 :goto_3

    .line 324
    .line 325
    :goto_b
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 326
    .line 327
    .line 328
    :goto_c
    const/4 v4, 0x1

    .line 329
    goto :goto_10

    .line 330
    :goto_d
    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 331
    throw v0

    .line 332
    :cond_f
    iget v3, v1, Landroid/os/Message;->arg1:I

    .line 333
    .line 334
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 335
    .line 336
    const/4 v4, 0x2

    .line 337
    if-gt v1, v4, :cond_10

    .line 338
    .line 339
    const/4 v1, 0x0

    .line 340
    goto :goto_e

    .line 341
    :cond_10
    const/4 v1, 0x1

    .line 342
    :goto_e
    iget-object v4, v0, Lcom/android/server/usage/UsageStatsService;->mUidToKernelCounter:Landroid/util/SparseIntArray;

    .line 343
    .line 344
    monitor-enter v4

    .line 345
    :try_start_3
    iget-object v5, v0, Lcom/android/server/usage/UsageStatsService;->mUidToKernelCounter:Landroid/util/SparseIntArray;

    .line 346
    .line 347
    const/4 v6, 0x0

    .line 348
    invoke-virtual {v5, v3, v6}, Landroid/util/SparseIntArray;->get(II)I

    .line 349
    .line 350
    .line 351
    move-result v5

    .line 352
    if-eq v1, v5, :cond_11

    .line 353
    .line 354
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mUidToKernelCounter:Landroid/util/SparseIntArray;

    .line 355
    .line 356
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 357
    .line 358
    .line 359
    :try_start_4
    sget-object v0, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    .line 360
    .line 361
    new-instance v5, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    const-string v3, " "

    .line 370
    .line 371
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    invoke-static {v0, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 382
    .line 383
    .line 384
    goto :goto_f

    .line 385
    :catchall_2
    move-exception v0

    .line 386
    goto :goto_11

    .line 387
    :catch_0
    move-exception v0

    .line 388
    :try_start_5
    const-string v1, "UsageStatsService"

    .line 389
    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .line 404
    .line 405
    :cond_11
    :goto_f
    monitor-exit v4

    .line 406
    goto :goto_c

    .line 407
    :goto_10
    return v4

    .line 408
    :goto_11
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 409
    throw v0
.end method
