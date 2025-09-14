.class public final Lcom/android/server/wm/SnapshotPersistQueue$1;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/SnapshotPersistQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SnapshotPersistQueue;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 2
    .line 3
    const-string p1, "TaskSnapshotPersister"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    .line 5
    .line 6
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 12
    .line 13
    iget-boolean v2, v1, Lcom/android/server/wm/SnapshotPersistQueue;->mPaused:Z

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    :cond_0
    :goto_1
    move v2, v3

    .line 20
    goto :goto_2

    .line 21
    :cond_1
    iget-object v1, v1, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 32
    .line 33
    iget-object v2, v2, Lcom/android/server/wm/SnapshotPersistQueue;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->isReady(Lcom/android/server/pm/UserManagerInternal;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->onDequeuedLocked()V

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    goto :goto_2

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_4

    .line 48
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 49
    .line 50
    iget-object v2, v2, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->write()V

    .line 62
    .line 63
    .line 64
    :cond_3
    const-wide/16 v0, 0x64

    .line 65
    .line 66
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 67
    .line 68
    .line 69
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 70
    .line 71
    iget-object v1, v0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    .line 72
    .line 73
    monitor-enter v1

    .line 74
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_5

    .line 83
    .line 84
    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 85
    .line 86
    iget-boolean v2, v2, Lcom/android/server/wm/SnapshotPersistQueue;->mPaused:Z

    .line 87
    .line 88
    if-nez v2, :cond_5

    .line 89
    .line 90
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    goto :goto_0

    .line 92
    :catchall_1
    move-exception p0

    .line 93
    goto :goto_3

    .line 94
    :cond_5
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 95
    .line 96
    iput-boolean v0, v2, Lcom/android/server/wm/SnapshotPersistQueue;->mQueueIdling:Z

    .line 97
    .line 98
    iget-object v0, v2, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 104
    .line 105
    iput-boolean v3, v0, Lcom/android/server/wm/SnapshotPersistQueue;->mQueueIdling:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 106
    .line 107
    :catch_0
    :try_start_3
    monitor-exit v1

    .line 108
    goto :goto_0

    .line 109
    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 110
    throw p0

    .line 111
    :goto_4
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 112
    throw p0
.end method
