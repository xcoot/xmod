.class public final synthetic Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AnrHelper;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/internal/os/TimeoutRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AnrHelper;ILcom/android/internal/os/TimeoutRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/AnrHelper;

    .line 6
    iput p2, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;->f$2:Lcom/android/internal/os/TimeoutRecord;

    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;->f$1:I

    .line 3
    iget-object v1, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;->f$2:Lcom/android/internal/os/TimeoutRecord;

    .line 5
    iget-object p0, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/AnrHelper;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget-object v1, v1, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 12
    sget-object v2, Lcom/android/server/am/StackTracesDumpHelper;->ANR_FILE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 14
    const-string v2, "ActivityManager"

    .line 16
    const-string v3, "Aborted stack trace dump (current primary pid="

    .line 18
    const-string v4, "Collecting stacks for pid "

    .line 20
    const-string/jumbo v5, "created ANR temporary file:"

    .line 23
    if-eqz v1, :cond_0

    .line 25
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto/16 :goto_2

    .line 32
    :cond_0
    :goto_0
    :try_start_1
    const-string/jumbo v6, "temp_anr_"

    .line 35
    const-string v7, ".txt"

    .line 37
    new-instance v8, Ljava/io/File;

    .line 39
    const-string v9, "/data/anr"

    .line 41
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-static {v6, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 47
    move-result-object v6

    .line 48
    new-instance v7, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v5

    .line 64
    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    const-string v4, " into temporary file "

    .line 77
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v4

    .line 91
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {v1, v0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidStarted(I)V

    .line 99
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 102
    move-result-object v4

    .line 103
    sget v5, Lcom/android/server/am/StackTracesDumpHelper;->TEMP_DUMP_TIME_LIMIT:I

    .line 105
    int-to-long v7, v5

    .line 106
    invoke-static {v0, v4, v7, v8}, Lcom/android/server/am/StackTracesDumpHelper;->dumpJavaTracesTombstoned(ILjava/lang/String;J)J

    .line 109
    move-result-wide v4

    .line 110
    if-eqz v1, :cond_2

    .line 112
    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidEnded()V

    .line 115
    :cond_2
    cmp-long v4, v7, v4

    .line 117
    if-gtz v4, :cond_3

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    .line 121
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    const-string v3, "); deadline exceeded."

    .line 129
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object v3

    .line 136
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    if-eqz v1, :cond_3

    .line 141
    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileTimedOut()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    :cond_3
    if-eqz v1, :cond_6

    .line 146
    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileEnded()V

    .line 149
    goto :goto_1

    .line 150
    :catch_0
    move-exception v3

    .line 151
    :try_start_3
    const-string v4, "Exception creating temporary ANR dump file:"

    .line 153
    invoke-static {v2, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    if-eqz v1, :cond_4

    .line 158
    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileCreationFailed()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    :cond_4
    if-eqz v1, :cond_5

    .line 163
    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileEnded()V

    .line 166
    :cond_5
    const/4 v6, 0x0

    .line 167
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/android/server/am/AnrHelper;->mTempDumpedPids:Ljava/util/Set;

    .line 169
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    move-result-object v0

    .line 173
    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 176
    return-object v6

    .line 177
    :goto_2
    if-eqz v1, :cond_7

    .line 179
    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileEnded()V

    .line 182
    :cond_7
    throw p0
.end method
