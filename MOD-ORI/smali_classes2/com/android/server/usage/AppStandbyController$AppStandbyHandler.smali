.class public final Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

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
    .locals 14

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0xa

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 11
    .line 12
    .line 13
    goto/16 :goto_9

    .line 14
    .line 15
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 16
    .line 17
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    .line 19
    move-object v5, p0

    .line 20
    check-cast v5, Ljava/lang/String;

    .line 21
    .line 22
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 23
    .line 24
    iget-boolean p0, v4, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 25
    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    goto/16 :goto_9

    .line 29
    .line 30
    :cond_0
    iget-object p0, v4, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 36
    .line 37
    .line 38
    move-result-wide v9

    .line 39
    invoke-virtual {v4, v6, v5}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(ILjava/lang/String;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v13

    .line 43
    iget-object v0, v4, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 44
    .line 45
    monitor-enter v0

    .line 46
    :try_start_0
    iget-wide v11, v4, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    .line 47
    .line 48
    const/16 v7, 0xa

    .line 49
    .line 50
    const/16 v8, 0xd

    .line 51
    .line 52
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    .line 53
    .line 54
    .line 55
    monitor-exit v0

    .line 56
    goto/16 :goto_9

    .line 57
    .line 58
    :catchall_0
    move-exception p0

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0

    .line 61
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 62
    .line 63
    if-lez v0, :cond_3

    .line 64
    .line 65
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 66
    .line 67
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 68
    .line 69
    move-object v4, p0

    .line 70
    check-cast v4, Ljava/lang/String;

    .line 71
    .line 72
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 73
    .line 74
    iget-boolean p0, v3, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 75
    .line 76
    if-nez p0, :cond_1

    .line 77
    .line 78
    goto/16 :goto_9

    .line 79
    .line 80
    :cond_1
    iget-object p0, v3, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerManager:Landroid/os/PowerManager;

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-nez p0, :cond_2

    .line 89
    .line 90
    iget-wide p0, v3, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    .line 91
    .line 92
    const/16 v0, 0xb

    .line 93
    .line 94
    :goto_0
    move-wide v10, p0

    .line 95
    move v7, v0

    .line 96
    move v6, v2

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    iget-wide p0, v3, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    .line 99
    .line 100
    const/16 v2, 0x14

    .line 101
    .line 102
    const/16 v0, 0xc

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :goto_1
    iget-object p0, v3, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 111
    .line 112
    .line 113
    move-result-wide v8

    .line 114
    invoke-virtual {v3, v5, v4}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(ILjava/lang/String;)Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v12

    .line 118
    iget-object v0, v3, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 119
    .line 120
    monitor-enter v0

    .line 121
    :try_start_1
    invoke-virtual/range {v3 .. v12}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    .line 122
    .line 123
    .line 124
    monitor-exit v0

    .line 125
    goto/16 :goto_9

    .line 126
    .line 127
    :catchall_1
    move-exception p0

    .line 128
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    throw p0

    .line 130
    :cond_3
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 131
    .line 132
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 133
    .line 134
    move-object v2, v0

    .line 135
    check-cast v2, Ljava/lang/String;

    .line 136
    .line 137
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 138
    .line 139
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 140
    .line 141
    if-nez p1, :cond_4

    .line 142
    .line 143
    goto/16 :goto_9

    .line 144
    .line 145
    :cond_4
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 151
    .line 152
    .line 153
    move-result-wide v6

    .line 154
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 155
    .line 156
    monitor-enter v0

    .line 157
    :try_start_2
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 158
    .line 159
    invoke-virtual {p1, v3}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-static {p1, v2, v1}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    const/16 v1, 0x32

    .line 168
    .line 169
    if-nez p1, :cond_5

    .line 170
    .line 171
    move p1, v1

    .line 172
    goto :goto_2

    .line 173
    :cond_5
    iget p1, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 174
    .line 175
    :goto_2
    if-ne p1, v1, :cond_6

    .line 176
    .line 177
    invoke-virtual {p0, v3, v2}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(ILjava/lang/String;)Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object v10

    .line 181
    iget-wide v8, p0, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    .line 182
    .line 183
    const/16 v4, 0x14

    .line 184
    .line 185
    const/16 v5, 0xe

    .line 186
    .line 187
    move-object v1, p0

    .line 188
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :catchall_2
    move-exception p0

    .line 193
    goto :goto_4

    .line 194
    :cond_6
    :goto_3
    monitor-exit v0

    .line 195
    goto/16 :goto_9

    .line 196
    .line 197
    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 198
    throw p0

    .line 199
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 200
    .line 201
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 202
    .line 203
    move-object v6, p0

    .line 204
    check-cast v6, Ljava/lang/String;

    .line 205
    .line 206
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 207
    .line 208
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 209
    .line 210
    iget-object p0, v1, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 211
    .line 212
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 216
    .line 217
    .line 218
    move-result-wide v4

    .line 219
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->checkAndUpdateStandbyState(IIJLjava/lang/String;)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_9

    .line 223
    .line 224
    :pswitch_4
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 225
    .line 226
    iget-object p1, p1, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 227
    .line 228
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 229
    .line 230
    .line 231
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 232
    .line 233
    iget-object v0, p1, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    .line 234
    .line 235
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    const-string v1, "android.software.device_admin"

    .line 240
    .line 241
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-eqz v0, :cond_7

    .line 246
    .line 247
    iget-object p1, p1, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    .line 248
    .line 249
    const-wide/16 v0, 0x2710

    .line 250
    .line 251
    const-string v2, "Wait for admin data"

    .line 252
    .line 253
    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/jobs/ConcurrentUtils;->waitForCountDownNoInterrupt(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V

    .line 254
    .line 255
    .line 256
    :cond_7
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 257
    .line 258
    const/4 p1, -0x1

    .line 259
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->checkIdleStates(I)Z

    .line 260
    .line 261
    .line 262
    goto/16 :goto_9

    .line 263
    .line 264
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 265
    .line 266
    invoke-static {p0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$minformParoleStateChanged(Lcom/android/server/usage/AppStandbyController;)V

    .line 267
    .line 268
    .line 269
    goto/16 :goto_9

    .line 270
    .line 271
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast p1, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;

    .line 274
    .line 275
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 276
    .line 277
    iget-object v0, p1, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->name:Ljava/lang/String;

    .line 278
    .line 279
    iget-object v1, p1, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->packageName:Ljava/lang/String;

    .line 280
    .line 281
    iget v2, p1, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->userId:I

    .line 282
    .line 283
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$mreportContentProviderUsage(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;Ljava/lang/String;I)V

    .line 284
    .line 285
    .line 286
    sget-object p0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->sPool:Lcom/android/server/usage/AppStandbyController$Pool;

    .line 287
    .line 288
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController$Pool;->recycle(Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    goto/16 :goto_9

    .line 292
    .line 293
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 294
    .line 295
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 296
    .line 297
    check-cast v0, Ljava/lang/String;

    .line 298
    .line 299
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 300
    .line 301
    invoke-static {p0, v0, p1}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$mtriggerListenerQuotaBump(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_9

    .line 305
    .line 306
    :pswitch_8
    const/4 p1, 0x5

    .line 307
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 308
    .line 309
    .line 310
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 311
    .line 312
    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 313
    .line 314
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    .line 316
    .line 317
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 318
    .line 319
    .line 320
    move-result-wide v0

    .line 321
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 322
    .line 323
    iget-object v2, v2, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    .line 324
    .line 325
    monitor-enter v2

    .line 326
    :try_start_3
    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 327
    .line 328
    iget-object v4, v4, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    .line 329
    .line 330
    invoke-virtual {v4}, Landroid/util/SparseLongArray;->size()I

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    sub-int/2addr v4, v3

    .line 335
    const-wide v5, 0x7fffffffffffffffL

    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    move-wide v7, v5

    .line 341
    :goto_5
    if-ltz v4, :cond_a

    .line 342
    .line 343
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 344
    .line 345
    iget-object v3, v3, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    .line 346
    .line 347
    invoke-virtual {v3, v4}, Landroid/util/SparseLongArray;->valueAt(I)J

    .line 348
    .line 349
    .line 350
    move-result-wide v9

    .line 351
    cmp-long v3, v9, v0

    .line 352
    .line 353
    if-gtz v3, :cond_9

    .line 354
    .line 355
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 356
    .line 357
    iget-object v3, v3, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    .line 358
    .line 359
    invoke-virtual {v3, v4}, Landroid/util/SparseLongArray;->keyAt(I)I

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    iget-object v9, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 364
    .line 365
    invoke-virtual {v9, v3}, Lcom/android/server/usage/AppStandbyController;->checkIdleStates(I)Z

    .line 366
    .line 367
    .line 368
    move-result v9

    .line 369
    if-eqz v9, :cond_8

    .line 370
    .line 371
    iget-object v9, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 372
    .line 373
    iget-boolean v9, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 374
    .line 375
    if-eqz v9, :cond_8

    .line 376
    .line 377
    iget-object v9, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 378
    .line 379
    iget-wide v10, v9, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    .line 380
    .line 381
    add-long/2addr v10, v0

    .line 382
    iget-object v9, v9, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    .line 383
    .line 384
    invoke-virtual {v9, v3, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 385
    .line 386
    .line 387
    move-wide v9, v10

    .line 388
    goto :goto_6

    .line 389
    :catchall_3
    move-exception p0

    .line 390
    goto :goto_8

    .line 391
    :cond_8
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 392
    .line 393
    iget-object v3, v3, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    .line 394
    .line 395
    invoke-virtual {v3, v4}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 396
    .line 397
    .line 398
    goto :goto_7

    .line 399
    :cond_9
    :goto_6
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 400
    .line 401
    .line 402
    move-result-wide v7

    .line 403
    :goto_7
    add-int/lit8 v4, v4, -0x1

    .line 404
    .line 405
    goto :goto_5

    .line 406
    :cond_a
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 407
    cmp-long v2, v7, v5

    .line 408
    .line 409
    if-eqz v2, :cond_c

    .line 410
    .line 411
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 412
    .line 413
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 414
    .line 415
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    sub-long/2addr v7, v0

    .line 420
    invoke-virtual {p0, p1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 421
    .line 422
    .line 423
    goto :goto_9

    .line 424
    :goto_8
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 425
    throw p0

    .line 426
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 427
    .line 428
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 429
    .line 430
    check-cast v0, Ljava/lang/String;

    .line 431
    .line 432
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 433
    .line 434
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 435
    .line 436
    if-ne p1, v3, :cond_b

    .line 437
    .line 438
    move v1, v3

    .line 439
    :cond_b
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/usage/AppStandbyController;->forceIdleState(Ljava/lang/String;IZ)V

    .line 440
    .line 441
    .line 442
    goto :goto_9

    .line 443
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 444
    .line 445
    check-cast p1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    .line 446
    .line 447
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 448
    .line 449
    iget-object v1, p1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->packageName:Ljava/lang/String;

    .line 450
    .line 451
    iget v2, p1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->userId:I

    .line 452
    .line 453
    iget v3, p1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->bucket:I

    .line 454
    .line 455
    iget v4, p1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->reason:I

    .line 456
    .line 457
    iget-boolean v5, p1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->isUserInteraction:Z

    .line 458
    .line 459
    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$minformListeners(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;IIIZ)V

    .line 460
    .line 461
    .line 462
    sget-object p0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->sPool:Lcom/android/server/usage/AppStandbyController$Pool;

    .line 463
    .line 464
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController$Pool;->recycle(Ljava/lang/Object;)V

    .line 465
    .line 466
    .line 467
    :cond_c
    :goto_9
    return-void

    .line 468
    nop

    .line 469
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
