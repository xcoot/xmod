.class public final Lcom/android/server/am/ProcessStatsService$LocalService;
.super Lcom/android/internal/app/procstats/ProcessStatsInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ProcessStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessStatsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService$LocalService;->this$0:Lcom/android/server/am/ProcessStatsService;

    .line 3
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessStatsInternal;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final getUidProcStateStatsOverTime(J)Landroid/util/SparseArray;
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService$LocalService;->this$0:Lcom/android/server/am/ProcessStatsService;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats;

    .line 8
    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessStats;-><init>()V

    .line 11
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 17
    move-result-wide v2

    .line 18
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    move-result-wide v5

    .line 24
    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 26
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 28
    iput-wide v2, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 30
    invoke-virtual {v0, v4}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    .line 33
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 35
    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 37
    iget-wide v5, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    .line 39
    sub-long/2addr v3, v5

    .line 40
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    cmp-long v1, v3, p1

    .line 43
    const/4 v2, 0x0

    .line 44
    if-gez v1, :cond_2

    .line 46
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 48
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-virtual {p0, v2, v2, v1}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    .line 55
    move-result-object v3

    .line 56
    if-eqz v3, :cond_1

    .line 58
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 61
    move-result v4

    .line 62
    if-lez v4, :cond_1

    .line 64
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 67
    move-result v4

    .line 68
    sub-int/2addr v4, v1

    .line 69
    :goto_0
    if-ltz v4, :cond_1

    .line 71
    iget-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 73
    iget-wide v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    .line 75
    sub-long/2addr v5, v7

    .line 76
    cmp-long v1, v5, p1

    .line 78
    if-gez v1, :cond_1

    .line 80
    new-instance v1, Landroid/util/AtomicFile;

    .line 82
    new-instance v5, Ljava/io/File;

    .line 84
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    move-result-object v6

    .line 88
    check-cast v6, Ljava/lang/String;

    .line 90
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-direct {v1, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 96
    add-int/lit8 v5, v4, -0x1

    .line 98
    new-instance v6, Lcom/android/internal/app/procstats/ProcessStats;

    .line 100
    invoke-direct {v6, v2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 103
    invoke-static {v6, v1}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)V

    .line 106
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 108
    if-nez v1, :cond_0

    .line 110
    invoke-virtual {v0, v6}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    .line 113
    goto :goto_1

    .line 114
    :catchall_0
    move-exception p1

    .line 115
    goto :goto_2

    .line 116
    :cond_0
    const-string v1, "ProcessStatsService"

    .line 118
    new-instance v7, Ljava/lang/StringBuilder;

    .line 120
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    const-string v8, "Failure reading "

    .line 125
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 131
    move-result-object v4

    .line 132
    check-cast v4, Ljava/lang/String;

    .line 134
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v4, "; "

    .line 139
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v4, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 144
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object v4

    .line 151
    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :goto_1
    move v4, v5

    .line 155
    goto :goto_0

    .line 156
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 158
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 161
    goto :goto_3

    .line 162
    :goto_2
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 164
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 167
    throw p1

    .line 168
    :cond_2
    :goto_3
    iget-object p0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    .line 170
    new-instance p1, Landroid/util/SparseArray;

    .line 172
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 175
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 178
    move-result p2

    .line 179
    :goto_4
    if-ge v2, p2, :cond_3

    .line 181
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 184
    move-result v0

    .line 185
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 188
    move-result-object v1

    .line 189
    check-cast v1, Lcom/android/internal/app/procstats/UidState;

    .line 191
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/UidState;->getAggregatedDurationsInStates()[J

    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 198
    add-int/lit8 v2, v2, 0x1

    .line 200
    goto :goto_4

    .line 201
    :cond_3
    return-object p1

    .line 202
    :catchall_1
    move-exception p0

    .line 203
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 204
    throw p0
.end method
