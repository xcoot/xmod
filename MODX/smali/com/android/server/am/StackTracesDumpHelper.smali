.class public abstract Lcom/android/server/am/StackTracesDumpHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ANR_FILE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final NATIVE_DUMP_TIMEOUT_MS:I

.field public static final TEMP_DUMP_TIME_LIMIT:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    const-string/jumbo v1, "yyyy-MM-dd-HH-mm-ss-SSS"

    .line 6
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 9
    sput-object v0, Lcom/android/server/am/StackTracesDumpHelper;->ANR_FILE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 11
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    .line 13
    mul-int/lit16 v1, v0, 0x7d0

    .line 15
    sput v1, Lcom/android/server/am/StackTracesDumpHelper;->NATIVE_DUMP_TIMEOUT_MS:I

    .line 17
    mul-int/lit16 v0, v0, 0x2710

    .line 19
    sput v0, Lcom/android/server/am/StackTracesDumpHelper;->TEMP_DUMP_TIME_LIMIT:I

    .line 21
    return-void
.end method

.method public static appendtoANRFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 16
    array-length p0, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 20
    return p0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 27
    goto :goto_0

    .line 28
    :catchall_1
    move-exception p1

    .line 29
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 32
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 33
    :goto_1
    const-string p1, "ActivityManager"

    .line 35
    const-string v0, "Exception writing to ANR dump file:"

    .line 37
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    const/4 p0, 0x0

    .line 41
    return p0
.end method

.method public static collectPids(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    const-string v0, "ActivityManager"

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    move-object v1, p0

    .line 14
    goto :goto_2

    .line 15
    :catch_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :catch_1
    move-exception p0

    .line 18
    goto :goto_1

    .line 19
    :goto_0
    const-string v2, "Interrupted while collecting "

    .line 21
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    goto :goto_2

    .line 29
    :goto_1
    const-string v2, "Failed to collect "

    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    .line 38
    move-result-object p0

    .line 39
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    :goto_2
    return-object v1
.end method

.method public static declared-synchronized createAnrDumpFile(Ljava/io/File;)Ljava/io/File;
    .locals 5

    .line 1
    const-string v0, "anr_"

    .line 3
    const-class v1, Lcom/android/server/am/StackTracesDumpHelper;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    sget-object v2, Lcom/android/server/am/StackTracesDumpHelper;->ANR_FILE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 8
    new-instance v3, Ljava/util/Date;

    .line 10
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 13
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Ljava/io/File;

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-direct {v3, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_0

    .line 40
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    const/16 v0, 0x180

    .line 46
    const/4 v2, -0x1

    .line 47
    invoke-static {p0, v0, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit v1

    .line 51
    return-object v3

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    :try_start_1
    new-instance p0, Ljava/io/IOException;

    .line 56
    const-string v0, "Unable to create ANR dump file: createNewFile failed"

    .line 58
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 61
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :goto_0
    monitor-exit v1

    .line 63
    throw p0
.end method

.method public static dumpJavaTracesTombstoned(ILjava/lang/String;J)J
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    const-string v2, "----- dumping pid: "

    .line 7
    const-string v3, " at "

    .line 9
    invoke-static {p0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    move-result-object v2

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 16
    move-result-wide v3

    .line 17
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    const-string v3, "\n"

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-static {p1, v2}, Lcom/android/server/am/StackTracesDumpHelper;->appendtoANRFile(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    move-result v2

    .line 33
    const-wide/16 v3, 0x3e8

    .line 35
    div-long/2addr p2, v3

    .line 36
    long-to-int p2, p2

    .line 37
    invoke-static {p0, p1, p2}, Landroid/os/Debug;->dumpJavaBacktraceToFileTimeout(ILjava/lang/String;I)Z

    .line 40
    move-result p2

    .line 41
    const-string p3, "ActivityManager"

    .line 43
    if-eqz p2, :cond_0

    .line 45
    const/4 v3, 0x0

    .line 46
    :try_start_0
    new-instance v4, Ljava/io/File;

    .line 48
    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 54
    move-result-wide v4

    .line 55
    int-to-long v6, v2

    .line 56
    sub-long/2addr v4, v6

    .line 57
    const-wide/16 v6, 0x64

    .line 59
    cmp-long v2, v4, v6

    .line 61
    if-gez v2, :cond_0

    .line 63
    const-string p2, "Successfully created Java ANR file is empty!"

    .line 65
    invoke-static {p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception p2

    .line 70
    const-string v2, "Unable to get ANR file size"

    .line 72
    invoke-static {p3, v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    :goto_0
    move p2, v3

    .line 76
    :cond_0
    if-nez p2, :cond_1

    .line 78
    const-string p2, "Dumping Java threads failed, initiating native stack dump."

    .line 80
    invoke-static {p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget p2, Lcom/android/server/am/StackTracesDumpHelper;->NATIVE_DUMP_TIMEOUT_MS:I

    .line 85
    div-int/lit16 p2, p2, 0x3e8

    .line 87
    invoke-static {p0, p1, p2}, Landroid/os/Debug;->dumpNativeBacktraceToFileTimeout(ILjava/lang/String;I)Z

    .line 90
    move-result p0

    .line 91
    if-nez p0, :cond_1

    .line 93
    const-string p0, "Native stack dump failed!"

    .line 95
    invoke-static {p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 101
    move-result-wide p0

    .line 102
    sub-long/2addr p0, v0

    .line 103
    return-wide p0
.end method

.method public static dumpStackTraces(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)J
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v0, p4

    move-object/from16 v4, p5

    .line 24
    const-string v5, "Dumping to "

    const-string v6, "ActivityManager"

    .line 25
    invoke-static {v5, v1, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sget v5, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v5, v5, 0x4e20

    int-to-long v7, v5

    const/4 v5, 0x1

    .line 27
    const-string v9, "); deadline exceeded."

    const-wide/16 v10, 0x0

    const/4 v14, 0x0

    if-eqz v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_7

    .line 28
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 30
    :try_start_0
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v4, :cond_0

    .line 31
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->copyingFirstPidStarted()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v13, v0

    goto :goto_2

    .line 32
    :cond_0
    :goto_0
    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v7, v8, v13}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v13

    invoke-static {v13, v12}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/io/OutputStream;)J

    .line 34
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_1

    .line 36
    invoke-virtual {v4, v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->copyingFirstPidEnded(Z)V

    :cond_1
    move v0, v5

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move v12, v5

    goto :goto_4

    :catch_1
    move-exception v0

    move v12, v5

    goto :goto_6

    :catch_2
    move-exception v0

    move v12, v5

    goto :goto_7

    :catch_3
    move-exception v0

    move v12, v5

    goto :goto_8

    .line 37
    :cond_2
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v4, :cond_3

    .line 38
    invoke-virtual {v4, v14}, Lcom/android/internal/os/anr/AnrLatencyTracker;->copyingFirstPidEnded(Z)V

    :cond_3
    :goto_1
    move v0, v14

    goto :goto_9

    :catchall_2
    move-exception v0

    move v5, v14

    goto/16 :goto_a

    :catch_4
    move-exception v0

    move v12, v14

    goto :goto_4

    :catch_5
    move-exception v0

    move v12, v14

    goto :goto_6

    :catch_6
    move-exception v0

    move v12, v14

    goto :goto_7

    :catch_7
    move-exception v0

    move v12, v14

    goto :goto_8

    .line 39
    :goto_2
    :try_start_4
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v12, v0

    :try_start_5
    invoke-virtual {v13, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v13
    :try_end_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 40
    :goto_4
    :try_start_6
    const-string v13, "Copying the first pid timed out"

    invoke-static {v6, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v4, :cond_3

    .line 41
    :goto_5
    invoke-virtual {v4, v12}, Lcom/android/internal/os/anr/AnrLatencyTracker;->copyingFirstPidEnded(Z)V

    goto :goto_1

    :catchall_4
    move-exception v0

    move v5, v12

    goto :goto_a

    .line 42
    :goto_6
    :try_start_7
    const-string v13, "Failed to read the first pid\'s predump file"

    invoke-static {v6, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v4, :cond_3

    goto :goto_5

    .line 43
    :goto_7
    const-string v13, "Interrupted while collecting the first pid\'s predump to the main ANR file"

    invoke-static {v6, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v4, :cond_3

    goto :goto_5

    .line 44
    :goto_8
    const-string v13, "Failed to collect the first pid\'s predump to the main ANR file"

    .line 45
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 46
    invoke-static {v6, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v4, :cond_3

    goto :goto_5

    .line 47
    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v12, v12, v16

    sub-long/2addr v7, v12

    cmp-long v12, v7, v10

    if-gtz v12, :cond_4

    .line 48
    const-string v0, "Aborting stack trace dump (currently copying primary pid"

    .line 49
    invoke-static {v15, v0, v9, v6}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v12, -0x1

    return-wide v12

    :cond_4
    const-wide/16 v12, -0x1

    if-eqz v0, :cond_5

    .line 50
    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v15, v5, :cond_5

    .line 51
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v12

    :cond_5
    if-eqz v0, :cond_8

    if-eqz v4, :cond_8

    .line 52
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpAsCommaSeparatedArrayWithHeader()Ljava/lang/String;

    move-result-object v5

    .line 53
    invoke-static {v1, v5}, Lcom/android/server/am/StackTracesDumpHelper;->appendtoANRFile(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :goto_a
    if-eqz v4, :cond_6

    .line 54
    invoke-virtual {v4, v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->copyingFirstPidEnded(Z)V

    .line 55
    :cond_6
    throw v0

    :cond_7
    const-wide/16 v12, -0x1

    move v0, v14

    :cond_8
    :goto_b
    if-eqz v4, :cond_9

    .line 56
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingFirstPidsStarted()V

    .line 57
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_c
    if-ge v0, v5, :cond_11

    .line 58
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-nez v0, :cond_a

    .line 59
    sget v14, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v14, v15, :cond_a

    const/4 v14, 0x1

    goto :goto_d

    :cond_a
    const/4 v14, 0x0

    .line 60
    :goto_d
    const-string v10, "Collecting stacks for pid "

    .line 61
    invoke-static {v15, v10, v6}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_b

    .line 62
    :try_start_8
    invoke-virtual {v4, v15}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidStarted(I)V

    goto :goto_e

    :catchall_5
    move-exception v0

    goto :goto_f

    .line 63
    :cond_b
    :goto_e
    invoke-static {v15, v1, v7, v8}, Lcom/android/server/am/StackTracesDumpHelper;->dumpJavaTracesTombstoned(ILjava/lang/String;J)J

    move-result-wide v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v4, :cond_c

    .line 64
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidEnded()V

    :cond_c
    sub-long/2addr v7, v10

    const-wide/16 v10, 0x0

    cmp-long v18, v7, v10

    if-gtz v18, :cond_d

    .line 65
    const-string v0, "Aborting stack trace dump (current firstPid="

    .line 66
    invoke-static {v15, v0, v9, v6}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-wide v12

    :cond_d
    if-eqz v14, :cond_f

    .line 67
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    if-eqz v4, :cond_e

    .line 68
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpAsCommaSeparatedArrayWithHeader()Ljava/lang/String;

    move-result-object v12

    .line 69
    invoke-static {v1, v12}, Lcom/android/server/am/StackTracesDumpHelper;->appendtoANRFile(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-wide v12, v10

    :cond_f
    add-int/lit8 v0, v0, 0x1

    const-wide/16 v10, 0x0

    const/4 v14, 0x0

    goto :goto_c

    :goto_f
    if-eqz v4, :cond_10

    .line 70
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidEnded()V

    .line 71
    :cond_10
    throw v0

    :cond_11
    if-eqz v4, :cond_12

    .line 72
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingFirstPidsEnded()V

    .line 73
    :cond_12
    const-string/jumbo v0, "native pids"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lcom/android/server/am/StackTracesDumpHelper;->collectPids(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "dumpStackTraces nativepids="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_18

    if-eqz v4, :cond_13

    .line 75
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingNativePidsStarted()V

    .line 76
    :cond_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 77
    const-string v5, "Collecting stacks for native pid "

    .line 78
    invoke-static {v2, v5, v6}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 79
    sget v5, Lcom/android/server/am/StackTracesDumpHelper;->NATIVE_DUMP_TIMEOUT_MS:I

    int-to-long v10, v5

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    if-eqz v4, :cond_15

    .line 80
    invoke-virtual {v4, v2}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidStarted(I)V

    .line 81
    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    .line 82
    div-long v10, v10, v16

    long-to-int v5, v10

    invoke-static {v2, v1, v5}, Landroid/os/Debug;->dumpNativeBacktraceToFileTimeout(ILjava/lang/String;I)Z

    .line 83
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v14

    if-eqz v4, :cond_16

    .line 84
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidEnded()V

    :cond_16
    sub-long/2addr v7, v10

    const-wide/16 v10, 0x0

    cmp-long v5, v7, v10

    if-gtz v5, :cond_14

    .line 85
    const-string v0, "Aborting stack trace dump (current native pid="

    .line 86
    invoke-static {v2, v0, v9, v6}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-wide v12

    :cond_17
    if-eqz v4, :cond_18

    .line 87
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingNativePidsEnded()V

    .line 88
    :cond_18
    const-string/jumbo v0, "extra pids"

    invoke-static {v3, v0}, Lcom/android/server/am/StackTracesDumpHelper;->collectPids(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v3, :cond_19

    .line 89
    :try_start_9
    invoke-interface/range {p3 .. p3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_8

    move-object v2, v0

    goto :goto_12

    :catch_8
    move-exception v0

    goto :goto_10

    :catch_9
    move-exception v0

    goto :goto_11

    .line 90
    :goto_10
    const-string v3, "Interrupted while collecting extra pids"

    invoke-static {v6, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    .line 91
    :goto_11
    const-string v3, "Failed to collect extra pids"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v6, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    :cond_19
    :goto_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "dumpStackTraces extraPids="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_20

    if-eqz v4, :cond_1a

    .line 93
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingExtraPidsStarted()V

    .line 94
    :cond_1a
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 95
    const-string v3, "Collecting stacks for extra pid "

    .line 96
    invoke-static {v2, v3, v6}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1c

    .line 97
    :try_start_a
    invoke-virtual {v4, v2}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidStarted(I)V

    goto :goto_13

    :catchall_6
    move-exception v0

    goto :goto_14

    .line 98
    :cond_1c
    :goto_13
    invoke-static {v2, v1, v7, v8}, Lcom/android/server/am/StackTracesDumpHelper;->dumpJavaTracesTombstoned(ILjava/lang/String;J)J

    move-result-wide v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-eqz v4, :cond_1d

    .line 99
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidEnded()V

    :cond_1d
    sub-long/2addr v7, v10

    const-wide/16 v10, 0x0

    cmp-long v3, v7, v10

    if-gtz v3, :cond_1b

    .line 100
    const-string v0, "Aborting stack trace dump (current extra pid="

    .line 101
    invoke-static {v2, v0, v9, v6}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-wide v12

    :goto_14
    if-eqz v4, :cond_1e

    .line 102
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidEnded()V

    .line 103
    :cond_1e
    throw v0

    :cond_1f
    if-eqz v4, :cond_20

    .line 104
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingExtraPidsEnded()V

    .line 105
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "----- dumping ended at "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/StackTracesDumpHelper;->appendtoANRFile(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v0, "Done dumping"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v12
.end method

.method public static dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;
    .locals 13

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p8

    move-object/from16 v10, p11

    .line 1
    const-string v6, "ActivityManager"

    const-string v7, "\n\n"

    const-string v8, "Subject: "

    const-string/jumbo v9, "dumpStackTraces pids="

    if-eqz v10, :cond_0

    .line 2
    :try_start_0
    invoke-virtual/range {p11 .. p11}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesStarted()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 3
    :cond_0
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    .line 4
    new-instance v11, Lcom/android/server/am/StackTracesDumpHelper$$ExternalSyntheticLambda0;

    invoke-direct {v11, p1, p2, v10}, Lcom/android/server/am/StackTracesDumpHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Lcom/android/internal/os/anr/AnrLatencyTracker;)V

    goto :goto_1

    :cond_1
    move-object v11, v9

    :goto_1
    if-eqz v11, :cond_2

    move-object/from16 v0, p9

    .line 5
    invoke-static {v11, v0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v9

    .line 6
    :goto_2
    new-instance v1, Ljava/io/File;

    const-string v11, "/data/anr"

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    invoke-static {v1}, Lcom/android/server/am/StackTracesDumpHelper;->createAnrDumpFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_3

    if-nez p7, :cond_3

    if-eqz v5, :cond_7

    .line 8
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    const-string v11, ""

    if-eqz v4, :cond_4

    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    move-object v4, v11

    :goto_3
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_5

    .line 10
    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_5
    move-object v4, v11

    :goto_4
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p7, :cond_6

    move-object/from16 v11, p7

    .line 11
    :cond_6
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-static {v6, v4}, Lcom/android/server/am/StackTracesDumpHelper;->appendtoANRFile(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_7
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    move-object/from16 v6, p3

    move-object v7, v0

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    .line 14
    invoke-static/range {v4 .. v9}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)J

    move-result-wide v4

    if-eqz v3, :cond_8

    .line 15
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 16
    :cond_8
    invoke-static {v1}, Lcom/android/server/am/StackTracesDumpHelper;->maybePruneOldTraces(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v10, :cond_9

    .line 17
    invoke-virtual/range {p11 .. p11}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesEnded()V

    :cond_9
    return-object v2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 18
    :try_start_4
    const-string v0, "Exception creating ANR dump file:"

    invoke-static {v6, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v2, :cond_a

    .line 19
    const-string v0, "----- Exception creating ANR dump file -----\n"

    invoke-virtual {v2, v0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 20
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_a
    if-eqz v10, :cond_b

    .line 21
    invoke-virtual/range {p11 .. p11}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrSkippedDumpStackTraces()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_b
    if-eqz v10, :cond_c

    .line 22
    invoke-virtual/range {p11 .. p11}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesEnded()V

    :cond_c
    return-object v9

    :goto_5
    if-eqz v10, :cond_d

    invoke-virtual/range {p11 .. p11}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesEnded()V

    .line 23
    :cond_d
    throw v0
.end method

.method public static maybePruneOldTraces(Ljava/io/File;)V
    .locals 9

    .line 1
    const-string v0, "ActivityManager"

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    const-string/jumbo v1, "tombstoned.max_anr_count"

    .line 13
    const/16 v2, 0x40

    .line 15
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 18
    move-result v1

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    move-result-wide v2

    .line 23
    :try_start_0
    new-instance v4, Lcom/android/server/am/StackTracesDumpHelper$$ExternalSyntheticLambda1;

    .line 25
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {v4}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    .line 31
    move-result-object v4

    .line 32
    invoke-interface {v4}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    .line 35
    move-result-object v4

    .line 36
    invoke-static {p0, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 39
    const/4 v4, 0x0

    .line 40
    :goto_0
    array-length v5, p0

    .line 41
    if-ge v4, v5, :cond_3

    .line 43
    if-gt v4, v1, :cond_1

    .line 45
    aget-object v5, p0, v4

    .line 47
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    .line 50
    move-result-wide v5

    .line 51
    sub-long v5, v2, v5

    .line 53
    const-wide/32 v7, 0x5265c00

    .line 56
    cmp-long v5, v5, v7

    .line 58
    if-lez v5, :cond_2

    .line 60
    goto :goto_1

    .line 61
    :catch_0
    move-exception p0

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    :goto_1
    aget-object v5, p0, v4

    .line 65
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 68
    move-result v5

    .line 69
    if-nez v5, :cond_2

    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    const-string v6, "Unable to prune stale trace file: "

    .line 78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    aget-object v6, p0, v4

    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v5

    .line 90
    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 95
    goto :goto_0

    .line 96
    :goto_2
    const-string/jumbo v1, "tombstone modification times changed while sorting; not pruning"

    .line 99
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    :cond_3
    return-void
.end method
