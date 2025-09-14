.class public final Lcom/android/server/job/JobStore;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field static final INVALID_UID:I = -0x2

.field static final JOB_FILE_SPLIT_PREFIX:Ljava/lang/String; = "jobs_"

.field public static final SPLIT_FILE_PATTERN:Ljava/util/regex/Pattern;

.field public static final sScheduledJob30MinHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

.field public static sSingleton:Lcom/android/server/job/JobStore;

.field public static final sSingletonLock:Ljava/lang/Object;


# instance fields
.field public mCurrentJobSetSize:I

.field public final mEventLogger:Landroid/util/SystemConfigFileCommitEventLogger;

.field public final mIoHandler:Landroid/os/Handler;

.field public final mJobFileDirectory:Ljava/io/File;

.field public final mJobSet:Lcom/android/server/job/JobStore$JobSet;

.field public final mJobsFile:Landroid/util/AtomicFile;

.field public final mLock:Ljava/lang/Object;

.field public final mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

.field public final mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

.field public final mRtcGood:Z

.field public mScheduledJob30MinHighWaterMark:I

.field public final mScheduledJobHighWaterMarkLoggingRunnable:Lcom/android/server/job/JobStore$1;

.field public mSplitFileMigrationNeeded:Z

.field public mUseSplitFiles:Z

.field public mWriteInProgress:Z

.field public final mWriteRunnable:Lcom/android/server/job/JobStore$2;

.field public final mWriteScheduleLock:Ljava/lang/Object;

.field public mWriteScheduled:Z

.field public final mXmlTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/job/JobStore;->DEBUG:Z

    .line 4
    .line 5
    const-string v0, "^jobs_\\d+.xml$"

    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/android/server/job/JobStore;->SPLIT_FILE_PATTERN:Ljava/util/regex/Pattern;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/android/server/job/JobStore;->sSingletonLock:Ljava/lang/Object;

    .line 19
    .line 20
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    .line 21
    .line 22
    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    .line 23
    .line 24
    const/high16 v2, 0x42c60000    # 99.0f

    .line 25
    .line 26
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 27
    .line 28
    const/16 v4, 0xf

    .line 29
    .line 30
    const/4 v5, 0x1

    .line 31
    invoke-direct {v1, v4, v5, v2, v3}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    .line 32
    .line 33
    .line 34
    const-string/jumbo v2, "job_scheduler.value_hist_scheduled_job_30_min_high_water_mark"

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/android/server/job/JobStore;->sScheduledJob30MinHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    .line 41
    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/io/File;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    .line 19
    .line 20
    new-instance v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    .line 21
    .line 22
    invoke-direct {v1}, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iput v1, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    .line 29
    .line 30
    iput v1, p0, Lcom/android/server/job/JobStore;->mScheduledJob30MinHighWaterMark:I

    .line 31
    .line 32
    new-instance v2, Lcom/android/server/job/JobStore$1;

    .line 33
    .line 34
    invoke-direct {v2, p0}, Lcom/android/server/job/JobStore$1;-><init>(Lcom/android/server/job/JobStore;)V

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Lcom/android/server/job/JobStore;->mScheduledJobHighWaterMarkLoggingRunnable:Lcom/android/server/job/JobStore$1;

    .line 38
    .line 39
    new-instance v3, Lcom/android/server/job/JobStore$2;

    .line 40
    .line 41
    invoke-direct {v3, p0}, Lcom/android/server/job/JobStore$2;-><init>(Lcom/android/server/job/JobStore;)V

    .line 42
    .line 43
    .line 44
    iput-object v3, p0, Lcom/android/server/job/JobStore;->mWriteRunnable:Lcom/android/server/job/JobStore$2;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    .line 47
    .line 48
    new-instance p1, Ljava/lang/Object;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    .line 54
    .line 55
    new-instance p1, Ljava/io/File;

    .line 56
    .line 57
    const-string/jumbo v3, "system"

    .line 58
    .line 59
    .line 60
    invoke-direct {p1, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance p2, Ljava/io/File;

    .line 64
    .line 65
    const-string/jumbo v3, "job"

    .line 66
    .line 67
    .line 68
    invoke-direct {p2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iput-object p2, p0, Lcom/android/server/job/JobStore;->mJobFileDirectory:Ljava/io/File;

    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 74
    .line 75
    .line 76
    new-instance p1, Landroid/util/SystemConfigFileCommitEventLogger;

    .line 77
    .line 78
    const-string/jumbo v3, "jobs"

    .line 79
    .line 80
    .line 81
    invoke-direct {p1, v3}, Landroid/util/SystemConfigFileCommitEventLogger;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lcom/android/server/job/JobStore;->mEventLogger:Landroid/util/SystemConfigFileCommitEventLogger;

    .line 85
    .line 86
    new-instance v3, Ljava/io/File;

    .line 87
    .line 88
    const-string/jumbo v4, "jobs.xml"

    .line 89
    .line 90
    .line 91
    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    new-instance v4, Landroid/util/AtomicFile;

    .line 95
    .line 96
    invoke-direct {v4, v3, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Landroid/util/SystemConfigFileCommitEventLogger;)V

    .line 97
    .line 98
    .line 99
    iput-object v4, p0, Lcom/android/server/job/JobStore;->mJobsFile:Landroid/util/AtomicFile;

    .line 100
    .line 101
    new-instance p1, Lcom/android/server/job/JobStore$JobSet;

    .line 102
    .line 103
    invoke-direct {p1}, Lcom/android/server/job/JobStore$JobSet;-><init>()V

    .line 104
    .line 105
    .line 106
    iput-object p1, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 107
    .line 108
    invoke-virtual {v4}, Landroid/util/AtomicFile;->exists()Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_0

    .line 113
    .line 114
    invoke-virtual {v4}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    .line 115
    .line 116
    .line 117
    move-result-wide p1

    .line 118
    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    .line 120
    .line 121
    .line 122
    move-result-wide p1

    .line 123
    :goto_0
    iput-wide p1, p0, Lcom/android/server/job/JobStore;->mXmlTimestamp:J

    .line 124
    .line 125
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 126
    .line 127
    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    .line 128
    .line 129
    .line 130
    move-result-wide v3

    .line 131
    cmp-long p1, v3, p1

    .line 132
    .line 133
    if-lez p1, :cond_1

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_1
    move v0, v1

    .line 137
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/job/JobStore;->mRtcGood:Z

    .line 138
    .line 139
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    const-wide/32 p1, 0x1b7740

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    .line 148
    .line 149
    return-void
.end method

.method public static convertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;
    .locals 10

    .line 1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Ljava/lang/Long;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    const-wide/16 v4, 0x0

    .line 16
    .line 17
    cmp-long v2, v2, v4

    .line 18
    .line 19
    if-lez v2, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Ljava/lang/Long;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    sub-long/2addr v2, v0

    .line 30
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    add-long/2addr v2, p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-wide v2, v4

    .line 37
    :goto_0
    iget-object v6, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v6, Ljava/lang/Long;

    .line 40
    .line 41
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 42
    .line 43
    .line 44
    move-result-wide v6

    .line 45
    const-wide v8, 0x7fffffffffffffffL

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    cmp-long v6, v6, v8

    .line 51
    .line 52
    if-gez v6, :cond_1

    .line 53
    .line 54
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p0, Ljava/lang/Long;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 59
    .line 60
    .line 61
    move-result-wide v6

    .line 62
    sub-long/2addr v6, v0

    .line 63
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    add-long v8, v0, p1

    .line 68
    .line 69
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0
.end method

.method public static extractUidFromJobFileName(Ljava/io/File;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string/jumbo v0, "jobs_"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, -0x2

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    add-int/lit8 v0, v0, -0x4

    .line 20
    .line 21
    const/4 v2, 0x5

    .line 22
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    if-gez p0, :cond_0

    .line 31
    .line 32
    return v1

    .line 33
    :cond_0
    return p0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    const-string v0, "JobStore"

    .line 36
    .line 37
    const-string v2, "Unexpected file name format"

    .line 38
    .line 39
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    :cond_1
    return v1
.end method

.method public static initAndGetForTesting(Landroid/content/Context;Ljava/io/File;)Lcom/android/server/job/JobStore;
    .locals 1

    .line 1
    new-instance p0, Lcom/android/server/job/JobStore;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Lcom/android/server/job/JobStore;-><init>(Ljava/lang/Object;Ljava/io/File;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/android/server/job/JobStore;->mRtcGood:Z

    .line 14
    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobStore;->readJobMapFromDisk(Lcom/android/server/job/JobStore$JobSet;Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->clearForTesting()V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public static intArrayToString([I)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/StringJoiner;

    .line 2
    .line 3
    const-string v1, ","

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    array-length v1, p0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_0

    .line 11
    .line 12
    aget v3, p0, v2

    .line 13
    .line 14
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 19
    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static stringToIntArray(Ljava/lang/String;)[I
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-array p0, v1, [I

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    const-string v0, ","

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    array-length v0, p0

    .line 18
    new-array v0, v0, [I

    .line 19
    .line 20
    :goto_0
    array-length v2, p0

    .line 21
    if-ge v1, v2, :cond_1

    .line 22
    .line 23
    aget-object v2, p0, v1

    .line 24
    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    aput v2, v0, v1

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-object v0
.end method


# virtual methods
.method public addForTesting(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    iput v0, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    .line 14
    .line 15
    iget v2, p0, Lcom/android/server/job/JobStore;->mScheduledJob30MinHighWaterMark:I

    .line 16
    .line 17
    if-ge v2, v0, :cond_0

    .line 18
    .line 19
    iput v0, p0, Lcom/android/server/job/JobStore;->mScheduledJob30MinHighWaterMark:I

    .line 20
    .line 21
    :cond_0
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPersisted()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    .line 30
    .line 31
    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 32
    .line 33
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public clearForTesting()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    .line 22
    .line 23
    return-void
.end method

.method public final containsJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/util/ArraySet;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    return p0
.end method

.method public final countJobsForUid(I)I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/util/ArraySet;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    :goto_0
    if-ltz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 27
    .line 28
    iget v2, v1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 29
    .line 30
    iget v1, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 31
    .line 32
    if-ne v2, v1, :cond_0

    .line 33
    .line 34
    add-int/lit8 p1, p1, 0x1

    .line 35
    .line 36
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return p1
.end method

.method public final forEachJob(Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final forEachJobForSourceUid(ILjava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/util/ArraySet;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    add-int/lit8 p1, p1, -0x1

    .line 18
    .line 19
    :goto_0
    if-ltz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    .line 26
    .line 27
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 p1, p1, -0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public final getJobsByUid(I)Landroid/util/ArraySet;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Landroid/util/ArraySet;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-object v0
.end method

.method public final maybeWriteStatusToDiskAsync()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    sget-boolean v1, Lcom/android/server/job/JobStore;->DEBUG:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v1, "JobStore"

    .line 13
    .line 14
    const-string v2, "Scheduling persist of jobs to disk."

    .line 15
    .line 16
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/job/JobStore;->mWriteRunnable:Lcom/android/server/job/JobStore$2;

    .line 25
    .line 26
    const-wide/16 v3, 0x7d0

    .line 27
    .line 28
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    .line 33
    .line 34
    :cond_1
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method

.method public final migrateJobFilesAsync()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    .line 5
    .line 6
    const/4 v2, -0x1

    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    iget-object v1, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_1
    iput-boolean v3, p0, Lcom/android/server/job/JobStore;->mSplitFileMigrationNeeded:Z

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    .line 18
    .line 19
    .line 20
    monitor-exit v1

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p0

    .line 25
    :catchall_1
    move-exception p0

    .line 26
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    throw p0
.end method

.method public readJobMapFromDisk(Lcom/android/server/job/JobStore$JobSet;Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;-><init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;ZLjava/util/concurrent/CountDownLatch;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->run()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public removeForTesting(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    .line 11
    .line 12
    sub-int/2addr v0, v1

    .line 13
    iput v0, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    .line 14
    .line 15
    :cond_0
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPersisted()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    .line 24
    .line 25
    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 26
    .line 27
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final removeJobsOfUnlistedUsers([I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/server/job/JobStore$JobSet$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v2, p1}, Lcom/android/server/job/JobStore$JobSet$$ExternalSyntheticLambda0;-><init>(I[I)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lcom/android/server/job/JobStore$JobSet$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-direct {v2, v3, p1}, Lcom/android/server/job/JobStore$JobSet$$ExternalSyntheticLambda0;-><init>(I[I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v1, v2}, Ljava/util/function/Predicate;->or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v1, v0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/lit8 v1, v1, -0x1

    .line 29
    .line 30
    :goto_0
    if-ltz v1, :cond_1

    .line 31
    .line 32
    iget-object v2, v0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/util/ArraySet;

    .line 39
    .line 40
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    iget-object v2, v0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    .line 50
    .line 51
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 52
    .line 53
    .line 54
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object v1, v0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    add-int/lit8 v1, v1, -0x1

    .line 64
    .line 65
    :goto_1
    if-ltz v1, :cond_3

    .line 66
    .line 67
    iget-object v2, v0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    .line 68
    .line 69
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Landroid/util/ArraySet;

    .line 74
    .line 75
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-nez v2, :cond_2

    .line 83
    .line 84
    iget-object v2, v0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    .line 85
    .line 86
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 87
    .line 88
    .line 89
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/job/JobStore$JobSet;->size()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    iput p1, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    .line 97
    .line 98
    return-void
.end method

.method public setUseSplitFilesForTesting(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v1, p1, :cond_0

    .line 8
    .line 9
    move v1, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    .line 17
    .line 18
    const/4 v3, -0x1

    .line 19
    invoke-virtual {p1, v3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_3

    .line 25
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter p1

    .line 31
    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/job/JobStore;->mSplitFileMigrationNeeded:Z

    .line 32
    .line 33
    monitor-exit p1

    .line 34
    goto :goto_2

    .line 35
    :catchall_1
    move-exception p0

    .line 36
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    throw p0

    .line 38
    :cond_2
    :goto_2
    return-void

    .line 39
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    throw p0
.end method

.method public final touchJob(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPersisted()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 14
    .line 15
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public waitForWriteToCompleteForTesting(J)Z
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    add-long v2, v0, p1

    .line 6
    .line 7
    iget-object v4, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v4

    .line 10
    :goto_0
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    .line 11
    .line 12
    if-nez v5, :cond_0

    .line 13
    .line 14
    iget-boolean v5, p0, Lcom/android/server/job/JobStore;->mWriteInProgress:Z

    .line 15
    .line 16
    if-eqz v5, :cond_2

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_2

    .line 21
    :cond_0
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    cmp-long v7, v5, v2

    .line 26
    .line 27
    if-ltz v7, :cond_1

    .line 28
    .line 29
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    .line 33
    .line 34
    sub-long/2addr v5, v0

    .line 35
    add-long/2addr v5, p1

    .line 36
    invoke-virtual {v7, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    :cond_2
    :try_start_2
    monitor-exit v4

    .line 41
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :goto_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    throw p0
.end method

.method public writeStatusToDiskForTesting()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mWriteRunnable:Lcom/android/server/job/JobStore$2;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/job/JobStore$2;->run()V

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v1, "An asynchronous write is already scheduled."

    .line 23
    .line 24
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0

    .line 28
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method
