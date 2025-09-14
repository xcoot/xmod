.class public final Lcom/android/server/content/SyncManager$SyncTimeTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mLastWasSyncing:Z

.field public mTimeSpentSyncing:J

.field public mWhenSyncStarted:J

.field public final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->this$0:Lcom/android/server/content/SyncManager;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final declared-synchronized update()V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->this$0:Lcom/android/server/content/SyncManager;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    xor-int/lit8 v0, v0, 0x1

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iput-wide v1, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    iget-wide v3, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J

    .line 30
    .line 31
    iget-wide v5, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    .line 32
    .line 33
    sub-long/2addr v1, v5

    .line 34
    add-long/2addr v1, v3

    .line 35
    iput-wide v1, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J

    .line 36
    .line 37
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :goto_1
    monitor-exit p0

    .line 42
    throw v0
.end method
