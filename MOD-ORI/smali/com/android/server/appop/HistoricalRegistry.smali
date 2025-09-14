.class public final Lcom/android/server/appop/HistoricalRegistry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

.field public static final KEEP_WTF_LOG:Z

.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public mBaseSnapshotInterval:J

.field public mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

.field public volatile mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

.field public final mInMemoryLock:Ljava/lang/Object;

.field public mIntervalCompressionMultiplier:J

.field public mMode:I

.field public mNextPersistDueTimeMillis:J

.field public final mOnDiskLock:Ljava/lang/Object;

.field public mPendingHistoryOffsetMillis:J

.field public final mPendingWrites:Ljava/util/LinkedList;

.field public mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;


# direct methods
.method public static -$$Nest$smwtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 6

    .line 1
    const-string v0, "\nfiles: "

    .line 2
    .line 3
    const-string/jumbo v1, "wtf"

    .line 4
    .line 5
    .line 6
    sget-object v2, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v2, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    .line 10
    .line 11
    sget-boolean p0, Lcom/android/server/appop/HistoricalRegistry;->KEEP_WTF_LOG:Z

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    :try_start_0
    new-instance p0, Ljava/io/File;

    .line 16
    .line 17
    new-instance v2, Ljava/io/File;

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-string v4, "appops"

    .line 24
    .line 25
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {p0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    new-instance v1, Ljava/io/PrintWriter;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    const/16 p0, 0xa

    .line 63
    .line 64
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 84
    .line 85
    .line 86
    if-eqz p2, :cond_0

    .line 87
    .line 88
    new-instance p0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :catchall_0
    move-exception p0

    .line 113
    goto :goto_1

    .line 114
    :cond_0
    const-string p0, "\nfiles: none"

    .line 115
    .line 116
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .line 118
    .line 119
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :catchall_1
    move-exception p1

    .line 128
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 132
    :catch_0
    :cond_1
    :goto_3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/appop/HistoricalRegistry;->KEEP_WTF_LOG:Z

    .line 4
    .line 5
    const-string v0, "HistoricalRegistry"

    .line 6
    .line 7
    sput-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    const-wide/16 v1, 0xf

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Lcom/android/server/appop/HistoricalRegistry;->DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    .line 20
    .line 21
    sget-wide v0, Lcom/android/server/appop/HistoricalRegistry;->DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

    .line 22
    .line 23
    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    .line 24
    .line 25
    const-wide/16 v0, 0xa

    .line 26
    .line 27
    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 30
    .line 31
    new-instance v0, Lcom/android/server/appop/DiscreteRegistry;

    .line 32
    .line 33
    invoke-direct {v0, p1}, Lcom/android/server/appop/DiscreteRegistry;-><init>(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final clearHistoricalRegistry()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    sget-object p0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string v2, "Interaction before persistence initialized"

    .line 16
    .line 17
    invoke-static {p0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :catchall_1
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->clearHistoryOnDiskDLocked()V

    .line 28
    .line 29
    .line 30
    const-wide/16 v2, 0x0

    .line 31
    .line 32
    iput-wide v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 33
    .line 34
    iput-wide v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingHistoryOffsetMillis:J

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    iput-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 38
    .line 39
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 41
    return-void

    .line 42
    :goto_0
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 43
    :try_start_6
    throw p0

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 45
    throw p0
.end method

.method public final clearHistoryOnDiskDLocked()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :try_start_0
    iput-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    iput-wide v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    .line 24
    .line 25
    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-static {}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->clearHistoryDLocked$1()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;ILjava/lang/String;II)V
    .locals 10

    .line 1
    const-string v0, "  "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "History:"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "  mode="

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    .line 26
    .line 27
    invoke-static {v0}, Landroid/app/AppOpsManager;->historicalModeToString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;

    .line 35
    .line 36
    const-string v8, "    "

    .line 37
    .line 38
    move-object v3, v0

    .line 39
    move v4, p2

    .line 40
    move v5, p4

    .line 41
    move v6, p5

    .line 42
    move-object v7, p1

    .line 43
    move-object v9, p3

    .line 44
    invoke-direct/range {v3 .. v9}, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;-><init>(IIILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide p2

    .line 51
    invoke-virtual {p0, p2, p3}, Lcom/android/server/appop/HistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    .line 52
    .line 53
    .line 54
    move-result-object p4

    .line 55
    invoke-virtual {p4}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    sub-long v3, p2, v3

    .line 60
    .line 61
    invoke-virtual {p4}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v5

    .line 65
    sub-long v5, p2, v5

    .line 66
    .line 67
    invoke-virtual {p4, v3, v4, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p4, v0}, Landroid/app/AppOpsManager$HistoricalOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    .line 74
    .line 75
    .line 76
    move-result p4

    .line 77
    if-nez p4, :cond_0

    .line 78
    .line 79
    sget-object p0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    .line 80
    .line 81
    const-string p1, "Interaction before persistence initialized"

    .line 82
    .line 83
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    return-void

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    goto :goto_2

    .line 91
    :catchall_1
    move-exception p0

    .line 92
    goto :goto_1

    .line 93
    :cond_0
    :try_start_3
    iget-object p4, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    .line 94
    .line 95
    invoke-virtual {p4}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoryDLocked()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object p4

    .line 99
    if-eqz p4, :cond_1

    .line 100
    .line 101
    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 102
    .line 103
    sub-long/2addr v3, p2

    .line 104
    iget-wide p0, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    .line 105
    .line 106
    sub-long/2addr v3, p0

    .line 107
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    const/4 p1, 0x0

    .line 112
    :goto_0
    if-ge p1, p0, :cond_2

    .line 113
    .line 114
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p5

    .line 118
    check-cast p5, Landroid/app/AppOpsManager$HistoricalOps;

    .line 119
    .line 120
    invoke-virtual {p5, v3, v4}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p5}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    .line 124
    .line 125
    .line 126
    move-result-wide v5

    .line 127
    sub-long v5, p2, v5

    .line 128
    .line 129
    invoke-virtual {p5}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    .line 130
    .line 131
    .line 132
    move-result-wide v7

    .line 133
    sub-long v7, p2, v7

    .line 134
    .line 135
    invoke-virtual {p5, v5, v6, v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p5, v0}, Landroid/app/AppOpsManager$HistoricalOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    .line 139
    .line 140
    .line 141
    add-int/lit8 p1, p1, 0x1

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_1
    const-string p0, "  Empty"

    .line 145
    .line 146
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 150
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 151
    return-void

    .line 152
    :goto_1
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 153
    :try_start_6
    throw p0

    .line 154
    :goto_2
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 155
    throw p0
.end method

.method public final dumpDiscreteData(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;I)V
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move/from16 v2, p9

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/android/server/appop/DiscreteRegistry;->getAllDiscreteOps()Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 10
    .line 11
    .line 12
    move-result-object v15

    .line 13
    const/4 v14, 0x1

    .line 14
    const/4 v3, -0x1

    .line 15
    const/4 v13, 0x0

    .line 16
    move/from16 v4, p6

    .line 17
    .line 18
    if-ne v4, v3, :cond_0

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_0
    move-object v11, v3

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-array v3, v14, [Ljava/lang/String;

    .line 24
    .line 25
    invoke-static/range {p6 .. p6}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    aput-object v4, v3, v13

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :goto_1
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    .line 37
    .line 38
    .line 39
    move-result-wide v6

    .line 40
    new-instance v16, Landroid/util/ArrayMap;

    .line 41
    .line 42
    invoke-direct/range {v16 .. v16}, Landroid/util/ArrayMap;-><init>()V

    .line 43
    .line 44
    .line 45
    const-wide/16 v4, 0x0

    .line 46
    .line 47
    const/16 v17, 0x1f

    .line 48
    .line 49
    move-object v3, v15

    .line 50
    move/from16 v8, p5

    .line 51
    .line 52
    move/from16 v9, p2

    .line 53
    .line 54
    move-object/from16 v10, p3

    .line 55
    .line 56
    move-object/from16 v12, p4

    .line 57
    .line 58
    move/from16 v13, v17

    .line 59
    .line 60
    move-object/from16 v14, v16

    .line 61
    .line 62
    invoke-static/range {v3 .. v14}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->-$$Nest$mfilter(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/util/ArrayMap;)V

    .line 63
    .line 64
    .line 65
    const-string v3, "  "

    .line 66
    .line 67
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v4, "Largest chain id: "

    .line 71
    .line 72
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, v1, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 76
    .line 77
    iget v1, v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mLargestChainId:I

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 83
    .line 84
    .line 85
    iget-object v1, v15, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    const/4 v13, 0x0

    .line 92
    :goto_2
    if-ge v13, v1, :cond_8

    .line 93
    .line 94
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v4, "Uid: "

    .line 98
    .line 99
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v4, v15, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 103
    .line 104
    invoke-virtual {v4, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 112
    .line 113
    .line 114
    iget-object v4, v15, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 115
    .line 116
    invoke-virtual {v4, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    check-cast v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 121
    .line 122
    iget-object v5, v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 123
    .line 124
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    const/4 v6, 0x0

    .line 129
    :goto_3
    if-ge v6, v5, :cond_7

    .line 130
    .line 131
    const-string v7, "    "

    .line 132
    .line 133
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string v7, "Package: "

    .line 137
    .line 138
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object v7, v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 142
    .line 143
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    check-cast v7, Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 153
    .line 154
    .line 155
    iget-object v7, v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 156
    .line 157
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    check-cast v7, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    .line 162
    .line 163
    iget-object v8, v7, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 164
    .line 165
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 166
    .line 167
    .line 168
    move-result v8

    .line 169
    const/4 v9, 0x0

    .line 170
    :goto_4
    if-ge v9, v8, :cond_6

    .line 171
    .line 172
    const-string v10, "      "

    .line 173
    .line 174
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-object v10, v7, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 178
    .line 179
    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v10

    .line 183
    check-cast v10, Ljava/lang/Integer;

    .line 184
    .line 185
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 186
    .line 187
    .line 188
    move-result v10

    .line 189
    invoke-static {v10}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v10

    .line 193
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 197
    .line 198
    .line 199
    iget-object v10, v7, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 200
    .line 201
    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v10

    .line 205
    check-cast v10, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    .line 206
    .line 207
    iget-object v11, v10, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 208
    .line 209
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    .line 210
    .line 211
    .line 212
    move-result v11

    .line 213
    const/4 v12, 0x0

    .line 214
    :goto_5
    if-ge v12, v11, :cond_5

    .line 215
    .line 216
    const-string v14, "        "

    .line 217
    .line 218
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    move/from16 p0, v1

    .line 222
    .line 223
    const-string v1, "Attribution: "

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    iget-object v1, v10, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 229
    .line 230
    invoke-virtual {v1, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    check-cast v1, Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 240
    .line 241
    .line 242
    iget-object v1, v10, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 243
    .line 244
    invoke-virtual {v1, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    check-cast v1, Ljava/util/List;

    .line 249
    .line 250
    move-object/from16 p2, v4

    .line 251
    .line 252
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    move/from16 p3, v5

    .line 257
    .line 258
    const/4 v5, 0x1

    .line 259
    if-ge v2, v5, :cond_1

    .line 260
    .line 261
    const/4 v2, 0x0

    .line 262
    const/16 v18, 0x0

    .line 263
    .line 264
    goto :goto_6

    .line 265
    :cond_1
    sub-int v5, v4, v2

    .line 266
    .line 267
    const/4 v2, 0x0

    .line 268
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 269
    .line 270
    .line 271
    move-result v5

    .line 272
    move/from16 v18, v5

    .line 273
    .line 274
    :goto_6
    move/from16 v5, v18

    .line 275
    .line 276
    :goto_7
    if-ge v5, v4, :cond_4

    .line 277
    .line 278
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v16

    .line 282
    move-object/from16 v2, v16

    .line 283
    .line 284
    check-cast v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 285
    .line 286
    move-object/from16 p4, v1

    .line 287
    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    const-string v1, "Access ["

    .line 310
    .line 311
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    iget v1, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    .line 315
    .line 316
    invoke-static {v1}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    const-string v1, "-"

    .line 324
    .line 325
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    iget v1, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    .line 329
    .line 330
    invoke-static {v1}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    const-string v1, "] at "

    .line 338
    .line 339
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    move-object/from16 p5, v3

    .line 343
    .line 344
    move/from16 p6, v4

    .line 345
    .line 346
    iget-wide v3, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    .line 347
    .line 348
    sget-wide v16, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryQuantization:J

    .line 349
    .line 350
    div-long v3, v3, v16

    .line 351
    .line 352
    mul-long v3, v3, v16

    .line 353
    .line 354
    move-object/from16 v1, p8

    .line 355
    .line 356
    invoke-virtual {v1, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 357
    .line 358
    .line 359
    invoke-virtual/range {p7 .. p8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    iget-wide v3, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    .line 367
    .line 368
    const-wide/16 v16, -0x1

    .line 369
    .line 370
    cmp-long v16, v3, v16

    .line 371
    .line 372
    if-eqz v16, :cond_2

    .line 373
    .line 374
    const-string v1, " for "

    .line 375
    .line 376
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-static {v3, v4}, Lcom/android/server/appop/DiscreteRegistry;->-$$Nest$smdiscretizeDuration(J)J

    .line 380
    .line 381
    .line 382
    move-result-wide v3

    .line 383
    invoke-virtual {v0, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 384
    .line 385
    .line 386
    const-string v1, " milliseconds "

    .line 387
    .line 388
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    :cond_2
    iget v1, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    .line 392
    .line 393
    if-eqz v1, :cond_3

    .line 394
    .line 395
    const-string v3, " attribution flags="

    .line 396
    .line 397
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 401
    .line 402
    .line 403
    const-string v1, " with chainId="

    .line 404
    .line 405
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    iget v1, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    .line 409
    .line 410
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 411
    .line 412
    .line 413
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 414
    .line 415
    .line 416
    add-int/lit8 v5, v5, 0x1

    .line 417
    .line 418
    move-object/from16 v1, p4

    .line 419
    .line 420
    move-object/from16 v3, p5

    .line 421
    .line 422
    move/from16 v4, p6

    .line 423
    .line 424
    const/4 v2, 0x0

    .line 425
    goto/16 :goto_7

    .line 426
    .line 427
    :cond_4
    move-object/from16 p5, v3

    .line 428
    .line 429
    add-int/lit8 v12, v12, 0x1

    .line 430
    .line 431
    move/from16 v1, p0

    .line 432
    .line 433
    move-object/from16 v4, p2

    .line 434
    .line 435
    move/from16 v5, p3

    .line 436
    .line 437
    move/from16 v2, p9

    .line 438
    .line 439
    goto/16 :goto_5

    .line 440
    .line 441
    :cond_5
    move/from16 p0, v1

    .line 442
    .line 443
    move-object/from16 p5, v3

    .line 444
    .line 445
    move-object/from16 p2, v4

    .line 446
    .line 447
    move/from16 p3, v5

    .line 448
    .line 449
    add-int/lit8 v9, v9, 0x1

    .line 450
    .line 451
    move/from16 v2, p9

    .line 452
    .line 453
    goto/16 :goto_4

    .line 454
    .line 455
    :cond_6
    move/from16 p0, v1

    .line 456
    .line 457
    move-object/from16 p5, v3

    .line 458
    .line 459
    move-object/from16 p2, v4

    .line 460
    .line 461
    move/from16 p3, v5

    .line 462
    .line 463
    add-int/lit8 v6, v6, 0x1

    .line 464
    .line 465
    move/from16 v2, p9

    .line 466
    .line 467
    goto/16 :goto_3

    .line 468
    .line 469
    :cond_7
    move/from16 p0, v1

    .line 470
    .line 471
    move-object/from16 p5, v3

    .line 472
    .line 473
    add-int/lit8 v13, v13, 0x1

    .line 474
    .line 475
    move/from16 v2, p9

    .line 476
    .line 477
    goto/16 :goto_2

    .line 478
    .line 479
    :cond_8
    return-void
.end method

.method public final getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 8
    .line 9
    sub-long/2addr v3, p1

    .line 10
    iget-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    .line 11
    .line 12
    cmp-long v7, v3, v5

    .line 13
    .line 14
    if-lez v7, :cond_0

    .line 15
    .line 16
    sub-long v7, v3, v5

    .line 17
    .line 18
    iput-wide v7, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingHistoryOffsetMillis:J

    .line 19
    .line 20
    :cond_0
    sub-long/2addr v5, v3

    .line 21
    invoke-virtual {v0, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->setEndTime(J)V

    .line 22
    .line 23
    .line 24
    cmp-long v0, v3, v1

    .line 25
    .line 26
    if-lez v0, :cond_1

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 42
    .line 43
    .line 44
    iget-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    .line 45
    .line 46
    add-long/2addr p1, v0

    .line 47
    iput-wide p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 53
    .line 54
    iget-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    .line 55
    .line 56
    invoke-virtual {v0, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v5

    .line 65
    iget-wide v7, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    .line 66
    .line 67
    sub-long/2addr v5, v7

    .line 68
    invoke-virtual {v0, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginTime(J)V

    .line 69
    .line 70
    .line 71
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    .line 72
    .line 73
    .line 74
    move-result-wide v3

    .line 75
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 76
    .line 77
    invoke-virtual {v0, v3, v4}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 81
    .line 82
    new-instance v3, Lcom/android/server/appop/HistoricalRegistry$$ExternalSyntheticLambda0;

    .line 83
    .line 84
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-static {v3, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    const/4 v4, 0x1

    .line 92
    iput v4, v3, Landroid/os/Message;->what:I

    .line 93
    .line 94
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 99
    .line 100
    .line 101
    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    .line 102
    .line 103
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    :cond_3
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    .line 107
    .line 108
    invoke-direct {v0, v1, v2, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    .line 109
    .line 110
    .line 111
    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 112
    .line 113
    iget-wide v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    .line 114
    .line 115
    add-long/2addr p1, v1

    .line 116
    iput-wide p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 117
    .line 118
    return-object v0
.end method

.method public final incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;IIJII)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget v2, v0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    if-ne v2, v3, :cond_1

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "Interaction before persistence initialized"

    .line 20
    .line 21
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    monitor-exit v1

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    invoke-virtual {v0, v2, v3}, Lcom/android/server/appop/HistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const-wide/16 v11, 0x1

    .line 37
    .line 38
    move/from16 v5, p1

    .line 39
    .line 40
    move/from16 v6, p2

    .line 41
    .line 42
    move-object/from16 v7, p3

    .line 43
    .line 44
    move-object/from16 v8, p4

    .line 45
    .line 46
    move/from16 v9, p5

    .line 47
    .line 48
    move/from16 v10, p6

    .line 49
    .line 50
    invoke-virtual/range {v4 .. v12}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 51
    .line 52
    .line 53
    iget-object v13, v0, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    .line 54
    .line 55
    const-wide/16 v22, -0x1

    .line 56
    .line 57
    move/from16 v14, p2

    .line 58
    .line 59
    move/from16 v15, p1

    .line 60
    .line 61
    move/from16 v16, p6

    .line 62
    .line 63
    move/from16 v17, p5

    .line 64
    .line 65
    move/from16 v18, p9

    .line 66
    .line 67
    move/from16 v19, p10

    .line 68
    .line 69
    move-wide/from16 v20, p7

    .line 70
    .line 71
    move-object/from16 v24, p3

    .line 72
    .line 73
    move-object/from16 v25, p4

    .line 74
    .line 75
    invoke-virtual/range {v13 .. v25}, Lcom/android/server/appop/DiscreteRegistry;->recordDiscreteAccess(IIIIIIJJLjava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    monitor-exit v1

    .line 79
    return-void

    .line 80
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw v0
.end method

.method public final isPersistenceInitializedMLocked()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final offsetHistory(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    sget-object p0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string p1, "Interaction before persistence initialized"

    .line 16
    .line 17
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_4

    .line 25
    :catchall_1
    move-exception p0

    .line 26
    goto :goto_3

    .line 27
    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 28
    :try_start_4
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoryDLocked()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->clearHistoricalRegistry()V

    .line 35
    .line 36
    .line 37
    if-eqz v1, :cond_5

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/4 v3, 0x0

    .line 44
    :goto_0
    if-ge v3, v2, :cond_1

    .line 45
    .line 46
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Landroid/app/AppOpsManager$HistoricalOps;

    .line 51
    .line 52
    invoke-virtual {v4, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const-wide/16 v2, 0x0

    .line 59
    .line 60
    cmp-long p1, p1, v2

    .line 61
    .line 62
    if-gez p1, :cond_4

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    add-int/lit8 p1, p1, -0x1

    .line 69
    .line 70
    :goto_1
    if-ltz p1, :cond_4

    .line 71
    .line 72
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Landroid/app/AppOpsManager$HistoricalOps;

    .line 77
    .line 78
    invoke-virtual {p2}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    iget-wide v4, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    .line 83
    .line 84
    cmp-long v2, v2, v4

    .line 85
    .line 86
    if-gtz v2, :cond_2

    .line 87
    .line 88
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_2
    invoke-virtual {p2}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    .line 93
    .line 94
    .line 95
    move-result-wide v2

    .line 96
    iget-wide v4, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    .line 97
    .line 98
    cmp-long v2, v2, v4

    .line 99
    .line 100
    if-gez v2, :cond_3

    .line 101
    .line 102
    invoke-virtual {p2}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    .line 103
    .line 104
    .line 105
    move-result-wide v2

    .line 106
    iget-wide v4, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    .line 107
    .line 108
    sub-long/2addr v2, v4

    .line 109
    long-to-double v2, v2

    .line 110
    invoke-virtual {p2}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    .line 111
    .line 112
    .line 113
    move-result-wide v4

    .line 114
    long-to-double v4, v4

    .line 115
    div-double/2addr v2, v4

    .line 116
    sget-object v4, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 117
    .line 118
    invoke-virtual {p2, v2, v3}, Landroid/app/AppOpsManager$HistoricalOps;->spliceFromBeginning(D)Landroid/app/AppOpsManager$HistoricalOps;

    .line 119
    .line 120
    .line 121
    :cond_3
    :goto_2
    add-int/lit8 p1, p1, -0x1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_4
    iget-object p0, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    .line 125
    .line 126
    invoke-virtual {p0, v1}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->persistHistoricalOpsDLocked(Ljava/util/List;)V

    .line 127
    .line 128
    .line 129
    :cond_5
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 130
    return-void

    .line 131
    :goto_3
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 132
    :try_start_6
    throw p0

    .line 133
    :goto_4
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 134
    throw p0
.end method

.method public final persistPendingHistory()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 5
    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingHistoryOffsetMillis:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    .line 6
    new-instance v7, Lcom/android/server/appop/HistoricalRegistry$Persistence;

    iget-wide v8, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    iget-wide v10, p0, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/server/appop/HistoricalRegistry$Persistence;-><init>(JJ)V

    iput-object v7, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    .line 7
    invoke-virtual {p0, v3, v4}, Lcom/android/server/appop/HistoricalRegistry;->offsetHistory(J)V

    .line 8
    iput-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingHistoryOffsetMillis:J

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 9
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory(Ljava/util/List;)V

    .line 11
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    iget-object p0, p0, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteRegistry;->writeAndClearAccessHistory()V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 13
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    .line 14
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final persistPendingHistory(Ljava/util/List;)V
    .locals 7

    .line 15
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 16
    :try_start_0
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 20
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$HistoricalOps;

    if-lez v3, :cond_1

    add-int/lit8 v5, v3, -0x1

    .line 21
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$HistoricalOps;

    .line 22
    invoke-virtual {v5}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 23
    :cond_2
    iget-object p0, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    invoke-virtual {p0, p1}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->persistHistoricalOpsDLocked(Ljava/util/List;)V

    .line 24
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setHistoryParameters(IJJ)V
    .locals 6

    .line 1
    const-string v0, "New history parameters: mode:"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    sget-object v3, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Landroid/app/AppOpsManager;->historicalModeToString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, " baseSnapshotInterval:"

    .line 24
    .line 25
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, " intervalCompressionMultiplier:"

    .line 32
    .line 33
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    iget v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    if-eq v0, p1, :cond_1

    .line 50
    .line 51
    iput p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    .line 52
    .line 53
    if-nez p1, :cond_0

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->clearHistoryOnDiskDLocked()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_3

    .line 61
    :cond_0
    :goto_0
    iget p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    .line 62
    .line 63
    const/4 v0, 0x2

    .line 64
    if-ne p1, v0, :cond_1

    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    .line 67
    .line 68
    iput-boolean v3, p1, Lcom/android/server/appop/DiscreteRegistry;->mDebugMode:Z

    .line 69
    .line 70
    :cond_1
    iget-wide v4, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    .line 71
    .line 72
    cmp-long p1, v4, p2

    .line 73
    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    iput-wide p2, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    .line 77
    .line 78
    move p1, v3

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    const/4 p1, 0x0

    .line 81
    :goto_1
    iget-wide p2, p0, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    .line 82
    .line 83
    cmp-long p2, p2, p4

    .line 84
    .line 85
    if-eqz p2, :cond_3

    .line 86
    .line 87
    iput-wide p4, p0, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    move v3, p1

    .line 91
    :goto_2
    if-eqz v3, :cond_4

    .line 92
    .line 93
    new-instance p1, Lcom/android/server/appop/HistoricalRegistry$Persistence;

    .line 94
    .line 95
    iget-wide p2, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    .line 96
    .line 97
    iget-wide p4, p0, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    .line 98
    .line 99
    invoke-direct {p1, p2, p3, p4, p5}, Lcom/android/server/appop/HistoricalRegistry$Persistence;-><init>(JJ)V

    .line 100
    .line 101
    .line 102
    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    .line 103
    .line 104
    const-wide/16 p1, 0x0

    .line 105
    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/HistoricalRegistry;->offsetHistory(J)V

    .line 107
    .line 108
    .line 109
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 111
    return-void

    .line 112
    :catchall_1
    move-exception p0

    .line 113
    goto :goto_4

    .line 114
    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    :try_start_4
    throw p0

    .line 116
    :goto_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 117
    throw p0
.end method

.method public final systemReady(Landroid/content/ContentResolver;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    new-instance v2, Lcom/android/server/appop/DiscreteRegistry$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Lcom/android/server/appop/DiscreteRegistry$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appop/DiscreteRegistry;)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v3, "privacy"

    .line 14
    .line 15
    .line 16
    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    new-array v2, v1, [Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v3, v2}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Lcom/android/server/appop/DiscreteRegistry;->setDiscreteHistoryParameters(Landroid/provider/DeviceConfig$Properties;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "appop_history_parameters"

    .line 30
    .line 31
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v2, Lcom/android/server/appop/HistoricalRegistry$1;

    .line 36
    .line 37
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-direct {v2, p0, v3, p1}, Lcom/android/server/appop/HistoricalRegistry$1;-><init>(Lcom/android/server/appop/HistoricalRegistry;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/android/server/appop/HistoricalRegistry;->updateParametersFromSetting(Landroid/content/ContentResolver;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter p1

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 54
    .line 55
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    :try_start_1
    iget v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    .line 57
    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_0

    .line 65
    .line 66
    new-instance v1, Lcom/android/server/appop/HistoricalRegistry$Persistence;

    .line 67
    .line 68
    iget-wide v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    .line 69
    .line 70
    iget-wide v4, p0, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    .line 71
    .line 72
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/appop/HistoricalRegistry$Persistence;-><init>(JJ)V

    .line 73
    .line 74
    .line 75
    iput-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_1

    .line 80
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->getLastPersistTimeMillisDLocked()J

    .line 86
    .line 87
    .line 88
    move-result-wide v1

    .line 89
    const-wide/16 v3, 0x0

    .line 90
    .line 91
    cmp-long v3, v1, v3

    .line 92
    .line 93
    if-lez v3, :cond_1

    .line 94
    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 96
    .line 97
    .line 98
    move-result-wide v3

    .line 99
    sub-long/2addr v3, v1

    .line 100
    iput-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingHistoryOffsetMillis:J

    .line 101
    .line 102
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    return-void

    .line 105
    :catchall_1
    move-exception p0

    .line 106
    goto :goto_2

    .line 107
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    :try_start_4
    throw p0

    .line 109
    :goto_2
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 110
    throw p0
.end method

.method public final updateParametersFromSetting(Landroid/content/ContentResolver;)V
    .locals 17

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    const-string v3, "appop_history_parameters"

    .line 5
    .line 6
    move-object/from16 v4, p1

    .line 7
    .line 8
    invoke-static {v4, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string v4, ","

    .line 16
    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    array-length v5, v4

    .line 22
    const/4 v6, 0x0

    .line 23
    move v9, v1

    .line 24
    move-object v7, v6

    .line 25
    move-object v8, v7

    .line 26
    :goto_0
    sget-object v10, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    .line 27
    .line 28
    if-ge v9, v5, :cond_5

    .line 29
    .line 30
    aget-object v11, v4, v9

    .line 31
    .line 32
    const-string v12, "="

    .line 33
    .line 34
    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v12

    .line 38
    array-length v13, v12

    .line 39
    if-ne v13, v0, :cond_4

    .line 40
    .line 41
    aget-object v13, v12, v1

    .line 42
    .line 43
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v13

    .line 47
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    const/4 v14, -0x1

    .line 51
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v15

    .line 55
    sparse-switch v15, :sswitch_data_0

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :sswitch_0
    const-string v15, "baseIntervalMillis"

    .line 60
    .line 61
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v13

    .line 65
    if-nez v13, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    move v14, v0

    .line 69
    goto :goto_1

    .line 70
    :sswitch_1
    const-string/jumbo v15, "mode"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v13

    .line 77
    if-nez v13, :cond_2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    move v14, v2

    .line 81
    goto :goto_1

    .line 82
    :sswitch_2
    const-string/jumbo v15, "intervalMultiplier"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v13

    .line 89
    if-nez v13, :cond_3

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    move v14, v1

    .line 93
    :goto_1
    packed-switch v14, :pswitch_data_0

    .line 94
    .line 95
    .line 96
    const-string v12, "Unknown parameter: "

    .line 97
    .line 98
    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :pswitch_0
    aget-object v7, v12, v2

    .line 107
    .line 108
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    goto :goto_2

    .line 113
    :pswitch_1
    aget-object v6, v12, v2

    .line 114
    .line 115
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    goto :goto_2

    .line 120
    :pswitch_2
    aget-object v8, v12, v2

    .line 121
    .line 122
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    :cond_4
    :goto_2
    add-int/2addr v9, v2

    .line 127
    goto :goto_0

    .line 128
    :cond_5
    if-eqz v6, :cond_6

    .line 129
    .line 130
    if-eqz v7, :cond_6

    .line 131
    .line 132
    if-eqz v8, :cond_6

    .line 133
    .line 134
    :try_start_0
    invoke-static {v6}, Landroid/app/AppOpsManager;->parseHistoricalMode(Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v12

    .line 138
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 139
    .line 140
    .line 141
    move-result-wide v13

    .line 142
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    int-to-long v0, v0

    .line 147
    move-object/from16 v11, p0

    .line 148
    .line 149
    move-wide v15, v0

    .line 150
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/appop/HistoricalRegistry;->setHistoryParameters(IJJ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :catch_0
    :cond_6
    const-string v0, "Bad value forappop_history_parameters="

    .line 155
    .line 156
    const-string v1, " resetting!"

    .line 157
    .line 158
    invoke-static {v0, v3, v1, v10}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    nop

    .line 163
    :sswitch_data_0
    .sparse-switch
        -0xb56339a -> :sswitch_2
        0x3339a3 -> :sswitch_1
        0xea4149c -> :sswitch_0
    .end sparse-switch

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
