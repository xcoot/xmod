.class public final Lcom/android/server/job/controllers/ConnectivityController;
.super Lcom/android/server/job/controllers/RestrictingController;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/ConnectivityManager$OnNetworkActiveListener;


# static fields
.field public static final DEBUG:Z

.field static final TRANSPORT_AFFINITY_AVOID:I = 0x2

.field static final TRANSPORT_AFFINITY_PREFER:I = 0x1

.field static final TRANSPORT_AFFINITY_UNDEFINED:I

.field static final sNetworkTransportAffinities:Landroid/util/SparseIntArray;


# instance fields
.field public final mAvailableNetworks:Landroid/util/ArrayMap;

.field public final mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

.field public final mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

.field public final mConnManager:Landroid/net/ConnectivityManager;

.field public final mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

.field public final mDefaultNetworkCallback:Lcom/android/server/job/controllers/ConnectivityController$2;

.field public final mDefaultNetworkCallbackPool:Landroid/util/Pools$Pool;

.field public final mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

.field public final mHandler:Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

.field public mLastAllJobUpdateTimeElapsed:J

.field public mLastCallbackAdjustmentTimeElapsed:J

.field public final mNetPolicyListener:Lcom/android/server/job/controllers/ConnectivityController$4;

.field public final mNetPolicyManager:Landroid/net/NetworkPolicyManager;

.field public final mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

.field public final mNetworkCallback:Lcom/android/server/job/controllers/ConnectivityController$2;

.field public final mRequestedWhitelistJobs:Landroid/util/SparseArray;

.field public final mSignalStrengths:Landroid/util/SparseArray;

.field public final mSortedStats:Ljava/util/List;

.field public mSystemDefaultNetwork:Landroid/net/Network;

.field public final mTrackedJobs:Landroid/util/SparseArray;

.field public final mUidStats:Landroid/util/SparseArray;

.field public final mUidStatsComparator:Lcom/android/server/job/controllers/ConnectivityController$1;


# direct methods
.method public static -$$Nest$mmaybeAdjustRegisteredCallbacksLocked(Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 12
    move-result v0

    .line 13
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 18
    move-result v2

    .line 19
    if-ne v0, v2, :cond_0

    .line 21
    goto/16 :goto_a

    .line 23
    :cond_0
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 31
    move-result-wide v2

    .line 32
    iget-wide v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLastCallbackAdjustmentTimeElapsed:J

    .line 34
    sub-long v4, v2, v4

    .line 36
    const-wide/16 v6, 0x3e8

    .line 38
    cmp-long v0, v4, v6

    .line 40
    if-gez v0, :cond_1

    .line 42
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    .line 44
    invoke-virtual {p0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 47
    goto/16 :goto_a

    .line 49
    :cond_1
    iput-wide v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLastCallbackAdjustmentTimeElapsed:J

    .line 51
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    .line 53
    check-cast v0, Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 58
    move v0, v1

    .line 59
    :goto_0
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    .line 61
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 64
    move-result v4

    .line 65
    if-ge v0, v4, :cond_d

    .line 67
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    .line 69
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 75
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    .line 77
    iget v6, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    .line 79
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object v5

    .line 83
    check-cast v5, Landroid/util/ArraySet;

    .line 85
    if-eqz v5, :cond_c

    .line 87
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 90
    move-result v6

    .line 91
    if-nez v6, :cond_2

    .line 93
    goto/16 :goto_6

    .line 95
    :cond_2
    iget-wide v6, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->lastUpdatedElapsed:J

    .line 97
    const-wide/16 v8, 0x7530

    .line 99
    add-long/2addr v6, v8

    .line 100
    cmp-long v6, v6, v2

    .line 102
    if-gez v6, :cond_b

    .line 104
    const-wide v6, 0x7fffffffffffffffL

    .line 109
    iput-wide v6, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    .line 111
    iput-wide v6, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    .line 113
    iput-wide v6, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestUIJEnqueueTime:J

    .line 115
    iput v1, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    .line 117
    iput v1, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    .line 119
    iput v1, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRegular:I

    .line 121
    iput v1, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    .line 123
    iput v1, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numUIJs:I

    .line 125
    move v6, v1

    .line 126
    :goto_1
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 129
    move-result v7

    .line 130
    if-ge v6, v7, :cond_a

    .line 132
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 135
    move-result-object v7

    .line 136
    check-cast v7, Lcom/android/server/job/controllers/JobStatus;

    .line 138
    const/high16 v8, 0x10000000

    .line 140
    invoke-virtual {p0, v7, v8}, Lcom/android/server/job/controllers/StateController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    .line 143
    move-result v8

    .line 144
    if-eqz v8, :cond_6

    .line 146
    iget v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    .line 148
    add-int/lit8 v8, v8, 0x1

    .line 150
    iput v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    .line 152
    invoke-virtual {p0, v7}, Lcom/android/server/job/controllers/ConnectivityController;->isNetworkAvailable(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 155
    move-result v8

    .line 156
    if-eqz v8, :cond_3

    .line 158
    iget v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    .line 160
    add-int/lit8 v8, v8, 0x1

    .line 162
    iput v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    .line 164
    :cond_3
    iget-wide v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    .line 166
    iget-wide v10, v7, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 168
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 171
    move-result-wide v8

    .line 172
    iput-wide v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    .line 174
    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 177
    move-result v8

    .line 178
    if-nez v8, :cond_5

    .line 180
    iget-boolean v8, v7, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    .line 182
    if-eqz v8, :cond_4

    .line 184
    goto :goto_2

    .line 185
    :cond_4
    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 188
    move-result v8

    .line 189
    if-eqz v8, :cond_6

    .line 191
    iget-wide v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestUIJEnqueueTime:J

    .line 193
    iget-wide v10, v7, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 195
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 198
    move-result-wide v8

    .line 199
    iput-wide v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestUIJEnqueueTime:J

    .line 201
    goto :goto_3

    .line 202
    :cond_5
    :goto_2
    iget-wide v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    .line 204
    iget-wide v10, v7, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 206
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 209
    move-result-wide v8

    .line 210
    iput-wide v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    .line 212
    :cond_6
    :goto_3
    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 215
    move-result v8

    .line 216
    if-nez v8, :cond_9

    .line 218
    iget-boolean v8, v7, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    .line 220
    if-eqz v8, :cond_7

    .line 222
    goto :goto_4

    .line 223
    :cond_7
    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 226
    move-result v7

    .line 227
    if-eqz v7, :cond_8

    .line 229
    iget v7, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numUIJs:I

    .line 231
    add-int/lit8 v7, v7, 0x1

    .line 233
    iput v7, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numUIJs:I

    .line 235
    goto :goto_5

    .line 236
    :cond_8
    iget v7, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRegular:I

    .line 238
    add-int/lit8 v7, v7, 0x1

    .line 240
    iput v7, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRegular:I

    .line 242
    goto :goto_5

    .line 243
    :cond_9
    :goto_4
    iget v7, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    .line 245
    add-int/lit8 v7, v7, 0x1

    .line 247
    iput v7, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    .line 249
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 251
    goto :goto_1

    .line 252
    :cond_a
    iput-wide v2, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->lastUpdatedElapsed:J

    .line 254
    :cond_b
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    .line 256
    check-cast v5, Ljava/util/ArrayList;

    .line 258
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    goto :goto_7

    .line 262
    :cond_c
    :goto_6
    iget v4, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    .line 264
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/job/controllers/ConnectivityController;->unregisterDefaultNetworkCallbackLocked(IJ)Z

    .line 267
    :goto_7
    add-int/lit8 v0, v0, 0x1

    .line 269
    goto/16 :goto_0

    .line 271
    :cond_d
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    .line 273
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStatsComparator:Lcom/android/server/job/controllers/ConnectivityController$1;

    .line 275
    check-cast v0, Ljava/util/ArrayList;

    .line 277
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 280
    new-instance v0, Landroid/util/ArraySet;

    .line 282
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 285
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    .line 287
    check-cast v1, Ljava/util/ArrayList;

    .line 289
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 292
    move-result v1

    .line 293
    add-int/lit8 v1, v1, -0x1

    .line 295
    :goto_8
    if-ltz v1, :cond_11

    .line 297
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    .line 299
    check-cast v4, Ljava/util/ArrayList;

    .line 301
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 304
    move-result-object v4

    .line 305
    check-cast v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 307
    const/16 v5, 0x7d

    .line 309
    if-lt v1, v5, :cond_e

    .line 311
    iget v5, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    .line 313
    invoke-virtual {p0, v5, v2, v3}, Lcom/android/server/job/controllers/ConnectivityController;->unregisterDefaultNetworkCallbackLocked(IJ)Z

    .line 316
    move-result v5

    .line 317
    if-eqz v5, :cond_10

    .line 319
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    .line 321
    iget v4, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    .line 323
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 326
    move-result-object v4

    .line 327
    check-cast v4, Landroid/util/ArraySet;

    .line 329
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 332
    goto :goto_9

    .line 333
    :cond_e
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    .line 335
    iget v6, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    .line 337
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 340
    move-result-object v5

    .line 341
    check-cast v5, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    .line 343
    if-nez v5, :cond_10

    .line 345
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mDefaultNetworkCallbackPool:Landroid/util/Pools$Pool;

    .line 347
    check-cast v5, Landroid/util/Pools$SimplePool;

    .line 349
    invoke-virtual {v5}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    .line 352
    move-result-object v5

    .line 353
    check-cast v5, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    .line 355
    if-nez v5, :cond_f

    .line 357
    new-instance v5, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    .line 359
    invoke-direct {v5, p0}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    .line 362
    :cond_f
    iget v4, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    .line 364
    iput v4, v5, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    .line 366
    const/4 v6, 0x0

    .line 367
    iput-object v6, v5, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    .line 369
    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    .line 371
    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 374
    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    .line 376
    iget-object v7, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    .line 378
    invoke-virtual {v6, v4, v5, v7}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallbackForUid(ILandroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 381
    :cond_10
    :goto_9
    add-int/lit8 v1, v1, -0x1

    .line 383
    goto :goto_8

    .line 384
    :cond_11
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 387
    move-result v1

    .line 388
    if-lez v1, :cond_12

    .line 390
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 392
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 395
    :cond_12
    :goto_a
    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x1

    .line 6
    if-nez v0, :cond_1

    .line 8
    const-string v0, "JobScheduler.Connectivity"

    .line 10
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    move v0, v3

    .line 20
    :goto_1
    sput-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 22
    new-instance v0, Landroid/util/SparseIntArray;

    .line 24
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 27
    sput-object v0, Lcom/android/server/job/controllers/ConnectivityController;->sNetworkTransportAffinities:Landroid/util/SparseIntArray;

    .line 29
    const/4 v4, 0x2

    .line 30
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    const/16 v1, 0xa

    .line 38
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/FlexibilityController;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 4
    new-instance p1, Landroid/util/SparseArray;

    .line 6
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    .line 11
    new-instance p1, Landroid/util/SparseArray;

    .line 13
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    .line 18
    new-instance p1, Landroid/util/ArrayMap;

    .line 20
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    .line 25
    new-instance p1, Landroid/util/SparseArray;

    .line 27
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    .line 32
    new-instance p1, Lcom/android/server/job/controllers/ConnectivityController$1;

    .line 34
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStatsComparator:Lcom/android/server/job/controllers/ConnectivityController$1;

    .line 39
    new-instance p1, Landroid/util/SparseArray;

    .line 41
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    .line 46
    new-instance p1, Landroid/util/Pools$SimplePool;

    .line 48
    const/16 v0, 0x7d

    .line 50
    invoke-direct {p1, v0}, Landroid/util/Pools$SimplePool;-><init>(I)V

    .line 53
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mDefaultNetworkCallbackPool:Landroid/util/Pools$Pool;

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    .line 57
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    .line 62
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 64
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    .line 69
    new-instance p1, Landroid/util/SparseArray;

    .line 71
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    .line 76
    new-instance p1, Lcom/android/server/job/controllers/ConnectivityController$2;

    .line 78
    const/4 v0, 0x0

    .line 79
    invoke-direct {p1, p0, v0}, Lcom/android/server/job/controllers/ConnectivityController$2;-><init>(Lcom/android/server/job/controllers/ConnectivityController;I)V

    .line 82
    new-instance v0, Lcom/android/server/job/controllers/ConnectivityController$2;

    .line 84
    const/4 v1, 0x1

    .line 85
    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/ConnectivityController$2;-><init>(Lcom/android/server/job/controllers/ConnectivityController;I)V

    .line 88
    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mDefaultNetworkCallback:Lcom/android/server/job/controllers/ConnectivityController$2;

    .line 90
    new-instance v0, Lcom/android/server/job/controllers/ConnectivityController$4;

    .line 92
    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/ConnectivityController$4;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    .line 95
    new-instance v1, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    .line 97
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 104
    move-result-object v2

    .line 105
    invoke-direct {v1, p0, v2}, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;-><init>(Lcom/android/server/job/controllers/ConnectivityController;Landroid/os/Looper;)V

    .line 108
    iput-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    .line 110
    new-instance v1, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    .line 112
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v2, 0x0

    .line 116
    iput-boolean v2, v1, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mFlexIsEnabled:Z

    .line 118
    iput-boolean v2, v1, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mShouldReprocessNetworkCapabilities:Z

    .line 120
    iput-boolean v2, v1, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

    .line 122
    const-wide/16 v2, 0x2710

    .line 124
    iput-wide v2, v1, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_EXPIRATION_MS:J

    .line 126
    const-wide/32 v2, 0x1c61a0

    .line 129
    iput-wide v2, v1, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_MAX_WAIT_TIME_MS:J

    .line 131
    iput-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    .line 133
    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 135
    const-class v2, Landroid/net/ConnectivityManager;

    .line 137
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 140
    move-result-object v1

    .line 141
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 143
    iput-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    .line 145
    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 147
    const-class v3, Landroid/net/NetworkPolicyManager;

    .line 149
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 152
    move-result-object v2

    .line 153
    check-cast v2, Landroid/net/NetworkPolicyManager;

    .line 155
    iput-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 157
    const-class v3, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 159
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 162
    move-result-object v3

    .line 163
    check-cast v3, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 165
    iput-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 167
    iput-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    .line 169
    new-instance p2, Landroid/net/NetworkRequest$Builder;

    .line 171
    invoke-direct {p2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 174
    invoke-virtual {p2}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    .line 177
    move-result-object p2

    .line 178
    invoke-virtual {p2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 181
    move-result-object p2

    .line 182
    invoke-virtual {v1, p2, p1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 185
    invoke-virtual {v2, v0}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 188
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 193
    move-result-object p0

    .line 194
    const-string p1, "android.hardware.type.watch"

    .line 196
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 199
    move-result p0

    .line 200
    if-eqz p0, :cond_0

    .line 202
    sget-object p0, Lcom/android/server/job/controllers/ConnectivityController;->sNetworkTransportAffinities:Landroid/util/SparseIntArray;

    .line 204
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    .line 207
    :cond_0
    return-void
.end method

.method public static calculateTransferTimeMs(JJ)J
    .locals 4

    .line 1
    const-wide/16 v0, -0x1

    .line 3
    cmp-long v2, p0, v0

    .line 5
    if-eqz v2, :cond_1

    .line 7
    const-wide/16 v2, 0x0

    .line 9
    cmp-long v2, p2, v2

    .line 11
    if-gtz v2, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-wide/16 v0, 0x3e8

    .line 16
    mul-long/2addr p0, v0

    .line 17
    mul-long/2addr p2, v0

    .line 18
    const-wide/16 v0, 0x8

    .line 20
    div-long/2addr p2, v0

    .line 21
    div-long/2addr p0, p2

    .line 22
    return-wide p0

    .line 23
    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static copyCapabilities(Landroid/net/NetworkRequest;)Landroid/net/NetworkCapabilities$Builder;
    .locals 6

    .line 1
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    .line 3
    invoke-direct {v0}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/net/NetworkRequest;->getTransportTypes()[I

    .line 9
    move-result-object v1

    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    :goto_0
    if-ge v4, v2, :cond_0

    .line 15
    aget v5, v1, v4

    .line 17
    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    .line 20
    add-int/lit8 v4, v4, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkRequest;->getCapabilities()[I

    .line 26
    move-result-object p0

    .line 27
    array-length v1, p0

    .line 28
    :goto_1
    if-ge v3, v1, :cond_1

    .line 30
    aget v2, p0, v3

    .line 32
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 9
    const-class v0, Lcom/android/server/job/controllers/ConnectivityController;

    .line 11
    const-string v0, "ConnectivityController"

    .line 13
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 16
    const-string v0, ":"

    .line 18
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 24
    iget-boolean v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

    .line 26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    move-result-object v0

    .line 30
    const-string/jumbo v1, "conn_avoid_undefined_transport_affinity"

    .line 33
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 40
    iget-wide v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_EXPIRATION_MS:J

    .line 42
    const-string/jumbo v2, "conn_network_activation_expiration_ms"

    .line 45
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 48
    iget-wide v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_MAX_WAIT_TIME_MS:J

    .line 50
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    move-result-object p0

    .line 54
    const-string/jumbo v0, "conn_network_activation_max_wait_time_ms"

    .line 57
    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 64
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 67
    return-void
.end method

.method public final dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3
    const-string v2, "Aconfig flags:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 5
    invoke-static {}, Lcom/android/server/job/Flags;->relaxPrefetchConnectivityConstraintOnlyOnCharger()Z

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    const-string/jumbo v3, "com.android.server.job.relax_prefetch_connectivity_constraint_only_on_charger"

    invoke-virtual {p1, v3, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 7
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 8
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 9
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 10
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 11
    const-string v2, "Requested standby exceptions:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move v2, v3

    .line 12
    :goto_0
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 13
    const-string v4, " "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 14
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 15
    const-string v4, " ("

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 16
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 17
    const-string v4, " jobs)"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 19
    :cond_1
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const-string v4, ": "

    if-lez v2, :cond_3

    .line 20
    const-string v2, "Available networks:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v3

    .line 22
    :goto_1
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 23
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 25
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 26
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_2

    .line 27
    :cond_3
    const-string v2, "No available networks"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 28
    :goto_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 29
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 30
    const-string v2, "Subscription ID signal strengths:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v3

    .line 32
    :goto_3
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 33
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 34
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 35
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;

    iget v5, v5, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;->signalStrength:I

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 36
    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_4

    .line 37
    :cond_5
    const-string v2, "No cached signal strengths"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 38
    :goto_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 39
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 40
    const-string v2, "Background metered allowed: "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 41
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 43
    :cond_6
    const-string v2, "Current default network callbacks:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v3

    .line 45
    :goto_5
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_8

    .line 46
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    sget v6, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->$r8$clinit:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    const-string v6, "UID: "

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 48
    iget v6, v5, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 49
    const-string v6, "; "

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 50
    iget-object v6, v5, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    if-nez v6, :cond_7

    .line 51
    const-string v5, "No network"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    .line 52
    :cond_7
    const-string v6, "Network: "

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 53
    iget-object v6, v5, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 54
    const-string v6, " (blocked="

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 55
    iget v5, v5, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mBlockedReasons:I

    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->blockedReasonsToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 56
    const-string v5, ")"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 57
    :goto_6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 58
    :cond_8
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 59
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 60
    const-string v2, "UID Pecking Order:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v3

    .line 62
    :goto_7
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_9

    .line 63
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 64
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 65
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    const-string v6, "UidStats{"

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 67
    iget v6, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "uid"

    invoke-virtual {p1, v7, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 68
    iget v6, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "pri"

    invoke-virtual {p1, v7, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 69
    iget-object v6, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "#run"

    invoke-virtual {p1, v7, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 70
    iget v6, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "#readyWithConn"

    invoke-virtual {p1, v7, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 71
    iget v6, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "#netAvail"

    invoke-virtual {p1, v7, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 72
    iget v6, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "#EJs"

    invoke-virtual {p1, v7, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 73
    iget v6, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRegular:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "#reg"

    invoke-virtual {p1, v7, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 74
    iget-wide v6, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, "earliestEnqueue"

    invoke-virtual {p1, v7, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 75
    iget-wide v6, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, "earliestEJEnqueue"

    invoke-virtual {p1, v7, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 76
    iget-wide v6, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestUIJEnqueueTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, "earliestUIJEnqueue"

    invoke-virtual {p1, v7, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 77
    const-string/jumbo v6, "updated="

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 78
    iget-wide v5, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->lastUpdatedElapsed:J

    sub-long/2addr v5, v0

    invoke-static {v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 79
    const-string/jumbo v5, "}"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 80
    :cond_9
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 81
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    move v0, v3

    .line 82
    :goto_8
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 83
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    move v2, v3

    .line 84
    :goto_9
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v2, v5, :cond_b

    .line 85
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 86
    invoke-virtual {p2, v5}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_a

    .line 87
    :cond_a
    const-string v6, "#"

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v5, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 89
    const-string v6, " from "

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 90
    iget v6, v5, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-static {p1, v6}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 91
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 92
    iget-object v5, v5, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 93
    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_c
    return-void
.end method

.method public final dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 13

    const-wide v0, 0x20b00000004L

    .line 95
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000003L

    .line 96
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const/4 v4, 0x0

    move v5, v4

    .line 97
    :goto_0
    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 98
    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    .line 99
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    const-wide v7, 0x20500000003L

    .line 100
    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v4

    .line 101
    :goto_1
    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 102
    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    move v7, v4

    .line 103
    :goto_2
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 104
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    .line 105
    invoke-virtual {p2, v8}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_3

    :cond_1
    const-wide v9, 0x20b00000002L

    .line 106
    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    const-wide v11, 0x10b00000001L

    .line 107
    invoke-virtual {v8, p1, v11, v12}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v11, 0x10500000002L

    .line 108
    iget v8, v8, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {p1, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 109
    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 110
    :cond_3
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 111
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 10
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 20
    move-result v1

    .line 21
    const/high16 v3, 0x10000000

    .line 23
    if-nez v1, :cond_4

    .line 25
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 38
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_3

    .line 44
    :cond_2
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 46
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_5

    .line 52
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_5

    .line 58
    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_5

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)V

    .line 67
    goto :goto_1

    .line 68
    :cond_4
    :goto_0
    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_5

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)V

    .line 77
    :cond_5
    :goto_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/job/controllers/StateController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    .line 80
    move-result v1

    .line 81
    const-string/jumbo v3, "evaluateStateLocked finds job "

    .line 84
    const-string v4, "JobScheduler.Connectivity"

    .line 86
    if-eqz v1, :cond_7

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->isNetworkAvailable(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_7

    .line 94
    sget-boolean v1, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 96
    if-eqz v1, :cond_6

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    const-string v3, " would be ready."

    .line 108
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v1

    .line 115
    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_6
    iget v1, v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    .line 120
    add-int/2addr v1, v2

    .line 121
    iput v1, v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->requestStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 126
    goto :goto_2

    .line 127
    :cond_7
    sget-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 129
    if-eqz v0, :cond_8

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    .line 133
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    const-string v1, " would not be ready."

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object v0

    .line 148
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->maybeRevokeStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 154
    :goto_2
    return-void
.end method

.method public getCcConfig()Lcom/android/server/job/controllers/ConnectivityController$CcConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    .line 3
    return-object p0
.end method

.method public final getNetworkLocked(Lcom/android/server/job/controllers/JobStatus;)Landroid/net/Network;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    .line 3
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 14
    return-object v1

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    .line 17
    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 19
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 25
    iget p0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    .line 27
    const/16 v3, 0x1e

    .line 29
    const v4, -0x30048

    .line 32
    const-string v5, "JobScheduler.Connectivity"

    .line 34
    if-ge p0, v3, :cond_7

    .line 36
    iget-object p0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 38
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getFlags()I

    .line 41
    move-result p0

    .line 42
    and-int/lit8 p0, p0, 0x1

    .line 44
    if-eqz p0, :cond_1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_2

    .line 53
    sget-boolean p0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 55
    if-eqz p0, :cond_8

    .line 57
    const-string p0, "Using UI bypass for "

    .line 59
    invoke-static {v2, p0, v5}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 66
    move-result p0

    .line 67
    if-nez p0, :cond_5

    .line 69
    iget-boolean p0, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    .line 71
    if-eqz p0, :cond_3

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    sget-boolean p0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 76
    if-eqz p0, :cond_4

    .line 78
    const-string p0, "Using BG bypass for "

    .line 80
    invoke-static {v2, p0, v5}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_4
    const/16 v4, -0x41

    .line 85
    goto :goto_2

    .line 86
    :cond_5
    :goto_0
    sget-boolean p0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 88
    if-eqz p0, :cond_6

    .line 90
    const-string p0, "Using EJ bypass for "

    .line 92
    invoke-static {v2, p0, v5}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_6
    const/16 v4, -0x48

    .line 97
    goto :goto_2

    .line 98
    :cond_7
    :goto_1
    sget-boolean p0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 100
    if-eqz p0, :cond_8

    .line 102
    const-string p0, "Using FG bypass for "

    .line 104
    invoke-static {v2, p0, v5}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_8
    :goto_2
    iget p0, v0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mBlockedReasons:I

    .line 109
    and-int/2addr p0, v4

    .line 110
    if-nez p0, :cond_9

    .line 112
    iget-object v1, v0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    .line 114
    :cond_9
    return-object v1
.end method

.method public final getNetworkMetadata(Landroid/net/Network;)Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    .line 10
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    .line 16
    monitor-exit v0

    .line 17
    return-object p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 9
    if-nez v0, :cond_1

    .line 11
    if-eqz p3, :cond_0

    .line 13
    new-instance p3, Ljava/lang/StringBuilder;

    .line 15
    const-string v0, "UidStats was null after job for "

    .line 17
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string p2, " was registered"

    .line 25
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 32
    const-string p3, "JobScheduler.Connectivity"

    .line 34
    invoke-static {p3, p2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    new-instance v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 39
    invoke-direct {v0, p1}, Lcom/android/server/job/controllers/ConnectivityController$UidStats;-><init>(I)V

    .line 42
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    .line 44
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 47
    :cond_1
    return-object v0
.end method

.method public final isNetworkAvailable(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    .line 8
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 11
    move-result v3

    .line 12
    if-ge v2, v3, :cond_3

    .line 14
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    .line 16
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Landroid/net/Network;

    .line 22
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    .line 24
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    .line 30
    if-nez v4, :cond_0

    .line 32
    const/4 v4, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget-object v4, v4, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 36
    :goto_1
    iget-object v5, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 38
    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/server/job/controllers/ConnectivityController;->isSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    .line 41
    move-result v5

    .line 42
    sget-boolean v6, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 44
    if-eqz v6, :cond_1

    .line 46
    const-string v6, "JobScheduler.Connectivity"

    .line 48
    new-instance v7, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const-string/jumbo v8, "isNetworkAvailable("

    .line 56
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    const-string v8, ") with network "

    .line 64
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    const-string v3, " and capabilities "

    .line 72
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    const-string v3, ". Satisfied="

    .line 80
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v3

    .line 90
    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    goto :goto_2

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    goto :goto_3

    .line 96
    :cond_1
    :goto_2
    if-eqz v5, :cond_2

    .line 98
    monitor-exit v0

    .line 99
    const/4 p0, 0x1

    .line 100
    return p0

    .line 101
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 103
    goto :goto_0

    .line 104
    :cond_3
    monitor-exit v0

    .line 105
    return v1

    .line 106
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    throw p0
.end method

.method public isNetworkInStateForJobRunLocked(Landroid/net/Network;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 12
    return v1

    .line 13
    :cond_0
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide v2

    .line 22
    iget-wide v4, v0, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->defaultNetworkActivationLastConfirmedTimeElapsed:J

    .line 24
    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    .line 26
    iget-wide v7, v6, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_EXPIRATION_MS:J

    .line 28
    add-long/2addr v7, v4

    .line 29
    cmp-long v7, v7, v2

    .line 31
    const/4 v8, 0x1

    .line 32
    if-lez v7, :cond_1

    .line 34
    return v8

    .line 35
    :cond_1
    iget-wide v9, v0, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->capabilitiesFirstAcquiredTimeElapsed:J

    .line 37
    iget-wide v6, v6, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_MAX_WAIT_TIME_MS:J

    .line 39
    sub-long v6, v2, v6

    .line 41
    cmp-long v9, v9, v6

    .line 43
    if-gez v9, :cond_2

    .line 45
    cmp-long v4, v4, v6

    .line 47
    if-gez v4, :cond_2

    .line 49
    move v4, v8

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    move v4, v1

    .line 52
    :goto_0
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSystemDefaultNetwork:Landroid/net/Network;

    .line 54
    if-nez v5, :cond_3

    .line 56
    return v4

    .line 57
    :cond_3
    invoke-virtual {v5, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v5

    .line 61
    if-nez v5, :cond_9

    .line 63
    iget-object v0, v0, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 65
    if-eqz v0, :cond_8

    .line 67
    const/4 v1, 0x4

    .line 68
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_8

    .line 74
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getUnderlyingNetworks()Ljava/util/List;

    .line 77
    move-result-object v0

    .line 78
    if-nez v0, :cond_4

    .line 80
    return v4

    .line 81
    :cond_4
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSystemDefaultNetwork:Landroid/net/Network;

    .line 83
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_6

    .line 89
    sget-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 91
    if-eqz v0, :cond_5

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    const-string v1, "Substituting system default network "

    .line 97
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSystemDefaultNetwork:Landroid/net/Network;

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, " for VPN "

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object p1

    .line 117
    const-string v0, "JobScheduler.Connectivity"

    .line 119
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_5
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSystemDefaultNetwork:Landroid/net/Network;

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->isNetworkInStateForJobRunLocked(Landroid/net/Network;)Z

    .line 127
    move-result p0

    .line 128
    return p0

    .line 129
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 132
    move-result p1

    .line 133
    sub-int/2addr p1, v8

    .line 134
    :goto_1
    if-ltz p1, :cond_8

    .line 136
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Landroid/net/Network;

    .line 142
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->isNetworkInStateForJobRunLocked(Landroid/net/Network;)Z

    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_7

    .line 148
    return v8

    .line 149
    :cond_7
    add-int/lit8 p1, p1, -0x1

    .line 151
    goto :goto_1

    .line 152
    :cond_8
    return v4

    .line 153
    :cond_9
    iget-wide v5, v0, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->defaultNetworkActivationLastCheckTimeElapsed:J

    .line 155
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    .line 157
    iget-wide v9, p1, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_EXPIRATION_MS:J

    .line 159
    add-long/2addr v9, v5

    .line 160
    cmp-long p1, v9, v2

    .line 162
    if-gez p1, :cond_c

    .line 164
    iget-wide v9, v0, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->defaultNetworkActivationLastConfirmedTimeElapsed:J

    .line 166
    cmp-long p1, v5, v9

    .line 168
    if-lez p1, :cond_a

    .line 170
    return v4

    .line 171
    :cond_a
    iput-wide v2, v0, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->defaultNetworkActivationLastCheckTimeElapsed:J

    .line 173
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    .line 175
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->isDefaultNetworkActive()Z

    .line 178
    move-result p0

    .line 179
    if-eqz p0, :cond_b

    .line 181
    iput-wide v2, v0, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->defaultNetworkActivationLastConfirmedTimeElapsed:J

    .line 183
    return v8

    .line 184
    :cond_b
    return v4

    .line 185
    :cond_c
    return v1
.end method

.method public isSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    move-object/from16 v3, p3

    .line 9
    move-object/from16 v4, p4

    .line 11
    if-eqz v2, :cond_0

    .line 13
    if-nez v3, :cond_1

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    goto/16 :goto_10

    .line 18
    :cond_1
    const/16 v6, 0x15

    .line 20
    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 23
    move-result v6

    .line 24
    if-eqz v6, :cond_30

    .line 26
    iget-object v6, v0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 28
    invoke-virtual {v6, v1}, Lcom/android/server/job/JobSchedulerService;->getMaxJobExecutionTimeMs(Lcom/android/server/job/controllers/JobStatus;)J

    .line 31
    move-result-wide v7

    .line 32
    iget-wide v9, v1, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    .line 34
    const-wide/16 v11, -0x1

    .line 36
    cmp-long v13, v9, v11

    .line 38
    const-string/jumbo v14, "ms to run; that\'s insane!"

    .line 41
    const-string/jumbo v15, "ms and job has "

    .line 44
    const-string v5, " kbps network would take "

    .line 46
    const-string v11, "JobScheduler.Connectivity"

    .line 48
    const-wide/16 v16, 0x0

    .line 50
    if-eqz v13, :cond_5

    .line 52
    invoke-virtual/range {p3 .. p3}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    .line 55
    move-result v6

    .line 56
    int-to-long v12, v6

    .line 57
    cmp-long v6, v12, v16

    .line 59
    const-string v2, " bytes over "

    .line 61
    const-string v4, "Minimum chunk "

    .line 63
    if-lez v6, :cond_2

    .line 65
    invoke-static {v9, v10, v12, v13}, Lcom/android/server/job/controllers/ConnectivityController;->calculateTransferTimeMs(JJ)J

    .line 68
    move-result-wide v0

    .line 69
    cmp-long v6, v0, v7

    .line 71
    if-lez v6, :cond_2

    .line 73
    invoke-static {v4, v9, v10, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 80
    invoke-static {v2, v5, v0, v1, v15}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 83
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    const/4 v0, 0x0

    .line 97
    goto/16 :goto_2

    .line 99
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    .line 102
    move-result v0

    .line 103
    int-to-long v0, v0

    .line 104
    cmp-long v6, v0, v16

    .line 106
    if-lez v6, :cond_3

    .line 108
    invoke-static {v9, v10, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->calculateTransferTimeMs(JJ)J

    .line 111
    move-result-wide v12

    .line 112
    cmp-long v6, v12, v7

    .line 114
    if-lez v6, :cond_3

    .line 116
    invoke-static {v4, v9, v10, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 123
    invoke-static {v2, v5, v12, v13, v15}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 126
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 136
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    goto :goto_0

    .line 140
    :cond_3
    :goto_1
    move-object/from16 v0, p1

    .line 142
    :cond_4
    const/16 v1, 0xb

    .line 144
    goto/16 :goto_3

    .line 146
    :cond_5
    const/16 v0, 0xb

    .line 148
    invoke-virtual {v3, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_6

    .line 154
    invoke-virtual {v6}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_6

    .line 160
    goto :goto_1

    .line 161
    :cond_6
    move-object/from16 v0, p1

    .line 163
    iget-wide v1, v0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 165
    const-wide/16 v9, -0x1

    .line 167
    cmp-long v4, v1, v9

    .line 169
    const-string v6, "Estimated "

    .line 171
    if-eqz v4, :cond_7

    .line 173
    invoke-virtual/range {p3 .. p3}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    .line 176
    move-result v4

    .line 177
    int-to-long v9, v4

    .line 178
    cmp-long v4, v9, v16

    .line 180
    if-lez v4, :cond_7

    .line 182
    invoke-static {v1, v2, v9, v10}, Lcom/android/server/job/controllers/ConnectivityController;->calculateTransferTimeMs(JJ)J

    .line 185
    move-result-wide v12

    .line 186
    cmp-long v4, v12, v7

    .line 188
    if-lez v4, :cond_7

    .line 190
    const-string v0, " download bytes over "

    .line 192
    invoke-static {v6, v1, v2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 199
    invoke-static {v0, v5, v12, v13, v15}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 202
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    move-result-object v0

    .line 212
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    goto :goto_0

    .line 216
    :cond_7
    iget-wide v1, v0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 218
    const-wide/16 v9, -0x1

    .line 220
    cmp-long v4, v1, v9

    .line 222
    if-eqz v4, :cond_4

    .line 224
    invoke-virtual/range {p3 .. p3}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    .line 227
    move-result v4

    .line 228
    int-to-long v9, v4

    .line 229
    cmp-long v4, v9, v16

    .line 231
    if-lez v4, :cond_4

    .line 233
    invoke-static {v1, v2, v9, v10}, Lcom/android/server/job/controllers/ConnectivityController;->calculateTransferTimeMs(JJ)J

    .line 236
    move-result-wide v12

    .line 237
    cmp-long v4, v12, v7

    .line 239
    if-lez v4, :cond_4

    .line 241
    const-string v0, " upload bytes over "

    .line 243
    invoke-static {v6, v1, v2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 250
    invoke-static {v0, v5, v12, v13, v15}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 253
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    move-result-object v0

    .line 263
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    goto/16 :goto_0

    .line 268
    :goto_2
    return v0

    .line 269
    :goto_3
    invoke-virtual {v3, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 272
    move-result v2

    .line 273
    const/4 v1, 0x4

    .line 274
    const/4 v4, 0x1

    .line 275
    if-nez v2, :cond_8

    .line 277
    const/16 v2, 0x19

    .line 279
    invoke-virtual {v3, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 282
    move-result v2

    .line 283
    if-eqz v2, :cond_9

    .line 285
    :cond_8
    move-object/from16 v5, p0

    .line 287
    goto :goto_5

    .line 288
    :cond_9
    iget v2, v0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 290
    move-object/from16 v5, p0

    .line 292
    iget-object v6, v5, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 294
    invoke-virtual {v6, v2}, Lcom/android/server/job/JobSchedulerService;->getUidProcState(I)I

    .line 297
    move-result v6

    .line 298
    iget-object v7, v5, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 300
    iget-object v8, v7, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 302
    monitor-enter v8

    .line 303
    :try_start_0
    iget-object v7, v7, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    .line 305
    const/4 v9, 0x0

    .line 306
    invoke-virtual {v7, v2, v9}, Landroid/util/SparseIntArray;->get(II)I

    .line 309
    move-result v7

    .line 310
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    const/4 v8, -0x1

    .line 312
    const/4 v9, 0x6

    .line 313
    if-eq v6, v8, :cond_a

    .line 315
    if-ge v6, v9, :cond_a

    .line 317
    invoke-static {v6, v7}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(II)Z

    .line 320
    move-result v8

    .line 321
    if-eqz v8, :cond_a

    .line 323
    move v8, v4

    .line 324
    goto :goto_4

    .line 325
    :cond_a
    const/4 v8, 0x0

    .line 326
    :goto_4
    sget-boolean v10, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 328
    if-eqz v10, :cond_b

    .line 330
    const-string v11, "JobScheduler.Connectivity"

    .line 332
    new-instance v12, Ljava/lang/StringBuilder;

    .line 334
    const-string v13, "UID "

    .line 336
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    const-string v13, " current state allows metered network="

    .line 344
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 350
    const-string v13, " procState="

    .line 352
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-static {v6}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 358
    move-result-object v6

    .line 359
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string v6, " capabilities="

    .line 364
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-static {v7}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    .line 370
    move-result-object v6

    .line 371
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    move-result-object v6

    .line 378
    invoke-static {v11, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_b
    if-eqz v8, :cond_c

    .line 383
    :goto_5
    move v2, v4

    .line 384
    goto/16 :goto_7

    .line 386
    :cond_c
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 388
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getFlags()I

    .line 391
    move-result v6

    .line 392
    and-int/2addr v6, v4

    .line 393
    if-eqz v6, :cond_e

    .line 395
    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->getDefaultProcessNetworkCapabilities(I)I

    .line 398
    move-result v6

    .line 399
    or-int/2addr v6, v7

    .line 400
    invoke-static {v1, v6}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(II)Z

    .line 403
    move-result v8

    .line 404
    if-eqz v10, :cond_d

    .line 406
    const-string v11, "JobScheduler.Connectivity"

    .line 408
    new-instance v12, Ljava/lang/StringBuilder;

    .line 410
    const-string v13, "UID "

    .line 412
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 418
    const-string v13, " willBeForeground flag allows metered network="

    .line 420
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 426
    const-string v13, " capabilities="

    .line 428
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-static {v6}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    .line 434
    move-result-object v6

    .line 435
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    move-result-object v6

    .line 442
    invoke-static {v11, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_d
    if-eqz v8, :cond_e

    .line 447
    goto :goto_5

    .line 448
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 451
    move-result v6

    .line 452
    if-eqz v6, :cond_10

    .line 454
    or-int/lit8 v6, v7, 0x20

    .line 456
    invoke-static {v9}, Landroid/net/NetworkPolicyManager;->getDefaultProcessNetworkCapabilities(I)I

    .line 459
    move-result v7

    .line 460
    or-int/2addr v6, v7

    .line 461
    invoke-static {v9, v6}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(II)Z

    .line 464
    move-result v7

    .line 465
    if-eqz v10, :cond_f

    .line 467
    const-string v8, "JobScheduler.Connectivity"

    .line 469
    new-instance v9, Ljava/lang/StringBuilder;

    .line 471
    const-string v11, "UID "

    .line 473
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 479
    const-string v11, " UI job state allows metered network="

    .line 481
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 487
    const-string v11, " capabilities="

    .line 489
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-static {v9, v6, v8}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 495
    :cond_f
    if-eqz v7, :cond_10

    .line 497
    goto :goto_5

    .line 498
    :cond_10
    iget-object v6, v5, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    .line 500
    invoke-virtual {v6, v2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 503
    move-result v6

    .line 504
    if-ltz v6, :cond_11

    .line 506
    iget-object v6, v5, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    .line 508
    invoke-virtual {v6, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 511
    move-result v2

    .line 512
    goto :goto_7

    .line 513
    :cond_11
    iget-object v6, v5, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 515
    invoke-virtual {v6, v2}, Landroid/net/NetworkPolicyManager;->getRestrictBackgroundStatus(I)I

    .line 518
    move-result v6

    .line 519
    const/4 v7, 0x3

    .line 520
    if-eq v6, v7, :cond_12

    .line 522
    move v6, v4

    .line 523
    goto :goto_6

    .line 524
    :cond_12
    const/4 v6, 0x0

    .line 525
    :goto_6
    if-eqz v10, :cond_13

    .line 527
    const-string v7, "JobScheduler.Connectivity"

    .line 529
    new-instance v8, Ljava/lang/StringBuilder;

    .line 531
    const-string v9, "UID "

    .line 533
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 536
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 539
    const-string v9, " allowed in data saver="

    .line 541
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 547
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 550
    move-result-object v8

    .line 551
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_13
    iget-object v7, v5, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    .line 556
    invoke-virtual {v7, v2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 559
    move v2, v6

    .line 560
    goto :goto_7

    .line 561
    :catchall_0
    move-exception v0

    .line 562
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    throw v0

    .line 564
    :goto_7
    if-nez v2, :cond_14

    .line 566
    const/4 v2, 0x0

    .line 567
    return v2

    .line 568
    :cond_14
    const/16 v2, 0x14

    .line 570
    invoke-virtual {v3, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 573
    move-result v2

    .line 574
    if-nez v2, :cond_15

    .line 576
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getFractionRunTime()F

    .line 579
    move-result v2

    .line 580
    move-object/from16 v6, p4

    .line 582
    iget v7, v6, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    .line 584
    cmpg-float v2, v2, v7

    .line 586
    if-gez v2, :cond_16

    .line 588
    move v2, v4

    .line 589
    goto :goto_8

    .line 590
    :cond_15
    move-object/from16 v6, p4

    .line 592
    :cond_16
    const/4 v2, 0x0

    .line 593
    :goto_8
    if-eqz v2, :cond_17

    .line 595
    const/4 v2, 0x0

    .line 596
    return v2

    .line 597
    :cond_17
    const/4 v2, 0x0

    .line 598
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    .line 601
    move-result v7

    .line 602
    const/16 v8, 0x190

    .line 604
    if-lt v7, v8, :cond_19

    .line 606
    :cond_18
    :goto_9
    move v1, v4

    .line 607
    goto/16 :goto_b

    .line 609
    :cond_19
    iget-boolean v8, v6, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_USE_CELL_SIGNAL_STRENGTH:Z

    .line 611
    if-nez v8, :cond_1a

    .line 613
    goto :goto_9

    .line 614
    :cond_1a
    invoke-virtual {v3, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 617
    move-result v8

    .line 618
    if-nez v8, :cond_1b

    .line 620
    goto :goto_9

    .line 621
    :cond_1b
    invoke-virtual {v3, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 624
    move-result v1

    .line 625
    if-eqz v1, :cond_1c

    .line 627
    goto :goto_9

    .line 628
    :cond_1c
    invoke-virtual/range {p3 .. p3}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    .line 631
    move-result-object v1

    .line 632
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 635
    move-result-object v1

    .line 636
    const/4 v2, 0x0

    .line 637
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 640
    move-result v8

    .line 641
    const-string v9, "JobScheduler.Connectivity"

    .line 643
    if-eqz v8, :cond_1e

    .line 645
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 648
    move-result-object v8

    .line 649
    check-cast v8, Ljava/lang/Integer;

    .line 651
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 654
    move-result v8

    .line 655
    iget-object v10, v5, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    .line 657
    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 660
    move-result-object v10

    .line 661
    check-cast v10, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;

    .line 663
    if-eqz v10, :cond_1d

    .line 665
    iget v8, v10, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;->signalStrength:I

    .line 667
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    .line 670
    move-result v2

    .line 671
    goto :goto_a

    .line 672
    :cond_1d
    new-instance v10, Ljava/lang/StringBuilder;

    .line 674
    const-string v11, "Subscription ID "

    .line 676
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 679
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 682
    const-string v8, " doesn\'t have a registered callback"

    .line 684
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 690
    move-result-object v8

    .line 691
    invoke-static {v9, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    goto :goto_a

    .line 695
    :cond_1e
    sget-boolean v1, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 697
    if-eqz v1, :cond_1f

    .line 699
    const-string v1, "Cell signal strength for job="

    .line 701
    invoke-static {v2, v1, v9}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 704
    :cond_1f
    iget-object v1, v5, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 706
    if-gt v2, v4, :cond_24

    .line 708
    const/16 v2, 0x12c

    .line 710
    if-le v7, v2, :cond_20

    .line 712
    goto :goto_9

    .line 713
    :cond_20
    if-ge v7, v2, :cond_22

    .line 715
    :cond_21
    const/4 v1, 0x0

    .line 716
    goto :goto_b

    .line 717
    :cond_22
    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    .line 720
    move-result v2

    .line 721
    if-eqz v2, :cond_23

    .line 723
    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    .line 726
    move-result v1

    .line 727
    if-nez v1, :cond_18

    .line 729
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getFractionRunTime()F

    .line 732
    move-result v1

    .line 733
    iget v2, v6, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    .line 735
    cmpl-float v1, v1, v2

    .line 737
    if-lez v1, :cond_21

    .line 739
    goto/16 :goto_9

    .line 741
    :cond_24
    const/4 v8, 0x2

    .line 742
    if-gt v2, v8, :cond_18

    .line 744
    const/16 v2, 0xc8

    .line 746
    if-lt v7, v2, :cond_25

    .line 748
    goto/16 :goto_9

    .line 750
    :cond_25
    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    .line 753
    move-result v2

    .line 754
    if-eqz v2, :cond_26

    .line 756
    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    .line 759
    move-result v1

    .line 760
    if-eqz v1, :cond_26

    .line 762
    goto/16 :goto_9

    .line 764
    :cond_26
    iget v1, v0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 766
    iget-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 768
    invoke-virtual {v5, v1, v2, v4}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 771
    move-result-object v1

    .line 772
    iget-object v1, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    .line 774
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 777
    move-result v1

    .line 778
    :goto_b
    if-nez v1, :cond_27

    .line 780
    const/4 v1, 0x0

    .line 781
    return v1

    .line 782
    :cond_27
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    .line 785
    move-result v1

    .line 786
    const/4 v2, 0x5

    .line 787
    if-ne v1, v2, :cond_28

    .line 789
    const/high16 v1, 0x1000000

    .line 791
    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 794
    move-result v1

    .line 795
    if-nez v1, :cond_28

    .line 797
    iget-object v1, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 799
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    .line 802
    move-result-object v1

    .line 803
    invoke-static {v1}, Lcom/android/server/job/controllers/ConnectivityController;->copyCapabilities(Landroid/net/NetworkRequest;)Landroid/net/NetworkCapabilities$Builder;

    .line 806
    move-result-object v1

    .line 807
    const/16 v7, 0xb

    .line 809
    invoke-virtual {v1, v7}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 812
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    .line 815
    move-result-object v1

    .line 816
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    .line 819
    move-result v1

    .line 820
    goto :goto_c

    .line 821
    :cond_28
    iget-object v1, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 823
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    .line 826
    move-result-object v1

    .line 827
    invoke-virtual {v1, v3}, Landroid/net/NetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    .line 830
    move-result v1

    .line 831
    :goto_c
    if-eqz v1, :cond_29

    .line 833
    return v4

    .line 834
    :cond_29
    iget-object v1, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 836
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPrefetch()Z

    .line 839
    move-result v1

    .line 840
    if-eqz v1, :cond_2b

    .line 842
    iget v1, v0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 844
    if-ne v1, v2, :cond_2a

    .line 846
    goto :goto_d

    .line 847
    :cond_2a
    iget-wide v1, v0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 849
    cmp-long v7, v1, v16

    .line 851
    if-gtz v7, :cond_2c

    .line 853
    :cond_2b
    :goto_d
    const/4 v0, 0x0

    .line 854
    goto :goto_f

    .line 855
    :cond_2c
    invoke-static {}, Lcom/android/server/job/Flags;->relaxPrefetchConnectivityConstraintOnlyOnCharger()Z

    .line 858
    iget-object v7, v5, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 860
    invoke-virtual {v7}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    .line 863
    move-result v8

    .line 864
    if-eqz v8, :cond_2b

    .line 866
    invoke-virtual {v7}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    .line 869
    move-result v7

    .line 870
    if-nez v7, :cond_2d

    .line 872
    goto :goto_d

    .line 873
    :cond_2d
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 875
    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    .line 878
    move-result-object v7

    .line 879
    invoke-static {v7}, Lcom/android/server/job/controllers/ConnectivityController;->copyCapabilities(Landroid/net/NetworkRequest;)Landroid/net/NetworkCapabilities$Builder;

    .line 882
    move-result-object v7

    .line 883
    const/16 v8, 0xb

    .line 885
    invoke-virtual {v7, v8}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 888
    invoke-virtual {v7}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    .line 891
    move-result-object v7

    .line 892
    invoke-virtual {v7, v3}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    .line 895
    move-result v3

    .line 896
    if-eqz v3, :cond_2b

    .line 898
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getFractionRunTime()F

    .line 901
    move-result v3

    .line 902
    iget v6, v6, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    .line 904
    cmpl-float v3, v3, v6

    .line 906
    if-lez v3, :cond_2b

    .line 908
    iget-object v3, v5, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 910
    move-object/from16 v5, p2

    .line 912
    invoke-virtual {v3, v5, v4}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->getSubscriptionOpportunisticQuota(Landroid/net/Network;I)J

    .line 915
    move-result-wide v5

    .line 916
    iget-wide v7, v0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 918
    const-wide/16 v9, -0x1

    .line 920
    cmp-long v0, v7, v9

    .line 922
    if-nez v0, :cond_2e

    .line 924
    goto :goto_e

    .line 925
    :cond_2e
    move-wide/from16 v16, v7

    .line 927
    :goto_e
    add-long v1, v1, v16

    .line 929
    cmp-long v0, v5, v1

    .line 931
    if-ltz v0, :cond_2b

    .line 933
    move v0, v4

    .line 934
    :goto_f
    if-eqz v0, :cond_2f

    .line 936
    return v4

    .line 937
    :cond_2f
    const/4 v0, 0x0

    .line 938
    return v0

    .line 939
    :cond_30
    const/4 v0, 0x0

    .line 940
    :goto_10
    return v0
.end method

.method public isStandbyExceptionRequestedLocked(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/util/ArraySet;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 14
    move-result p0

    .line 15
    if-lez p0, :cond_0

    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public maybeRevokeStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/ConnectivityController;->isStandbyExceptionRequestedLocked(I)Z

    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/util/ArraySet;

    .line 18
    const-string v2, "JobScheduler.Connectivity"

    .line 20
    if-nez v1, :cond_1

    .line 22
    const-string/jumbo p0, "maybeRevokeStandbyExceptionLocked found null jobs array even though a standby exception has been requested."

    .line 25
    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void

    .line 29
    :cond_1
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_4

    .line 35
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 38
    move-result p1

    .line 39
    if-lez p1, :cond_2

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    sget-boolean p1, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 44
    if-eqz p1, :cond_3

    .line 46
    const-string p1, "Revoking standby exception for UID: "

    .line 48
    invoke-static {v0, p1, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_3
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 53
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-virtual {p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setAppIdleWhitelist(IZ)V

    .line 59
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    .line 61
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 64
    return-void

    .line 65
    :cond_4
    :goto_0
    sget-boolean p0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 67
    if-eqz p0, :cond_5

    .line 69
    new-instance p0, Ljava/lang/StringBuilder;

    .line 71
    const-string/jumbo p1, "maybeRevokeStandbyExceptionLocked not revoking because there are still "

    .line 74
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 80
    move-result p1

    .line 81
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string p1, " jobs left."

    .line 86
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 93
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_5
    return-void
.end method

.method public final maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_2

    .line 7
    iget-object p2, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 9
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 15
    move-result-object p2

    .line 16
    const/high16 v1, 0x10000000

    .line 18
    invoke-virtual {p0, p1, v1}, Lcom/android/server/job/controllers/StateController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 24
    iget v1, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 28
    iput v1, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    .line 30
    :cond_0
    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    .line 32
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Landroid/util/ArraySet;

    .line 38
    if-nez p2, :cond_1

    .line 40
    new-instance p2, Landroid/util/ArraySet;

    .line 42
    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 45
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    .line 47
    invoke-virtual {v1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    :cond_1
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 53
    const/4 p2, 0x2

    .line 54
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)V

    .line 60
    :cond_2
    return-void
.end method

.method public final maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    .line 1
    const/4 p2, 0x2

    .line 2
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    .line 5
    move-result p2

    .line 6
    if-eqz p2, :cond_1

    .line 8
    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    .line 10
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 12
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Landroid/util/ArraySet;

    .line 18
    if-eqz p2, :cond_0

    .line 20
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 23
    :cond_0
    iget-object p2, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 29
    move-result-object p2

    .line 30
    iget v0, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    .line 32
    sub-int/2addr v0, v1

    .line 33
    iput v0, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    .line 35
    iget-object p2, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    .line 37
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->maybeRevokeStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    .line 46
    :cond_1
    return-void
.end method

.method public final onAppRemovedLocked(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 3
    invoke-virtual {p2, p1}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    .line 6
    move-result-object p2

    .line 7
    if-nez p2, :cond_0

    .line 9
    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 14
    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    .line 16
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 19
    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 27
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 35
    move-result-wide v0

    .line 36
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->unregisterDefaultNetworkCallbackLocked(IJ)Z

    .line 39
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    .line 41
    check-cast p1, Ljava/util/ArrayList;

    .line 43
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->registerPendingUidCallbacksLocked()V

    .line 49
    :cond_0
    return-void
.end method

.method public final onBatteryStateChangedLocked()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    return-void
.end method

.method public final onConstantsUpdatedLocked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    .line 3
    iget-boolean v0, v0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mShouldReprocessNetworkCapabilities:Z

    .line 5
    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    .line 9
    iget-object v1, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-boolean v0, v0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    .line 14
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    .line 17
    iget-boolean v1, v1, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mFlexIsEnabled:Z

    .line 19
    if-eq v0, v1, :cond_1

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p0

    .line 25
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lcom/android/server/job/controllers/ConnectivityController$$ExternalSyntheticLambda0;

    .line 31
    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/ConnectivityController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    :cond_1
    return-void
.end method

.method public final onNetworkActive()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSystemDefaultNetwork:Landroid/net/Network;

    .line 6
    if-nez v1, :cond_0

    .line 8
    const-string p0, "JobScheduler.Connectivity"

    .line 10
    const-string v1, "System default network is unknown but active"

    .line 12
    invoke-static {p0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    .line 21
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    .line 27
    if-nez v1, :cond_1

    .line 29
    const-string p0, "JobScheduler.Connectivity"

    .line 31
    const-string v1, "System default network capabilities are unknown but active"

    .line 33
    invoke-static {p0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :cond_1
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 46
    move-result-wide v2

    .line 47
    iput-wide v2, v1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->defaultNetworkActivationLastCheckTimeElapsed:J

    .line 49
    iput-wide v2, v1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->defaultNetworkActivationLastConfirmedTimeElapsed:J

    .line 51
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    .line 53
    const/4 v1, 0x4

    .line 54
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 57
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
.end method

.method public final onUidBiasChangedLocked(III)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 9
    if-eqz p1, :cond_0

    .line 11
    iget p2, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    .line 13
    if-eq p2, p3, :cond_0

    .line 15
    iput p3, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    .line 17
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    .line 20
    :cond_0
    return-void
.end method

.method public final onUserRemovedLocked(I)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 15
    move-result v2

    .line 16
    add-int/lit8 v2, v2, -0x1

    .line 18
    :goto_0
    if-ltz v2, :cond_1

    .line 20
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    .line 22
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 28
    iget v4, v3, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    .line 30
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 33
    move-result v4

    .line 34
    if-ne v4, p1, :cond_0

    .line 36
    iget v4, v3, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    .line 38
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->unregisterDefaultNetworkCallbackLocked(IJ)Z

    .line 41
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    .line 43
    check-cast v4, Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 48
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    .line 50
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 53
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    .line 58
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 61
    move-result v0

    .line 62
    add-int/lit8 v0, v0, -0x1

    .line 64
    :goto_1
    if-ltz v0, :cond_3

    .line 66
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    .line 68
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 71
    move-result v1

    .line 72
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 75
    move-result v1

    .line 76
    if-ne v1, p1, :cond_2

    .line 78
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    .line 80
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 83
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    .line 89
    return-void
.end method

.method public final postAdjustCallbacks()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    .line 3
    const/4 v0, 0x0

    .line 4
    const-wide/16 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 9
    return-void
.end method

.method public final prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 9
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 15
    move-result-object p0

    .line 16
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    .line 18
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_0
    return-void
.end method

.method public final prepareForUpdatedConstantsLocked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mShouldReprocessNetworkCapabilities:Z

    .line 6
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    .line 8
    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    .line 13
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iput-boolean p0, v0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mFlexIsEnabled:Z

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw p0
.end method

.method public final processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const/4 v2, -0x1

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 12
    move-result v3

    .line 13
    sparse-switch v3, :sswitch_data_0

    .line 16
    goto :goto_0

    .line 17
    :sswitch_0
    const-string/jumbo v3, "conn_avoid_undefined_transport_affinity"

    .line 20
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x2

    .line 28
    goto :goto_0

    .line 29
    :sswitch_1
    const-string/jumbo v3, "conn_network_activation_max_wait_time_ms"

    .line 32
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v2, v1

    .line 40
    goto :goto_0

    .line 41
    :sswitch_2
    const-string/jumbo v3, "conn_network_activation_expiration_ms"

    .line 44
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_2

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    move v2, v0

    .line 52
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 55
    goto :goto_1

    .line 56
    :pswitch_0
    invoke-virtual {p1, p2, v0}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 59
    move-result p1

    .line 60
    iget-boolean p2, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

    .line 62
    if-eq p2, p1, :cond_3

    .line 64
    iput-boolean p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mShouldReprocessNetworkCapabilities:Z

    .line 68
    goto :goto_1

    .line 69
    :pswitch_1
    const-wide/32 v2, 0x1c61a0

    .line 72
    invoke-virtual {p1, p2, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 75
    move-result-wide p1

    .line 76
    iget-wide v2, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_MAX_WAIT_TIME_MS:J

    .line 78
    cmp-long v0, v2, p1

    .line 80
    if-eqz v0, :cond_3

    .line 82
    iput-wide p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_MAX_WAIT_TIME_MS:J

    .line 84
    iput-boolean v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mShouldReprocessNetworkCapabilities:Z

    .line 86
    goto :goto_1

    .line 87
    :pswitch_2
    const-wide/16 v0, 0x2710

    .line 89
    invoke-virtual {p1, p2, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 92
    move-result-wide p1

    .line 93
    iget-wide v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_EXPIRATION_MS:J

    .line 95
    cmp-long v0, v0, p1

    .line 97
    if-eqz v0, :cond_3

    .line 99
    iput-wide p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_EXPIRATION_MS:J

    .line 101
    :cond_3
    :goto_1
    return-void

    .line 102
    nop

    .line 103
    :sswitch_data_0
    .sparse-switch
        -0x48c9c28f -> :sswitch_2
        0x1f3fb46e -> :sswitch_1
        0x3c4b114a -> :sswitch_0
    .end sparse-switch

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final reevaluateStateLocked(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/util/ArraySet;

    .line 9
    if-nez p1, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 15
    move-result v0

    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 18
    :goto_0
    if-ltz v0, :cond_1

    .line 20
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 26
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 29
    add-int/lit8 v0, v0, -0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method

.method public final registerPendingUidCallbacksLocked()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    .line 9
    check-cast v1, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v1

    .line 15
    if-ge v1, v0, :cond_0

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    const-string v3, "There are more registered callbacks than sorted UIDs: "

    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v3, " vs "

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    const-string v3, "JobScheduler.Connectivity"

    .line 41
    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    :goto_0
    if-ge v0, v1, :cond_2

    .line 46
    const/16 v2, 0x7d

    .line 48
    if-ge v0, v2, :cond_2

    .line 50
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    .line 52
    check-cast v2, Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 60
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mDefaultNetworkCallbackPool:Landroid/util/Pools$Pool;

    .line 62
    check-cast v3, Landroid/util/Pools$SimplePool;

    .line 64
    invoke-virtual {v3}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    .line 70
    if-nez v3, :cond_1

    .line 72
    new-instance v3, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    .line 74
    invoke-direct {v3, p0}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    .line 77
    :cond_1
    iget v4, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    .line 79
    iput v4, v3, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    .line 81
    const/4 v5, 0x0

    .line 82
    iput-object v5, v3, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    .line 84
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    .line 86
    invoke-virtual {v5, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 89
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    .line 91
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    .line 93
    iget v2, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    .line 95
    invoke-virtual {v4, v2, v3, v5}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallbackForUid(ILandroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    .line 100
    goto :goto_0

    .line 101
    :cond_2
    return-void
.end method

.method public requestStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 4

    .line 1
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/ConnectivityController;->isStandbyExceptionRequestedLocked(I)Z

    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroid/util/ArraySet;

    .line 15
    if-nez v2, :cond_0

    .line 17
    new-instance v2, Landroid/util/ArraySet;

    .line 19
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 22
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    .line 24
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    :cond_0
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 30
    move-result p1

    .line 31
    const-string v2, "JobScheduler.Connectivity"

    .line 33
    if-eqz p1, :cond_3

    .line 35
    if-eqz v1, :cond_1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    sget-boolean p1, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 40
    if-eqz p1, :cond_2

    .line 42
    const-string p1, "Requesting standby exception for UID: "

    .line 44
    invoke-static {v0, p1, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_2
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 49
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 51
    const/4 p1, 0x1

    .line 52
    invoke-virtual {p0, v0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setAppIdleWhitelist(IZ)V

    .line 55
    return-void

    .line 56
    :cond_3
    :goto_0
    sget-boolean p0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 58
    if-eqz p0, :cond_4

    .line 60
    const-string/jumbo p0, "requestStandbyExceptionLocked found exception already requested."

    .line 63
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_4
    return-void
.end method

.method public final startTrackingLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    .line 3
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mDefaultNetworkCallback:Lcom/android/server/job/controllers/ConnectivityController$2;

    .line 5
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerSystemDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 10
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    .line 12
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->addDefaultNetworkActiveListener(Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V

    .line 15
    return-void
.end method

.method public final startTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)V

    .line 10
    :cond_0
    return-void
.end method

.method public final stopTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)V

    .line 10
    :cond_0
    return-void
.end method

.method public final unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 9
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    .line 18
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    .line 24
    :cond_0
    return-void
.end method

.method public final unregisterDefaultNetworkCallbackLocked(IJ)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 18
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    .line 20
    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 23
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mDefaultNetworkCallbackPool:Landroid/util/Pools$Pool;

    .line 25
    check-cast v2, Landroid/util/Pools$SimplePool;

    .line 27
    invoke-virtual {v2, v0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 30
    const/4 v2, 0x0

    .line 31
    iput-object v2, v0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    .line 33
    const/16 v2, -0x2710

    .line 35
    iput v2, v0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    .line 37
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    .line 39
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroid/util/ArraySet;

    .line 45
    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 50
    move-result v0

    .line 51
    add-int/lit8 v0, v0, -0x1

    .line 53
    :goto_0
    if-ltz v0, :cond_1

    .line 55
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    move-object v4, v2

    .line 60
    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 62
    const/4 v7, 0x0

    .line 63
    const/4 v8, 0x0

    .line 64
    move-object v3, p0

    .line 65
    move-wide v5, p2

    .line 66
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;JLandroid/net/Network;Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)Z

    .line 69
    move-result v2

    .line 70
    or-int/2addr v1, v2

    .line 71
    add-int/lit8 v0, v0, -0x1

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    return v1
.end method

.method public final updateAllTrackedJobsLocked(Z)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 4
    iget-wide v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLastAllJobUpdateTimeElapsed:J

    .line 6
    iget-object p1, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 8
    iget-wide v3, p1, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_UPDATE_ALL_JOBS_MIN_INTERVAL_MS:J

    .line 10
    add-long/2addr v1, v3

    .line 11
    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    move-result-wide v3

    .line 20
    sub-long/2addr v1, v3

    .line 21
    const-wide/16 v3, 0x0

    .line 23
    cmp-long p1, v1, v3

    .line 25
    if-lez p1, :cond_0

    .line 27
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {p1, v0, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 33
    move-result-object p1

    .line 34
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    .line 36
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 39
    return-void

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 45
    const/4 p1, -0x1

    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobsLocked(Landroid/net/Network;I)V

    .line 50
    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 58
    move-result-wide v0

    .line 59
    iput-wide v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLastAllJobUpdateTimeElapsed:J

    .line 61
    return-void
.end method

.method public final updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    .line 4
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 7
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/16 v1, 0x7d

    if-lt v0, v1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->registerPendingUidCallbacksLocked()V

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 13
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;JLandroid/net/Network;Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)Z

    return-void

    .line 14
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkLocked(Lcom/android/server/job/controllers/JobStatus;)Landroid/net/Network;

    move-result-object v5

    .line 15
    invoke-virtual {p0, v5}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkMetadata(Landroid/net/Network;)Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    .line 16
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;JLandroid/net/Network;Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)Z

    return-void
.end method

.method public final updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;JLandroid/net/Network;Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p5, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p5, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 18
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {p0, p1, p4, v1, v2}, Lcom/android/server/job/controllers/ConnectivityController;->isSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 19
    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 20
    invoke-virtual {v4, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    .line 21
    invoke-virtual {p0, v4}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkMetadata(Landroid/net/Network;)Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 22
    :cond_1
    iget-object v0, v5, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 23
    :goto_1
    iget-object v5, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 24
    invoke-virtual {p0, p1, v4, v0, v5}, Lcom/android/server/job/controllers/ConnectivityController;->isSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25
    sget-boolean p0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p0, :cond_2

    .line 26
    const-string p0, "JobScheduler.Connectivity"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Not reassigning network from "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p1, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " for running job "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v3

    :cond_3
    const/high16 v0, 0x10000000

    .line 27
    invoke-virtual {p1, v0, p2, p3, v2}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    if-eqz p5, :cond_4

    .line 28
    iget-boolean p5, p5, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->satisfiesTransportAffinities:Z

    if-eqz p5, :cond_4

    move p5, v4

    goto :goto_2

    :cond_4
    move p5, v3

    .line 29
    :goto_2
    iput-boolean p5, p1, Lcom/android/server/job/controllers/JobStatus;->mTransportAffinitiesSatisfied:Z

    .line 30
    iget-boolean p5, p1, Lcom/android/server/job/controllers/JobStatus;->mCanApplyTransportAffinities:Z

    if-eqz p5, :cond_5

    .line 31
    iget-object p5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    .line 32
    invoke-virtual {p5, p1}, Lcom/android/server/job/controllers/FlexibilityController;->isFlexibilitySatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p5

    const/high16 v5, 0x200000

    .line 33
    invoke-virtual {p1, v5, p2, p3, p5}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    :cond_5
    if-nez v0, :cond_7

    if-eqz v2, :cond_7

    .line 34
    iget-object p2, p1, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 35
    invoke-virtual {p2, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 36
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 37
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 38
    monitor-enter p2

    .line 39
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->getRunningJobServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/JobServiceContext;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 41
    invoke-virtual {p0, p4}, Lcom/android/server/job/JobServiceContext;->informOfNetworkChangeLocked(Landroid/net/Network;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 42
    :cond_6
    :goto_3
    monitor-exit p2

    goto :goto_5

    :goto_4
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 43
    :cond_7
    :goto_5
    iput-object p4, p1, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    .line 44
    sget-boolean p0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p0, :cond_a

    .line 45
    const-string p0, "JobScheduler.Connectivity"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Connectivity "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_8

    const-string p3, "CHANGED"

    goto :goto_6

    :cond_8
    const-string/jumbo p3, "unchanged"

    :goto_6
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": usable="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_9

    const/16 p1, 0x15

    .line 46
    invoke-virtual {v1, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_9

    move v3, v4

    .line 47
    :cond_9
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " satisfied="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v0
.end method

.method public final updateTrackedJobsLocked(Landroid/net/Network;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 1
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 3
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobsLocked(Landroid/util/ArraySet;Landroid/net/Network;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobsLocked(Landroid/util/ArraySet;Landroid/net/Network;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Landroid/util/ArraySet;

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 7
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 8
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, p2}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_4
    return-void
.end method

.method public final updateTrackedJobsLocked(Landroid/util/ArraySet;Landroid/net/Network;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 9
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 12
    iget v2, v2, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 13
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    if-nez v1, :cond_1

    return v0

    .line 14
    :cond_1
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 16
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_5

    .line 17
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 18
    invoke-virtual {p0, v3}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkLocked(Lcom/android/server/job/controllers/JobStatus;)Landroid/net/Network;

    move-result-object v6

    if-eqz p2, :cond_3

    .line 19
    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    iget-object v2, v3, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    invoke-static {v2, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 21
    :cond_3
    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkMetadata(Landroid/net/Network;)Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    move-result-object v7

    move-object v2, p0

    move-wide v4, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;JLandroid/net/Network;Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)Z

    move-result v2

    or-int/2addr v0, v2

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    :goto_2
    return v0
.end method

.method public final updateTransportAffinitySatisfaction(Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)Z
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    .line 5
    iget-object v2, v1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-boolean v1, v1, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    .line 10
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v1, :cond_1

    .line 15
    :cond_0
    move p0, v2

    .line 16
    goto :goto_4

    .line 17
    :cond_1
    const-string v1, "JobScheduler.Connectivity"

    .line 19
    if-nez v0, :cond_2

    .line 21
    const-string v0, "Network constraint satisfied with null capabilities"

    .line 23
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    .line 28
    iget-boolean p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

    .line 30
    :goto_0
    xor-int/2addr p0, v2

    .line 31
    goto :goto_4

    .line 32
    :cond_2
    sget-object v4, Lcom/android/server/job/controllers/ConnectivityController;->sNetworkTransportAffinities:Landroid/util/SparseIntArray;

    .line 34
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_3

    .line 40
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    .line 42
    iget-boolean p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    .line 48
    move-result-object v0

    .line 49
    array-length v4, v0

    .line 50
    if-nez v4, :cond_4

    .line 52
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    .line 54
    iget-boolean p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

    .line 56
    goto :goto_0

    .line 57
    :cond_4
    array-length v4, v0

    .line 58
    move v5, v3

    .line 59
    :goto_1
    if-ge v5, v4, :cond_0

    .line 61
    aget v6, v0, v5

    .line 63
    sget-object v7, Lcom/android/server/job/controllers/ConnectivityController;->sNetworkTransportAffinities:Landroid/util/SparseIntArray;

    .line 65
    invoke-virtual {v7, v6, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 68
    move-result v7

    .line 69
    sget-boolean v8, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 71
    if-eqz v8, :cond_5

    .line 73
    const-string/jumbo v8, "satisfiesTransportAffinities transport="

    .line 76
    const-string v9, " aff="

    .line 78
    invoke-static {v6, v7, v8, v9, v1}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_5
    if-eqz v7, :cond_7

    .line 83
    const/4 v6, 0x2

    .line 84
    if-eq v7, v6, :cond_6

    .line 86
    goto :goto_3

    .line 87
    :cond_6
    :goto_2
    move p0, v3

    .line 88
    goto :goto_4

    .line 89
    :cond_7
    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    .line 91
    iget-boolean v6, v6, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

    .line 93
    if-eqz v6, :cond_8

    .line 95
    goto :goto_2

    .line 96
    :cond_8
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 98
    goto :goto_1

    .line 99
    :goto_4
    iget-boolean v0, p1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->satisfiesTransportAffinities:Z

    .line 101
    if-eq v0, p0, :cond_9

    .line 103
    iput-boolean p0, p1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->satisfiesTransportAffinities:Z

    .line 105
    return v2

    .line 106
    :cond_9
    return v3

    .line 107
    :catchall_0
    move-exception p0

    .line 108
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    throw p0
.end method
