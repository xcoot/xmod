.class public final Lcom/android/server/content/SyncLogger$RotatingFileLogger;
.super Lcom/android/server/content/SyncLogger;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DO_LOGCAT:Z

.field public static final sFilenameDateFormat:Ljava/text/SimpleDateFormat;

.field public static final sTimestampFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field public final mCachedDate:Ljava/util/Date;

.field public mCurrentLogFileDayTimestamp:J

.field public mErrorShown:Z

.field public final mHandler:Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;

.field public final mKeepAgeMs:J

.field public final mLock:Ljava/lang/Object;

.field public final mLogPath:Ljava/io/File;

.field public mLogWriter:Ljava/io/Writer;

.field public final mStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 6
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 9
    sput-object v0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->sTimestampFormat:Ljava/text/SimpleDateFormat;

    .line 11
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 13
    const-string/jumbo v1, "yyyy-MM-dd"

    .line 16
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 19
    sput-object v0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->sFilenameDateFormat:Ljava/text/SimpleDateFormat;

    .line 21
    const-string v0, "SyncLogger"

    .line 23
    const/4 v1, 0x3

    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 27
    move-result v0

    .line 28
    sput-boolean v0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->DO_LOGCAT:Z

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLock:Ljava/lang/Object;

    .line 11
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 13
    const-wide/16 v1, 0x7

    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mKeepAgeMs:J

    .line 21
    new-instance v0, Ljava/util/Date;

    .line 23
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCachedDate:Ljava/util/Date;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 35
    new-instance v0, Ljava/io/File;

    .line 37
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 40
    move-result-object v1

    .line 41
    const-string/jumbo v2, "syncmanager-log"

    .line 44
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    iput-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogPath:Ljava/io/File;

    .line 49
    new-instance v0, Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;

    .line 51
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 58
    move-result-object v1

    .line 59
    invoke-direct {v0, p0, v1}, Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;-><init>(Lcom/android/server/content/SyncLogger$RotatingFileLogger;Landroid/os/Looper;)V

    .line 62
    iput-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mHandler:Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;

    .line 64
    return-void
.end method

.method public static dumpFile(Ljava/io/File;Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Dumping "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "SyncLogger"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const v0, 0x8000

    .line 23
    new-array v0, v0, [C

    .line 25
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 27
    new-instance v2, Ljava/io/FileReader;

    .line 29
    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 32
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/Reader;->read([C)I

    .line 38
    move-result p0

    .line 39
    if-ltz p0, :cond_1

    .line 41
    if-lez p0, :cond_0

    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-virtual {p1, v0, v2, p0}, Ljava/io/PrintWriter;->write([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 53
    goto :goto_3

    .line 54
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 57
    goto :goto_2

    .line 58
    :catchall_1
    move-exception p1

    .line 59
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 62
    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 63
    :catch_0
    :goto_3
    return-void
.end method


# virtual methods
.method public final dumpAll(Ljava/io/PrintWriter;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogPath:Ljava/io/File;

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_2

    .line 12
    array-length v2, v1

    .line 13
    if-nez v2, :cond_0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 19
    array-length v2, v1

    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_0
    if-ge v3, v2, :cond_1

    .line 23
    aget-object v4, v1, v3

    .line 25
    new-instance v5, Ljava/io/File;

    .line 27
    iget-object v6, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogPath:Ljava/io/File;

    .line 29
    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    invoke-static {v5, p1}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->dumpFile(Ljava/io/File;Ljava/io/PrintWriter;)V

    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :cond_2
    :goto_1
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/content/SyncJobService;->jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final varargs log([Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iget-object p0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mHandler:Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {v0, v1}, Lcom/android/internal/util/IntPair;->first(J)I

    .line 13
    move-result v2

    .line 14
    invoke-static {v0, v1}, Lcom/android/internal/util/IntPair;->second(J)I

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {p0, v1, v2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 26
    return-void
.end method

.method public final openLogLocked(J)V
    .locals 5

    .line 1
    const-wide/32 v0, 0x5265c00

    .line 4
    rem-long v0, p1, v0

    .line 6
    iget-object v2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    .line 8
    if-eqz v2, :cond_0

    .line 10
    iget-wide v3, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCurrentLogFileDayTimestamp:J

    .line 12
    cmp-long v3, v0, v3

    .line 14
    if-nez v3, :cond_0

    .line 16
    return-void

    .line 17
    :cond_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 20
    const/4 v2, 0x0

    .line 21
    iput-object v2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    .line 23
    iput-wide v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCurrentLogFileDayTimestamp:J

    .line 25
    iget-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCachedDate:Ljava/util/Date;

    .line 27
    invoke-virtual {v0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    const-string/jumbo p2, "synclog-"

    .line 35
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    sget-object p2, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->sFilenameDateFormat:Ljava/text/SimpleDateFormat;

    .line 40
    iget-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCachedDate:Ljava/util/Date;

    .line 42
    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string p2, ".log"

    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    new-instance p2, Ljava/io/File;

    .line 60
    iget-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogPath:Ljava/io/File;

    .line 62
    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 72
    const/4 p1, 0x1

    .line 73
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    .line 75
    invoke-direct {v0, p2, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 78
    iput-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const-string v1, "Failed to open log file: "

    .line 84
    invoke-static {p2, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object p2

    .line 88
    iget-boolean v1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mErrorShown:Z

    .line 90
    if-nez v1, :cond_1

    .line 92
    const-string v1, "SyncLogger"

    .line 94
    invoke-static {v1, p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    iput-boolean p1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mErrorShown:Z

    .line 99
    :cond_1
    :goto_0
    return-void
.end method

.method public final purgeOldLogs()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogPath:Ljava/io/File;

    .line 6
    iget-wide v2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mKeepAgeMs:J

    .line 8
    const/4 p0, 0x1

    .line 9
    invoke-static {v1, p0, v2, v3}, Landroid/os/FileUtils;->deleteOlderFiles(Ljava/io/File;IJ)Z

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method
