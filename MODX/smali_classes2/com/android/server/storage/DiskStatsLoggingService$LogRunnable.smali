.class Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TIMEOUT_MILLIS:J


# instance fields
.field public mCollector:Lcom/android/server/storage/AppCollector;

.field public mContext:Landroid/content/Context;

.field public mDownloadsDirectory:Ljava/io/File;

.field public mJobService:Landroid/app/job/JobService;

.field public mOutputFile:Ljava/io/File;

.field public mParams:Landroid/app/job/JobParameters;

.field public mSystemSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0xa

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->TIMEOUT_MILLIS:J

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/android/server/storage/FileCollector;->getMeasurementResult(Landroid/content/Context;)Lcom/android/server/storage/FileCollector$MeasurementResult;

    .line 5
    .line 6
    .line 7
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    .line 8
    iget-object v2, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mDownloadsDirectory:Ljava/io/File;

    .line 9
    .line 10
    invoke-static {v2}, Landroid/os/storage/StorageManager;->maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-instance v3, Lcom/android/server/storage/FileCollector$MeasurementResult;

    .line 15
    .line 16
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v3}, Lcom/android/server/storage/FileCollector;->collectFiles(Ljava/io/File;Lcom/android/server/storage/FileCollector$MeasurementResult;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mCollector:Lcom/android/server/storage/AppCollector;

    .line 23
    .line 24
    sget-wide v4, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->TIMEOUT_MILLIS:J

    .line 25
    .line 26
    monitor-enter v2

    .line 27
    :try_start_1
    iget-object v6, v2, Lcom/android/server/storage/AppCollector;->mStats:Ljava/util/concurrent/CompletableFuture;

    .line 28
    .line 29
    const/4 v7, 0x0

    .line 30
    if-nez v6, :cond_0

    .line 31
    .line 32
    new-instance v6, Ljava/util/concurrent/CompletableFuture;

    .line 33
    .line 34
    invoke-direct {v6}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v6, v2, Lcom/android/server/storage/AppCollector;->mStats:Ljava/util/concurrent/CompletableFuture;

    .line 38
    .line 39
    iget-object v6, v2, Lcom/android/server/storage/AppCollector;->mBackgroundHandler:Lcom/android/server/storage/AppCollector$BackgroundHandler;

    .line 40
    .line 41
    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_6

    .line 47
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :try_start_2
    iget-object v2, v2, Lcom/android/server/storage/AppCollector;->mStats:Ljava/util/concurrent/CompletableFuture;

    .line 49
    .line 50
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 51
    .line 52
    invoke-virtual {v2, v4, v5, v6}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :catch_0
    move-exception v2

    .line 60
    goto :goto_1

    .line 61
    :catch_1
    const-string v2, "AppCollector"

    .line 62
    .line 63
    const-string v4, "AppCollector timed out"

    .line 64
    .line 65
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :goto_1
    const-string v4, "AppCollector"

    .line 70
    .line 71
    const-string v5, "An exception occurred while getting app storage"

    .line 72
    .line 73
    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .line 75
    .line 76
    :goto_2
    const/4 v2, 0x0

    .line 77
    :goto_3
    if-eqz v2, :cond_1

    .line 78
    .line 79
    iget-wide v4, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mSystemSize:J

    .line 80
    .line 81
    new-instance v0, Lcom/android/server/storage/DiskStatsFileLogger;

    .line 82
    .line 83
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v1, v0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    .line 87
    .line 88
    iget-wide v8, v3, Lcom/android/server/storage/FileCollector$MeasurementResult;->imagesSize:J

    .line 89
    .line 90
    iget-wide v10, v3, Lcom/android/server/storage/FileCollector$MeasurementResult;->videosSize:J

    .line 91
    .line 92
    add-long/2addr v8, v10

    .line 93
    iget-wide v10, v3, Lcom/android/server/storage/FileCollector$MeasurementResult;->miscSize:J

    .line 94
    .line 95
    add-long/2addr v8, v10

    .line 96
    iget-wide v10, v3, Lcom/android/server/storage/FileCollector$MeasurementResult;->audioSize:J

    .line 97
    .line 98
    add-long/2addr v8, v10

    .line 99
    iput-wide v8, v0, Lcom/android/server/storage/DiskStatsFileLogger;->mDownloadsSize:J

    .line 100
    .line 101
    iput-wide v4, v0, Lcom/android/server/storage/DiskStatsFileLogger;->mSystemSize:J

    .line 102
    .line 103
    iput-object v2, v0, Lcom/android/server/storage/DiskStatsFileLogger;->mPackageStats:Ljava/util/List;

    .line 104
    .line 105
    :try_start_3
    iget-object v1, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mOutputFile:Ljava/io/File;

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mOutputFile:Ljava/io/File;

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lcom/android/server/storage/DiskStatsFileLogger;->dumpToFile(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 113
    .line 114
    .line 115
    goto :goto_4

    .line 116
    :catch_2
    move-exception v0

    .line 117
    const-string v1, "DiskStatsLogService"

    .line 118
    .line 119
    const-string v2, "Exception while writing opportunistic disk file cache."

    .line 120
    .line 121
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .line 123
    .line 124
    :goto_4
    move v0, v7

    .line 125
    goto :goto_5

    .line 126
    :cond_1
    const-string v1, "DiskStatsLogService"

    .line 127
    .line 128
    const-string v2, "Timed out while fetching package stats."

    .line 129
    .line 130
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    :goto_5
    iget-object v1, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mJobService:Landroid/app/job/JobService;

    .line 134
    .line 135
    if-eqz v1, :cond_2

    .line 136
    .line 137
    iget-object p0, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mParams:Landroid/app/job/JobParameters;

    .line 138
    .line 139
    invoke-virtual {v1, p0, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 140
    .line 141
    .line 142
    :cond_2
    return-void

    .line 143
    :goto_6
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 144
    throw p0

    .line 145
    :catch_3
    move-exception v1

    .line 146
    const-string v2, "DiskStatsLogService"

    .line 147
    .line 148
    const-string v3, "Error while measuring storage"

    .line 149
    .line 150
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .line 152
    .line 153
    iget-object v1, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mJobService:Landroid/app/job/JobService;

    .line 154
    .line 155
    if-eqz v1, :cond_3

    .line 156
    .line 157
    iget-object p0, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mParams:Landroid/app/job/JobParameters;

    .line 158
    .line 159
    invoke-virtual {v1, p0, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 160
    .line 161
    .line 162
    :cond_3
    return-void
.end method
