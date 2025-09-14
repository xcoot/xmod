.class public final Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mData:Landroid/util/SparseArray;

.field public final mPresetReason:Ljava/lang/Integer;

.field public final synthetic this$0:Lcom/android/server/am/AppExitInfoTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppExitInfoTracker;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 5
    .line 6
    new-instance p1, Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mPresetReason:Ljava/lang/Integer;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final addLocked(IILjava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/util/SparseArray;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    new-instance p0, Landroid/util/Pair;

    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-direct {p0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final onProcDied(IILjava/lang/Integer;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 12
    .line 13
    iget-object v7, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mPresetReason:Ljava/lang/Integer;

    .line 14
    .line 15
    iget-object v1, v8, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    .line 16
    .line 17
    invoke-virtual {v1, p2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    move v3, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v3, p2

    .line 30
    :goto_0
    iget-object v9, v8, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 33
    .line 34
    .line 35
    new-instance v10, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda15;

    .line 36
    .line 37
    move-object v1, v10

    .line 38
    move-object v2, v8

    .line 39
    move-object v4, v9

    .line 40
    move v5, p1

    .line 41
    move-object v6, p3

    .line 42
    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/am/AppExitInfoTracker;ILjava/util/ArrayList;ILjava/lang/Integer;Ljava/lang/Integer;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v8, v10}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-lez v1, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->addLocked(IILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :goto_1
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p0
.end method

.method public remove(II)Landroid/util/Pair;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    .line 9
    .line 10
    invoke-virtual {v1, p2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Landroid/util/SparseArray;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/util/Pair;

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 46
    .line 47
    iget-object p1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, Ljava/lang/Long;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 52
    .line 53
    .line 54
    move-result-wide p1

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppExitInfoTracker;->isFresh(J)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-eqz p0, :cond_1

    .line 60
    .line 61
    move-object v1, v2

    .line 62
    :cond_1
    monitor-exit v0

    .line 63
    return-object v1

    .line 64
    :cond_2
    monitor-exit v0

    .line 65
    return-object v1

    .line 66
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0
.end method

.method public final removeByUidLocked(IZ)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    :cond_0
    if-eqz p2, :cond_2

    .line 22
    .line 23
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iget-object p2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    add-int/lit8 p2, p2, -0x1

    .line 34
    .line 35
    :goto_0
    if-ltz p2, :cond_3

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-ne v0, p1, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    .line 50
    .line 51
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 52
    .line 53
    .line 54
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 60
    .line 61
    .line 62
    :cond_3
    return-void
.end method

.method public final removeByUserId(I)V
    .locals 3

    .line 1
    const/4 v0, -0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    const/4 v1, -0x1

    .line 20
    if-ne p1, v1, :cond_1

    .line 21
    .line 22
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    add-int/lit8 v1, v1, -0x1

    .line 38
    .line 39
    :goto_0
    if-ltz v1, :cond_3

    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-ne v2, p1, :cond_2

    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    .line 54
    .line 55
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 56
    .line 57
    .line 58
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0
.end method
