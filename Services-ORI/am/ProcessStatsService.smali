.class public final Lcom/android/server/am/ProcessStatsService;
.super Lcom/android/internal/app/procstats/IProcessStats$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAm:Lcom/android/server/am/ActivityManagerService;

.field public final mBaseDir:Ljava/io/File;

.field public mCommitPending:Z

.field public mFile:Landroid/util/AtomicFile;

.field public final mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public mInjectedScreenState:Ljava/lang/Boolean;

.field public mLastMemOnlyState:I

.field public mLastWriteTime:J

.field public final mLock:Ljava/lang/Object;

.field public mPendingWrite:Landroid/os/Parcel;

.field public mPendingWriteCommitted:Z

.field public mPendingWriteFile:Landroid/util/AtomicFile;

.field public final mPendingWriteLock:Ljava/lang/Object;

.field public final mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

.field public mShuttingDown:Z


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;-><init>()V

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
    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    iput v1, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 33
    .line 34
    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    new-instance p1, Lcom/android/internal/app/procstats/ProcessStats;

    .line 37
    .line 38
    const/4 p2, 0x1

    .line 39
    invoke-direct {p1, p2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->updateFileLocked()V

    .line 45
    .line 46
    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    new-instance p1, Lcom/android/server/am/ProcessStatsService$1;

    .line 49
    .line 50
    invoke-direct {p1, p0}, Lcom/android/server/am/ProcessStatsService$1;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    throw p0
.end method

.method public static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "Process stats (procstats) dump options:"

    .line 2
    .line 3
    const-string v1, "    [--checkin|-c|--csv] [--csv-screen] [--csv-proc] [--csv-mem]"

    .line 4
    .line 5
    const-string v2, "    [--details] [--full-details] [--current] [--hours N] [--last N]"

    .line 6
    .line 7
    const-string v3, "    [--max N] --active] [--commit] [--reset] [--clear] [--write] [-h]"

    .line 8
    .line 9
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "    [--start-testing] [--stop-testing] "

    .line 13
    .line 14
    const-string v1, "    [--pretend-screen-on] [--pretend-screen-off] [--stop-pretend-screen]"

    .line 15
    .line 16
    const-string v2, "    [<package.name>]"

    .line 17
    .line 18
    const-string v3, "  --checkin: perform a checkin: print and delete old committed states."

    .line 19
    .line 20
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "  -c: print only state in checkin format."

    .line 24
    .line 25
    const-string v1, "  --csv: output data suitable for putting in a spreadsheet."

    .line 26
    .line 27
    const-string v2, "  --csv-screen: on, off."

    .line 28
    .line 29
    const-string v3, "  --csv-mem: norm, mod, low, crit."

    .line 30
    .line 31
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v0, "  --csv-proc: pers, top, fore, vis, precept, backup,"

    .line 35
    .line 36
    const-string v1, "    service, home, prev, cached"

    .line 37
    .line 38
    const-string v2, "  --details: dump per-package details, not just summary."

    .line 39
    .line 40
    const-string v3, "  --full-details: dump all timing and active state details."

    .line 41
    .line 42
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v0, "  --current: only dump current state."

    .line 46
    .line 47
    const-string v1, "  --hours: aggregate over about N last hours."

    .line 48
    .line 49
    const-string v2, "  --last: only show the last committed stats at index N (starting at 1)."

    .line 50
    .line 51
    const-string v3, "  --max: for -a, max num of historical batches to print."

    .line 52
    .line 53
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "  --active: only show currently active processes/services."

    .line 57
    .line 58
    const-string v1, "  --commit: commit current stats to disk and reset to start new stats."

    .line 59
    .line 60
    const-string v2, "  --section: proc|pkg-proc|pkg-svc|pkg-asc|pkg-all|all "

    .line 61
    .line 62
    const-string v3, "    options can be combined to select desired stats"

    .line 63
    .line 64
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v0, "  --reset: reset current stats, without committing."

    .line 68
    .line 69
    const-string v1, "  --clear: clear all stats; does both --reset and deletes old stats."

    .line 70
    .line 71
    const-string v2, "  --write: write current in-memory stats to disk."

    .line 72
    .line 73
    const-string v3, "  --read: replace current stats with last-written stats."

    .line 74
    .line 75
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v0, "  --start-testing: clear all stats and starting high frequency pss sampling."

    .line 79
    .line 80
    const-string v1, "  --stop-testing: stop high frequency pss sampling."

    .line 81
    .line 82
    const-string v2, "  --pretend-screen-on: pretend screen is on."

    .line 83
    .line 84
    const-string v3, "  --pretend-screen-off: pretend screen is off."

    .line 85
    .line 86
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v0, "  --stop-pretend-screen: forget \"pretend screen\" and use the real state."

    .line 90
    .line 91
    const-string v1, "  -a: print everything."

    .line 92
    .line 93
    const-string v2, "  -h: print this help text."

    .line 94
    .line 95
    const-string v3, "  <package.name>: optional name of package to filter output by."

    .line 96
    .line 97
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public static parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    move v3, v2

    .line 9
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-gt v2, v4, :cond_8

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-ge v2, v4, :cond_0

    .line 20
    .line 21
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    move v4, v1

    .line 27
    :goto_1
    const/16 v5, 0x2c

    .line 28
    .line 29
    if-eq v4, v5, :cond_1

    .line 30
    .line 31
    const/16 v6, 0x2b

    .line 32
    .line 33
    if-eq v4, v6, :cond_1

    .line 34
    .line 35
    const/16 v6, 0x20

    .line 36
    .line 37
    if-eq v4, v6, :cond_1

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    goto :goto_6

    .line 42
    :cond_1
    if-ne v4, v5, :cond_2

    .line 43
    .line 44
    const/4 v5, 0x1

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    move v5, v1

    .line 47
    :goto_2
    const/4 v6, 0x0

    .line 48
    if-nez v3, :cond_3

    .line 49
    .line 50
    aput-boolean v5, p3, v1

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_3
    if-eqz v4, :cond_4

    .line 54
    .line 55
    aget-boolean v4, p3, v1

    .line 56
    .line 57
    if-eq v4, v5, :cond_4

    .line 58
    .line 59
    const-string/jumbo p0, "inconsistent separators (can\'t mix \',\' with \'+\')"

    .line 60
    .line 61
    .line 62
    aput-object p0, p4, v1

    .line 63
    .line 64
    return-object v6

    .line 65
    :cond_4
    :goto_3
    add-int/lit8 v4, v2, -0x1

    .line 66
    .line 67
    if-ge v3, v4, :cond_7

    .line 68
    .line 69
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    move v4, v1

    .line 74
    :goto_4
    array-length v5, p0

    .line 75
    if-ge v4, v5, :cond_6

    .line 76
    .line 77
    aget-object v5, p0, v4

    .line 78
    .line 79
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_5

    .line 84
    .line 85
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-object v3, v6

    .line 93
    goto :goto_5

    .line 94
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_6
    :goto_5
    if-eqz v3, :cond_7

    .line 98
    .line 99
    const-string/jumbo p0, "invalid word \""

    .line 100
    .line 101
    .line 102
    const-string p1, "\""

    .line 103
    .line 104
    invoke-static {p0, v3, p1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    aput-object p0, p4, v1

    .line 109
    .line 110
    return-object v6

    .line 111
    :cond_7
    add-int/lit8 v3, v2, 0x1

    .line 112
    .line 113
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    new-array p0, p0, [I

    .line 121
    .line 122
    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    if-ge v1, p2, :cond_9

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    check-cast p2, Ljava/lang/Integer;

    .line 133
    .line 134
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    mul-int/2addr p2, p1

    .line 139
    aput p2, p0, v1

    .line 140
    .line 141
    add-int/lit8 v1, v1, 0x1

    .line 142
    .line 143
    goto :goto_7

    .line 144
    :cond_9
    return-object p0
.end method

.method public static readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)V
    .locals 3

    .line 1
    const-string v0, "ProcessStatsService"

    .line 2
    .line 3
    const-string v1, "Ignoring existing stats; "

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void

    .line 40
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string/jumbo v2, "caught exception: "

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 56
    .line 57
    const-string p0, "Error reading process statistics"

    .line 58
    .line 59
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "ProcessStatsService"

    .line 6
    .line 7
    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    :try_start_0
    array-length v2, p3

    .line 19
    if-lez v2, :cond_2

    .line 20
    .line 21
    const-string v2, "--proto"

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    aget-object v4, p3, v3

    .line 25
    .line 26
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStatsService;->dumpProto(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    :try_start_1
    const-string v2, "--statsd"

    .line 42
    .line 43
    aget-object v4, p3, v3

    .line 44
    .line 45
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    const/4 p2, 0x1

    .line 52
    new-array p2, p2, [Landroid/util/proto/ProtoOutputStream;

    .line 53
    .line 54
    new-instance p3, Landroid/util/proto/ProtoOutputStream;

    .line 55
    .line 56
    invoke-direct {p3, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 57
    .line 58
    .line 59
    aput-object p3, p2, v3

    .line 60
    .line 61
    new-instance p1, Lcom/android/internal/app/procstats/ProcessStats;

    .line 62
    .line 63
    invoke-direct {p1, v3}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 64
    .line 65
    .line 66
    const-wide/16 v5, 0x0

    .line 67
    .line 68
    const/4 v7, 0x0

    .line 69
    const/4 v8, 0x1

    .line 70
    const/4 v9, 0x0

    .line 71
    move-object v4, p0

    .line 72
    move-object v10, p1

    .line 73
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ProcessStatsService;->getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J

    .line 74
    .line 75
    .line 76
    const-wide/32 v4, 0xf423f

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2, v4, v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpAggregatedProtoForStatsd([Landroid/util/proto/ProtoOutputStream;J)V

    .line 80
    .line 81
    .line 82
    aget-object p0, p2, v3

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_2
    :try_start_2
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/ProcessStatsService;->dumpInner(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    .line 100
    .line 101
    throw p0
.end method

.method public final dumpAggregatedStats(IJJLandroid/util/proto/ProtoOutputStream;)V
    .locals 6

    const v0, 0x36ee80

    mul-int/2addr p1, v0

    int-to-long v0, p1

    .line 11
    sget-wide v2, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 12
    :cond_0
    new-instance p1, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 13
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 14
    invoke-virtual {p1, v0}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 15
    iget-object p0, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz p0, :cond_1

    return-void

    .line 16
    :cond_1
    invoke-virtual {p6, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const/16 p0, 0x1f

    .line 17
    invoke-virtual {p1, p6, p4, p5, p0}, Lcom/android/internal/app/procstats/ProcessStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 18
    invoke-virtual {p6, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V
    .locals 10

    move-object v1, p1

    const-wide/32 v2, 0x36ee80

    mul-long/2addr v2, p2

    .line 1
    sget-wide v4, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    move-object v0, p0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    const-string v0, "Unable to build stats!"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 4
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 5
    invoke-virtual {v2, v3}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 6
    iget-object v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7
    const-string v0, "Failure reading: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p7, :cond_2

    move-object/from16 v3, p6

    move/from16 v9, p12

    .line 8
    invoke-virtual {v2, p1, v3, v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    move-object/from16 v3, p6

    move/from16 v9, p12

    if-nez p8, :cond_4

    if-eqz p9, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, v2

    move-object v1, p1

    move-object/from16 v2, p6

    move-wide v3, p4

    move/from16 v5, p11

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto :goto_1

    :cond_4
    :goto_0
    xor-int/lit8 v5, p9, 0x1

    move-object v0, v2

    move-object v1, p1

    move-object/from16 v2, p6

    move-wide v3, p4

    move/from16 v6, p8

    move/from16 v7, p10

    move/from16 v8, p11

    move/from16 v9, p12

    .line 10
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V

    :goto_1
    return-void
.end method

.method public final dumpInner(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 34
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1
    move-object/from16 v14, p0

    .line 2
    .line 3
    move-object/from16 v15, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v16

    .line 11
    const/4 v1, 0x2

    .line 12
    new-array v2, v1, [I

    .line 13
    .line 14
    const/4 v11, 0x0

    .line 15
    aput v11, v2, v11

    .line 16
    .line 17
    const/4 v12, 0x1

    .line 18
    const/4 v3, 0x4

    .line 19
    aput v3, v2, v12

    .line 20
    .line 21
    new-array v4, v12, [I

    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    aput v5, v4, v11

    .line 25
    .line 26
    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    .line 27
    .line 28
    if-eqz v0, :cond_29

    .line 29
    .line 30
    move v8, v11

    .line 31
    move v9, v8

    .line 32
    move v10, v9

    .line 33
    move v13, v10

    .line 34
    move/from16 v18, v13

    .line 35
    .line 36
    move/from16 v19, v18

    .line 37
    .line 38
    move/from16 v21, v19

    .line 39
    .line 40
    move/from16 v22, v21

    .line 41
    .line 42
    move/from16 v23, v22

    .line 43
    .line 44
    move/from16 v24, v23

    .line 45
    .line 46
    move/from16 v25, v24

    .line 47
    .line 48
    move/from16 v27, v25

    .line 49
    .line 50
    move/from16 v28, v27

    .line 51
    .line 52
    move/from16 v29, v28

    .line 53
    .line 54
    move/from16 v30, v12

    .line 55
    .line 56
    const/16 v20, 0x0

    .line 57
    .line 58
    const/16 v26, 0x1f

    .line 59
    .line 60
    :goto_0
    array-length v7, v0

    .line 61
    if-ge v8, v7, :cond_28

    .line 62
    .line 63
    aget-object v7, v0, v8

    .line 64
    .line 65
    const-string v6, "--checkin"

    .line 66
    .line 67
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_0

    .line 72
    .line 73
    move v3, v12

    .line 74
    move/from16 v27, v3

    .line 75
    .line 76
    :goto_1
    const/4 v0, 0x0

    .line 77
    goto/16 :goto_b

    .line 78
    .line 79
    :cond_0
    const-string v6, "-c"

    .line 80
    .line 81
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-eqz v6, :cond_1

    .line 86
    .line 87
    move v3, v12

    .line 88
    move/from16 v21, v3

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    const-string v6, "--csv"

    .line 92
    .line 93
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_2

    .line 98
    .line 99
    move v3, v12

    .line 100
    move v10, v3

    .line 101
    goto :goto_1

    .line 102
    :cond_2
    const-string v6, "--csv-screen"

    .line 103
    .line 104
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-eqz v6, :cond_5

    .line 109
    .line 110
    add-int/lit8 v8, v8, 0x1

    .line 111
    .line 112
    array-length v2, v0

    .line 113
    if-lt v8, v2, :cond_3

    .line 114
    .line 115
    const-string v0, "Error: argument required for --csv-screen"

    .line 116
    .line 117
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_3
    new-array v2, v12, [Z

    .line 125
    .line 126
    new-array v6, v12, [Ljava/lang/String;

    .line 127
    .line 128
    sget-object v7, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    .line 129
    .line 130
    aget-object v9, v0, v8

    .line 131
    .line 132
    invoke-static {v7, v3, v9, v2, v6}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    if-nez v7, :cond_4

    .line 137
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v2, "Error in \""

    .line 141
    .line 142
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    aget-object v0, v0, v8

    .line 146
    .line 147
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v0, "\": "

    .line 151
    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    aget-object v0, v6, v11

    .line 156
    .line 157
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :cond_4
    aget-boolean v9, v2, v11

    .line 172
    .line 173
    move-object v2, v7

    .line 174
    :goto_2
    move v3, v12

    .line 175
    goto :goto_1

    .line 176
    :cond_5
    const-string v6, "--csv-mem"

    .line 177
    .line 178
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    if-eqz v6, :cond_8

    .line 183
    .line 184
    add-int/lit8 v8, v8, 0x1

    .line 185
    .line 186
    array-length v4, v0

    .line 187
    if-lt v8, v4, :cond_6

    .line 188
    .line 189
    const-string v0, "Error: argument required for --csv-mem"

    .line 190
    .line 191
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :cond_6
    new-array v4, v12, [Z

    .line 199
    .line 200
    new-array v6, v12, [Ljava/lang/String;

    .line 201
    .line 202
    sget-object v7, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    .line 203
    .line 204
    aget-object v3, v0, v8

    .line 205
    .line 206
    invoke-static {v7, v12, v3, v4, v6}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    if-nez v3, :cond_7

    .line 211
    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    const-string v2, "Error in \""

    .line 215
    .line 216
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    aget-object v0, v0, v8

    .line 220
    .line 221
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v0, "\": "

    .line 225
    .line 226
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    aget-object v0, v6, v11

    .line 230
    .line 231
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :cond_7
    aget-boolean v28, v4, v11

    .line 246
    .line 247
    move-object v4, v3

    .line 248
    goto :goto_2

    .line 249
    :cond_8
    const-string v3, "--csv-proc"

    .line 250
    .line 251
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    if-eqz v3, :cond_b

    .line 256
    .line 257
    add-int/lit8 v8, v8, 0x1

    .line 258
    .line 259
    array-length v3, v0

    .line 260
    if-lt v8, v3, :cond_9

    .line 261
    .line 262
    const-string v0, "Error: argument required for --csv-proc"

    .line 263
    .line 264
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 268
    .line 269
    .line 270
    return-void

    .line 271
    :cond_9
    new-array v3, v12, [Z

    .line 272
    .line 273
    new-array v5, v12, [Ljava/lang/String;

    .line 274
    .line 275
    sget-object v6, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    .line 276
    .line 277
    aget-object v7, v0, v8

    .line 278
    .line 279
    invoke-static {v6, v12, v7, v3, v5}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    .line 280
    .line 281
    .line 282
    move-result-object v6

    .line 283
    if-nez v6, :cond_a

    .line 284
    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    const-string v2, "Error in \""

    .line 288
    .line 289
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    aget-object v0, v0, v8

    .line 293
    .line 294
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    const-string v0, "\": "

    .line 298
    .line 299
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    aget-object v0, v5, v11

    .line 303
    .line 304
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 315
    .line 316
    .line 317
    return-void

    .line 318
    :cond_a
    aget-boolean v30, v3, v11

    .line 319
    .line 320
    move-object v5, v6

    .line 321
    goto/16 :goto_2

    .line 322
    .line 323
    :cond_b
    const-string v3, "--details"

    .line 324
    .line 325
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v3

    .line 329
    if-eqz v3, :cond_c

    .line 330
    .line 331
    move v3, v12

    .line 332
    move/from16 v22, v3

    .line 333
    .line 334
    goto/16 :goto_1

    .line 335
    .line 336
    :cond_c
    const-string v3, "--full-details"

    .line 337
    .line 338
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v3

    .line 342
    if-eqz v3, :cond_d

    .line 343
    .line 344
    move v3, v12

    .line 345
    move/from16 v23, v3

    .line 346
    .line 347
    goto/16 :goto_1

    .line 348
    .line 349
    :cond_d
    const-string v3, "--hours"

    .line 350
    .line 351
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v3

    .line 355
    if-eqz v3, :cond_f

    .line 356
    .line 357
    add-int/lit8 v8, v8, 0x1

    .line 358
    .line 359
    array-length v3, v0

    .line 360
    if-lt v8, v3, :cond_e

    .line 361
    .line 362
    const-string v0, "Error: argument required for --hours"

    .line 363
    .line 364
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 368
    .line 369
    .line 370
    return-void

    .line 371
    :cond_e
    :try_start_0
    aget-object v3, v0, v8

    .line 372
    .line 373
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 374
    .line 375
    .line 376
    move-result v18
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    goto/16 :goto_2

    .line 378
    .line 379
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    const-string v2, "Error: --hours argument not an int -- "

    .line 382
    .line 383
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    aget-object v0, v0, v8

    .line 387
    .line 388
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 399
    .line 400
    .line 401
    return-void

    .line 402
    :cond_f
    const-string v3, "--last"

    .line 403
    .line 404
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v3

    .line 408
    if-eqz v3, :cond_11

    .line 409
    .line 410
    add-int/lit8 v8, v8, 0x1

    .line 411
    .line 412
    array-length v3, v0

    .line 413
    if-lt v8, v3, :cond_10

    .line 414
    .line 415
    const-string v0, "Error: argument required for --last"

    .line 416
    .line 417
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 421
    .line 422
    .line 423
    return-void

    .line 424
    :cond_10
    :try_start_1
    aget-object v3, v0, v8

    .line 425
    .line 426
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 427
    .line 428
    .line 429
    move-result v19
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 430
    goto/16 :goto_2

    .line 431
    .line 432
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 433
    .line 434
    const-string v2, "Error: --last argument not an int -- "

    .line 435
    .line 436
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    aget-object v0, v0, v8

    .line 440
    .line 441
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 452
    .line 453
    .line 454
    return-void

    .line 455
    :cond_11
    const-string v3, "--max"

    .line 456
    .line 457
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v3

    .line 461
    if-eqz v3, :cond_13

    .line 462
    .line 463
    add-int/lit8 v8, v8, 0x1

    .line 464
    .line 465
    array-length v1, v0

    .line 466
    if-lt v8, v1, :cond_12

    .line 467
    .line 468
    const-string v0, "Error: argument required for --max"

    .line 469
    .line 470
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 474
    .line 475
    .line 476
    return-void

    .line 477
    :cond_12
    :try_start_2
    aget-object v1, v0, v8

    .line 478
    .line 479
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 480
    .line 481
    .line 482
    move-result v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 483
    goto/16 :goto_2

    .line 484
    .line 485
    :catch_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 486
    .line 487
    const-string v2, "Error: --max argument not an int -- "

    .line 488
    .line 489
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    aget-object v0, v0, v8

    .line 493
    .line 494
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 505
    .line 506
    .line 507
    return-void

    .line 508
    :cond_13
    const-string v3, "--active"

    .line 509
    .line 510
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v3

    .line 514
    if-eqz v3, :cond_14

    .line 515
    .line 516
    move v3, v12

    .line 517
    move/from16 v25, v3

    .line 518
    .line 519
    move/from16 v29, v25

    .line 520
    .line 521
    goto/16 :goto_1

    .line 522
    .line 523
    :cond_14
    const-string v3, "--current"

    .line 524
    .line 525
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 526
    .line 527
    .line 528
    move-result v3

    .line 529
    if-eqz v3, :cond_15

    .line 530
    .line 531
    move v3, v12

    .line 532
    move/from16 v29, v3

    .line 533
    .line 534
    goto/16 :goto_1

    .line 535
    .line 536
    :cond_15
    const-string v3, "--commit"

    .line 537
    .line 538
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    move-result v3

    .line 542
    if-eqz v3, :cond_16

    .line 543
    .line 544
    iget-object v3, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 545
    .line 546
    monitor-enter v3

    .line 547
    :try_start_3
    iget-object v6, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 548
    .line 549
    iget v7, v6, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 550
    .line 551
    or-int/2addr v7, v12

    .line 552
    iput v7, v6, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 553
    .line 554
    invoke-virtual {v14, v12, v12}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    .line 555
    .line 556
    .line 557
    const-string v6, "Process stats committed."

    .line 558
    .line 559
    invoke-virtual {v15, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    monitor-exit v3

    .line 563
    move v3, v12

    .line 564
    move v13, v3

    .line 565
    goto/16 :goto_1

    .line 566
    .line 567
    :catchall_0
    move-exception v0

    .line 568
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 569
    throw v0

    .line 570
    :cond_16
    const-string v3, "--section"

    .line 571
    .line 572
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    move-result v3

    .line 576
    if-eqz v3, :cond_1b

    .line 577
    .line 578
    add-int/lit8 v8, v8, 0x1

    .line 579
    .line 580
    array-length v3, v0

    .line 581
    if-lt v8, v3, :cond_17

    .line 582
    .line 583
    const-string v0, "Error: argument required for --section"

    .line 584
    .line 585
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 589
    .line 590
    .line 591
    return-void

    .line 592
    :cond_17
    aget-object v3, v0, v8

    .line 593
    .line 594
    const-string v6, ","

    .line 595
    .line 596
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v3

    .line 600
    array-length v6, v3

    .line 601
    if-nez v6, :cond_18

    .line 602
    .line 603
    const/16 v26, 0x1f

    .line 604
    .line 605
    goto :goto_4

    .line 606
    :cond_18
    sget-object v6, Lcom/android/internal/app/procstats/ProcessStats;->OPTIONS_STR:[Ljava/lang/String;

    .line 607
    .line 608
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 609
    .line 610
    .line 611
    move-result-object v6

    .line 612
    array-length v7, v3

    .line 613
    move/from16 v26, v11

    .line 614
    .line 615
    :goto_3
    if-ge v11, v7, :cond_1a

    .line 616
    .line 617
    aget-object v12, v3, v11

    .line 618
    .line 619
    invoke-interface {v6, v12}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 620
    .line 621
    .line 622
    move-result v12

    .line 623
    const/4 v0, -0x1

    .line 624
    if-eq v12, v0, :cond_19

    .line 625
    .line 626
    sget-object v0, Lcom/android/internal/app/procstats/ProcessStats;->OPTIONS:[I

    .line 627
    .line 628
    aget v0, v0, v12

    .line 629
    .line 630
    or-int v0, v26, v0

    .line 631
    .line 632
    move/from16 v26, v0

    .line 633
    .line 634
    :cond_19
    add-int/lit8 v11, v11, 0x1

    .line 635
    .line 636
    move-object/from16 v0, p2

    .line 637
    .line 638
    const/4 v12, 0x1

    .line 639
    goto :goto_3

    .line 640
    :cond_1a
    :goto_4
    const/4 v0, 0x0

    .line 641
    const/4 v3, 0x1

    .line 642
    goto/16 :goto_b

    .line 643
    .line 644
    :cond_1b
    const-string v0, "--clear"

    .line 645
    .line 646
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 647
    .line 648
    .line 649
    move-result v0

    .line 650
    if-eqz v0, :cond_1d

    .line 651
    .line 652
    iget-object v3, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 653
    .line 654
    monitor-enter v3

    .line 655
    :try_start_4
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 656
    .line 657
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    .line 658
    .line 659
    .line 660
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 661
    .line 662
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 663
    .line 664
    new-instance v6, Lcom/android/server/am/ProcessStatsService$$ExternalSyntheticLambda0;

    .line 665
    .line 666
    invoke-direct {v6, v14}, Lcom/android/server/am/ProcessStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 670
    .line 671
    .line 672
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 673
    .line 674
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 675
    .line 676
    .line 677
    const/4 v6, 0x0

    .line 678
    const/4 v7, 0x1

    .line 679
    :try_start_5
    invoke-virtual {v14, v6, v7, v7}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    if-eqz v0, :cond_1c

    .line 684
    .line 685
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 686
    .line 687
    .line 688
    move-result v6

    .line 689
    sub-int/2addr v6, v7

    .line 690
    :goto_5
    if-ltz v6, :cond_1c

    .line 691
    .line 692
    new-instance v7, Ljava/io/File;

    .line 693
    .line 694
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v11

    .line 698
    check-cast v11, Ljava/lang/String;

    .line 699
    .line 700
    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 704
    .line 705
    .line 706
    add-int/lit8 v6, v6, -0x1

    .line 707
    .line 708
    goto :goto_5

    .line 709
    :catchall_1
    move-exception v0

    .line 710
    goto :goto_8

    .line 711
    :cond_1c
    :try_start_6
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 712
    .line 713
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 714
    .line 715
    .line 716
    const-string v0, "All process stats cleared."

    .line 717
    .line 718
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    monitor-exit v3

    .line 722
    :goto_6
    const/4 v0, 0x0

    .line 723
    :goto_7
    const/4 v3, 0x1

    .line 724
    const/4 v13, 0x1

    .line 725
    goto/16 :goto_b

    .line 726
    .line 727
    :catchall_2
    move-exception v0

    .line 728
    goto :goto_9

    .line 729
    :goto_8
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 730
    .line 731
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 732
    .line 733
    .line 734
    throw v0

    .line 735
    :goto_9
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 736
    throw v0

    .line 737
    :cond_1d
    const-string v0, "--write"

    .line 738
    .line 739
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 740
    .line 741
    .line 742
    move-result v0

    .line 743
    if-eqz v0, :cond_1e

    .line 744
    .line 745
    iget-object v3, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 746
    .line 747
    monitor-enter v3

    .line 748
    const/4 v6, 0x1

    .line 749
    :try_start_7
    invoke-virtual {v14, v6}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    .line 750
    .line 751
    .line 752
    const-string v0, "Process stats written."

    .line 753
    .line 754
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    .line 756
    .line 757
    monitor-exit v3

    .line 758
    goto :goto_6

    .line 759
    :catchall_3
    move-exception v0

    .line 760
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 761
    throw v0

    .line 762
    :cond_1e
    const-string v0, "--read"

    .line 763
    .line 764
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 765
    .line 766
    .line 767
    move-result v0

    .line 768
    if-eqz v0, :cond_1f

    .line 769
    .line 770
    iget-object v3, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 771
    .line 772
    monitor-enter v3

    .line 773
    :try_start_8
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 774
    .line 775
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 776
    .line 777
    .line 778
    :try_start_9
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 779
    .line 780
    iget-object v6, v14, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    .line 781
    .line 782
    invoke-static {v0, v6}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)V

    .line 783
    .line 784
    .line 785
    const-string v0, "Process stats read."

    .line 786
    .line 787
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 788
    .line 789
    .line 790
    :try_start_a
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 791
    .line 792
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 793
    .line 794
    .line 795
    monitor-exit v3

    .line 796
    goto :goto_6

    .line 797
    :catchall_4
    move-exception v0

    .line 798
    goto :goto_a

    .line 799
    :catchall_5
    move-exception v0

    .line 800
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 801
    .line 802
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 803
    .line 804
    .line 805
    throw v0

    .line 806
    :goto_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 807
    throw v0

    .line 808
    :cond_1f
    const-string v0, "--start-testing"

    .line 809
    .line 810
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 811
    .line 812
    .line 813
    move-result v0

    .line 814
    if-eqz v0, :cond_20

    .line 815
    .line 816
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 817
    .line 818
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 819
    .line 820
    const/4 v3, 0x1

    .line 821
    invoke-virtual {v0, v3}, Lcom/android/server/am/AppProfiler;->setTestPssMode(Z)V

    .line 822
    .line 823
    .line 824
    const-string v0, "Started high frequency sampling."

    .line 825
    .line 826
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 827
    .line 828
    .line 829
    goto :goto_6

    .line 830
    :cond_20
    const-string v0, "--stop-testing"

    .line 831
    .line 832
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 833
    .line 834
    .line 835
    move-result v0

    .line 836
    if-eqz v0, :cond_21

    .line 837
    .line 838
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 839
    .line 840
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 841
    .line 842
    const/4 v3, 0x0

    .line 843
    invoke-virtual {v0, v3}, Lcom/android/server/am/AppProfiler;->setTestPssMode(Z)V

    .line 844
    .line 845
    .line 846
    const-string v0, "Stopped high frequency sampling."

    .line 847
    .line 848
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 849
    .line 850
    .line 851
    goto/16 :goto_6

    .line 852
    .line 853
    :cond_21
    const-string v0, "--pretend-screen-on"

    .line 854
    .line 855
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 856
    .line 857
    .line 858
    move-result v0

    .line 859
    if-eqz v0, :cond_22

    .line 860
    .line 861
    iget-object v3, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 862
    .line 863
    monitor-enter v3

    .line 864
    :try_start_b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 865
    .line 866
    iput-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    .line 867
    .line 868
    monitor-exit v3

    .line 869
    goto/16 :goto_6

    .line 870
    .line 871
    :catchall_6
    move-exception v0

    .line 872
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 873
    throw v0

    .line 874
    :cond_22
    const-string v0, "--pretend-screen-off"

    .line 875
    .line 876
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 877
    .line 878
    .line 879
    move-result v0

    .line 880
    if-eqz v0, :cond_23

    .line 881
    .line 882
    iget-object v3, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 883
    .line 884
    monitor-enter v3

    .line 885
    :try_start_c
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 886
    .line 887
    iput-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    .line 888
    .line 889
    monitor-exit v3

    .line 890
    goto/16 :goto_6

    .line 891
    .line 892
    :catchall_7
    move-exception v0

    .line 893
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 894
    throw v0

    .line 895
    :cond_23
    const-string v0, "--stop-pretend-screen"

    .line 896
    .line 897
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 898
    .line 899
    .line 900
    move-result v0

    .line 901
    if-eqz v0, :cond_24

    .line 902
    .line 903
    iget-object v3, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 904
    .line 905
    monitor-enter v3

    .line 906
    const/4 v0, 0x0

    .line 907
    :try_start_d
    iput-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    .line 908
    .line 909
    monitor-exit v3

    .line 910
    goto/16 :goto_7

    .line 911
    .line 912
    :catchall_8
    move-exception v0

    .line 913
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 914
    throw v0

    .line 915
    :cond_24
    const/4 v0, 0x0

    .line 916
    const-string v3, "-h"

    .line 917
    .line 918
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 919
    .line 920
    .line 921
    move-result v3

    .line 922
    if-eqz v3, :cond_25

    .line 923
    .line 924
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 925
    .line 926
    .line 927
    return-void

    .line 928
    :cond_25
    const-string v3, "-a"

    .line 929
    .line 930
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 931
    .line 932
    .line 933
    move-result v3

    .line 934
    if-eqz v3, :cond_26

    .line 935
    .line 936
    const/4 v3, 0x1

    .line 937
    const/16 v22, 0x1

    .line 938
    .line 939
    const/16 v24, 0x1

    .line 940
    .line 941
    goto :goto_b

    .line 942
    :cond_26
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 943
    .line 944
    .line 945
    move-result v3

    .line 946
    if-lez v3, :cond_27

    .line 947
    .line 948
    const/4 v3, 0x0

    .line 949
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    .line 950
    .line 951
    .line 952
    move-result v6

    .line 953
    const/16 v3, 0x2d

    .line 954
    .line 955
    if-ne v6, v3, :cond_27

    .line 956
    .line 957
    const-string v0, "Unknown option: "

    .line 958
    .line 959
    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 960
    .line 961
    .line 962
    move-result-object v0

    .line 963
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 964
    .line 965
    .line 966
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 967
    .line 968
    .line 969
    return-void

    .line 970
    :cond_27
    move-object/from16 v20, v7

    .line 971
    .line 972
    const/4 v3, 0x1

    .line 973
    const/16 v22, 0x1

    .line 974
    .line 975
    :goto_b
    add-int/2addr v8, v3

    .line 976
    move-object/from16 v0, p2

    .line 977
    .line 978
    move v12, v3

    .line 979
    const/4 v3, 0x4

    .line 980
    const/4 v11, 0x0

    .line 981
    goto/16 :goto_0

    .line 982
    .line 983
    :cond_28
    move-object v11, v4

    .line 984
    move-object v12, v5

    .line 985
    move v0, v10

    .line 986
    move/from16 v3, v18

    .line 987
    .line 988
    move/from16 v4, v19

    .line 989
    .line 990
    move/from16 v8, v26

    .line 991
    .line 992
    move-object v10, v2

    .line 993
    move v2, v13

    .line 994
    move-object/from16 v13, v20

    .line 995
    .line 996
    goto :goto_c

    .line 997
    :cond_29
    const/4 v0, 0x0

    .line 998
    move-object v13, v0

    .line 999
    move-object v10, v2

    .line 1000
    move-object v11, v4

    .line 1001
    move-object v12, v5

    .line 1002
    const/4 v0, 0x0

    .line 1003
    const/4 v2, 0x0

    .line 1004
    const/4 v3, 0x0

    .line 1005
    const/4 v4, 0x0

    .line 1006
    const/16 v8, 0x1f

    .line 1007
    .line 1008
    const/4 v9, 0x0

    .line 1009
    const/16 v21, 0x0

    .line 1010
    .line 1011
    const/16 v22, 0x0

    .line 1012
    .line 1013
    const/16 v23, 0x0

    .line 1014
    .line 1015
    const/16 v24, 0x0

    .line 1016
    .line 1017
    const/16 v25, 0x0

    .line 1018
    .line 1019
    const/16 v27, 0x0

    .line 1020
    .line 1021
    const/16 v28, 0x0

    .line 1022
    .line 1023
    const/16 v29, 0x0

    .line 1024
    .line 1025
    const/16 v30, 0x1

    .line 1026
    .line 1027
    :goto_c
    if-eqz v2, :cond_2a

    .line 1028
    .line 1029
    return-void

    .line 1030
    :cond_2a
    if-eqz v0, :cond_2f

    .line 1031
    .line 1032
    const-string v0, "Processes running summed over"

    .line 1033
    .line 1034
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1035
    .line 1036
    .line 1037
    if-nez v9, :cond_2b

    .line 1038
    .line 1039
    const/4 v0, 0x0

    .line 1040
    :goto_d
    array-length v1, v10

    .line 1041
    if-ge v0, v1, :cond_2b

    .line 1042
    .line 1043
    const-string v1, " "

    .line 1044
    .line 1045
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1046
    .line 1047
    .line 1048
    aget v1, v10, v0

    .line 1049
    .line 1050
    invoke-static {v15, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    .line 1051
    .line 1052
    .line 1053
    add-int/lit8 v0, v0, 0x1

    .line 1054
    .line 1055
    goto :goto_d

    .line 1056
    :cond_2b
    if-nez v28, :cond_2c

    .line 1057
    .line 1058
    const/4 v0, 0x0

    .line 1059
    :goto_e
    array-length v1, v11

    .line 1060
    if-ge v0, v1, :cond_2c

    .line 1061
    .line 1062
    const-string v1, " "

    .line 1063
    .line 1064
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1065
    .line 1066
    .line 1067
    aget v1, v11, v0

    .line 1068
    .line 1069
    invoke-static {v15, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    .line 1070
    .line 1071
    .line 1072
    add-int/lit8 v0, v0, 0x1

    .line 1073
    .line 1074
    goto :goto_e

    .line 1075
    :cond_2c
    if-nez v30, :cond_2d

    .line 1076
    .line 1077
    const/4 v0, 0x0

    .line 1078
    :goto_f
    array-length v1, v12

    .line 1079
    if-ge v0, v1, :cond_2d

    .line 1080
    .line 1081
    const-string v1, " "

    .line 1082
    .line 1083
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1084
    .line 1085
    .line 1086
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    .line 1087
    .line 1088
    aget v2, v12, v0

    .line 1089
    .line 1090
    aget-object v1, v1, v2

    .line 1091
    .line 1092
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1093
    .line 1094
    .line 1095
    add-int/lit8 v0, v0, 0x1

    .line 1096
    .line 1097
    goto :goto_f

    .line 1098
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1099
    .line 1100
    .line 1101
    iget-object v8, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 1102
    .line 1103
    monitor-enter v8

    .line 1104
    :try_start_e
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    .line 1105
    .line 1106
    const/4 v14, 0x0

    .line 1107
    move-object v1, v10

    .line 1108
    move-object v2, v11

    .line 1109
    move-object v3, v12

    .line 1110
    move-object v4, v12

    .line 1111
    move-wide/from16 v5, v16

    .line 1112
    .line 1113
    move-object v7, v13

    .line 1114
    move-object/from16 v18, v8

    .line 1115
    .line 1116
    move v8, v14

    .line 1117
    :try_start_f
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/app/procstats/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v2

    .line 1121
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1122
    .line 1123
    .line 1124
    move-result v0

    .line 1125
    if-lez v0, :cond_2e

    .line 1126
    .line 1127
    move-object/from16 v1, p1

    .line 1128
    .line 1129
    move v3, v9

    .line 1130
    move-object v4, v10

    .line 1131
    move/from16 v5, v28

    .line 1132
    .line 1133
    move-object v6, v11

    .line 1134
    move/from16 v7, v30

    .line 1135
    .line 1136
    move-object v8, v12

    .line 1137
    move-wide/from16 v9, v16

    .line 1138
    .line 1139
    invoke-static/range {v1 .. v10}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V

    .line 1140
    .line 1141
    .line 1142
    :cond_2e
    monitor-exit v18

    .line 1143
    return-void

    .line 1144
    :catchall_9
    move-exception v0

    .line 1145
    goto :goto_10

    .line 1146
    :catchall_a
    move-exception v0

    .line 1147
    move-object/from16 v18, v8

    .line 1148
    .line 1149
    :goto_10
    monitor-exit v18
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 1150
    throw v0

    .line 1151
    :cond_2f
    if-eqz v3, :cond_30

    .line 1152
    .line 1153
    const-string v0, "AGGREGATED OVER LAST "

    .line 1154
    .line 1155
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1156
    .line 1157
    .line 1158
    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1159
    .line 1160
    .line 1161
    const-string v0, " HOURS:"

    .line 1162
    .line 1163
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1164
    .line 1165
    .line 1166
    int-to-long v3, v3

    .line 1167
    move-object/from16 v1, p0

    .line 1168
    .line 1169
    move-object/from16 v2, p1

    .line 1170
    .line 1171
    move-wide/from16 v5, v16

    .line 1172
    .line 1173
    move-object v7, v13

    .line 1174
    move v13, v8

    .line 1175
    move/from16 v8, v21

    .line 1176
    .line 1177
    move/from16 v9, v22

    .line 1178
    .line 1179
    move/from16 v10, v23

    .line 1180
    .line 1181
    move/from16 v11, v24

    .line 1182
    .line 1183
    move/from16 v12, v25

    .line 1184
    .line 1185
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V

    .line 1186
    .line 1187
    .line 1188
    return-void

    .line 1189
    :cond_30
    move v12, v8

    .line 1190
    if-lez v4, :cond_3b

    .line 1191
    .line 1192
    const-string v0, "LAST STATS AT INDEX "

    .line 1193
    .line 1194
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1195
    .line 1196
    .line 1197
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1198
    .line 1199
    .line 1200
    const-string v0, ":"

    .line 1201
    .line 1202
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1203
    .line 1204
    .line 1205
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1206
    .line 1207
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1208
    .line 1209
    .line 1210
    const/4 v1, 0x0

    .line 1211
    const/4 v2, 0x1

    .line 1212
    :try_start_10
    invoke-virtual {v14, v1, v1, v2}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v0

    .line 1216
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1217
    .line 1218
    .line 1219
    move-result v1

    .line 1220
    if-lt v4, v1, :cond_31

    .line 1221
    .line 1222
    const-string v1, "Only have "

    .line 1223
    .line 1224
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1225
    .line 1226
    .line 1227
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1228
    .line 1229
    .line 1230
    move-result v0

    .line 1231
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1232
    .line 1233
    .line 1234
    const-string v0, " data sets"

    .line 1235
    .line 1236
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    .line 1237
    .line 1238
    .line 1239
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1240
    .line 1241
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1242
    .line 1243
    .line 1244
    return-void

    .line 1245
    :catchall_b
    move-exception v0

    .line 1246
    goto/16 :goto_14

    .line 1247
    .line 1248
    :cond_31
    :try_start_11
    new-instance v1, Landroid/util/AtomicFile;

    .line 1249
    .line 1250
    new-instance v2, Ljava/io/File;

    .line 1251
    .line 1252
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v3

    .line 1256
    check-cast v3, Ljava/lang/String;

    .line 1257
    .line 1258
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1259
    .line 1260
    .line 1261
    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1262
    .line 1263
    .line 1264
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats;

    .line 1265
    .line 1266
    const/4 v3, 0x0

    .line 1267
    invoke-direct {v2, v3}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 1268
    .line 1269
    .line 1270
    invoke-static {v2, v1}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 1271
    .line 1272
    .line 1273
    iget-object v3, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1274
    .line 1275
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1276
    .line 1277
    .line 1278
    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1279
    .line 1280
    if-eqz v3, :cond_34

    .line 1281
    .line 1282
    if-nez v27, :cond_32

    .line 1283
    .line 1284
    if-eqz v21, :cond_33

    .line 1285
    .line 1286
    :cond_32
    const-string/jumbo v1, "err,"

    .line 1287
    .line 1288
    .line 1289
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1290
    .line 1291
    .line 1292
    :cond_33
    const-string v1, "Failure reading "

    .line 1293
    .line 1294
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1295
    .line 1296
    .line 1297
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v0

    .line 1301
    check-cast v0, Ljava/lang/String;

    .line 1302
    .line 1303
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1304
    .line 1305
    .line 1306
    const-string v0, "; "

    .line 1307
    .line 1308
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1309
    .line 1310
    .line 1311
    iget-object v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1312
    .line 1313
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1314
    .line 1315
    .line 1316
    return-void

    .line 1317
    :cond_34
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v0

    .line 1321
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v0

    .line 1325
    const-string v1, ".ci"

    .line 1326
    .line 1327
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1328
    .line 1329
    .line 1330
    move-result v0

    .line 1331
    if-nez v27, :cond_39

    .line 1332
    .line 1333
    if-eqz v21, :cond_35

    .line 1334
    .line 1335
    goto :goto_12

    .line 1336
    :cond_35
    const-string v1, "COMMITTED STATS FROM "

    .line 1337
    .line 1338
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1339
    .line 1340
    .line 1341
    iget-object v1, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    .line 1342
    .line 1343
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1344
    .line 1345
    .line 1346
    if-eqz v0, :cond_36

    .line 1347
    .line 1348
    const-string v0, " (checked in)"

    .line 1349
    .line 1350
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1351
    .line 1352
    .line 1353
    :cond_36
    const-string v0, ":"

    .line 1354
    .line 1355
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1356
    .line 1357
    .line 1358
    if-nez v22, :cond_37

    .line 1359
    .line 1360
    if-eqz v23, :cond_38

    .line 1361
    .line 1362
    :cond_37
    const/4 v11, 0x1

    .line 1363
    goto :goto_11

    .line 1364
    :cond_38
    move-object v1, v2

    .line 1365
    move-object/from16 v2, p1

    .line 1366
    .line 1367
    move-object v3, v13

    .line 1368
    move-wide/from16 v4, v16

    .line 1369
    .line 1370
    move/from16 v6, v25

    .line 1371
    .line 1372
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    .line 1373
    .line 1374
    .line 1375
    goto :goto_13

    .line 1376
    :goto_11
    xor-int/lit8 v6, v23, 0x1

    .line 1377
    .line 1378
    move-object v1, v2

    .line 1379
    move-object/from16 v2, p1

    .line 1380
    .line 1381
    move-object v3, v13

    .line 1382
    move-wide/from16 v4, v16

    .line 1383
    .line 1384
    move/from16 v7, v22

    .line 1385
    .line 1386
    move/from16 v8, v24

    .line 1387
    .line 1388
    move/from16 v9, v25

    .line 1389
    .line 1390
    move v10, v12

    .line 1391
    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V

    .line 1392
    .line 1393
    .line 1394
    if-eqz v24, :cond_3a

    .line 1395
    .line 1396
    const-string v0, "  mFile="

    .line 1397
    .line 1398
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1399
    .line 1400
    .line 1401
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessStatsService;->getCurrentFile()Ljava/io/File;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v0

    .line 1405
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1406
    .line 1407
    .line 1408
    goto :goto_13

    .line 1409
    :cond_39
    :goto_12
    invoke-virtual {v2, v15, v13, v12}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 1410
    .line 1411
    .line 1412
    :cond_3a
    :goto_13
    return-void

    .line 1413
    :goto_14
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1414
    .line 1415
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1416
    .line 1417
    .line 1418
    throw v0

    .line 1419
    :cond_3b
    const/4 v11, 0x1

    .line 1420
    if-nez v24, :cond_3d

    .line 1421
    .line 1422
    if-eqz v27, :cond_3c

    .line 1423
    .line 1424
    goto :goto_15

    .line 1425
    :cond_3c
    const/16 v20, 0x0

    .line 1426
    .line 1427
    goto/16 :goto_23

    .line 1428
    .line 1429
    :cond_3d
    :goto_15
    if-nez v29, :cond_3c

    .line 1430
    .line 1431
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1432
    .line 1433
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1434
    .line 1435
    .line 1436
    xor-int/lit8 v0, v27, 0x1

    .line 1437
    .line 1438
    const/4 v2, 0x0

    .line 1439
    :try_start_12
    invoke-virtual {v14, v2, v2, v0}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v10
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    .line 1443
    if-eqz v10, :cond_4a

    .line 1444
    .line 1445
    if-eqz v27, :cond_3e

    .line 1446
    .line 1447
    const/4 v6, 0x0

    .line 1448
    goto :goto_16

    .line 1449
    :cond_3e
    :try_start_13
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1450
    .line 1451
    .line 1452
    move-result v0

    .line 1453
    sub-int v6, v0, v1

    .line 1454
    .line 1455
    :goto_16
    if-gez v6, :cond_3f

    .line 1456
    .line 1457
    const/4 v6, 0x0

    .line 1458
    :cond_3f
    move v9, v6

    .line 1459
    const/4 v6, 0x0

    .line 1460
    :goto_17
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1461
    .line 1462
    .line 1463
    move-result v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_11

    .line 1464
    if-ge v9, v0, :cond_49

    .line 1465
    .line 1466
    :try_start_14
    new-instance v0, Landroid/util/AtomicFile;

    .line 1467
    .line 1468
    new-instance v1, Ljava/io/File;

    .line 1469
    .line 1470
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v2

    .line 1474
    check-cast v2, Ljava/lang/String;

    .line 1475
    .line 1476
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1477
    .line 1478
    .line 1479
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1480
    .line 1481
    .line 1482
    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_10

    .line 1483
    .line 1484
    const/4 v8, 0x0

    .line 1485
    :try_start_15
    invoke-direct {v1, v8}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 1486
    .line 1487
    .line 1488
    invoke-static {v1, v0}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)V

    .line 1489
    .line 1490
    .line 1491
    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1492
    .line 1493
    if-eqz v2, :cond_42

    .line 1494
    .line 1495
    if-nez v27, :cond_40

    .line 1496
    .line 1497
    if-eqz v21, :cond_41

    .line 1498
    .line 1499
    :cond_40
    const-string/jumbo v0, "err,"

    .line 1500
    .line 1501
    .line 1502
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1503
    .line 1504
    .line 1505
    :cond_41
    const-string v0, "Failure reading "

    .line 1506
    .line 1507
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1508
    .line 1509
    .line 1510
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1511
    .line 1512
    .line 1513
    move-result-object v0

    .line 1514
    check-cast v0, Ljava/lang/String;

    .line 1515
    .line 1516
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1517
    .line 1518
    .line 1519
    const-string v0, "; "

    .line 1520
    .line 1521
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1522
    .line 1523
    .line 1524
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1525
    .line 1526
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1527
    .line 1528
    .line 1529
    new-instance v0, Ljava/io/File;

    .line 1530
    .line 1531
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1532
    .line 1533
    .line 1534
    move-result-object v1

    .line 1535
    check-cast v1, Ljava/lang/String;

    .line 1536
    .line 1537
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1538
    .line 1539
    .line 1540
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1541
    .line 1542
    .line 1543
    move/from16 v20, v8

    .line 1544
    .line 1545
    move v1, v9

    .line 1546
    move-object v14, v10

    .line 1547
    goto/16 :goto_20

    .line 1548
    .line 1549
    :catchall_c
    move-exception v0

    .line 1550
    move/from16 v20, v8

    .line 1551
    .line 1552
    move/from16 v33, v9

    .line 1553
    .line 1554
    move-object v14, v10

    .line 1555
    goto/16 :goto_1f

    .line 1556
    .line 1557
    :cond_42
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 1558
    .line 1559
    .line 1560
    move-result-object v2

    .line 1561
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1562
    .line 1563
    .line 1564
    move-result-object v7

    .line 1565
    const-string v2, ".ci"

    .line 1566
    .line 1567
    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1568
    .line 1569
    .line 1570
    move-result v2

    .line 1571
    if-nez v27, :cond_43

    .line 1572
    .line 1573
    if-eqz v21, :cond_44

    .line 1574
    .line 1575
    :cond_43
    move-object v11, v7

    .line 1576
    move/from16 v20, v8

    .line 1577
    .line 1578
    move/from16 v33, v9

    .line 1579
    .line 1580
    move-object v14, v10

    .line 1581
    goto/16 :goto_1c

    .line 1582
    .line 1583
    :cond_44
    if-eqz v6, :cond_45

    .line 1584
    .line 1585
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    .line 1586
    .line 1587
    .line 1588
    move/from16 v18, v6

    .line 1589
    .line 1590
    goto :goto_18

    .line 1591
    :cond_45
    move/from16 v18, v11

    .line 1592
    .line 1593
    :goto_18
    :try_start_16
    const-string v3, "COMMITTED STATS FROM "

    .line 1594
    .line 1595
    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1596
    .line 1597
    .line 1598
    iget-object v3, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    .line 1599
    .line 1600
    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1601
    .line 1602
    .line 1603
    if-eqz v2, :cond_46

    .line 1604
    .line 1605
    const-string v2, " (checked in)"

    .line 1606
    .line 1607
    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1608
    .line 1609
    .line 1610
    goto :goto_1a

    .line 1611
    :catchall_d
    move-exception v0

    .line 1612
    move/from16 v20, v8

    .line 1613
    .line 1614
    move/from16 v33, v9

    .line 1615
    .line 1616
    move-object v14, v10

    .line 1617
    :goto_19
    move/from16 v6, v18

    .line 1618
    .line 1619
    goto/16 :goto_1f

    .line 1620
    .line 1621
    :cond_46
    :goto_1a
    const-string v2, ":"

    .line 1622
    .line 1623
    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    .line 1624
    .line 1625
    .line 1626
    if-eqz v23, :cond_47

    .line 1627
    .line 1628
    const/16 v19, 0x0

    .line 1629
    .line 1630
    const/4 v6, 0x0

    .line 1631
    const/16 v20, 0x0

    .line 1632
    .line 1633
    move-object/from16 v2, p1

    .line 1634
    .line 1635
    move-object v3, v13

    .line 1636
    move-wide/from16 v4, v16

    .line 1637
    .line 1638
    move-object v11, v7

    .line 1639
    move/from16 v7, v20

    .line 1640
    .line 1641
    move/from16 v20, v8

    .line 1642
    .line 1643
    move/from16 v8, v19

    .line 1644
    .line 1645
    move/from16 v33, v9

    .line 1646
    .line 1647
    move/from16 v9, v25

    .line 1648
    .line 1649
    move-object v14, v10

    .line 1650
    move v10, v12

    .line 1651
    :try_start_17
    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V

    .line 1652
    .line 1653
    .line 1654
    goto :goto_1b

    .line 1655
    :catchall_e
    move-exception v0

    .line 1656
    goto :goto_19

    .line 1657
    :cond_47
    move-object v11, v7

    .line 1658
    move/from16 v20, v8

    .line 1659
    .line 1660
    move/from16 v33, v9

    .line 1661
    .line 1662
    move-object v14, v10

    .line 1663
    move-object/from16 v2, p1

    .line 1664
    .line 1665
    move-object v3, v13

    .line 1666
    move-wide/from16 v4, v16

    .line 1667
    .line 1668
    move/from16 v6, v25

    .line 1669
    .line 1670
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    .line 1671
    .line 1672
    .line 1673
    :goto_1b
    move/from16 v6, v18

    .line 1674
    .line 1675
    goto :goto_1d

    .line 1676
    :goto_1c
    :try_start_18
    invoke-virtual {v1, v15, v13, v12}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 1677
    .line 1678
    .line 1679
    :goto_1d
    if-eqz v27, :cond_48

    .line 1680
    .line 1681
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 1682
    .line 1683
    .line 1684
    move-result-object v0

    .line 1685
    new-instance v1, Ljava/io/File;

    .line 1686
    .line 1687
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1688
    .line 1689
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1690
    .line 1691
    .line 1692
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1693
    .line 1694
    .line 1695
    const-string v3, ".ci"

    .line 1696
    .line 1697
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1698
    .line 1699
    .line 1700
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1701
    .line 1702
    .line 1703
    move-result-object v2

    .line 1704
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1705
    .line 1706
    .line 1707
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_f

    .line 1708
    .line 1709
    .line 1710
    goto :goto_1e

    .line 1711
    :catchall_f
    move-exception v0

    .line 1712
    goto :goto_1f

    .line 1713
    :cond_48
    :goto_1e
    move/from16 v1, v33

    .line 1714
    .line 1715
    goto :goto_20

    .line 1716
    :catchall_10
    move-exception v0

    .line 1717
    move/from16 v33, v9

    .line 1718
    .line 1719
    move-object v14, v10

    .line 1720
    const/16 v20, 0x0

    .line 1721
    .line 1722
    :goto_1f
    :try_start_19
    const-string v1, "**** FAILURE DUMPING STATE: "

    .line 1723
    .line 1724
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1725
    .line 1726
    .line 1727
    move/from16 v1, v33

    .line 1728
    .line 1729
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1730
    .line 1731
    .line 1732
    move-result-object v2

    .line 1733
    check-cast v2, Ljava/lang/String;

    .line 1734
    .line 1735
    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1736
    .line 1737
    .line 1738
    invoke-virtual {v0, v15}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_11

    .line 1739
    .line 1740
    .line 1741
    :goto_20
    add-int/lit8 v9, v1, 0x1

    .line 1742
    .line 1743
    const/4 v11, 0x1

    .line 1744
    move-object v10, v14

    .line 1745
    move-object/from16 v14, p0

    .line 1746
    .line 1747
    goto/16 :goto_17

    .line 1748
    .line 1749
    :catchall_11
    move-exception v0

    .line 1750
    move-object/from16 v14, p0

    .line 1751
    .line 1752
    goto :goto_22

    .line 1753
    :cond_49
    move-object/from16 v14, p0

    .line 1754
    .line 1755
    move v11, v6

    .line 1756
    goto :goto_21

    .line 1757
    :cond_4a
    const/16 v20, 0x0

    .line 1758
    .line 1759
    move-object/from16 v14, p0

    .line 1760
    .line 1761
    move/from16 v11, v20

    .line 1762
    .line 1763
    :goto_21
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1764
    .line 1765
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1766
    .line 1767
    .line 1768
    goto :goto_24

    .line 1769
    :catchall_12
    move-exception v0

    .line 1770
    :goto_22
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1771
    .line 1772
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1773
    .line 1774
    .line 1775
    throw v0

    .line 1776
    :goto_23
    move/from16 v11, v20

    .line 1777
    .line 1778
    :goto_24
    if-nez v27, :cond_51

    .line 1779
    .line 1780
    iget-object v10, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 1781
    .line 1782
    monitor-enter v10

    .line 1783
    if-eqz v21, :cond_4b

    .line 1784
    .line 1785
    :try_start_1a
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 1786
    .line 1787
    invoke-virtual {v0, v15, v13, v12}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 1788
    .line 1789
    .line 1790
    move/from16 v32, v11

    .line 1791
    .line 1792
    move-object v11, v10

    .line 1793
    goto :goto_27

    .line 1794
    :catchall_13
    move-exception v0

    .line 1795
    move-object v11, v10

    .line 1796
    goto/16 :goto_28

    .line 1797
    .line 1798
    :cond_4b
    if-eqz v11, :cond_4c

    .line 1799
    .line 1800
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1801
    .line 1802
    .line 1803
    :cond_4c
    const-string v0, "CURRENT STATS:"

    .line 1804
    .line 1805
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1806
    .line 1807
    .line 1808
    if-nez v22, :cond_4e

    .line 1809
    .line 1810
    if-eqz v23, :cond_4d

    .line 1811
    .line 1812
    goto :goto_25

    .line 1813
    :cond_4d
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 1814
    .line 1815
    move-object/from16 v2, p1

    .line 1816
    .line 1817
    move-object v3, v13

    .line 1818
    move-wide/from16 v4, v16

    .line 1819
    .line 1820
    move/from16 v6, v25

    .line 1821
    .line 1822
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    .line 1823
    .line 1824
    .line 1825
    move-object v11, v10

    .line 1826
    goto :goto_26

    .line 1827
    :cond_4e
    :goto_25
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_13

    .line 1828
    .line 1829
    xor-int/lit8 v6, v23, 0x1

    .line 1830
    .line 1831
    move-object/from16 v2, p1

    .line 1832
    .line 1833
    move-object v3, v13

    .line 1834
    move-wide/from16 v4, v16

    .line 1835
    .line 1836
    move/from16 v7, v22

    .line 1837
    .line 1838
    move/from16 v8, v24

    .line 1839
    .line 1840
    move/from16 v9, v25

    .line 1841
    .line 1842
    move-object v11, v10

    .line 1843
    move v10, v12

    .line 1844
    :try_start_1b
    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V

    .line 1845
    .line 1846
    .line 1847
    if-eqz v24, :cond_4f

    .line 1848
    .line 1849
    const-string v0, "  mFile="

    .line 1850
    .line 1851
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1852
    .line 1853
    .line 1854
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessStatsService;->getCurrentFile()Ljava/io/File;

    .line 1855
    .line 1856
    .line 1857
    move-result-object v0

    .line 1858
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1859
    .line 1860
    .line 1861
    goto :goto_26

    .line 1862
    :catchall_14
    move-exception v0

    .line 1863
    goto :goto_28

    .line 1864
    :cond_4f
    :goto_26
    const/16 v32, 0x1

    .line 1865
    .line 1866
    :goto_27
    monitor-exit v11
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_14

    .line 1867
    if-nez v29, :cond_51

    .line 1868
    .line 1869
    if-eqz v32, :cond_50

    .line 1870
    .line 1871
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1872
    .line 1873
    .line 1874
    :cond_50
    const-string v0, "AGGREGATED OVER LAST 24 HOURS:"

    .line 1875
    .line 1876
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1877
    .line 1878
    .line 1879
    const-wide/16 v3, 0x18

    .line 1880
    .line 1881
    move-object/from16 v1, p0

    .line 1882
    .line 1883
    move-object/from16 v2, p1

    .line 1884
    .line 1885
    move-wide/from16 v5, v16

    .line 1886
    .line 1887
    move-object v7, v13

    .line 1888
    move/from16 v8, v21

    .line 1889
    .line 1890
    move/from16 v9, v22

    .line 1891
    .line 1892
    move/from16 v10, v23

    .line 1893
    .line 1894
    move/from16 v11, v24

    .line 1895
    .line 1896
    move/from16 v31, v12

    .line 1897
    .line 1898
    move/from16 v12, v25

    .line 1899
    .line 1900
    move-object/from16 v20, v13

    .line 1901
    .line 1902
    move/from16 v13, v31

    .line 1903
    .line 1904
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V

    .line 1905
    .line 1906
    .line 1907
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1908
    .line 1909
    .line 1910
    const-string v0, "AGGREGATED OVER LAST 3 HOURS:"

    .line 1911
    .line 1912
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1913
    .line 1914
    .line 1915
    const-wide/16 v3, 0x3

    .line 1916
    .line 1917
    move-object/from16 v7, v20

    .line 1918
    .line 1919
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V

    .line 1920
    .line 1921
    .line 1922
    goto :goto_29

    .line 1923
    :goto_28
    :try_start_1c
    monitor-exit v11
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_14

    .line 1924
    throw v0

    .line 1925
    :cond_51
    :goto_29
    return-void
.end method

.method public final dumpProto(Ljava/io/FileDescriptor;)V
    .locals 10

    .line 1
    new-instance v7, Landroid/util/proto/ProtoOutputStream;

    .line 2
    .line 3
    invoke-direct {v7, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter p1

    .line 9
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v8

    .line 13
    const-wide v0, 0x10b00000001L

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 23
    .line 24
    const/16 v3, 0x1f

    .line 25
    .line 26
    invoke-virtual {v2, v7, v8, v9, v3}, Lcom/android/internal/app/procstats/ProcessStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 30
    .line 31
    .line 32
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    const-wide v2, 0x10b00000002L

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    const/4 v1, 0x3

    .line 39
    move-object v0, p0

    .line 40
    move-wide v4, v8

    .line 41
    move-object v6, v7

    .line 42
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(IJJLandroid/util/proto/ProtoOutputStream;)V

    .line 43
    .line 44
    .line 45
    const-wide v2, 0x10b00000003L

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    const/16 v1, 0x18

    .line 51
    .line 52
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(IJJLandroid/util/proto/ProtoOutputStream;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw p0
.end method

.method public final getCommittedFilesLF(IZZ)Ljava/util/ArrayList;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    if-gt v1, p1, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    array-length v1, v0

    .line 16
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const/4 v1, 0x0

    .line 30
    :goto_0
    array-length v2, v0

    .line 31
    if-ge v1, v2, :cond_4

    .line 32
    .line 33
    aget-object v2, v0, v1

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string/jumbo v4, "state-v2-"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    if-nez p3, :cond_2

    .line 54
    .line 55
    const-string v2, ".ci"

    .line 56
    .line 57
    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    if-nez p2, :cond_3

    .line 65
    .line 66
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 80
    .line 81
    .line 82
    return-object p1

    .line 83
    :cond_5
    :goto_2
    const/4 p0, 0x0

    .line 84
    return-object p0
.end method

.method public final getCommittedStats(JIZLjava/util/List;)J
    .locals 7

    .line 1
    new-instance v6, Lcom/android/internal/app/procstats/ProcessStats;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v6, v0}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v1, p1

    .line 9
    move v3, p3

    .line 10
    move v4, p4

    .line 11
    move-object v5, p5

    .line 12
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessStatsService;->getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J

    .line 13
    .line 14
    .line 15
    move-result-wide p0

    .line 16
    return-wide p0
.end method

.method public final getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p3

    .line 4
    .line 5
    move-object/from16 v3, p5

    .line 6
    .line 7
    move-object/from16 v4, p6

    .line 8
    .line 9
    const-string v5, "ProcessStatsService"

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCommittedStatsMerged_enforcePermission()V

    .line 12
    .line 13
    .line 14
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 17
    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v0, 0x1

    .line 21
    :try_start_0
    invoke-virtual {v1, v6, v6, v0}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    if-eqz v7, :cond_6

    .line 26
    .line 27
    const-string/jumbo v8, "yyyy-MM-dd-HH-mm-ss"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    move-wide/from16 v9, p1

    .line 31
    .line 32
    :try_start_1
    invoke-static {v8, v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v11

    .line 44
    sub-int/2addr v11, v0

    .line 45
    :goto_0
    if-ltz v11, :cond_4

    .line 46
    .line 47
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    move-object v12, v0

    .line 52
    check-cast v12, Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    :try_start_2
    const-string/jumbo v0, "state-v2-"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    add-int/lit8 v0, v0, 0x9

    .line 62
    .line 63
    const-string v13, ".bin"

    .line 64
    .line 65
    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v13

    .line 69
    invoke-virtual {v12, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-lez v0, :cond_3

    .line 78
    .line 79
    new-instance v0, Ljava/io/File;

    .line 80
    .line 81
    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const/high16 v13, 0x10000000

    .line 85
    .line 86
    invoke-static {v0, v13}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    new-instance v13, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 91
    .line 92
    invoke-direct {v13, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 93
    .line 94
    .line 95
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats;

    .line 96
    .line 97
    invoke-direct {v0, v6}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v13}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 104
    .line 105
    .line 106
    iget-wide v13, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    .line 107
    .line 108
    cmp-long v15, v13, v9

    .line 109
    .line 110
    if-lez v15, :cond_0

    .line 111
    .line 112
    move-wide v9, v13

    .line 113
    :cond_0
    if-eqz p4, :cond_1

    .line 114
    .line 115
    invoke-virtual {v4, v0}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    goto/16 :goto_8

    .line 121
    .line 122
    :catch_0
    move-exception v0

    .line 123
    goto :goto_2

    .line 124
    :catch_1
    move-exception v0

    .line 125
    goto :goto_3

    .line 126
    :cond_1
    if-eqz v3, :cond_2

    .line 127
    .line 128
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    .line 129
    .line 130
    .line 131
    move-result-object v13

    .line 132
    new-instance v14, Lcom/android/server/am/ProcessStatsService$3;

    .line 133
    .line 134
    invoke-direct {v14, v13, v0, v2}, Lcom/android/server/am/ProcessStatsService$3;-><init>([Landroid/os/ParcelFileDescriptor;Lcom/android/internal/app/procstats/ProcessStats;I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    .line 138
    .line 139
    .line 140
    aget-object v13, v13, v6

    .line 141
    .line 142
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    :cond_2
    :goto_1
    iget-object v13, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 146
    .line 147
    if-eqz v13, :cond_3

    .line 148
    .line 149
    new-instance v13, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v14, "Failure reading process stats: "

    .line 155
    .line 156
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    .line 170
    .line 171
    goto :goto_4

    .line 172
    :goto_2
    :try_start_3
    new-instance v13, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v14, "Failure to read and parse commit file "

    .line 178
    .line 179
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v12

    .line 189
    invoke-static {v5, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    .line 191
    .line 192
    goto :goto_4

    .line 193
    :catch_2
    move-exception v0

    .line 194
    goto :goto_6

    .line 195
    :goto_3
    new-instance v13, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    const-string v14, "Failure opening procstat file "

    .line 201
    .line 202
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v12

    .line 212
    invoke-static {v5, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    .line 214
    .line 215
    :cond_3
    :goto_4
    add-int/lit8 v11, v11, -0x1

    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_4
    if-eqz p4, :cond_5

    .line 220
    .line 221
    if-eqz v3, :cond_5

    .line 222
    .line 223
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    new-instance v7, Lcom/android/server/am/ProcessStatsService$3;

    .line 228
    .line 229
    invoke-direct {v7, v0, v4, v2}, Lcom/android/server/am/ProcessStatsService$3;-><init>([Landroid/os/ParcelFileDescriptor;Lcom/android/internal/app/procstats/ProcessStats;I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 233
    .line 234
    .line 235
    aget-object v0, v0, v6

    .line 236
    .line 237
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 238
    .line 239
    .line 240
    :cond_5
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 243
    .line 244
    .line 245
    return-wide v9

    .line 246
    :catch_3
    move-exception v0

    .line 247
    move-wide/from16 v9, p1

    .line 248
    .line 249
    goto :goto_6

    .line 250
    :cond_6
    move-wide/from16 v9, p1

    .line 251
    .line 252
    :goto_5
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 255
    .line 256
    .line 257
    goto :goto_7

    .line 258
    :goto_6
    :try_start_4
    const-string v2, "Failure opening procstat file"

    .line 259
    .line 260
    invoke-static {v5, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 261
    .line 262
    .line 263
    goto :goto_5

    .line 264
    :goto_7
    return-wide v9

    .line 265
    :goto_8
    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 266
    .line 267
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 268
    .line 269
    .line 270
    throw v0
.end method

.method public final getCurrentFile()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public final getCurrentMemoryState()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final getCurrentStats(Ljava/util/List;)[B
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCurrentStats_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 22
    .line 23
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 24
    .line 25
    iput-wide v2, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    invoke-virtual {v4, v0, v2, v3, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 29
    .line 30
    .line 31
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 35
    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    :try_start_1
    invoke-virtual {p0, v5, v5, v1}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    sub-int/2addr v3, v1

    .line 51
    :goto_0
    if-ltz v3, :cond_0

    .line 52
    .line 53
    :try_start_2
    new-instance v1, Ljava/io/File;

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Ljava/lang/String;

    .line 60
    .line 61
    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/high16 v4, 0x10000000

    .line 65
    .line 66
    invoke-static {v1, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    goto :goto_2

    .line 76
    :catch_0
    move-exception v1

    .line 77
    :try_start_3
    const-string v4, "ProcessStatsService"

    .line 78
    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v6, "Failure opening procstat file "

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    check-cast v6, Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    .line 104
    .line 105
    :goto_1
    add-int/lit8 v3, v3, -0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :goto_2
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 111
    .line 112
    .line 113
    throw p1

    .line 114
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 115
    .line 116
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    return-object p0

    .line 124
    :catchall_1
    move-exception p0

    .line 125
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 126
    throw p0
.end method

.method public final getMemFactorLocked()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final getMinAssociationDumpDuration()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 4
    .line 5
    sget-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    .line 6
    .line 7
    return-wide v0
.end method

.method public final getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getStatsOverTime_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 22
    .line 23
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 24
    .line 25
    iput-wide v2, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    invoke-virtual {v4, v0, v2, v3, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 32
    .line 33
    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 34
    .line 35
    iget-wide v6, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    .line 36
    .line 37
    sub-long/2addr v3, v6

    .line 38
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 42
    .line 43
    .line 44
    cmp-long v1, v3, p1

    .line 45
    .line 46
    if-gez v1, :cond_2

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    :try_start_1
    invoke-virtual {p0, v5, v5, v1}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-lez v3, :cond_2

    .line 60
    .line 61
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    .line 63
    .line 64
    sget-object v3, Lcom/android/internal/app/procstats/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 65
    .line 66
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Lcom/android/internal/app/procstats/ProcessStats;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    sub-int/2addr v0, v1

    .line 80
    :goto_0
    if-ltz v0, :cond_1

    .line 81
    .line 82
    iget-wide v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 83
    .line 84
    iget-wide v8, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    .line 85
    .line 86
    sub-long/2addr v6, v8

    .line 87
    cmp-long v1, v6, p1

    .line 88
    .line 89
    if-gez v1, :cond_1

    .line 90
    .line 91
    new-instance v1, Landroid/util/AtomicFile;

    .line 92
    .line 93
    new-instance v4, Ljava/io/File;

    .line 94
    .line 95
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    check-cast v6, Ljava/lang/String;

    .line 100
    .line 101
    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {v1, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 105
    .line 106
    .line 107
    add-int/lit8 v4, v0, -0x1

    .line 108
    .line 109
    new-instance v6, Lcom/android/internal/app/procstats/ProcessStats;

    .line 110
    .line 111
    invoke-direct {v6, v5}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 112
    .line 113
    .line 114
    invoke-static {v6, v1}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)V

    .line 115
    .line 116
    .line 117
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 118
    .line 119
    if-nez v1, :cond_0

    .line 120
    .line 121
    invoke-virtual {v3, v6}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v1, "Added stats: "

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v1, ", over "

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget-wide v7, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 145
    .line 146
    iget-wide v9, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    .line 147
    .line 148
    sub-long/2addr v7, v9

    .line 149
    invoke-static {v7, v8, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 150
    .line 151
    .line 152
    const-string v1, "ProcessStatsService"

    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :catchall_0
    move-exception p1

    .line 163
    goto :goto_3

    .line 164
    :catch_0
    move-exception p1

    .line 165
    goto :goto_2

    .line 166
    :cond_0
    const-string v1, "ProcessStatsService"

    .line 167
    .line 168
    new-instance v7, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v8, "Failure reading "

    .line 174
    .line 175
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v0, "; "

    .line 188
    .line 189
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    :goto_1
    move v0, v4

    .line 205
    goto :goto_0

    .line 206
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v3, v0, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 211
    .line 212
    .line 213
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 218
    .line 219
    .line 220
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    new-instance v0, Lcom/android/server/am/ProcessStatsService$4;

    .line 225
    .line 226
    invoke-direct {v0, p2, p1}, Lcom/android/server/am/ProcessStatsService$4;-><init>([Landroid/os/ParcelFileDescriptor;[B)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 230
    .line 231
    .line 232
    aget-object p1, p2, v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    .line 234
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 235
    .line 236
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 237
    .line 238
    .line 239
    return-object p1

    .line 240
    :goto_2
    :try_start_2
    const-string p2, "ProcessStatsService"

    .line 241
    .line 242
    const-string v0, "Failed building output pipe"

    .line 243
    .line 244
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    .line 246
    .line 247
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 248
    .line 249
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 250
    .line 251
    .line 252
    const/4 p0, 0x0

    .line 253
    return-object p0

    .line 254
    :goto_3
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 255
    .line 256
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 257
    .line 258
    .line 259
    throw p1

    .line 260
    :catchall_1
    move-exception p0

    .line 261
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 262
    throw p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    instance-of p1, p0, Ljava/lang/SecurityException;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p1, "ProcessStatsService"

    .line 12
    .line 13
    const-string p2, "Process Stats Crash"

    .line 14
    .line 15
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    :cond_0
    throw p0
.end method

.method public final performWriteState(J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    iput-boolean v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    const/4 v3, 0x0

    .line 18
    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 19
    .line 20
    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 23
    .line 24
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 25
    .line 26
    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    :try_start_1
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 47
    .line 48
    .line 49
    const-string/jumbo v0, "procstats"

    .line 50
    .line 51
    .line 52
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v6

    .line 56
    sub-long/2addr v6, v4

    .line 57
    add-long/2addr v6, p1

    .line 58
    invoke-static {v0, v6, v7}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLF()V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catchall_1
    move-exception p1

    .line 74
    goto :goto_2

    .line 75
    :catch_0
    move-exception p1

    .line 76
    :try_start_2
    const-string p2, "ProcessStatsService"

    .line 77
    .line 78
    const-string v0, "Error writing process statistics"

    .line 79
    .line 80
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :goto_1
    return-void

    .line 88
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLF()V

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    throw p0
.end method

.method public final setMemFactorLocked(IJZ)V
    .locals 7

    .line 1
    iput p1, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p4

    .line 11
    :cond_0
    if-eqz p4, :cond_1

    .line 12
    .line 13
    add-int/lit8 p1, p1, 0x4

    .line 14
    .line 15
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 16
    .line 17
    iget p4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 18
    .line 19
    if-eq p1, p4, :cond_6

    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    if-eq p4, v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    .line 25
    .line 26
    aget-wide v1, v0, p4

    .line 27
    .line 28
    iget-wide v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 29
    .line 30
    sub-long v3, p2, v3

    .line 31
    .line 32
    add-long/2addr v3, v1

    .line 33
    aput-wide v3, v0, p4

    .line 34
    .line 35
    :cond_2
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 36
    .line 37
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 46
    .line 47
    .line 48
    move-result p4

    .line 49
    add-int/lit8 p4, p4, -0x1

    .line 50
    .line 51
    :goto_0
    if-ltz p4, :cond_6

    .line 52
    .line 53
    invoke-virtual {p0, p4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/util/SparseArray;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    add-int/lit8 v1, v1, -0x1

    .line 64
    .line 65
    :goto_1
    if-ltz v1, :cond_5

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Landroid/util/LongSparseArray;

    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    add-int/lit8 v3, v3, -0x1

    .line 78
    .line 79
    :goto_2
    if-ltz v3, :cond_4

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    check-cast v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 86
    .line 87
    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 88
    .line 89
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    add-int/lit8 v5, v5, -0x1

    .line 94
    .line 95
    :goto_3
    if-ltz v5, :cond_3

    .line 96
    .line 97
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    check-cast v6, Lcom/android/internal/app/procstats/ServiceState;

    .line 102
    .line 103
    invoke-virtual {v6, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setMemFactor(IJ)V

    .line 104
    .line 105
    .line 106
    add-int/lit8 v5, v5, -0x1

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_3
    add-int/lit8 v3, v3, -0x1

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_5
    add-int/lit8 p4, p4, -0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_6
    return-void
.end method

.method public final trimHistoricStatesWriteLF()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    move v2, v1

    .line 11
    :goto_0
    array-length v3, v0

    .line 12
    if-ge v2, v3, :cond_1

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string/jumbo v4, "state-v2-"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    aget-object v3, v0, v2

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 32
    .line 33
    .line 34
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/16 v0, 0x8

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-nez p0, :cond_2

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-le v2, v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Ljava/lang/String;

    .line 58
    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v4, "Pruning old procstats: "

    .line 62
    .line 63
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const-string v4, "ProcessStatsService"

    .line 74
    .line 75
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    new-instance v3, Ljava/io/File;

    .line 79
    .line 80
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    return-void
.end method

.method public final updateFileLocked()V
    .locals 5

    .line 1
    const-string/jumbo v0, "state-v2-"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    new-instance v1, Landroid/util/AtomicFile;

    .line 10
    .line 11
    new-instance v2, Ljava/io/File;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    .line 14
    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, ".bin"

    .line 28
    .line 29
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    iput-wide v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    .line 54
    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 60
    .line 61
    .line 62
    throw v0
.end method

.method public final writeStateLocked(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    return-void
.end method

.method public final writeStateLocked(ZZ)V
    .locals 6

    .line 5
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 7
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    if-nez v3, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 9
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 10
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v1, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    if-eqz p2, :cond_1

    .line 11
    iget v4, v3, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 12
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 13
    new-instance v3, Landroid/util/AtomicFile;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->getCurrentFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 14
    iput-boolean p2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    :cond_2
    if-eqz p2, :cond_3

    .line 15
    iget-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {p2}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    .line 16
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->updateFileLocked()V

    .line 17
    iget-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance v3, Lcom/android/server/am/ProcessStatsService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/am/ProcessStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    invoke-virtual {p2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    if-nez p1, :cond_4

    .line 20
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/am/ProcessStatsService$2;

    invoke-direct {p2, p0, v3, v4}, Lcom/android/server/am/ProcessStatsService$2;-><init>(Lcom/android/server/am/ProcessStatsService;J)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    monitor-exit v0

    return-void

    .line 22
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/ProcessStatsService;->performWriteState(J)V

    return-void

    .line 24
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
