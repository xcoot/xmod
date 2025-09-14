.class public final Lcom/android/server/am/UidObserverController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

.field public final mAvailUidChanges:Ljava/util/ArrayList;

.field public final mDispatchRunnable:Lcom/android/server/am/UidObserverController$$ExternalSyntheticLambda0;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mPendingUidChanges:Ljava/util/ArrayList;

.field public mUidChangeDispatchCount:I

.field public final mUidObservers:Landroid/os/RemoteCallbackList;

.field public final mValidateUids:Lcom/android/server/am/ActiveUids;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService$UiHandler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 13
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    .line 32
    const/4 v0, 0x5

    .line 33
    new-array v0, v0, [Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 35
    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 37
    new-instance v0, Lcom/android/server/am/UidObserverController$$ExternalSyntheticLambda0;

    .line 39
    invoke-direct {v0, p0}, Lcom/android/server/am/UidObserverController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/UidObserverController;)V

    .line 42
    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mDispatchRunnable:Lcom/android/server/am/UidObserverController$$ExternalSyntheticLambda0;

    .line 44
    iput-object p1, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance p1, Lcom/android/server/am/ActiveUids;

    .line 48
    const/4 v0, 0x0

    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-direct {p1, v0, v1}, Lcom/android/server/am/ActiveUids;-><init>(Lcom/android/server/am/ActivityManagerService;Z)V

    .line 53
    iput-object p1, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    .line 55
    return-void
.end method

.method public static mergeWithPendingChange(II)I
    .locals 2

    .line 1
    and-int/lit8 v0, p0, 0x6

    .line 3
    if-nez v0, :cond_0

    .line 5
    and-int/lit8 v0, p1, 0x6

    .line 7
    or-int/2addr p0, v0

    .line 8
    :cond_0
    and-int/lit8 v0, p0, 0x18

    .line 10
    if-nez v0, :cond_1

    .line 12
    and-int/lit8 v0, p1, 0x18

    .line 14
    or-int/2addr p0, v0

    .line 15
    :cond_1
    and-int/lit8 v0, p0, 0x1

    .line 17
    if-eqz v0, :cond_2

    .line 19
    and-int/lit8 p0, p0, -0xd

    .line 21
    :cond_2
    and-int/lit8 v0, p1, 0x20

    .line 23
    if-eqz v0, :cond_3

    .line 25
    or-int/lit8 p0, p0, 0x20

    .line 27
    :cond_3
    const/high16 v0, -0x80000000

    .line 29
    and-int v1, p1, v0

    .line 31
    if-eqz v1, :cond_4

    .line 33
    or-int/2addr p0, v0

    .line 34
    :cond_4
    and-int/lit8 p1, p1, 0x40

    .line 36
    if-eqz p1, :cond_5

    .line 38
    or-int/lit8 p0, p0, 0x40

    .line 40
    :cond_5
    return p0
.end method


# virtual methods
.method public dispatchUidsChanged()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v2

    .line 12
    iget-object v3, v0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 14
    array-length v3, v3

    .line 15
    if-ge v3, v2, :cond_0

    .line 17
    new-array v3, v2, [Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 19
    iput-object v3, v0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto/16 :goto_16

    .line 25
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 26
    move v4, v3

    .line 27
    :goto_1
    if-ge v4, v2, :cond_2

    .line 29
    iget-object v5, v0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 37
    iget-object v6, v0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 39
    iget-object v7, v0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 44
    move-result v7

    .line 45
    if-lez v7, :cond_1

    .line 47
    iget-object v8, v0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    .line 49
    add-int/lit8 v7, v7, -0x1

    .line 51
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 54
    move-result-object v7

    .line 55
    check-cast v7, Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    new-instance v7, Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 60
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 63
    :goto_2
    aput-object v7, v6, v4

    .line 65
    iget-object v6, v0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 67
    aget-object v6, v6, v4

    .line 69
    invoke-virtual {v5, v6}, Lcom/android/server/am/UidObserverController$ChangeRecord;->copyTo(Lcom/android/server/am/UidObserverController$ChangeRecord;)V

    .line 72
    iput-boolean v3, v5, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    .line 74
    add-int/lit8 v4, v4, 0x1

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    iget-object v4, v0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 82
    iget v4, v0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    .line 84
    add-int/2addr v4, v2

    .line 85
    iput v4, v0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    .line 87
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    iget-object v1, v0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 90
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 93
    move-result v1

    .line 94
    :goto_3
    add-int/lit8 v4, v1, -0x1

    .line 96
    const/4 v5, 0x1

    .line 97
    if-lez v1, :cond_1c

    .line 99
    iget-object v1, v0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 101
    invoke-virtual {v1, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Landroid/app/IUidObserver;

    .line 107
    iget-object v6, v0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 109
    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 112
    move-result-object v6

    .line 113
    move-object v12, v6

    .line 114
    check-cast v12, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 116
    if-nez v1, :cond_3

    .line 118
    goto/16 :goto_10

    .line 120
    :cond_3
    move v13, v3

    .line 121
    :goto_4
    if-ge v13, v2, :cond_1b

    .line 123
    :try_start_1
    iget-object v6, v0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 125
    aget-object v14, v6, v13

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 130
    move-result-wide v15

    .line 131
    iget v11, v14, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    .line 133
    iget v6, v14, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    .line 135
    iget-object v7, v12, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 137
    if-nez v7, :cond_4

    .line 139
    goto :goto_5

    .line 140
    :cond_4
    invoke-static {v7, v6}, Ljava/util/Arrays;->binarySearch([II)I

    .line 143
    move-result v6

    .line 144
    if-ltz v6, :cond_1a

    .line 146
    :goto_5
    iget v6, v14, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    .line 148
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 151
    move-result v6

    .line 152
    iget v7, v12, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUid:I

    .line 154
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    .line 157
    move-result v7

    .line 158
    if-eq v6, v7, :cond_5

    .line 160
    iget-boolean v6, v12, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCanInteractAcrossUsers:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 162
    if-nez v6, :cond_5

    .line 164
    goto/16 :goto_f

    .line 166
    :cond_5
    iget v9, v12, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    .line 168
    const/high16 v6, -0x80000000

    .line 170
    if-ne v11, v6, :cond_6

    .line 172
    and-int/lit8 v6, v9, 0x1

    .line 174
    if-nez v6, :cond_6

    .line 176
    goto/16 :goto_f

    .line 178
    :cond_6
    const/16 v6, 0x40

    .line 180
    if-ne v11, v6, :cond_7

    .line 182
    and-int/lit8 v6, v9, 0x40

    .line 184
    if-nez v6, :cond_7

    .line 186
    goto/16 :goto_f

    .line 188
    :cond_7
    and-int/lit8 v6, v11, 0x2

    .line 190
    if-eqz v6, :cond_8

    .line 192
    and-int/lit8 v6, v9, 0x4

    .line 194
    if-eqz v6, :cond_9

    .line 196
    :try_start_2
    iget v6, v14, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    .line 198
    iget-boolean v7, v14, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    .line 200
    invoke-interface {v1, v6, v7}, Landroid/app/IUidObserver;->onUidIdle(IZ)V

    .line 203
    goto :goto_6

    .line 204
    :cond_8
    and-int/lit8 v6, v11, 0x4

    .line 206
    if-eqz v6, :cond_9

    .line 208
    and-int/lit8 v6, v9, 0x8

    .line 210
    if-eqz v6, :cond_9

    .line 212
    iget v6, v14, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    .line 214
    invoke-interface {v1, v6}, Landroid/app/IUidObserver;->onUidActive(I)V

    .line 217
    :cond_9
    :goto_6
    and-int/lit8 v6, v9, 0x10

    .line 219
    if-eqz v6, :cond_b

    .line 221
    and-int/lit8 v6, v11, 0x8

    .line 223
    if-eqz v6, :cond_a

    .line 225
    iget v6, v14, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    .line 227
    invoke-interface {v1, v6, v5}, Landroid/app/IUidObserver;->onUidCachedChanged(IZ)V

    .line 230
    goto :goto_7

    .line 231
    :cond_a
    and-int/lit8 v6, v11, 0x10

    .line 233
    if-eqz v6, :cond_b

    .line 235
    iget v6, v14, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    .line 237
    invoke-interface {v1, v6, v3}, Landroid/app/IUidObserver;->onUidCachedChanged(IZ)V

    .line 240
    :cond_b
    :goto_7
    and-int/lit8 v6, v11, 0x1

    .line 242
    const/16 v10, 0x14

    .line 244
    if-eqz v6, :cond_e

    .line 246
    and-int/lit8 v6, v9, 0x2

    .line 248
    if-eqz v6, :cond_c

    .line 250
    iget v6, v14, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    .line 252
    iget-boolean v7, v14, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    .line 254
    invoke-interface {v1, v6, v7}, Landroid/app/IUidObserver;->onUidGone(IZ)V

    .line 257
    :cond_c
    iget-object v6, v12, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    .line 259
    if-eqz v6, :cond_d

    .line 261
    iget v7, v14, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    .line 263
    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->delete(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 266
    :cond_d
    move v5, v10

    .line 267
    goto/16 :goto_e

    .line 269
    :cond_e
    and-int/lit8 v6, v9, 0x1

    .line 271
    if-eqz v6, :cond_13

    .line 273
    iget v6, v12, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCutpoint:I

    .line 275
    if-ltz v6, :cond_12

    .line 277
    :try_start_3
    iget-object v7, v12, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    .line 279
    iget v8, v14, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    .line 281
    const/4 v3, -0x1

    .line 282
    invoke-virtual {v7, v8, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 285
    move-result v7

    .line 286
    if-eq v7, v3, :cond_11

    .line 288
    if-gt v7, v6, :cond_f

    .line 290
    move v3, v5

    .line 291
    goto :goto_8

    .line 292
    :cond_f
    const/4 v3, 0x0

    .line 293
    :goto_8
    iget v7, v14, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    .line 295
    if-gt v7, v6, :cond_10

    .line 297
    move v6, v5

    .line 298
    goto :goto_9

    .line 299
    :cond_10
    const/4 v6, 0x0

    .line 300
    :goto_9
    if-eq v3, v6, :cond_13

    .line 302
    goto :goto_a

    .line 303
    :cond_11
    iget v3, v14, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    .line 305
    if-eq v3, v10, :cond_13

    .line 307
    :cond_12
    :goto_a
    move v3, v5

    .line 308
    goto :goto_b

    .line 309
    :cond_13
    const/4 v3, 0x0

    .line 310
    :goto_b
    and-int/lit8 v6, v9, 0x20

    .line 312
    if-eqz v6, :cond_15

    .line 314
    and-int/lit8 v6, v11, 0x20

    .line 316
    if-eqz v6, :cond_14

    .line 318
    move v6, v5

    .line 319
    goto :goto_c

    .line 320
    :cond_14
    const/4 v6, 0x0

    .line 321
    :goto_c
    or-int/2addr v3, v6

    .line 322
    :cond_15
    if-eqz v3, :cond_17

    .line 324
    iget-object v3, v12, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    .line 326
    if-eqz v3, :cond_16

    .line 328
    iget v6, v14, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    .line 330
    iget v7, v14, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    .line 332
    invoke-virtual {v3, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 335
    :cond_16
    iget v7, v14, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    .line 337
    iget v8, v14, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    .line 339
    move/from16 v17, v11

    .line 341
    iget-wide v10, v14, Lcom/android/server/am/UidObserverController$ChangeRecord;->procStateSeq:J

    .line 343
    iget v6, v14, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    .line 345
    move/from16 v18, v6

    .line 347
    move-object v6, v1

    .line 348
    move v3, v9

    .line 349
    const/16 v5, 0x14

    .line 351
    move-wide v9, v10

    .line 352
    move/from16 v11, v18

    .line 354
    invoke-interface/range {v6 .. v11}, Landroid/app/IUidObserver;->onUidStateChanged(IIJI)V

    .line 357
    goto :goto_d

    .line 358
    :cond_17
    move v3, v9

    .line 359
    move v5, v10

    .line 360
    move/from16 v17, v11

    .line 362
    :goto_d
    and-int/lit8 v3, v3, 0x40

    .line 364
    if-eqz v3, :cond_18

    .line 366
    and-int/lit8 v3, v17, 0x40

    .line 368
    if-eqz v3, :cond_18

    .line 370
    iget v3, v14, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    .line 372
    iget v6, v14, Lcom/android/server/am/UidObserverController$ChangeRecord;->procAdj:I

    .line 374
    invoke-interface {v1, v3, v6}, Landroid/app/IUidObserver;->onUidProcAdjChanged(II)V

    .line 377
    :cond_18
    :goto_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 380
    move-result-wide v6

    .line 381
    sub-long/2addr v6, v15

    .line 382
    long-to-int v3, v6

    .line 383
    iget v6, v12, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    .line 385
    if-ge v6, v3, :cond_19

    .line 387
    iput v3, v12, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    .line 389
    :cond_19
    if-lt v3, v5, :cond_1a

    .line 391
    iget v3, v12, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I

    .line 393
    const/4 v5, 0x1

    .line 394
    add-int/2addr v3, v5

    .line 395
    iput v3, v12, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 397
    :cond_1a
    :goto_f
    add-int/lit8 v13, v13, 0x1

    .line 399
    const/4 v3, 0x0

    .line 400
    const/4 v5, 0x1

    .line 401
    goto/16 :goto_4

    .line 403
    :catch_0
    :cond_1b
    :goto_10
    move v1, v4

    .line 404
    const/4 v3, 0x0

    .line 405
    goto/16 :goto_3

    .line 407
    :cond_1c
    iget-object v1, v0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 409
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 412
    iget-object v1, v0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 414
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 417
    move-result v1

    .line 418
    if-lez v1, :cond_21

    .line 420
    const/4 v1, 0x0

    .line 421
    :goto_11
    if-ge v1, v2, :cond_21

    .line 423
    iget-object v3, v0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 425
    aget-object v3, v3, v1

    .line 427
    iget v4, v3, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    .line 429
    const/4 v5, 0x1

    .line 430
    and-int/2addr v4, v5

    .line 431
    if-eqz v4, :cond_1d

    .line 433
    iget-object v4, v0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    .line 435
    iget v3, v3, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    .line 437
    invoke-virtual {v4, v3}, Lcom/android/server/am/ActiveUids;->remove(I)V

    .line 440
    const/4 v6, 0x1

    .line 441
    goto :goto_13

    .line 442
    :cond_1d
    iget-object v4, v0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    .line 444
    iget v5, v3, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    .line 446
    invoke-virtual {v4, v5}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    .line 449
    move-result-object v4

    .line 450
    if-nez v4, :cond_1e

    .line 452
    new-instance v4, Lcom/android/server/am/UidRecord;

    .line 454
    iget v5, v3, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    .line 456
    invoke-direct {v4, v5}, Lcom/android/server/am/UidRecord;-><init>(I)V

    .line 459
    iget-object v5, v0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    .line 461
    iget v6, v3, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    .line 463
    invoke-virtual {v5, v6, v4}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 466
    :cond_1e
    iget v5, v3, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    .line 468
    and-int/lit8 v6, v5, 0x2

    .line 470
    if-eqz v6, :cond_1f

    .line 472
    const/4 v6, 0x1

    .line 473
    iput-boolean v6, v4, Lcom/android/server/am/UidRecord;->mIdle:Z

    .line 475
    goto :goto_12

    .line 476
    :cond_1f
    const/4 v6, 0x1

    .line 477
    and-int/lit8 v5, v5, 0x4

    .line 479
    if-eqz v5, :cond_20

    .line 481
    const/4 v5, 0x0

    .line 482
    iput-boolean v5, v4, Lcom/android/server/am/UidRecord;->mIdle:Z

    .line 484
    :cond_20
    :goto_12
    iget v5, v3, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    .line 486
    iput v5, v4, Lcom/android/server/am/UidRecord;->mSetProcState:I

    .line 488
    iput v5, v4, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 490
    iget v3, v3, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    .line 492
    iput v3, v4, Lcom/android/server/am/UidRecord;->mSetCapability:I

    .line 494
    iput v3, v4, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 496
    :goto_13
    add-int/lit8 v1, v1, 0x1

    .line 498
    goto :goto_11

    .line 499
    :cond_21
    iget-object v3, v0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    .line 501
    monitor-enter v3

    .line 502
    const/4 v5, 0x0

    .line 503
    :goto_14
    if-ge v5, v2, :cond_22

    .line 505
    :try_start_4
    iget-object v1, v0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 507
    aget-object v1, v1, v5

    .line 509
    const/4 v4, 0x0

    .line 510
    iput-boolean v4, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    .line 512
    iget-object v6, v0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    .line 514
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    add-int/lit8 v5, v5, 0x1

    .line 519
    goto :goto_14

    .line 520
    :catchall_1
    move-exception v0

    .line 521
    goto :goto_15

    .line 522
    :cond_22
    monitor-exit v3

    .line 523
    return-void

    .line 524
    :goto_15
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 525
    throw v0

    .line 526
    :goto_16
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 527
    throw v0
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 6
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    move v4, v3

    .line 13
    :goto_0
    if-ge v3, v1, :cond_3

    .line 15
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 17
    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    .line 20
    move-result-object v5

    .line 21
    check-cast v5, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 23
    if-eqz p2, :cond_0

    .line 25
    iget-object v6, v5, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    .line 27
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_2

    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_3

    .line 36
    :cond_0
    :goto_1
    if-nez v4, :cond_1

    .line 38
    const-string v4, "  mUidObservers:"

    .line 40
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    const/4 v4, 0x1

    .line 44
    :cond_1
    iget-object v6, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 46
    invoke-virtual {v6, v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    .line 49
    move-result-object v6

    .line 50
    check-cast v6, Landroid/app/IUidObserver;

    .line 52
    invoke-virtual {v5, p1, v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->dump(Ljava/io/PrintWriter;Landroid/app/IUidObserver;)V

    .line 55
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    if-nez p2, :cond_4

    .line 60
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 63
    const-string p2, "  mUidChangeDispatchCount="

    .line 65
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    iget p2, p0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    .line 70
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 73
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 76
    const-string p2, "  Slow UID dispatches:"

    .line 78
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    :goto_2
    if-ge v2, v1, :cond_4

    .line 83
    iget-object p2, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 85
    invoke-virtual {p2, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    .line 88
    move-result-object p2

    .line 89
    check-cast p2, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 91
    const-string v3, "    "

    .line 93
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 96
    iget-object v3, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 98
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Landroid/app/IUidObserver;

    .line 104
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v3}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 115
    const-string v3, ": "

    .line 117
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 120
    iget v3, p2, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I

    .line 122
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 125
    const-string v3, " / Max "

    .line 127
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    iget p2, p2, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    .line 132
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 135
    const-string/jumbo p2, "ms"

    .line 138
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    add-int/lit8 v2, v2, 0x1

    .line 143
    goto :goto_2

    .line 144
    :cond_4
    monitor-exit v0

    .line 145
    return-void

    .line 146
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    throw p0
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 6
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_2

    .line 13
    iget-object v3, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 15
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 21
    if-eqz p2, :cond_0

    .line 23
    iget-object v4, v3, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    .line 25
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_2

    .line 34
    :cond_0
    :goto_1
    invoke-virtual {v3, p1}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 37
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public final register(Landroid/app/IUidObserver;IILjava/lang/String;I[I)Landroid/os/IBinder;
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    new-instance v8, Landroid/os/Binder;

    .line 4
    const-string v1, "UidObserver-"

    .line 6
    const-string v2, "-"

    .line 8
    move-object/from16 v3, p4

    .line 10
    invoke-static {v1, v3, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v8, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 32
    iget-object v9, v0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    .line 34
    monitor-enter v9

    .line 35
    :try_start_0
    iget-object v10, v0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 37
    new-instance v11, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 39
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 41
    move/from16 v1, p5

    .line 43
    invoke-static {v0, v1}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x1

    .line 50
    :goto_0
    move v5, v0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 53
    goto :goto_0

    .line 54
    :goto_1
    move-object v0, v11

    .line 55
    move/from16 v1, p5

    .line 57
    move-object/from16 v2, p4

    .line 59
    move v3, p2

    .line 60
    move v4, p3

    .line 61
    move-object/from16 v6, p6

    .line 63
    move-object v7, v8

    .line 64
    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;-><init>(ILjava/lang/String;IIZ[ILandroid/os/IBinder;)V

    .line 67
    move-object v0, p1

    .line 68
    invoke-virtual {v10, p1, v11}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 71
    monitor-exit v9

    .line 72
    return-object v8

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    throw v0
.end method
