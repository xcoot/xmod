.class public final Lcom/android/server/wm/ActivitySnapshotCache;
.super Lcom/android/server/wm/SnapshotCache;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final putSnapshot(Landroid/window/TaskSnapshot;Lcom/android/server/wm/ActivityRecord;)V
    .locals 6

    .line 2
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p1, v1}, Landroid/window/TaskSnapshot;->addReference(I)V

    .line 4
    iget-object v2, p0, Lcom/android/server/wm/SnapshotCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/SnapshotCache$CacheEntry;

    if-eqz v3, :cond_0

    .line 6
    iget-object v4, p0, Lcom/android/server/wm/SnapshotCache;->mAppIdMap:Landroid/util/ArrayMap;

    iget-object v5, v3, Lcom/android/server/wm/SnapshotCache$CacheEntry;->topApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v3, v3, Lcom/android/server/wm/SnapshotCache$CacheEntry;->snapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v3, v1}, Landroid/window/TaskSnapshot;->removeReference(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/SnapshotCache;->mAppIdMap:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p0, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/SnapshotCache$CacheEntry;

    invoke-direct {v1, p1, p2}, Lcom/android/server/wm/SnapshotCache$CacheEntry;-><init>(Landroid/window/TaskSnapshot;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final bridge synthetic putSnapshot(Lcom/android/server/wm/WindowContainer;Landroid/window/TaskSnapshot;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/ActivitySnapshotCache;->putSnapshot(Landroid/window/TaskSnapshot;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
