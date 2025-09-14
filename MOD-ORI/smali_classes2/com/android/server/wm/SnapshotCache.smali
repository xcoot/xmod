.class public abstract Lcom/android/server/wm/SnapshotCache;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sMaxSnapshotCache:I = 0x5


# instance fields
.field public final mAppIdMap:Landroid/util/ArrayMap;

.field public final mLock:Ljava/lang/Object;

.field public final mName:Ljava/lang/String;

.field public final mRunningCache:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/SnapshotCache;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/SnapshotCache;->mAppIdMap:Landroid/util/ArrayMap;

    .line 17
    .line 18
    new-instance v0, Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/wm/SnapshotCache;->mName:Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final getSnapshot(Ljava/lang/Integer;)Landroid/window/TaskSnapshot;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SnapshotCache;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/wm/SnapshotCache$CacheEntry;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/wm/SnapshotCache$CacheEntry;->snapshot:Landroid/window/TaskSnapshot;

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-object p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    monitor-exit v0

    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public abstract putSnapshot(Lcom/android/server/wm/WindowContainer;Landroid/window/TaskSnapshot;)V
.end method

.method public final removeRunningEntry(Ljava/lang/Integer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SnapshotCache;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/server/wm/SnapshotCache$CacheEntry;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/wm/SnapshotCache;->mAppIdMap:Landroid/util/ArrayMap;

    .line 15
    .line 16
    iget-object v3, v1, Lcom/android/server/wm/SnapshotCache$CacheEntry;->topApp:Lcom/android/server/wm/ActivityRecord;

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    iget-object p0, v1, Lcom/android/server/wm/SnapshotCache$CacheEntry;->snapshot:Landroid/window/TaskSnapshot;

    .line 27
    .line 28
    const/4 p1, 0x2

    .line 29
    invoke-virtual {p0, p1}, Landroid/window/TaskSnapshot;->removeReference(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method
