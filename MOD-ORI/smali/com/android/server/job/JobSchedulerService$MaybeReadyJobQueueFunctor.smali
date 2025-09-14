.class public final Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field final mBatches:Landroid/util/ArrayMap;

.field public final mUnbatchedJobCount:Landroid/util/ArrayMap;

.field public final mUnbatchedJobs:Landroid/util/ArraySet;

.field final runnableJobs:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 5
    .line 6
    new-instance p1, Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mBatches:Landroid/util/ArrayMap;

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    .line 19
    .line 20
    new-instance p1, Landroid/util/ArraySet;

    .line 21
    .line 22
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mUnbatchedJobs:Landroid/util/ArraySet;

    .line 26
    .line 27
    new-instance p1, Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mUnbatchedJobCount:Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->reset()V

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-virtual {v3, v1, v4}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v5, -0x1

    .line 21
    const/4 v6, 0x6

    .line 22
    const/4 v7, 0x5

    .line 23
    if-eqz v3, :cond_1a

    .line 24
    .line 25
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 26
    .line 27
    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 28
    .line 29
    iget v9, v1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 30
    .line 31
    iget-object v10, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 32
    .line 33
    invoke-virtual {v10}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 34
    .line 35
    .line 36
    move-result-object v10

    .line 37
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v10

    .line 41
    invoke-virtual {v3, v9, v10}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    const-string v3, "JobScheduler"

    .line 48
    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v6, "Aborting job "

    .line 52
    .line 53
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget v6, v1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 57
    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v6, ":"

    .line 62
    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v6, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 67
    .line 68
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v6, " -- package not allowed to start"

    .line 76
    .line 77
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    if-eqz v2, :cond_0

    .line 88
    .line 89
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 92
    .line 93
    const/4 v2, 0x2

    .line 94
    const/16 v3, 0xb

    .line 95
    .line 96
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_d

    .line 104
    .line 105
    :cond_0
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 106
    .line 107
    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 108
    .line 109
    invoke-virtual {v2, v1}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_1f

    .line 114
    .line 115
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 116
    .line 117
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_d

    .line 123
    .line 124
    :cond_1
    iget v3, v1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 125
    .line 126
    const-wide/16 v9, 0x0

    .line 127
    .line 128
    const-wide/16 v11, 0x1

    .line 129
    .line 130
    if-lez v3, :cond_2

    .line 131
    .line 132
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 133
    .line 134
    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mAcceptCounter:Lcom/android/server/job/JobSchedulerService$AcceptCounter;

    .line 135
    .line 136
    iget-wide v5, v3, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchOverrideNone:J

    .line 137
    .line 138
    add-long/2addr v5, v11

    .line 139
    iput-wide v5, v3, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchOverrideNone:J

    .line 140
    .line 141
    :goto_0
    move v3, v4

    .line 142
    goto/16 :goto_a

    .line 143
    .line 144
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-nez v3, :cond_16

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-eqz v3, :cond_3

    .line 155
    .line 156
    goto/16 :goto_9

    .line 157
    .line 158
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-ne v3, v7, :cond_4

    .line 163
    .line 164
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 165
    .line 166
    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mAcceptCounter:Lcom/android/server/job/JobSchedulerService$AcceptCounter;

    .line 167
    .line 168
    iget-wide v5, v3, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchStandbyBucket:J

    .line 169
    .line 170
    add-long/2addr v5, v11

    .line 171
    iput-wide v5, v3, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchStandbyBucket:J

    .line 172
    .line 173
    const/4 v3, 0x1

    .line 174
    goto/16 :goto_a

    .line 175
    .line 176
    :cond_4
    iget-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 177
    .line 178
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isPrefetch()Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-eqz v3, :cond_7

    .line 183
    .line 184
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 185
    .line 186
    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    .line 187
    .line 188
    .line 189
    move-result-wide v5

    .line 190
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 191
    .line 192
    iget-object v7, v3, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 193
    .line 194
    iget-wide v13, v7, Lcom/android/server/job/JobSchedulerService$Constants;->PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:J

    .line 195
    .line 196
    add-long/2addr v5, v13

    .line 197
    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    .line 198
    .line 199
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    iget v7, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 203
    .line 204
    sget-object v13, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 205
    .line 206
    invoke-virtual {v13}, Ljava/time/Clock;->millis()J

    .line 207
    .line 208
    .line 209
    move-result-wide v13

    .line 210
    iget-object v15, v1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {v3, v7, v15, v13, v14}, Lcom/android/server/job/controllers/PrefetchController;->getNextEstimatedLaunchTimeLocked(ILjava/lang/String;J)J

    .line 213
    .line 214
    .line 215
    move-result-wide v13

    .line 216
    cmp-long v3, v13, v5

    .line 217
    .line 218
    if-lez v3, :cond_5

    .line 219
    .line 220
    const/4 v3, 0x1

    .line 221
    goto :goto_1

    .line 222
    :cond_5
    move v3, v4

    .line 223
    :goto_1
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 224
    .line 225
    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mAcceptCounter:Lcom/android/server/job/JobSchedulerService$AcceptCounter;

    .line 226
    .line 227
    if-eqz v3, :cond_6

    .line 228
    .line 229
    iget-wide v6, v5, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchPrefetch:J

    .line 230
    .line 231
    add-long/2addr v6, v11

    .line 232
    iput-wide v6, v5, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchPrefetch:J

    .line 233
    .line 234
    goto/16 :goto_a

    .line 235
    .line 236
    :cond_6
    iget-wide v6, v5, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchPrefetch:J

    .line 237
    .line 238
    add-long/2addr v6, v11

    .line 239
    iput-wide v6, v5, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchPrefetch:J

    .line 240
    .line 241
    goto/16 :goto_a

    .line 242
    .line 243
    :cond_7
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    if-lez v3, :cond_8

    .line 248
    .line 249
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 250
    .line 251
    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mAcceptCounter:Lcom/android/server/job/JobSchedulerService$AcceptCounter;

    .line 252
    .line 253
    iget-wide v5, v3, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchAttempts:J

    .line 254
    .line 255
    add-long/2addr v5, v11

    .line 256
    iput-wide v5, v3, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchAttempts:J

    .line 257
    .line 258
    goto :goto_0

    .line 259
    :cond_8
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 260
    .line 261
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 265
    .line 266
    .line 267
    move-result-wide v13

    .line 268
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    if-eqz v3, :cond_11

    .line 273
    .line 274
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 275
    .line 276
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    iget-wide v7, v1, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    .line 280
    .line 281
    cmp-long v16, v7, v9

    .line 282
    .line 283
    const-wide/32 v17, 0x1d4c0

    .line 284
    .line 285
    .line 286
    if-lez v16, :cond_9

    .line 287
    .line 288
    sub-long v7, v13, v7

    .line 289
    .line 290
    cmp-long v7, v7, v17

    .line 291
    .line 292
    if-ltz v7, :cond_9

    .line 293
    .line 294
    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mDeferrableNetworkJobCounter:Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;

    .line 295
    .line 296
    iget-wide v5, v3, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->batchDealyExpired:J

    .line 297
    .line 298
    add-long/2addr v5, v11

    .line 299
    iput-wide v5, v3, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->batchDealyExpired:J

    .line 300
    .line 301
    :goto_2
    move v3, v4

    .line 302
    goto :goto_5

    .line 303
    :cond_9
    const/high16 v7, 0x40000000    # 2.0f

    .line 304
    .line 305
    invoke-virtual {v1, v7}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 306
    .line 307
    .line 308
    move-result v7

    .line 309
    if-eqz v7, :cond_a

    .line 310
    .line 311
    iget-wide v7, v1, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 312
    .line 313
    sub-long/2addr v7, v13

    .line 314
    goto :goto_3

    .line 315
    :cond_a
    const-wide v7, 0x7fffffffffffffffL

    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    :goto_3
    cmp-long v7, v7, v17

    .line 321
    .line 322
    if-lez v7, :cond_f

    .line 323
    .line 324
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    .line 325
    .line 326
    .line 327
    move-result v7

    .line 328
    if-ne v7, v6, :cond_b

    .line 329
    .line 330
    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mDeferrableNetworkJobCounter:Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;

    .line 331
    .line 332
    iget-wide v5, v3, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->exemptedStandbyBucket:J

    .line 333
    .line 334
    add-long/2addr v5, v11

    .line 335
    iput-wide v5, v3, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->exemptedStandbyBucket:J

    .line 336
    .line 337
    goto :goto_2

    .line 338
    :cond_b
    iget-object v6, v3, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 339
    .line 340
    monitor-enter v6

    .line 341
    :try_start_0
    iget-object v7, v3, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    .line 342
    .line 343
    iget v8, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 344
    .line 345
    invoke-virtual {v7, v8, v5}, Landroid/util/SparseIntArray;->get(II)I

    .line 346
    .line 347
    .line 348
    move-result v5

    .line 349
    const/4 v7, 0x5

    .line 350
    if-le v5, v7, :cond_c

    .line 351
    .line 352
    const/4 v5, 0x1

    .line 353
    goto :goto_4

    .line 354
    :cond_c
    move v5, v4

    .line 355
    :goto_4
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    if-nez v5, :cond_d

    .line 357
    .line 358
    iget-object v6, v3, Lcom/android/server/job/JobSchedulerService;->mDeferrableNetworkJobCounter:Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;

    .line 359
    .line 360
    iget-wide v7, v6, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->procState:J

    .line 361
    .line 362
    add-long/2addr v7, v11

    .line 363
    iput-wide v7, v6, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->procState:J

    .line 364
    .line 365
    :cond_d
    if-eqz v5, :cond_e

    .line 366
    .line 367
    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mDeferrableNetworkJobCounter:Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;

    .line 368
    .line 369
    iget-wide v6, v3, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->deferrable:J

    .line 370
    .line 371
    add-long/2addr v6, v11

    .line 372
    iput-wide v6, v3, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->deferrable:J

    .line 373
    .line 374
    :cond_e
    move v3, v5

    .line 375
    goto :goto_5

    .line 376
    :catchall_0
    move-exception v0

    .line 377
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    throw v0

    .line 379
    :cond_f
    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mDeferrableNetworkJobCounter:Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;

    .line 380
    .line 381
    iget-wide v5, v3, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->notEnoughDeadline:J

    .line 382
    .line 383
    add-long/2addr v5, v11

    .line 384
    iput-wide v5, v3, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->notEnoughDeadline:J

    .line 385
    .line 386
    goto :goto_2

    .line 387
    :goto_5
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 388
    .line 389
    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mAcceptCounter:Lcom/android/server/job/JobSchedulerService$AcceptCounter;

    .line 390
    .line 391
    if-eqz v3, :cond_10

    .line 392
    .line 393
    iget-wide v6, v5, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchNetwork:J

    .line 394
    .line 395
    add-long/2addr v6, v11

    .line 396
    iput-wide v6, v5, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchNetwork:J

    .line 397
    .line 398
    goto :goto_a

    .line 399
    :cond_10
    iget-wide v6, v5, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchNetwork:J

    .line 400
    .line 401
    add-long/2addr v6, v11

    .line 402
    iput-wide v6, v5, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchNetwork:J

    .line 403
    .line 404
    goto :goto_a

    .line 405
    :cond_11
    invoke-static {}, Lcom/android/server/job/Flags;->batchActiveBucketJobs()Z

    .line 406
    .line 407
    .line 408
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 409
    .line 410
    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 411
    .line 412
    iget v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    .line 413
    .line 414
    const/4 v5, 0x1

    .line 415
    if-le v3, v5, :cond_12

    .line 416
    .line 417
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    .line 418
    .line 419
    .line 420
    move-result v3

    .line 421
    if-eqz v3, :cond_12

    .line 422
    .line 423
    const/4 v5, 0x1

    .line 424
    goto :goto_6

    .line 425
    :cond_12
    move v5, v4

    .line 426
    :goto_6
    iget-wide v7, v1, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    .line 427
    .line 428
    cmp-long v3, v7, v9

    .line 429
    .line 430
    if-lez v3, :cond_13

    .line 431
    .line 432
    sub-long/2addr v13, v7

    .line 433
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 434
    .line 435
    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 436
    .line 437
    iget-wide v7, v3, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:J

    .line 438
    .line 439
    cmp-long v3, v13, v7

    .line 440
    .line 441
    if-ltz v3, :cond_13

    .line 442
    .line 443
    const/4 v3, 0x1

    .line 444
    goto :goto_7

    .line 445
    :cond_13
    move v3, v4

    .line 446
    :goto_7
    if-eqz v5, :cond_14

    .line 447
    .line 448
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    .line 449
    .line 450
    .line 451
    move-result v5

    .line 452
    if-eq v5, v6, :cond_14

    .line 453
    .line 454
    if-nez v3, :cond_14

    .line 455
    .line 456
    const/4 v3, 0x1

    .line 457
    goto :goto_8

    .line 458
    :cond_14
    move v3, v4

    .line 459
    :goto_8
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 460
    .line 461
    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mAcceptCounter:Lcom/android/server/job/JobSchedulerService$AcceptCounter;

    .line 462
    .line 463
    if-eqz v3, :cond_15

    .line 464
    .line 465
    iget-wide v6, v5, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchOthers:J

    .line 466
    .line 467
    add-long/2addr v6, v11

    .line 468
    iput-wide v6, v5, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchOthers:J

    .line 469
    .line 470
    goto :goto_a

    .line 471
    :cond_15
    iget-wide v6, v5, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchOthers:J

    .line 472
    .line 473
    add-long/2addr v6, v11

    .line 474
    iput-wide v6, v5, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchOthers:J

    .line 475
    .line 476
    goto :goto_a

    .line 477
    :cond_16
    :goto_9
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 478
    .line 479
    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mAcceptCounter:Lcom/android/server/job/JobSchedulerService$AcceptCounter;

    .line 480
    .line 481
    iget-wide v5, v3, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchExpedited:J

    .line 482
    .line 483
    add-long/2addr v5, v11

    .line 484
    iput-wide v5, v3, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchExpedited:J

    .line 485
    .line 486
    goto/16 :goto_0

    .line 487
    .line 488
    :goto_a
    iget-object v5, v1, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    .line 489
    .line 490
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mBatches:Landroid/util/ArrayMap;

    .line 491
    .line 492
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v6

    .line 496
    check-cast v6, Landroid/util/ArraySet;

    .line 497
    .line 498
    if-nez v6, :cond_17

    .line 499
    .line 500
    new-instance v6, Landroid/util/ArraySet;

    .line 501
    .line 502
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 503
    .line 504
    .line 505
    iget-object v7, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mBatches:Landroid/util/ArrayMap;

    .line 506
    .line 507
    invoke-virtual {v7, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    :cond_17
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    if-eqz v3, :cond_18

    .line 514
    .line 515
    iget-wide v4, v1, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    .line 516
    .line 517
    cmp-long v4, v4, v9

    .line 518
    .line 519
    if-nez v4, :cond_19

    .line 520
    .line 521
    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 522
    .line 523
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 524
    .line 525
    .line 526
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 527
    .line 528
    .line 529
    move-result-wide v4

    .line 530
    iput-wide v4, v1, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    .line 531
    .line 532
    goto :goto_b

    .line 533
    :cond_18
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mUnbatchedJobCount:Landroid/util/ArrayMap;

    .line 534
    .line 535
    iget-object v7, v1, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    .line 536
    .line 537
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 538
    .line 539
    .line 540
    move-result-object v4

    .line 541
    invoke-virtual {v6, v7, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v4

    .line 545
    check-cast v4, Ljava/lang/Integer;

    .line 546
    .line 547
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 548
    .line 549
    .line 550
    move-result v4

    .line 551
    const/4 v7, 0x1

    .line 552
    add-int/2addr v4, v7

    .line 553
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 554
    .line 555
    .line 556
    move-result-object v4

    .line 557
    invoke-virtual {v6, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    :cond_19
    :goto_b
    if-nez v2, :cond_1f

    .line 561
    .line 562
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    .line 563
    .line 564
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    if-nez v3, :cond_1f

    .line 568
    .line 569
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mUnbatchedJobs:Landroid/util/ArraySet;

    .line 570
    .line 571
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    goto :goto_d

    .line 575
    :cond_1a
    const/4 v7, 0x1

    .line 576
    if-eqz v2, :cond_1e

    .line 577
    .line 578
    iget v2, v1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 579
    .line 580
    invoke-virtual {v1, v2}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    .line 581
    .line 582
    .line 583
    move-result v2

    .line 584
    if-nez v2, :cond_1c

    .line 585
    .line 586
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    .line 587
    .line 588
    .line 589
    move-result v2

    .line 590
    const/4 v3, 0x5

    .line 591
    if-ne v2, v3, :cond_1b

    .line 592
    .line 593
    iget v2, v1, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    .line 594
    .line 595
    const/16 v3, 0xc

    .line 596
    .line 597
    if-ne v2, v3, :cond_1b

    .line 598
    .line 599
    const-string/jumbo v2, "cancelled due to restricted bucket"

    .line 600
    .line 601
    .line 602
    move v5, v6

    .line 603
    goto :goto_c

    .line 604
    :cond_1b
    const-string/jumbo v2, "cancelled due to unsatisfied constraints"

    .line 605
    .line 606
    .line 607
    move v5, v7

    .line 608
    goto :goto_c

    .line 609
    :cond_1c
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 610
    .line 611
    invoke-virtual {v2, v1}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    .line 612
    .line 613
    .line 614
    move-result-object v2

    .line 615
    if-eqz v2, :cond_1d

    .line 616
    .line 617
    iget v5, v2, Lcom/android/server/job/restrictions/JobRestriction;->mInternalReason:I

    .line 618
    .line 619
    new-instance v2, Ljava/lang/StringBuilder;

    .line 620
    .line 621
    const-string/jumbo v3, "restricted due to "

    .line 622
    .line 623
    .line 624
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    invoke-static {v5}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v3

    .line 631
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v2

    .line 638
    goto :goto_c

    .line 639
    :cond_1d
    const-string/jumbo v2, "couldn\'t figure out why the job should stop running"

    .line 640
    .line 641
    .line 642
    :goto_c
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 643
    .line 644
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 645
    .line 646
    iget v3, v1, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    .line 647
    .line 648
    invoke-virtual {v0, v1, v3, v5, v2}, Lcom/android/server/job/JobConcurrencyManager;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)Z

    .line 649
    .line 650
    .line 651
    goto :goto_d

    .line 652
    :cond_1e
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 653
    .line 654
    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 655
    .line 656
    invoke-virtual {v2, v1}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 657
    .line 658
    .line 659
    move-result v2

    .line 660
    if-eqz v2, :cond_1f

    .line 661
    .line 662
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 663
    .line 664
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 665
    .line 666
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 667
    .line 668
    .line 669
    :cond_1f
    :goto_d
    return-void
.end method

.method public postProcessLocked()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mUnbatchedJobs:Landroid/util/ArraySet;

    .line 4
    .line 5
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    const-string v2, "JobScheduler"

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v4, "maybeQueueReadyJobsForExecutionLocked: "

    .line 14
    .line 15
    .line 16
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mUnbatchedJobs:Landroid/util/ArraySet;

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v4, " unbatched jobs."

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mBatches:Landroid/util/ArrayMap;

    .line 47
    .line 48
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    new-instance v5, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    .line 56
    .line 57
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mBatches:Landroid/util/ArrayMap;

    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    const/4 v6, 0x1

    .line 64
    sub-int/2addr v4, v6

    .line 65
    const/4 v8, 0x0

    .line 66
    :goto_0
    const/4 v9, 0x0

    .line 67
    if-ltz v4, :cond_a

    .line 68
    .line 69
    iget-object v10, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mBatches:Landroid/util/ArrayMap;

    .line 70
    .line 71
    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    check-cast v10, Landroid/net/Network;

    .line 76
    .line 77
    iget-object v11, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mUnbatchedJobCount:Landroid/util/ArrayMap;

    .line 78
    .line 79
    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v11

    .line 83
    check-cast v11, Ljava/lang/Integer;

    .line 84
    .line 85
    if-eqz v11, :cond_1

    .line 86
    .line 87
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result v11

    .line 91
    add-int/2addr v8, v11

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    const/4 v11, 0x0

    .line 94
    :goto_1
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mBatches:Landroid/util/ArrayMap;

    .line 95
    .line 96
    invoke-virtual {v12, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v12

    .line 100
    check-cast v12, Landroid/util/ArraySet;

    .line 101
    .line 102
    new-instance v13, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;

    .line 103
    .line 104
    invoke-direct {v13, v10}, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;-><init>(Landroid/net/Network;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    .line 108
    .line 109
    .line 110
    move-result v14

    .line 111
    iput v14, v13, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->totalJobCount:I

    .line 112
    .line 113
    if-eqz v10, :cond_2

    .line 114
    .line 115
    if-lez v14, :cond_2

    .line 116
    .line 117
    iput-boolean v6, v13, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->hasNetworkJob:Z

    .line 118
    .line 119
    :cond_2
    if-nez v10, :cond_3

    .line 120
    .line 121
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    :goto_2
    move/from16 v16, v8

    .line 125
    .line 126
    goto/16 :goto_5

    .line 127
    .line 128
    :cond_3
    if-lez v11, :cond_5

    .line 129
    .line 130
    sget-boolean v9, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 131
    .line 132
    if-eqz v9, :cond_4

    .line 133
    .line 134
    const-string v9, "JobScheduler"

    .line 135
    .line 136
    new-instance v14, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string/jumbo v15, "maybeQueueReadyJobsForExecutionLocked: piggybacking "

    .line 139
    .line 140
    .line 141
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    .line 145
    .line 146
    .line 147
    move-result v15

    .line 148
    sub-int/2addr v15, v11

    .line 149
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v15, " jobs on "

    .line 153
    .line 154
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v10, " because of unbatched job"

    .line 161
    .line 162
    invoke-static {v14, v10, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_4
    iput v11, v13, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->unbatchJobCount:I

    .line 166
    .line 167
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v12}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_5
    iget-object v14, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 175
    .line 176
    iget-object v14, v14, Lcom/android/server/job/JobSchedulerService;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    .line 177
    .line 178
    invoke-virtual {v14, v10}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkMetadata(Landroid/net/Network;)Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    .line 179
    .line 180
    .line 181
    move-result-object v14

    .line 182
    if-nez v14, :cond_6

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_6
    iget-object v9, v14, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 186
    .line 187
    :goto_3
    if-nez v9, :cond_7

    .line 188
    .line 189
    const-string v9, "JobScheduler"

    .line 190
    .line 191
    new-instance v11, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    const-string v12, "Couldn\'t get NetworkCapabilities for network "

    .line 194
    .line 195
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v10

    .line 205
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_7
    invoke-virtual {v9}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    array-length v14, v9

    .line 214
    move v7, v6

    .line 215
    const/4 v15, 0x0

    .line 216
    :goto_4
    if-ge v15, v14, :cond_8

    .line 217
    .line 218
    aget v6, v9, v15

    .line 219
    .line 220
    move/from16 v16, v8

    .line 221
    .line 222
    iget-object v8, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 223
    .line 224
    iget-object v8, v8, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 225
    .line 226
    iget-object v8, v8, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_TRANSPORT_BATCH_THRESHOLD:Landroid/util/SparseIntArray;

    .line 227
    .line 228
    invoke-virtual {v8, v6}, Landroid/util/SparseIntArray;->get(I)I

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    .line 233
    .line 234
    .line 235
    move-result v7

    .line 236
    add-int/lit8 v15, v15, 0x1

    .line 237
    .line 238
    move/from16 v8, v16

    .line 239
    .line 240
    const/4 v6, 0x1

    .line 241
    goto :goto_4

    .line 242
    :cond_8
    move/from16 v16, v8

    .line 243
    .line 244
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    .line 245
    .line 246
    .line 247
    move-result v6

    .line 248
    if-lt v6, v7, :cond_9

    .line 249
    .line 250
    const-string v6, "JobScheduler"

    .line 251
    .line 252
    new-instance v7, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    const-string/jumbo v8, "maybeQueueReadyJobsForExecutionLocked: [BatchNetworkJob] "

    .line 255
    .line 256
    .line 257
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    .line 261
    .line 262
    .line 263
    move-result v8

    .line 264
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v8, " batched network jobs meet requirement for "

    .line 268
    .line 269
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v7

    .line 279
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    iput v11, v13, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->unbatchJobCount:I

    .line 283
    .line 284
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1, v12}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 288
    .line 289
    .line 290
    goto :goto_5

    .line 291
    :cond_9
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    .line 292
    .line 293
    .line 294
    move-result v6

    .line 295
    iput v6, v13, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->deferedJobCount:I

    .line 296
    .line 297
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    :goto_5
    add-int/lit8 v4, v4, -0x1

    .line 301
    .line 302
    move/from16 v8, v16

    .line 303
    .line 304
    const/4 v6, 0x1

    .line 305
    goto/16 :goto_0

    .line 306
    .line 307
    :cond_a
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mBatches:Landroid/util/ArrayMap;

    .line 308
    .line 309
    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    check-cast v4, Landroid/util/ArraySet;

    .line 314
    .line 315
    if-eqz v4, :cond_f

    .line 316
    .line 317
    invoke-static {}, Lcom/android/server/job/Flags;->batchActiveBucketJobs()Z

    .line 318
    .line 319
    .line 320
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 321
    .line 322
    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 323
    .line 324
    iget v6, v6, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    .line 325
    .line 326
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 327
    .line 328
    .line 329
    move-result v7

    .line 330
    if-lez v7, :cond_d

    .line 331
    .line 332
    sget-boolean v6, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 333
    .line 334
    if-eqz v6, :cond_c

    .line 335
    .line 336
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mUnbatchedJobCount:Landroid/util/ArrayMap;

    .line 337
    .line 338
    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    check-cast v6, Ljava/lang/Integer;

    .line 343
    .line 344
    if-nez v6, :cond_b

    .line 345
    .line 346
    const/4 v6, 0x0

    .line 347
    goto :goto_6

    .line 348
    :cond_b
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 349
    .line 350
    .line 351
    move-result v6

    .line 352
    :goto_6
    const-string v7, "JobScheduler"

    .line 353
    .line 354
    new-instance v9, Ljava/lang/StringBuilder;

    .line 355
    .line 356
    const-string/jumbo v10, "maybeQueueReadyJobsForExecutionLocked: piggybacking "

    .line 357
    .line 358
    .line 359
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 363
    .line 364
    .line 365
    move-result v10

    .line 366
    sub-int/2addr v10, v6

    .line 367
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    const-string v6, " non-network jobs"

    .line 371
    .line 372
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v6

    .line 379
    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .line 381
    .line 382
    :cond_c
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 383
    .line 384
    .line 385
    goto :goto_7

    .line 386
    :cond_d
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 387
    .line 388
    .line 389
    move-result v7

    .line 390
    if-lt v7, v6, :cond_f

    .line 391
    .line 392
    sget-boolean v6, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 393
    .line 394
    if-eqz v6, :cond_e

    .line 395
    .line 396
    const-string v6, "JobScheduler"

    .line 397
    .line 398
    new-instance v7, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    const-string/jumbo v9, "maybeQueueReadyJobsForExecutionLocked: adding "

    .line 401
    .line 402
    .line 403
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 407
    .line 408
    .line 409
    move-result v9

    .line 410
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    const-string v9, " batched non-network jobs."

    .line 414
    .line 415
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v7

    .line 422
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    .line 424
    .line 425
    :cond_e
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 426
    .line 427
    .line 428
    :cond_f
    :goto_7
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 429
    .line 430
    new-instance v6, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;

    .line 431
    .line 432
    const/4 v7, 0x1

    .line 433
    invoke-direct {v6, v4, v7}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/JobSchedulerService;I)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 437
    .line 438
    .line 439
    if-gtz v8, :cond_12

    .line 440
    .line 441
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 442
    .line 443
    .line 444
    move-result v4

    .line 445
    if-lez v4, :cond_10

    .line 446
    .line 447
    goto :goto_8

    .line 448
    :cond_10
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 449
    .line 450
    if-eqz v2, :cond_11

    .line 451
    .line 452
    const-string v2, "JobScheduler"

    .line 453
    .line 454
    const-string/jumbo v3, "maybeQueueReadyJobsForExecutionLocked: Not running anything."

    .line 455
    .line 456
    .line 457
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .line 459
    .line 460
    :cond_11
    const/4 v2, 0x0

    .line 461
    goto/16 :goto_d

    .line 462
    .line 463
    :cond_12
    :goto_8
    sget-boolean v4, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 464
    .line 465
    if-eqz v4, :cond_13

    .line 466
    .line 467
    const-string v6, "JobScheduler"

    .line 468
    .line 469
    new-instance v7, Ljava/lang/StringBuilder;

    .line 470
    .line 471
    const-string/jumbo v8, "maybeQueueReadyJobsForExecutionLocked: Running "

    .line 472
    .line 473
    .line 474
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    const-string v8, " jobs."

    .line 481
    .line 482
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v7

    .line 489
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    .line 491
    .line 492
    :cond_13
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 493
    .line 494
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 498
    .line 499
    .line 500
    move-result v7

    .line 501
    const/4 v8, 0x1

    .line 502
    sub-int/2addr v7, v8

    .line 503
    :goto_9
    if-ltz v7, :cond_14

    .line 504
    .line 505
    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v8

    .line 509
    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    .line 510
    .line 511
    iget-object v9, v6, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 512
    .line 513
    invoke-virtual {v9, v8}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 514
    .line 515
    .line 516
    add-int/lit8 v7, v7, -0x1

    .line 517
    .line 518
    goto :goto_9

    .line 519
    :cond_14
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 520
    .line 521
    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 522
    .line 523
    invoke-virtual {v6, v1}, Lcom/android/server/job/PendingJobQueue;->addAll(Landroid/util/ArraySet;)V

    .line 524
    .line 525
    .line 526
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 527
    .line 528
    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mJobCounter:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;

    .line 529
    .line 530
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 531
    .line 532
    .line 533
    iget-wide v7, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mBeginTime:J

    .line 534
    .line 535
    const-wide/32 v9, 0x927c0

    .line 536
    .line 537
    .line 538
    add-long/2addr v9, v7

    .line 539
    cmp-long v9, v2, v9

    .line 540
    .line 541
    if-lez v9, :cond_15

    .line 542
    .line 543
    new-instance v9, Lcom/android/server/job/JobSchedulerService$JobOperationGroupBlockData;

    .line 544
    .line 545
    iget v10, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mOperationCount:I

    .line 546
    .line 547
    iget v11, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mDeferedCount:I

    .line 548
    .line 549
    iget v12, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mNetworkJobGroupCount:I

    .line 550
    .line 551
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 552
    .line 553
    .line 554
    iput-wide v7, v9, Lcom/android/server/job/JobSchedulerService$JobOperationGroupBlockData;->begin:J

    .line 555
    .line 556
    iput v10, v9, Lcom/android/server/job/JobSchedulerService$JobOperationGroupBlockData;->operationCount:I

    .line 557
    .line 558
    iput v11, v9, Lcom/android/server/job/JobSchedulerService$JobOperationGroupBlockData;->deferedCount:I

    .line 559
    .line 560
    iput v12, v9, Lcom/android/server/job/JobSchedulerService$JobOperationGroupBlockData;->networkJobGroupCount:I

    .line 561
    .line 562
    iget-object v7, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 563
    .line 564
    iget-object v7, v7, Lcom/android/server/job/JobSchedulerService;->mJobCountBuffer:Lcom/android/internal/util/RingBuffer;

    .line 565
    .line 566
    invoke-virtual {v7, v9}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 567
    .line 568
    .line 569
    iput-wide v2, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mBeginTime:J

    .line 570
    .line 571
    const/4 v2, 0x0

    .line 572
    iput v2, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mOperationCount:I

    .line 573
    .line 574
    iput v2, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mDeferedCount:I

    .line 575
    .line 576
    iput v2, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mNetworkJobGroupCount:I

    .line 577
    .line 578
    goto :goto_a

    .line 579
    :cond_15
    const/4 v2, 0x0

    .line 580
    :goto_a
    iget v3, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mOperationCount:I

    .line 581
    .line 582
    const/4 v7, 0x1

    .line 583
    add-int/2addr v3, v7

    .line 584
    iput v3, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mOperationCount:I

    .line 585
    .line 586
    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 587
    .line 588
    .line 589
    move-result-object v3

    .line 590
    new-instance v7, Lcom/android/server/job/JobSchedulerService$JobOperationGroup$$ExternalSyntheticLambda0;

    .line 591
    .line 592
    const/4 v8, 0x1

    .line 593
    invoke-direct {v7, v8}, Lcom/android/server/job/JobSchedulerService$JobOperationGroup$$ExternalSyntheticLambda0;-><init>(I)V

    .line 594
    .line 595
    .line 596
    invoke-interface {v3, v7}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 597
    .line 598
    .line 599
    move-result v3

    .line 600
    if-eqz v3, :cond_16

    .line 601
    .line 602
    iget v3, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mDeferedCount:I

    .line 603
    .line 604
    const/4 v7, 0x1

    .line 605
    add-int/2addr v3, v7

    .line 606
    iput v3, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mDeferedCount:I

    .line 607
    .line 608
    :cond_16
    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 609
    .line 610
    .line 611
    move-result-object v3

    .line 612
    new-instance v7, Lcom/android/server/job/JobSchedulerService$JobOperationGroup$$ExternalSyntheticLambda0;

    .line 613
    .line 614
    const/4 v8, 0x0

    .line 615
    invoke-direct {v7, v8}, Lcom/android/server/job/JobSchedulerService$JobOperationGroup$$ExternalSyntheticLambda0;-><init>(I)V

    .line 616
    .line 617
    .line 618
    invoke-interface {v3, v7}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 619
    .line 620
    .line 621
    move-result v3

    .line 622
    if-eqz v3, :cond_17

    .line 623
    .line 624
    iget v3, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mNetworkJobGroupCount:I

    .line 625
    .line 626
    const/4 v7, 0x1

    .line 627
    add-int/2addr v3, v7

    .line 628
    iput v3, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mNetworkJobGroupCount:I

    .line 629
    .line 630
    :cond_17
    if-eqz v4, :cond_1a

    .line 631
    .line 632
    const-string v3, "JobScheduler"

    .line 633
    .line 634
    new-instance v4, Ljava/lang/StringBuilder;

    .line 635
    .line 636
    const-string/jumbo v6, "maybeQueueReadyJobsForExecutionLocked: "

    .line 637
    .line 638
    .line 639
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 643
    .line 644
    .line 645
    move-result v6

    .line 646
    if-eqz v6, :cond_18

    .line 647
    .line 648
    const-string/jumbo v5, "empty"

    .line 649
    .line 650
    .line 651
    goto :goto_c

    .line 652
    :cond_18
    new-instance v6, Ljava/lang/StringBuilder;

    .line 653
    .line 654
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 658
    .line 659
    .line 660
    move-result-object v5

    .line 661
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 662
    .line 663
    .line 664
    move-result v7

    .line 665
    if-eqz v7, :cond_19

    .line 666
    .line 667
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object v7

    .line 671
    check-cast v7, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;

    .line 672
    .line 673
    invoke-virtual {v7}, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->toString()Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v7

    .line 677
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    .line 679
    .line 680
    const-string v7, "/"

    .line 681
    .line 682
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    goto :goto_b

    .line 686
    :cond_19
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v5

    .line 690
    :goto_c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    const-string v5, ", acceptCounter= "

    .line 694
    .line 695
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    .line 697
    .line 698
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 699
    .line 700
    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mAcceptCounter:Lcom/android/server/job/JobSchedulerService$AcceptCounter;

    .line 701
    .line 702
    invoke-virtual {v5}, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->toString()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v5

    .line 706
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    .line 708
    .line 709
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v4

    .line 713
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    .line 715
    .line 716
    :cond_1a
    :goto_d
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    .line 717
    .line 718
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 719
    .line 720
    .line 721
    move-result v3

    .line 722
    if-lez v3, :cond_1e

    .line 723
    .line 724
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 725
    .line 726
    .line 727
    move-result v4

    .line 728
    if-eq v3, v4, :cond_1e

    .line 729
    .line 730
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 731
    .line 732
    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonCache:Landroid/util/SparseArrayMap;

    .line 733
    .line 734
    monitor-enter v4

    .line 735
    move v7, v2

    .line 736
    :goto_e
    if-ge v7, v3, :cond_1d

    .line 737
    .line 738
    :try_start_0
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    .line 739
    .line 740
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object v2

    .line 744
    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 745
    .line 746
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 747
    .line 748
    .line 749
    move-result v5

    .line 750
    if-eqz v5, :cond_1b

    .line 751
    .line 752
    goto :goto_10

    .line 753
    :cond_1b
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 754
    .line 755
    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonCache:Landroid/util/SparseArrayMap;

    .line 756
    .line 757
    iget v6, v2, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 758
    .line 759
    iget-object v8, v2, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 760
    .line 761
    invoke-virtual {v5, v6, v8}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    move-result-object v5

    .line 765
    check-cast v5, Landroid/util/SparseIntArray;

    .line 766
    .line 767
    if-nez v5, :cond_1c

    .line 768
    .line 769
    new-instance v5, Landroid/util/SparseIntArray;

    .line 770
    .line 771
    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    .line 772
    .line 773
    .line 774
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 775
    .line 776
    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonCache:Landroid/util/SparseArrayMap;

    .line 777
    .line 778
    iget v8, v2, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 779
    .line 780
    iget-object v9, v2, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 781
    .line 782
    invoke-virtual {v6, v8, v9, v5}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    .line 784
    .line 785
    goto :goto_f

    .line 786
    :catchall_0
    move-exception v0

    .line 787
    goto :goto_11

    .line 788
    :cond_1c
    :goto_f
    iget-object v2, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 789
    .line 790
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    .line 791
    .line 792
    .line 793
    move-result v2

    .line 794
    const/16 v6, 0xd

    .line 795
    .line 796
    invoke-virtual {v5, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 797
    .line 798
    .line 799
    :goto_10
    add-int/lit8 v7, v7, 0x1

    .line 800
    .line 801
    goto :goto_e

    .line 802
    :cond_1d
    monitor-exit v4

    .line 803
    goto :goto_12

    .line 804
    :goto_11
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    throw v0

    .line 806
    :cond_1e
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->reset()V

    .line 807
    .line 808
    .line 809
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mBatches:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mUnbatchedJobs:Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mUnbatchedJobCount:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
