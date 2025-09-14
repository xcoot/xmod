.class public final Lcom/android/server/appop/AttributedOp;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAccessEvents:Landroid/util/LongSparseArray;

.field public final mAppOpsService:Lcom/android/server/appop/AppOpsService;

.field public mInProgressEvents:Landroid/util/ArrayMap;

.field public mPausedInProgressEvents:Landroid/util/ArrayMap;

.field public mRejectEvents:Landroid/util/LongSparseArray;

.field public final parent:Lcom/android/server/appop/AppOpsService$Op;

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Op;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 6
    iput-object p2, p0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    .line 10
    return-void
.end method

.method public static add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 10

    .line 1
    if-nez p0, :cond_0

    .line 3
    return-object p1

    .line 4
    :cond_0
    if-nez p1, :cond_1

    .line 6
    return-object p0

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_4

    .line 14
    invoke-virtual {p1, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 17
    move-result-wide v2

    .line 18
    invoke-virtual {p1, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 24
    invoke-virtual {p0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 30
    if-eqz v5, :cond_2

    .line 32
    invoke-virtual {v4}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    .line 35
    move-result-wide v6

    .line 36
    invoke-virtual {v5}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    .line 39
    move-result-wide v8

    .line 40
    cmp-long v5, v6, v8

    .line 42
    if-lez v5, :cond_3

    .line 44
    :cond_2
    invoke-virtual {p0, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 47
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_4
    return-object p0
.end method

.method public static deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 7

    .line 1
    if-nez p0, :cond_0

    .line 3
    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    .line 7
    move-result v0

    .line 8
    new-instance v1, Landroid/util/LongSparseArray;

    .line 10
    invoke-direct {v1, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v0, :cond_1

    .line 16
    invoke-virtual {p0, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 19
    move-result-wide v3

    .line 20
    new-instance v5, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 22
    invoke-virtual {p0, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 25
    move-result-object v6

    .line 26
    check-cast v6, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 28
    invoke-direct {v5, v6}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(Landroid/app/AppOpsManager$NoteOpEvent;)V

    .line 31
    invoke-virtual {v1, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-object v1
.end method


# virtual methods
.method public final accessed(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 21

    move-object/from16 v11, p0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v3, -0x1

    move-object/from16 v0, p0

    move-wide v1, v12

    move/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p2

    move/from16 v10, p6

    .line 2
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/AttributedOp;->accessed(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 3
    iget-object v0, v11, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v1, v11, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v2, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v3, v1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v4, v1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v5, v11, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, -0x1

    move v1, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move/from16 v5, p2

    move/from16 v6, p6

    move-wide v7, v12

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;IIJII)V

    .line 4
    iget-object v14, v11, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v11, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v15, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v1, v0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v2, v11, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    if-nez v2, :cond_0

    move-object/from16 v19, p4

    goto :goto_0

    :cond_0
    move-object/from16 v19, v2

    :goto_0
    move/from16 v16, v1

    move-object/from16 v17, v0

    move-object/from16 v18, p3

    move/from16 v20, p2

    invoke-virtual/range {v14 .. v20}, Lcom/android/server/appop/AppOpsService;->writePermissionAccessInformation(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final accessed(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    .line 5
    invoke-static/range {p9 .. p10}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v5

    .line 6
    iget-object v7, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    if-nez v7, :cond_0

    .line 7
    new-instance v7, Landroid/util/LongSparseArray;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v7, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    :cond_0
    const/4 v7, -0x1

    .line 8
    iget-object v8, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    if-eq v1, v7, :cond_2

    .line 9
    iget-object v7, v8, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    .line 10
    invoke-virtual {v7}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v7

    .line 11
    check-cast v7, Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz v7, :cond_1

    .line 12
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/app/AppOpsManager$OpEventProxyInfo;->reinit(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_1
    new-instance v7, Landroid/app/AppOpsManager$OpEventProxyInfo;

    invoke-direct {v7, v1, v2, v3, v4}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    .line 14
    :goto_0
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/app/AppOpsManager$NoteOpEvent;

    if-eqz v9, :cond_3

    .line 15
    iget-object v15, v8, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-object v14, v7

    invoke-virtual/range {v9 .. v15}, Landroid/app/AppOpsManager$NoteOpEvent;->reinit(JJLandroid/app/AppOpsManager$OpEventProxyInfo;Landroid/util/Pools$Pool;)V

    goto :goto_1

    .line 16
    :cond_3
    iget-object v0, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    new-instance v1, Landroid/app/AppOpsManager$NoteOpEvent;

    move-object/from16 p5, v1

    move-wide/from16 p6, p1

    move-wide/from16 p8, p3

    move-object/from16 p10, v7

    invoke-direct/range {p5 .. p10}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    invoke-virtual {v0, v5, v6, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final createAttributedOpEntryLocked()Landroid/app/AppOpsManager$AttributedOpEntry;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 5
    invoke-static {v1}, Lcom/android/server/appop/AttributedOp;->deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    move-result-wide v2

    .line 19
    iget-object v4, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 21
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 24
    move-result v4

    .line 25
    if-nez v1, :cond_0

    .line 27
    new-instance v1, Landroid/util/LongSparseArray;

    .line 29
    invoke-direct {v1, v4}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 32
    :cond_0
    const/4 v5, 0x0

    .line 33
    :goto_0
    if-ge v5, v4, :cond_1

    .line 35
    iget-object v6, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 37
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 40
    move-result-object v6

    .line 41
    check-cast v6, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 43
    iget v7, v6, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mUidState:I

    .line 45
    iget v8, v6, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mFlags:I

    .line 47
    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->makeKey(II)J

    .line 50
    move-result-wide v7

    .line 51
    new-instance v15, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 53
    iget-wide v10, v6, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartTime:J

    .line 55
    iget-wide v12, v6, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartElapsedTime:J

    .line 57
    sub-long v12, v2, v12

    .line 59
    move-wide/from16 v16, v2

    .line 61
    const-wide/16 v2, 0x0

    .line 63
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 66
    move-result-wide v12

    .line 67
    iget-object v14, v6, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 69
    move-object v9, v15

    .line 70
    invoke-direct/range {v9 .. v14}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 73
    invoke-virtual {v1, v7, v8, v15}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 76
    add-int/lit8 v5, v5, 0x1

    .line 78
    move-wide/from16 v2, v16

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    .line 83
    invoke-static {v2}, Lcom/android/server/appop/AttributedOp;->deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    .line 86
    move-result-object v2

    .line 87
    new-instance v3, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 89
    iget-object v4, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    .line 91
    iget v4, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    .line 96
    move-result v0

    .line 97
    invoke-direct {v3, v4, v0, v1, v2}, Landroid/app/AppOpsManager$AttributedOpEntry;-><init>(IZLandroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    .line 100
    return-object v3
.end method

.method public final doForAllInProgressStartOpEvents(Ljava/util/function/Consumer;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 12
    :goto_0
    if-nez p0, :cond_1

    .line 14
    return-void

    .line 15
    :cond_1
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 18
    move-result v0

    .line 19
    new-instance v1, Landroid/util/ArraySet;

    .line 21
    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 24
    move-result-object v2

    .line 25
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_1
    if-ge v2, v0, :cond_2

    .line 31
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 41
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    return-void
.end method

.method public final finishOrPause(Landroid/os/IBinder;ZZ)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 11
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 13
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 16
    move-result v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, -0x1

    .line 19
    :goto_0
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x1

    .line 21
    if-gez v2, :cond_5

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    .line 26
    move-result v2

    .line 27
    const-string v5, "AppOps"

    .line 29
    if-nez v2, :cond_1

    .line 31
    const-string v0, "No ops running or paused"

    .line 33
    invoke-static {v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 39
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 42
    move-result v1

    .line 43
    if-gez v1, :cond_2

    .line 45
    const-string v0, "No op running or paused for the client"

    .line 47
    invoke-static {v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    if-eqz p3, :cond_3

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 56
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 62
    iget v5, v2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    .line 64
    sub-int/2addr v5, v4

    .line 65
    iput v5, v2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    .line 67
    if-nez v5, :cond_4

    .line 69
    iget-object v4, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 71
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 74
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 76
    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    .line 78
    invoke-virtual {v1, v2}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 81
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 83
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_4

    .line 89
    iput-object v3, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 91
    :cond_4
    :goto_1
    return-void

    .line 92
    :cond_5
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 94
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 100
    if-nez p3, :cond_6

    .line 102
    iget v5, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    .line 104
    sub-int/2addr v5, v4

    .line 105
    iput v5, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    .line 107
    :cond_6
    iget v5, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    .line 109
    if-eqz v5, :cond_7

    .line 111
    if-eqz p3, :cond_d

    .line 113
    :cond_7
    if-nez p3, :cond_8

    .line 115
    :try_start_0
    iget-object v5, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    .line 117
    const/4 v6, 0x0

    .line 118
    invoke-interface {v5, v1, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :catch_0
    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 123
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 126
    :cond_8
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 128
    if-nez v2, :cond_9

    .line 130
    new-instance v2, Landroid/util/LongSparseArray;

    .line 132
    invoke-direct {v2, v4}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 135
    iput-object v2, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 137
    :cond_9
    iget-object v2, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 139
    if-eqz v2, :cond_a

    .line 141
    new-instance v2, Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 143
    iget-object v5, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 145
    invoke-direct {v2, v5}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(Landroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 148
    move-object v11, v2

    .line 149
    goto :goto_2

    .line 150
    :cond_a
    move-object v11, v3

    .line 151
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 154
    move-result-wide v5

    .line 155
    iget-wide v7, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartElapsedTime:J

    .line 157
    sub-long v9, v5, v7

    .line 159
    new-instance v2, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 161
    iget-wide v7, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartTime:J

    .line 163
    move-object v6, v2

    .line 164
    invoke-direct/range {v6 .. v11}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 167
    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 169
    iget v6, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mUidState:I

    .line 171
    iget v7, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mFlags:I

    .line 173
    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->makeKey(II)J

    .line 176
    move-result-wide v6

    .line 177
    invoke-virtual {v5, v6, v7, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 180
    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 182
    iget-object v5, v5, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 184
    iget-object v6, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    .line 186
    iget v14, v6, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 188
    iget v15, v6, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 190
    iget-object v6, v6, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 192
    iget-object v13, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 194
    iget v12, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mUidState:I

    .line 196
    iget v11, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mFlags:I

    .line 198
    invoke-virtual {v2}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    .line 201
    move-result-wide v16

    .line 202
    invoke-virtual {v2}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    .line 205
    move-result-wide v18

    .line 206
    iget v2, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionFlags:I

    .line 208
    iget v10, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I

    .line 210
    iget-object v9, v5, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 212
    monitor-enter v9

    .line 213
    :try_start_1
    iget v7, v5, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    .line 215
    if-ne v7, v4, :cond_c

    .line 217
    invoke-virtual {v5}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    .line 220
    move-result v4

    .line 221
    if-nez v4, :cond_b

    .line 223
    sget-object v2, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    .line 225
    const-string v4, "Interaction before persistence initialized"

    .line 227
    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    monitor-exit v9

    .line 231
    goto :goto_4

    .line 232
    :catchall_0
    move-exception v0

    .line 233
    move-object v4, v9

    .line 234
    goto/16 :goto_5

    .line 236
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 239
    move-result-wide v7

    .line 240
    invoke-virtual {v5, v7, v8}, Lcom/android/server/appop/HistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    .line 243
    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    move v8, v14

    .line 245
    move-object v4, v9

    .line 246
    move v9, v15

    .line 247
    move/from16 v20, v10

    .line 249
    move-object v10, v6

    .line 250
    move/from16 v21, v11

    .line 252
    move-object v11, v13

    .line 253
    move/from16 v22, v12

    .line 255
    move-object/from16 v23, v13

    .line 257
    move/from16 v13, v21

    .line 259
    move/from16 v24, v14

    .line 261
    move/from16 v25, v15

    .line 263
    move-wide/from16 v14, v18

    .line 265
    :try_start_2
    invoke-virtual/range {v7 .. v15}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessDuration(IILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 268
    iget-object v7, v5, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    .line 270
    move/from16 v8, v25

    .line 272
    move/from16 v9, v24

    .line 274
    move/from16 v10, v21

    .line 276
    move/from16 v11, v22

    .line 278
    move v12, v2

    .line 279
    move/from16 v13, v20

    .line 281
    move-wide/from16 v14, v16

    .line 283
    move-wide/from16 v16, v18

    .line 285
    move-object/from16 v18, v6

    .line 287
    move-object/from16 v19, v23

    .line 289
    invoke-virtual/range {v7 .. v19}, Lcom/android/server/appop/DiscreteRegistry;->recordDiscreteAccess(IIIIIIJJLjava/lang/String;Ljava/lang/String;)V

    .line 292
    goto :goto_3

    .line 293
    :catchall_1
    move-exception v0

    .line 294
    goto :goto_5

    .line 295
    :cond_c
    move-object v4, v9

    .line 296
    :goto_3
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 297
    :goto_4
    if-nez p3, :cond_d

    .line 299
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 301
    iget-object v2, v2, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    .line 303
    invoke-virtual {v2, v1}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 306
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 308
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 311
    move-result v2

    .line 312
    if-eqz v2, :cond_d

    .line 314
    iput-object v3, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 316
    if-nez p2, :cond_d

    .line 318
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    .line 320
    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$Op;->isRunning()Z

    .line 323
    move-result v2

    .line 324
    if-nez v2, :cond_d

    .line 326
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 328
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    .line 330
    iget v4, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 332
    iget v5, v2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 334
    iget-object v6, v2, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 336
    iget-object v7, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 338
    iget v8, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mVirtualDeviceId:I

    .line 340
    iget v10, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionFlags:I

    .line 342
    iget v11, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I

    .line 344
    const/4 v9, 0x0

    .line 345
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IZII)V

    .line 348
    :cond_d
    return-void

    .line 349
    :goto_5
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 350
    throw v0
.end method

.method public final isPaused()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final isRunning()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final onUidStateChanged(I)V
    .locals 31

    .line 1
    move-object/from16 v13, p0

    .line 3
    move/from16 v14, p1

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    .line 21
    move-result v15

    .line 22
    if-eqz v15, :cond_1

    .line 24
    iget-object v0, v13, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, v13, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 29
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 32
    move-result v12

    .line 33
    new-instance v11, Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 42
    const/4 v10, 0x0

    .line 43
    move-object v9, v0

    .line 44
    move v8, v10

    .line 45
    :goto_1
    if-ge v8, v12, :cond_7

    .line 47
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    move-object v7, v0

    .line 56
    check-cast v7, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 58
    if-eqz v7, :cond_6

    .line 60
    iget v0, v7, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mUidState:I

    .line 62
    if-eq v0, v14, :cond_6

    .line 64
    iget v6, v7, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionFlags:I

    .line 66
    iget v5, v7, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I

    .line 68
    :try_start_0
    iget v4, v7, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    .line 70
    const/4 v3, 0x1

    .line 71
    iput v3, v7, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    .line 73
    iget-object v0, v7, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 75
    iget-object v1, v7, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    .line 77
    invoke-virtual {v13, v1, v3, v10}, Lcom/android/server/appop/AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5

    .line 80
    if-eqz v0, :cond_2

    .line 82
    :try_start_1
    iget-object v1, v7, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    .line 84
    iget v2, v7, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mVirtualDeviceId:I

    .line 86
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    .line 89
    move-result v16

    .line 90
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    .line 93
    move-result-object v17

    .line 94
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    .line 97
    move-result-object v18

    .line 98
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getDeviceId()Ljava/lang/String;

    .line 101
    move-result-object v19

    .line 102
    iget v0, v7, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mFlags:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 104
    :try_start_2
    iget v10, v7, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionFlags:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 106
    move-object/from16 v21, v11

    .line 108
    :try_start_3
    iget v11, v7, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 110
    const/16 v22, 0x1

    .line 112
    move/from16 v23, v0

    .line 114
    move-object/from16 v0, p0

    .line 116
    move/from16 v24, v3

    .line 118
    move/from16 v3, v16

    .line 120
    move/from16 v16, v4

    .line 122
    move-object/from16 v4, v17

    .line 124
    move/from16 v25, v5

    .line 126
    move-object/from16 v5, v18

    .line 128
    move/from16 v26, v6

    .line 130
    move-object/from16 v6, v19

    .line 132
    move-object v14, v7

    .line 133
    move/from16 v7, p1

    .line 135
    move/from16 v27, v8

    .line 137
    move/from16 v8, v23

    .line 139
    move-object/from16 v17, v9

    .line 141
    move v9, v10

    .line 142
    const/16 v28, 0x0

    .line 144
    move v10, v11

    .line 145
    move-object/from16 v29, v21

    .line 147
    move/from16 v11, v22

    .line 149
    move/from16 v30, v12

    .line 151
    move v12, v15

    .line 152
    :try_start_4
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/appop/AttributedOp;->startedOrPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZZ)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 155
    goto/16 :goto_3

    .line 157
    :catch_0
    move-object/from16 v9, v17

    .line 159
    move/from16 v10, v27

    .line 161
    move-object/from16 v0, v29

    .line 163
    goto/16 :goto_6

    .line 165
    :catch_1
    move/from16 v25, v5

    .line 167
    move/from16 v26, v6

    .line 169
    move-object v14, v7

    .line 170
    move-object/from16 v17, v9

    .line 172
    move/from16 v30, v12

    .line 174
    const/16 v28, 0x0

    .line 176
    move v10, v8

    .line 177
    move-object/from16 v0, v21

    .line 179
    goto/16 :goto_6

    .line 181
    :catch_2
    move/from16 v25, v5

    .line 183
    move/from16 v26, v6

    .line 185
    move-object v14, v7

    .line 186
    move-object/from16 v17, v9

    .line 188
    move/from16 v30, v12

    .line 190
    const/16 v28, 0x0

    .line 192
    :goto_2
    move v10, v8

    .line 193
    move-object v0, v11

    .line 194
    goto/16 :goto_6

    .line 196
    :catch_3
    move/from16 v25, v5

    .line 198
    move/from16 v26, v6

    .line 200
    move-object v14, v7

    .line 201
    move-object/from16 v17, v9

    .line 203
    move/from16 v28, v10

    .line 205
    move/from16 v30, v12

    .line 207
    goto :goto_2

    .line 208
    :cond_2
    move/from16 v24, v3

    .line 210
    move/from16 v16, v4

    .line 212
    move/from16 v25, v5

    .line 214
    move/from16 v26, v6

    .line 216
    move-object v14, v7

    .line 217
    move/from16 v27, v8

    .line 219
    move-object/from16 v17, v9

    .line 221
    move/from16 v28, v10

    .line 223
    move-object/from16 v29, v11

    .line 225
    move/from16 v30, v12

    .line 227
    :try_start_5
    iget-object v1, v14, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    .line 229
    iget v2, v14, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mVirtualDeviceId:I

    .line 231
    iget v8, v14, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mFlags:I

    .line 233
    iget v9, v14, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionFlags:I

    .line 235
    iget v10, v14, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I

    .line 237
    const/4 v11, 0x1

    .line 238
    const/4 v3, -0x1

    .line 239
    const/4 v4, 0x0

    .line 240
    const/4 v5, 0x0

    .line 241
    const/4 v6, 0x0

    .line 242
    move-object/from16 v0, p0

    .line 244
    move/from16 v7, p1

    .line 246
    move v12, v15

    .line 247
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/appop/AttributedOp;->startedOrPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 250
    :goto_3
    if-eqz v15, :cond_3

    .line 252
    :try_start_6
    iget-object v0, v13, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 254
    :goto_4
    move-object v9, v0

    .line 255
    move/from16 v10, v27

    .line 257
    move-object/from16 v0, v29

    .line 259
    goto :goto_5

    .line 260
    :cond_3
    :try_start_7
    iget-object v0, v13, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    .line 262
    goto :goto_4

    .line 263
    :goto_5
    :try_start_8
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 266
    move-result-object v1

    .line 267
    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    move-result-object v1

    .line 271
    check-cast v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 273
    if-eqz v1, :cond_4

    .line 275
    iget v2, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    .line 277
    add-int/lit8 v4, v16, -0x1

    .line 279
    add-int/2addr v4, v2

    .line 280
    iput v4, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_6

    .line 282
    :cond_4
    move/from16 v3, p1

    .line 284
    goto/16 :goto_8

    .line 286
    :catch_4
    move/from16 v10, v27

    .line 288
    move-object/from16 v0, v29

    .line 290
    move-object/from16 v9, v17

    .line 292
    goto :goto_6

    .line 293
    :catch_5
    move/from16 v25, v5

    .line 295
    move/from16 v26, v6

    .line 297
    move-object v14, v7

    .line 298
    move-object/from16 v17, v9

    .line 300
    move/from16 v28, v10

    .line 302
    move-object v0, v11

    .line 303
    move/from16 v30, v12

    .line 305
    move v10, v8

    .line 306
    :catch_6
    :goto_6
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 308
    if-eqz v1, :cond_5

    .line 310
    const-string v1, "Cannot switch to new uidState "

    .line 312
    const-string v2, "AppOps"

    .line 314
    move/from16 v3, p1

    .line 316
    move-object v4, v14

    .line 317
    invoke-static {v3, v1, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 320
    goto :goto_7

    .line 321
    :cond_5
    move/from16 v3, p1

    .line 323
    move-object v4, v14

    .line 324
    :goto_7
    iget-object v1, v13, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    .line 326
    iget v2, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 328
    iget v5, v1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 330
    iget-object v1, v1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 332
    iget v4, v4, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mVirtualDeviceId:I

    .line 334
    const/16 v22, 0x0

    .line 336
    iget-object v6, v13, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 338
    iget-object v7, v13, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 340
    move-object/from16 v16, v6

    .line 342
    move/from16 v17, v2

    .line 344
    move/from16 v18, v5

    .line 346
    move-object/from16 v19, v1

    .line 348
    move-object/from16 v20, v7

    .line 350
    move/from16 v21, v4

    .line 352
    move/from16 v23, v26

    .line 354
    move/from16 v24, v25

    .line 356
    invoke-virtual/range {v16 .. v24}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IZII)V

    .line 359
    goto :goto_8

    .line 360
    :cond_6
    move-object/from16 v17, v9

    .line 362
    move/from16 v28, v10

    .line 364
    move-object v0, v11

    .line 365
    move/from16 v30, v12

    .line 367
    move v3, v14

    .line 368
    move v10, v8

    .line 369
    move-object/from16 v9, v17

    .line 371
    :goto_8
    add-int/lit8 v8, v10, 0x1

    .line 373
    move-object v11, v0

    .line 374
    move v14, v3

    .line 375
    move/from16 v10, v28

    .line 377
    move/from16 v12, v30

    .line 379
    goto/16 :goto_1

    .line 381
    :cond_7
    return-void
.end method

.method public final rejected(II)V
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/appop/AttributedOp;->rejected(IIJ)V

    .line 2
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v1, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v4, v1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v5, v1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 3
    iget-object p0, v0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget v1, v0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    sget-object p1, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Interaction before persistence initialized"

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 9
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/android/server/appop/HistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v2

    const-wide/16 v9, 0x1

    move v7, p1

    move v8, p2

    .line 11
    invoke-virtual/range {v2 .. v10}, Landroid/app/AppOpsManager$HistoricalOps;->increaseRejectCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 12
    :cond_1
    monitor-exit p0

    :goto_0
    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final rejected(IIJ)V
    .locals 8

    .line 13
    invoke-static {p1, p2}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide p1

    .line 14
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Landroid/util/LongSparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AppOpsManager$NoteOpEvent;

    if-eqz v1, :cond_1

    .line 17
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v7, p0, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-wide v2, p3

    invoke-virtual/range {v1 .. v7}, Landroid/app/AppOpsManager$NoteOpEvent;->reinit(JJLandroid/app/AppOpsManager$OpEventProxyInfo;Landroid/util/Pools$Pool;)V

    goto :goto_0

    .line 18
    :cond_1
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    new-instance v6, Landroid/app/AppOpsManager$NoteOpEvent;

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v1, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    invoke-virtual {p0, p1, p2, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final startedOrPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZZ)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move/from16 v11, p2

    .line 7
    move/from16 v12, p3

    .line 9
    move-object/from16 v13, p4

    .line 11
    move-object/from16 v14, p5

    .line 13
    move-object/from16 v15, p6

    .line 15
    move/from16 v10, p7

    .line 17
    move/from16 v9, p8

    .line 19
    move/from16 v8, p9

    .line 21
    move/from16 v7, p10

    .line 23
    if-nez p11, :cond_0

    .line 25
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    .line 27
    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$Op;->isRunning()Z

    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_0

    .line 33
    if-eqz p12, :cond_0

    .line 35
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 37
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    .line 39
    iget v4, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 41
    iget v5, v3, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 43
    iget-object v6, v3, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 45
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 47
    const/16 v16, 0x1

    .line 49
    move-object/from16 v17, v3

    .line 51
    move v3, v4

    .line 52
    move v4, v5

    .line 53
    move-object v5, v6

    .line 54
    move-object/from16 v6, v17

    .line 56
    move/from16 v7, p2

    .line 58
    move/from16 v8, v16

    .line 60
    move/from16 v9, p9

    .line 62
    move/from16 v10, p10

    .line 64
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IZII)V

    .line 67
    :cond_0
    const/4 v2, 0x1

    .line 68
    if-eqz p12, :cond_1

    .line 70
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 72
    if-nez v3, :cond_1

    .line 74
    new-instance v3, Landroid/util/ArrayMap;

    .line 76
    invoke-direct {v3, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 79
    iput-object v3, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    if-nez p12, :cond_2

    .line 84
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 86
    if-nez v3, :cond_2

    .line 88
    new-instance v3, Landroid/util/ArrayMap;

    .line 90
    invoke-direct {v3, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 93
    iput-object v3, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 95
    :cond_2
    :goto_0
    if-eqz p12, :cond_3

    .line 97
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 99
    goto :goto_1

    .line 100
    :cond_3
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 102
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 105
    move-result-wide v8

    .line 106
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    move-result-object v4

    .line 110
    check-cast v4, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 112
    if-nez v4, :cond_8

    .line 114
    iget-object v4, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 116
    iget-object v4, v4, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 121
    move-result-wide v5

    .line 122
    new-instance v7, Lcom/android/server/appop/AttributedOp$$ExternalSyntheticLambda0;

    .line 124
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-static {v7, v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 130
    move-result-object v7

    .line 131
    invoke-virtual {v4}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    .line 134
    move-result-object v10

    .line 135
    check-cast v10, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 137
    const/4 v2, -0x1

    .line 138
    if-eq v12, v2, :cond_5

    .line 140
    iget-object v2, v4, Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    .line 142
    invoke-virtual {v2}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    .line 145
    move-result-object v2

    .line 146
    check-cast v2, Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 148
    if-eqz v2, :cond_4

    .line 150
    invoke-virtual {v2, v12, v13, v14, v15}, Landroid/app/AppOpsManager$OpEventProxyInfo;->reinit(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    goto :goto_2

    .line 154
    :cond_4
    new-instance v2, Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 156
    invoke-direct {v2, v12, v13, v14, v15}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    goto :goto_2

    .line 160
    :cond_5
    const/4 v2, 0x0

    .line 161
    :goto_2
    const/4 v12, 0x0

    .line 162
    if-eqz v10, :cond_7

    .line 164
    iget-object v4, v4, Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    .line 166
    iput-wide v8, v10, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartTime:J

    .line 168
    iput-wide v5, v10, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartElapsedTime:J

    .line 170
    iput-object v1, v10, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    .line 172
    iput-object v7, v10, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    .line 174
    iput v11, v10, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mVirtualDeviceId:I

    .line 176
    move/from16 v13, p7

    .line 178
    iput v13, v10, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mUidState:I

    .line 180
    move/from16 v15, p8

    .line 182
    iput v15, v10, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mFlags:I

    .line 184
    iget-object v5, v10, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 186
    if-eqz v5, :cond_6

    .line 188
    invoke-virtual {v4, v5}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 191
    :cond_6
    iput-object v2, v10, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 193
    move/from16 v4, p9

    .line 195
    iput v4, v10, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionFlags:I

    .line 197
    move/from16 v2, p10

    .line 199
    iput v2, v10, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I

    .line 201
    invoke-interface {v1, v10, v12}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 204
    move-object v12, v10

    .line 205
    move v10, v2

    .line 206
    goto :goto_3

    .line 207
    :cond_7
    move/from16 v13, p7

    .line 209
    move/from16 v15, p8

    .line 211
    move/from16 v4, p9

    .line 213
    move/from16 v10, p10

    .line 215
    new-instance v12, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 217
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-wide v8, v12, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartTime:J

    .line 222
    iput-wide v5, v12, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartElapsedTime:J

    .line 224
    iput-object v1, v12, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    .line 226
    iput v11, v12, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mVirtualDeviceId:I

    .line 228
    iput-object v7, v12, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    .line 230
    iput v13, v12, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mUidState:I

    .line 232
    iput-object v2, v12, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 234
    iput v15, v12, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mFlags:I

    .line 236
    iput v4, v12, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionFlags:I

    .line 238
    iput v10, v12, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I

    .line 240
    const/4 v2, 0x0

    .line 241
    invoke-interface {v1, v12, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 244
    :goto_3
    invoke-virtual {v3, v1, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    move-object v4, v12

    .line 248
    goto :goto_4

    .line 249
    :cond_8
    move/from16 v13, p7

    .line 251
    move/from16 v15, p8

    .line 253
    move/from16 v10, p10

    .line 255
    iget v1, v4, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mUidState:I

    .line 257
    if-eq v13, v1, :cond_9

    .line 259
    invoke-virtual {v0, v13}, Lcom/android/server/appop/AttributedOp;->onUidStateChanged(I)V

    .line 262
    :cond_9
    :goto_4
    iget v1, v4, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    .line 264
    const/4 v2, 0x1

    .line 265
    add-int/2addr v1, v2

    .line 266
    iput v1, v4, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    .line 268
    if-eqz p12, :cond_b

    .line 270
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 272
    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 274
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    .line 276
    iget v3, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 278
    iget v4, v2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 280
    iget-object v5, v2, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 282
    iget-object v6, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 284
    move v2, v3

    .line 285
    move v3, v4

    .line 286
    move-object v4, v5

    .line 287
    move-object v5, v6

    .line 288
    move/from16 v6, p7

    .line 290
    move/from16 v7, p8

    .line 292
    move/from16 v10, p9

    .line 294
    move/from16 v11, p10

    .line 296
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;IIJII)V

    .line 299
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 301
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    .line 303
    iget v3, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 305
    iget v4, v2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 307
    iget-object v2, v2, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 309
    iget-object v0, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 311
    if-nez v0, :cond_a

    .line 313
    goto :goto_5

    .line 314
    :cond_a
    move-object v14, v0

    .line 315
    :goto_5
    const/4 v0, 0x0

    .line 316
    move-object/from16 p0, v1

    .line 318
    move/from16 p1, v3

    .line 320
    move/from16 p2, v4

    .line 322
    move-object/from16 p3, v2

    .line 324
    move-object/from16 p4, v0

    .line 326
    move-object/from16 p5, v14

    .line 328
    move/from16 p6, p7

    .line 330
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService;->writePermissionAccessInformation(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 333
    :cond_b
    return-void
.end method
