.class public final Lcom/android/server/wm/SnapshotPersistQueue;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public mPaused:Z

.field public final mPersister:Lcom/android/server/wm/SnapshotPersistQueue$1;

.field public mQueueIdling:Z

.field public mStarted:Z

.field public final mStoreQueueItems:Ljava/util/ArrayDeque;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mWriteQueue:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayDeque;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mStoreQueueItems:Ljava/util/ArrayDeque;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance v0, Lcom/android/server/wm/SnapshotPersistQueue$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/android/server/wm/SnapshotPersistQueue$1;-><init>(Lcom/android/server/wm/SnapshotPersistQueue;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mPersister:Lcom/android/server/wm/SnapshotPersistQueue$1;

    .line 31
    .line 32
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 41
    .line 42
    return-void
.end method

.method public static deleteSnapshot(IILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V
    .locals 3

    .line 1
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getProtoFile(II)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getLowResolutionBitmapFile(II)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getHighResolutionBitmapFile(II)Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method


# virtual methods
.method public final addToQueueInternal(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iget-object p2, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->onQueuedLocked()V

    .line 20
    .line 21
    .line 22
    :goto_1
    iget-object p1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mStoreQueueItems:Ljava/util/ArrayDeque;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 p2, 0x2

    .line 29
    if-le p1, p2, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mStoreQueueItems:Ljava/util/ArrayDeque;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;

    .line 38
    .line 39
    iget-object p2, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v0, "Queue is too deep! Purged item with index="

    .line 47
    .line 48
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget p1, p1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mId:I

    .line 52
    .line 53
    const-string v0, "WindowManager"

    .line 54
    .line 55
    invoke-static {p2, p1, v0}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    iget-boolean p1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mPaused:Z

    .line 60
    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 66
    .line 67
    .line 68
    :cond_2
    return-void
.end method

.method public peekQueueSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public waitForQueueEmpty()V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mQueueIdling:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    const-wide/16 v0, 0x64

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p0
.end method
