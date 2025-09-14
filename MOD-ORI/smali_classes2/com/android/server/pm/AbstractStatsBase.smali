.class public abstract Lcom/android/server/pm/AbstractStatsBase;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBackgroundThreadName:Ljava/lang/String;

.field public final mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mFileLock:Ljava/lang/Object;

.field public final mFileName:Ljava/lang/String;

.field public final mLastTimeWritten:Ljava/util/concurrent/atomic/AtomicLong;

.field public final mLock:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

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
    iput-object v0, p0, Lcom/android/server/pm/AbstractStatsBase;->mFileLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/pm/AbstractStatsBase;->mLastTimeWritten:Ljava/util/concurrent/atomic/AtomicLong;

    .line 19
    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/pm/AbstractStatsBase;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/server/pm/AbstractStatsBase;->mFileName:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/android/server/pm/AbstractStatsBase;->mBackgroundThreadName:Ljava/lang/String;

    .line 31
    .line 32
    iput-boolean p3, p0, Lcom/android/server/pm/AbstractStatsBase;->mLock:Z

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final getFile()Landroid/util/AtomicFile;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/File;

    .line 6
    .line 7
    const-string/jumbo v2, "system"

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/io/File;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/pm/AbstractStatsBase;->mFileName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance p0, Landroid/util/AtomicFile;

    .line 21
    .line 22
    invoke-direct {p0, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 23
    .line 24
    .line 25
    return-object p0
.end method

.method public final maybeWriteAsync(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/server/pm/AbstractStatsBase;->mLastTimeWritten:Ljava/util/concurrent/atomic/AtomicLong;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    sub-long/2addr v0, v2

    .line 12
    const-wide/32 v2, 0x1b7740

    .line 13
    .line 14
    .line 15
    cmp-long v0, v0, v2

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-gez v0, :cond_0

    .line 19
    .line 20
    return v1

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/AbstractStatsBase;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    new-instance v0, Lcom/android/server/pm/AbstractStatsBase$1;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/pm/AbstractStatsBase;->mBackgroundThreadName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/pm/AbstractStatsBase$1;-><init>(Lcom/android/server/pm/AbstractStatsBase;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 38
    .line 39
    .line 40
    return v2

    .line 41
    :cond_1
    return v1
.end method

.method public final read(Lcom/android/server/utils/WatchedArrayMap;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/pm/AbstractStatsBase;->mLock:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AbstractStatsBase;->mFileLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AbstractStatsBase;->readInternal(Lcom/android/server/utils/WatchedArrayMap;)V

    .line 10
    .line 11
    .line 12
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    goto :goto_1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :catchall_1
    move-exception p0

    .line 18
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 19
    :try_start_4
    throw p0

    .line 20
    :goto_0
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 21
    throw p0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/AbstractStatsBase;->mFileLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AbstractStatsBase;->readInternal(Lcom/android/server/utils/WatchedArrayMap;)V

    .line 26
    .line 27
    .line 28
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 29
    :goto_1
    iget-object p0, p0, Lcom/android/server/pm/AbstractStatsBase;->mLastTimeWritten:Ljava/util/concurrent/atomic/AtomicLong;

    .line 30
    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_2
    move-exception p0

    .line 40
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 41
    throw p0
.end method

.method public abstract readInternal(Lcom/android/server/utils/WatchedArrayMap;)V
.end method

.method public final writeImpl(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/pm/AbstractStatsBase;->mLock:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AbstractStatsBase;->mFileLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AbstractStatsBase;->writeInternal(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    goto :goto_1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :catchall_1
    move-exception p0

    .line 18
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 19
    :try_start_4
    throw p0

    .line 20
    :goto_0
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 21
    throw p0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/AbstractStatsBase;->mFileLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AbstractStatsBase;->writeInternal(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    :goto_1
    return-void

    .line 30
    :catchall_2
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 32
    throw p0
.end method

.method public abstract writeInternal(Ljava/lang/Object;)V
.end method
