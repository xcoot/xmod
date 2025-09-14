.class public final Lcom/android/server/wm/TaskSnapshotPersister;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

.field public final mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

.field public final mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SnapshotPersistQueue;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    new-instance p1, Landroid/util/ArraySet;

    .line 13
    .line 14
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final persistSnapshot(IILandroid/window/TaskSnapshot;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :try_start_1
    iget-object v8, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 17
    .line 18
    iget-object v7, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 19
    .line 20
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;

    .line 24
    .line 25
    move-object v2, p0

    .line 26
    move-object v3, v8

    .line 27
    move v4, p1

    .line 28
    move v5, p2

    .line 29
    move-object v6, p3

    .line 30
    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;-><init>(Lcom/android/server/wm/SnapshotPersistQueue;IILandroid/window/TaskSnapshot;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    invoke-virtual {v8, p0, p1}, Lcom/android/server/wm/SnapshotPersistQueue;->addToQueueInternal(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;Z)V

    .line 35
    .line 36
    .line 37
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_0

    .line 42
    :catchall_1
    move-exception p0

    .line 43
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 44
    :try_start_4
    throw p0

    .line 45
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 46
    throw p0
.end method

.method public final removeSnapshot(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/android/server/wm/SnapshotPersistQueue$DeleteWriteQueueItem;

    .line 24
    .line 25
    invoke-direct {v3, v2, p1, p2, p0}, Lcom/android/server/wm/SnapshotPersistQueue$DeleteWriteQueueItem;-><init>(Lcom/android/server/wm/SnapshotPersistQueue;IILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    invoke-virtual {v2, v3, p0}, Lcom/android/server/wm/SnapshotPersistQueue;->addToQueueInternal(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;Z)V

    .line 30
    .line 31
    .line 32
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :catchall_1
    move-exception p0

    .line 38
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 39
    :try_start_4
    throw p0

    .line 40
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 41
    throw p0
.end method
