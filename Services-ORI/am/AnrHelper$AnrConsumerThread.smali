.class public final Lcom/android/server/am/AnrHelper$AnrConsumerThread;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AnrHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AnrHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    .line 2
    .line 3
    const-string p1, "AnrConsumer"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .line 1
    :goto_0
    move-object/from16 v0, p0

    .line 2
    .line 3
    :goto_1
    iget-object v1, v0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    monitor-exit v1

    .line 20
    const/4 v1, 0x0

    .line 21
    goto :goto_2

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto/16 :goto_8

    .line 24
    .line 25
    :cond_0
    iget-object v2, v0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/android/server/am/AnrHelper$AnrRecord;

    .line 34
    .line 35
    iget-object v4, v0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    .line 36
    .line 37
    iget v5, v2, Lcom/android/server/am/AnrHelper$AnrRecord;->mPid:I

    .line 38
    .line 39
    iput v5, v4, Lcom/android/server/am/AnrHelper;->mProcessingPid:I

    .line 40
    .line 41
    iget-object v5, v2, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    .line 42
    .line 43
    iget-object v5, v5, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 44
    .line 45
    iget-object v4, v4, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-virtual {v5, v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrRecordsQueueSizeWhenPopped(I)V

    .line 52
    .line 53
    .line 54
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    move-object v1, v2

    .line 56
    :goto_2
    const/4 v2, 0x1

    .line 57
    if-eqz v1, :cond_6

    .line 58
    .line 59
    iget-object v4, v0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    const-wide/16 v5, 0x40

    .line 65
    .line 66
    :try_start_1
    const-string/jumbo v7, "scheduleBinderHeavyHitterAutoSamplerIfNecessary()"

    .line 67
    .line 68
    .line 69
    invoke-static {v5, v6, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v7

    .line 76
    iget-wide v9, v4, Lcom/android/server/am/AnrHelper;->mLastAnrTimeMs:J

    .line 77
    .line 78
    sget-wide v11, Lcom/android/server/am/AnrHelper;->CONSECUTIVE_ANR_TIME_MS:J

    .line 79
    .line 80
    add-long/2addr v9, v11

    .line 81
    cmp-long v9, v9, v7

    .line 82
    .line 83
    if-lez v9, :cond_1

    .line 84
    .line 85
    iget-object v9, v4, Lcom/android/server/am/AnrHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 86
    .line 87
    iget-object v10, v9, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 88
    .line 89
    new-instance v11, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;

    .line 90
    .line 91
    const/4 v12, 0x5

    .line 92
    invoke-direct {v11, v9, v12}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/am/ActivityManagerService;I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :catchall_1
    move-exception v0

    .line 100
    goto/16 :goto_5

    .line 101
    .line 102
    :cond_1
    :goto_3
    iput-wide v7, v4, Lcom/android/server/am/AnrHelper;->mLastAnrTimeMs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    .line 104
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 105
    .line 106
    .line 107
    iget-object v4, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 108
    .line 109
    iget v4, v4, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 110
    .line 111
    iget v5, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mPid:I

    .line 112
    .line 113
    if-eq v4, v5, :cond_2

    .line 114
    .line 115
    const-string v2, "ActivityManager"

    .line 116
    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v5, "Skip ANR with mismatched pid="

    .line 120
    .line 121
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget v1, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mPid:I

    .line 125
    .line 126
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v1, ", current pid="

    .line 130
    .line 131
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    goto/16 :goto_1

    .line 145
    .line 146
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 147
    .line 148
    .line 149
    move-result-wide v4

    .line 150
    iget-wide v6, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimestamp:J

    .line 151
    .line 152
    sub-long v6, v4, v6

    .line 153
    .line 154
    sget-wide v8, Lcom/android/server/am/AnrHelper;->EXPIRED_REPORT_TIME_MS:J

    .line 155
    .line 156
    cmp-long v8, v6, v8

    .line 157
    .line 158
    if-gtz v8, :cond_3

    .line 159
    .line 160
    sget-wide v8, Lcom/android/server/am/AnrHelper;->SELF_ONLY_AFTER_BOOT_MS:J

    .line 161
    .line 162
    cmp-long v8, v4, v8

    .line 163
    .line 164
    if-gez v8, :cond_4

    .line 165
    .line 166
    :cond_3
    move v3, v2

    .line 167
    :cond_4
    :try_start_2
    iget-object v2, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    .line 168
    .line 169
    iget-object v2, v2, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 170
    .line 171
    invoke-virtual {v2}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrProcessingStarted()V

    .line 172
    .line 173
    .line 174
    iget-object v2, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 175
    .line 176
    iget-object v9, v2, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 177
    .line 178
    iget-object v10, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mActivityShortComponentName:Ljava/lang/String;

    .line 179
    .line 180
    iget-object v11, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 181
    .line 182
    iget-object v12, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mParentShortComponentName:Ljava/lang/String;

    .line 183
    .line 184
    iget-object v13, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mParentProcess:Lcom/android/server/wm/WindowProcessController;

    .line 185
    .line 186
    iget-boolean v14, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mAboveSystem:Z

    .line 187
    .line 188
    iget-object v15, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    .line 189
    .line 190
    iget-object v2, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->this$0:Lcom/android/server/am/AnrHelper;

    .line 191
    .line 192
    iget-object v2, v2, Lcom/android/server/am/AnrHelper;->mAuxiliaryTaskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 193
    .line 194
    iget-boolean v8, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mIsContinuousAnr:Z

    .line 195
    .line 196
    iget-object v0, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mFirstPidFilePromise:Ljava/util/concurrent/Future;

    .line 197
    .line 198
    move-object/from16 v16, v2

    .line 199
    .line 200
    move/from16 v17, v3

    .line 201
    .line 202
    move/from16 v18, v8

    .line 203
    .line 204
    move-object/from16 v19, v0

    .line 205
    .line 206
    invoke-virtual/range {v9 .. v19}, Lcom/android/server/am/ProcessErrorStateRecord;->appNotResponding(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLcom/android/internal/os/TimeoutRecord;Ljava/util/concurrent/ExecutorService;ZZLjava/util/concurrent/Future;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 207
    .line 208
    .line 209
    iget-object v0, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    .line 210
    .line 211
    iget-object v0, v0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 212
    .line 213
    invoke-virtual {v0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrProcessingEnded()V

    .line 214
    .line 215
    .line 216
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 217
    .line 218
    .line 219
    move-result-wide v8

    .line 220
    const-string v0, "ActivityManager"

    .line 221
    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    const-string v10, "Completed ANR of "

    .line 225
    .line 226
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget-object v1, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 230
    .line 231
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v1, " in "

    .line 237
    .line 238
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    sub-long/2addr v8, v4

    .line 242
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string/jumbo v1, "ms, latency "

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    if-eqz v3, :cond_5

    .line 255
    .line 256
    const-string/jumbo v1, "ms (expired, only dump ANR app)"

    .line 257
    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_5
    const-string/jumbo v1, "ms"

    .line 261
    .line 262
    .line 263
    :goto_4
    invoke-static {v2, v1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    goto/16 :goto_0

    .line 267
    .line 268
    :catchall_2
    move-exception v0

    .line 269
    iget-object v1, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    .line 270
    .line 271
    iget-object v1, v1, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 272
    .line 273
    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrProcessingEnded()V

    .line 274
    .line 275
    .line 276
    throw v0

    .line 277
    :goto_5
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 278
    .line 279
    .line 280
    throw v0

    .line 281
    :cond_6
    iget-object v1, v0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    .line 282
    .line 283
    iget-object v1, v1, Lcom/android/server/am/AnrHelper;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 284
    .line 285
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 286
    .line 287
    .line 288
    iget-object v1, v0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    .line 289
    .line 290
    iget-object v4, v1, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    .line 291
    .line 292
    monitor-enter v4

    .line 293
    :try_start_3
    iget-object v1, v0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    .line 294
    .line 295
    const/4 v5, -0x1

    .line 296
    iput v5, v1, Lcom/android/server/am/AnrHelper;->mProcessingPid:I

    .line 297
    .line 298
    iget-object v1, v1, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    .line 299
    .line 300
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    if-nez v1, :cond_7

    .line 305
    .line 306
    iget-object v0, v0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    .line 307
    .line 308
    iget-object v1, v0, Lcom/android/server/am/AnrHelper;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 309
    .line 310
    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-eqz v1, :cond_7

    .line 315
    .line 316
    new-instance v1, Lcom/android/server/am/AnrHelper$AnrConsumerThread;

    .line 317
    .line 318
    invoke-direct {v1, v0}, Lcom/android/server/am/AnrHelper$AnrConsumerThread;-><init>(Lcom/android/server/am/AnrHelper;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 322
    .line 323
    .line 324
    goto :goto_6

    .line 325
    :catchall_3
    move-exception v0

    .line 326
    goto :goto_7

    .line 327
    :cond_7
    :goto_6
    monitor-exit v4

    .line 328
    return-void

    .line 329
    :goto_7
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 330
    throw v0

    .line 331
    :goto_8
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 332
    throw v0
.end method
