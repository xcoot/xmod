.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final BIN_TYPE_DEBUG_LOW:Z

.field public static final BIN_TYPE_PRODUCTSHIP:Z

.field public static final BIN_TYPE_USER:Z

.field static final DEFAULT_SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field public static final METRIC_AM:Ljava/lang/String;

.field public static final METRIC_PM:Ljava/lang/String;

.field public static final METRIC_RADIO:Ljava/lang/String;

.field public static final METRIC_RADIOS:Ljava/lang/String;

.field public static final METRIC_SEND_BROADCAST:Ljava/lang/String;

.field public static final METRIC_SHUTDOWN_TIME_START:Ljava/lang/String;

.field public static final METRIC_SYSTEM_SERVER:Ljava/lang/String;

.field public static final TRON_METRICS:Landroid/util/ArrayMap;

.field public static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field public static currentTimeMillisStart:J = 0x0L

.field public static logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter; = null

.field public static mReason:Ljava/lang/String; = null

.field public static mReboot:Z = false

.field public static mRebootHasProgressBar:Z = false

.field public static mRebootSafeMode:Z = false

.field public static final sInstance:Lcom/android/server/power/ShutdownThread;

.field public static sIsStarted:Z = false

.field public static final sIsStartedGuard:Ljava/lang/Object;

.field public static shutdownDialog:Lcom/android/server/power/shutdown/ShutdownDialog;

.field public static systemRequest:Z


# instance fields
.field public mActionDone:Z

.field public final mActionDoneSync:Ljava/lang/Object;

.field public mContext:Landroid/content/Context;

.field public mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mHandler:Lcom/android/server/power/ShutdownThread$1;

.field public final mInjector:Lcom/android/server/power/ShutdownThread$Injector;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mProgressDialog:Landroid/app/ProgressDialog;

.field public mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Lcom/android/server/power/ShutdownThread;

    .line 9
    .line 10
    new-instance v1, Lcom/android/server/power/ShutdownThread$Injector;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$Injector;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread;-><init>(Lcom/android/server/power/ShutdownThread$Injector;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 19
    .line 20
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/16 v1, 0xd

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 41
    .line 42
    new-instance v0, Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    .line 48
    .line 49
    const-string/jumbo v0, "shutdown_system_server"

    .line 50
    .line 51
    .line 52
    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SYSTEM_SERVER:Ljava/lang/String;

    .line 53
    .line 54
    const-string/jumbo v0, "shutdown_send_shutdown_broadcast"

    .line 55
    .line 56
    .line 57
    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SEND_BROADCAST:Ljava/lang/String;

    .line 58
    .line 59
    const-string/jumbo v0, "shutdown_activity_manager"

    .line 60
    .line 61
    .line 62
    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_AM:Ljava/lang/String;

    .line 63
    .line 64
    const-string/jumbo v0, "shutdown_package_manager"

    .line 65
    .line 66
    .line 67
    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_PM:Ljava/lang/String;

    .line 68
    .line 69
    const-string/jumbo v0, "shutdown_radios"

    .line 70
    .line 71
    .line 72
    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIOS:Ljava/lang/String;

    .line 73
    .line 74
    const-string/jumbo v0, "shutdown_radio"

    .line 75
    .line 76
    .line 77
    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIO:Ljava/lang/String;

    .line 78
    .line 79
    const-string v0, "begin_shutdown"

    .line 80
    .line 81
    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SHUTDOWN_TIME_START:Ljava/lang/String;

    .line 82
    .line 83
    const-string/jumbo v0, "ro.build.type"

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string/jumbo v1, "user"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_USER:Z

    .line 98
    .line 99
    const-string/jumbo v0, "ro.boot.debug_level"

    .line 100
    .line 101
    .line 102
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string v1, "0x4f4c"

    .line 107
    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_DEBUG_LOW:Z

    .line 113
    .line 114
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    xor-int/lit8 v0, v0, 0x1

    .line 119
    .line 120
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    .line 121
    .line 122
    const/4 v0, 0x0

    .line 123
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->systemRequest:Z

    .line 124
    .line 125
    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/ShutdownThread$Injector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

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
    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread;->mInjector:Lcom/android/server/power/ShutdownThread$Injector;

    .line 12
    .line 13
    return-void
.end method

.method public static closeLogFileWriter()V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/server/power/ShutdownThread;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "logFileWriter saveAndClose logFileWriter : "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lcom/android/server/power/ShutdownThread;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "ShutdownThread"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    sget-object v0, Lcom/android/server/power/ShutdownThread;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    .line 27
    .line 28
    const-string v2, "LogFileWriter.saveAndClose error"

    .line 29
    .line 30
    iget-object v3, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    goto :goto_4

    .line 36
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 37
    .line 38
    .line 39
    iget-object v3, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 42
    .line 43
    .line 44
    iput-object v4, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    .line 45
    .line 46
    iget-object v3, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    .line 47
    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 51
    .line 52
    .line 53
    iget-object v3, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 56
    .line 57
    .line 58
    iput-object v4, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v3

    .line 62
    goto :goto_5

    .line 63
    :catch_0
    move-exception v3

    .line 64
    goto :goto_3

    .line 65
    :cond_1
    :goto_0
    :try_start_1
    iget-object v3, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    .line 66
    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 70
    .line 71
    .line 72
    iput-object v4, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catch_1
    move-exception v0

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    :goto_1
    iget-object v3, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    .line 78
    .line 79
    if-eqz v3, :cond_4

    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 82
    .line 83
    .line 84
    iput-object v4, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :goto_2
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .line 89
    .line 90
    goto :goto_4

    .line 91
    :goto_3
    :try_start_2
    const-string v5, "LogFileWriter.saveAndClose fail"

    .line 92
    .line 93
    invoke-static {v1, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    .line 95
    .line 96
    :try_start_3
    iget-object v3, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    .line 97
    .line 98
    if-eqz v3, :cond_3

    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 101
    .line 102
    .line 103
    iput-object v4, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    .line 104
    .line 105
    :cond_3
    iget-object v3, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    .line 106
    .line 107
    if-eqz v3, :cond_4

    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 110
    .line 111
    .line 112
    iput-object v4, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 113
    .line 114
    :cond_4
    :goto_4
    sput-object v4, Lcom/android/server/power/ShutdownThread;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    .line 115
    .line 116
    goto :goto_9

    .line 117
    :goto_5
    :try_start_4
    iget-object v5, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    .line 118
    .line 119
    if-eqz v5, :cond_5

    .line 120
    .line 121
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 122
    .line 123
    .line 124
    iput-object v4, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    .line 125
    .line 126
    goto :goto_6

    .line 127
    :catch_2
    move-exception v0

    .line 128
    goto :goto_7

    .line 129
    :cond_5
    :goto_6
    iget-object v5, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    .line 130
    .line 131
    if-eqz v5, :cond_6

    .line 132
    .line 133
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 134
    .line 135
    .line 136
    iput-object v4, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 137
    .line 138
    goto :goto_8

    .line 139
    :goto_7
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .line 141
    .line 142
    :cond_6
    :goto_8
    throw v3

    .line 143
    :cond_7
    :goto_9
    return-void
.end method

.method public static get()V
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/power/ShutdownThread;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    monitor-exit v0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v1
.end method

.method public static declared-synchronized getShutdownDialog(Landroid/content/Context;)Lcom/android/server/power/shutdown/ShutdownDialog;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/power/ShutdownThread;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/power/ShutdownThread;->shutdownDialog:Lcom/android/server/power/shutdown/ShutdownDialog;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/power/shutdown/ShutdownDialog;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/android/server/power/shutdown/ShutdownDialog;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/android/server/power/ShutdownThread;->shutdownDialog:Lcom/android/server/power/shutdown/ShutdownDialog;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/power/ShutdownThread;->shutdownDialog:Lcom/android/server/power/shutdown/ShutdownDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p0
.end method

.method public static metricEnded(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    check-cast v3, Ljava/lang/Long;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    add-long/2addr v1, v3

    .line 19
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public static metricStarted(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    const-wide/16 v3, -0x1

    .line 9
    .line 10
    mul-long/2addr v1, v3

    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "reboot reason : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ", confirm : "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const-string v0, "ShutdownThread"

    .line 25
    .line 26
    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    sget-boolean p2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    const-string p0, "!@Request to shutdown already running, returning."

    .line 34
    .line 35
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    const/4 p2, 0x1

    .line 40
    sput-boolean p2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 41
    .line 42
    const/4 p2, 0x0

    .line 43
    sput-boolean p2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 44
    .line 45
    sput-boolean p2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 46
    .line 47
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static rebootOrShutdown(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 10

    .line 1
    const-string/jumbo v0, "ro.boot.debug_level"

    .line 2
    .line 3
    .line 4
    const-string v1, "0x4f4c"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "0x494d"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const-string v1, "ShutdownThread"

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    const/16 v0, 0x3c

    .line 25
    .line 26
    int-to-long v4, v0

    .line 27
    const-wide/16 v6, 0x3e8

    .line 28
    .line 29
    mul-long/2addr v4, v6

    .line 30
    add-long/2addr v4, v2

    .line 31
    :goto_0
    const-string v0, "init.svc.bugreportd"

    .line 32
    .line 33
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string/jumbo v2, "running"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    const-string v0, "init.svc.bugreportm"

    .line 47
    .line 48
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    sub-long v2, v4, v2

    .line 63
    .line 64
    const-wide/16 v8, 0x0

    .line 65
    .line 66
    cmp-long v0, v2, v8

    .line 67
    .line 68
    if-gtz v0, :cond_1

    .line 69
    .line 70
    const-string v0, "!@Dumpstate finish wait timed out"

    .line 71
    .line 72
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    const-string v0, "!@wait for finish Dumpstate: sleep 1000ms"

    .line 77
    .line 78
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    const-string v0, "InterruptedException"

    .line 86
    .line 87
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 92
    .line 93
    new-instance p0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string p2, "!@Rebooting, reason: "

    .line 96
    .line 97
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-static {v1, p0}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string p0, "!@Reboot failed, will attempt shutdown instead"

    .line 114
    .line 115
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->closeLogFileWriter()V

    .line 119
    .line 120
    .line 121
    const-string p1, "[shutdownthread]rebootFailed"

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_3
    if-eqz p0, :cond_4

    .line 125
    .line 126
    new-instance p2, Landroid/os/SystemVibrator;

    .line 127
    .line 128
    invoke-direct {p2, p0}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    .line 129
    .line 130
    .line 131
    :try_start_1
    invoke-virtual {p2}, Landroid/os/Vibrator;->hasVibrator()Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    if-eqz p0, :cond_4

    .line 136
    .line 137
    sget-object p0, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 138
    .line 139
    const-wide/16 v2, 0x1f4

    .line 140
    .line 141
    invoke-virtual {p2, v2, v3, p0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 142
    .line 143
    .line 144
    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :catch_1
    move-exception p0

    .line 149
    const-string p2, "Failed to vibrate during shutdown."

    .line 150
    .line 151
    invoke-static {v1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .line 153
    .line 154
    :catch_2
    :cond_4
    :goto_2
    const-string p0, "!@Performing low-level shutdown..."

    .line 155
    .line 156
    invoke-static {v1, p0}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->closeLogFileWriter()V

    .line 160
    .line 161
    .line 162
    sget-object p0, Lcom/android/server/power/PowerManagerService;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 163
    .line 164
    new-instance p0, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string p2, "[api] lowLevelShutdown: "

    .line 167
    .line 168
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const/4 p2, 0x1

    .line 172
    invoke-static {p2}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    const-string p2, "PowerManagerService"

    .line 184
    .line 185
    invoke-static {p2, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    invoke-static {}, Lcom/android/server/power/Slog;->saveLogAsFile()V

    .line 189
    .line 190
    .line 191
    if-nez p1, :cond_5

    .line 192
    .line 193
    const-string p1, ""

    .line 194
    .line 195
    :cond_5
    const-string/jumbo p0, "shutdown,"

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    const-string/jumbo p1, "sys.powerctl"

    .line 203
    .line 204
    .line 205
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    return-void
.end method

.method public static rebootSafeMode(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 2
    .line 3
    const-string v1, "ShutdownThread"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "!@Request to shutdown already running, returning./rebootSafeMode()"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string/jumbo v0, "user"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/os/UserManager;

    .line 21
    .line 22
    const-string/jumbo v2, "no_safe_boot"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    :try_start_0
    const-string/jumbo v0, "restriction_policy"

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    .line 46
    .line 47
    invoke-direct {v2}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, v2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    const-string/jumbo v0, "safe mode is not allowed by IT admin"

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :catch_0
    :cond_2
    const/4 v0, 0x1

    .line 64
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 65
    .line 66
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 70
    .line 71
    const-string v0, "SafeMode"

    .line 72
    .line 73
    sput-object v0, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public static showShutdownDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 8

    .line 1
    new-instance v0, Landroid/app/ProgressDialog;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    const-string/jumbo v5, "recovery-update"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_4

    .line 21
    .line 22
    sget-object v1, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    sget-object v1, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    move v1, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v1, v2

    .line 41
    :goto_0
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 42
    .line 43
    const v1, 0x1040c6a

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    const/16 v1, 0x64

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const v5, 0x1110228

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_1

    .line 80
    .line 81
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressPercentFormat(Ljava/text/NumberFormat;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 88
    .line 89
    .line 90
    const v1, 0x1040c68

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_2

    .line 101
    .line 102
    :cond_2
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showSysuiReboot()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_3

    .line 107
    .line 108
    return-object v3

    .line 109
    :cond_3
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 110
    .line 111
    .line 112
    const v1, 0x1040c69

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_2

    .line 123
    .line 124
    :cond_4
    sget-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 125
    .line 126
    const v5, 0x1040e6e

    .line 127
    .line 128
    .line 129
    const v6, 0x1040c31

    .line 130
    .line 131
    .line 132
    if-eqz v1, :cond_8

    .line 133
    .line 134
    const-string/jumbo v7, "recovery"

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_8

    .line 142
    .line 143
    sget v1, Lcom/android/server/RescueParty;->LEVEL_ISRB_BOOT:I

    .line 144
    .line 145
    invoke-static {}, Landroid/sysprop/CrashRecoveryProperties;->attemptingFactoryReset()Ljava/util/Optional;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 150
    .line 151
    invoke-virtual {v1, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    check-cast v1, Ljava/lang/Boolean;

    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-nez v1, :cond_7

    .line 162
    .line 163
    invoke-static {}, Lcom/android/server/RescueParty;->isRebootPropertySet()Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_5

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_5
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showSysuiReboot()Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_6

    .line 175
    .line 176
    return-object v3

    .line 177
    :cond_6
    const v1, 0x1040c66

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    const v1, 0x1040c65

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_7
    :goto_1
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 216
    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_8
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showSysuiReboot()Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_9

    .line 224
    .line 225
    return-object v3

    .line 226
    :cond_9
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 241
    .line 242
    .line 243
    :goto_2
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    const/16 v1, 0x7d9

    .line 251
    .line 252
    invoke-virtual {p0, v1}, Landroid/view/Window;->setType(I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 256
    .line 257
    .line 258
    return-object v0
.end method

.method public static showSysuiReboot()Z
    .locals 5

    .line 1
    :try_start_0
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 8
    .line 9
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 10
    .line 11
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 12
    .line 13
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 14
    .line 15
    iget-object v3, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 16
    .line 17
    iget-object v3, v3, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const v4, 0x1110229

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    :try_start_1
    invoke-interface {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar;->showShutdownUi(ZLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    return v0

    .line 44
    :catch_0
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 45
    return v0
.end method

.method public static shutdown(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "shutdown reason : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ", confirm : "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const-string v0, "ShutdownThread"

    .line 25
    .line 26
    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    sget-boolean p2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    const-string p0, "!@Request to shutdown already running, returning."

    .line 34
    .line 35
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    const/4 p2, 0x0

    .line 40
    sput-boolean p2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 41
    .line 42
    sput-boolean p2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 43
    .line 44
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static shutdownInner(Landroid/content/Context;)V
    .locals 15

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto/16 :goto_17

    .line 15
    .line 16
    :cond_0
    const/4 v1, 0x1

    .line 17
    :try_start_1
    const-string/jumbo v2, "restriction_policy"

    .line 18
    .line 19
    .line 20
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    sget-object v3, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v2

    .line 38
    goto :goto_1

    .line 39
    :catch_1
    move-exception v2

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 42
    .line 43
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->systemRequest:Z

    .line 44
    .line 45
    if-nez v3, :cond_2

    .line 46
    .line 47
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    .line 48
    .line 49
    invoke-direct {v3}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-interface {v2, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isPowerOffAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_2

    .line 57
    .line 58
    const-string v2, "ShutdownThread"

    .line 59
    .line 60
    const-string v3, "Shutdown Disabled by Administrator"

    .line 61
    .line 62
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    new-instance v2, Landroid/content/Intent;

    .line 66
    .line 67
    const-string v3, "POWER_OFF_CANCEL"

    .line 68
    .line 69
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    .line 75
    :try_start_2
    monitor-exit v0

    .line 76
    return-void

    .line 77
    :goto_1
    const-string v3, "ShutdownThread"

    .line 78
    .line 79
    const-string v4, "Exception"

    .line 80
    .line 81
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :goto_2
    const-string v3, "ShutdownThread"

    .line 86
    .line 87
    const-string v4, "RemoteException"

    .line 88
    .line 89
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    :cond_2
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    const-string v0, "ISRB_BOOT"

    .line 94
    .line 95
    invoke-static {}, Lcom/android/server/RescueParty;->getRescuePartyReason()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_3

    .line 104
    .line 105
    const-string/jumbo v0, "persist.sys.enable_isrb"

    .line 106
    .line 107
    .line 108
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string/jumbo v0, "persist.sys.rescue_mode"

    .line 116
    .line 117
    .line 118
    const-string v2, "isrb_off"

    .line 119
    .line 120
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-string/jumbo v0, "sys.isrblevel.callreboot"

    .line 124
    .line 125
    .line 126
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 142
    .line 143
    and-int/lit8 v0, v0, 0x30

    .line 144
    .line 145
    const/16 v2, 0x20

    .line 146
    .line 147
    const/4 v3, 0x0

    .line 148
    if-ne v0, v2, :cond_4

    .line 149
    .line 150
    move v0, v1

    .line 151
    goto :goto_4

    .line 152
    :cond_4
    move v0, v3

    .line 153
    :goto_4
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 154
    .line 155
    if-eqz v0, :cond_5

    .line 156
    .line 157
    const v0, 0x1030128

    .line 158
    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_5
    const v0, 0x103012b

    .line 162
    .line 163
    .line 164
    :goto_5
    invoke-direct {v2, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 165
    .line 166
    .line 167
    new-instance p0, Ljava/lang/Exception;

    .line 168
    .line 169
    const-string v0, "It is not an exception!! just save the trace for process which called shutdown thread!! ShutdownThread.shutdown"

    .line 170
    .line 171
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const-string/jumbo v0, "reason : "

    .line 175
    .line 176
    .line 177
    const-string/jumbo v4, "save power_off_reset_reason.txt"

    .line 178
    .line 179
    .line 180
    const-string v5, "ShutdownThread"

    .line 181
    .line 182
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v6, "/log/power_off_reset_reason.txt"

    .line 202
    .line 203
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    new-instance v6, Ljava/io/File;

    .line 207
    .line 208
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 216
    .line 217
    .line 218
    move-result-wide v7

    .line 219
    const-wide/16 v9, 0x2800

    .line 220
    .line 221
    cmp-long v4, v7, v9

    .line 222
    .line 223
    if-lez v4, :cond_7

    .line 224
    .line 225
    const-string v4, "The size of power_off_reset_reason.txt is over than 10KB. Rename to power_off_reset_reason_backup.txt for backup."

    .line 226
    .line 227
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v7, "/log/power_off_reset_reason_backup.txt"

    .line 247
    .line 248
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    new-instance v7, Ljava/io/File;

    .line 252
    .line 253
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    if-eqz v4, :cond_6

    .line 265
    .line 266
    const-string/jumbo v4, "power_off_reset_reason_backup.txt file is already exist. So, delete it."

    .line 267
    .line 268
    .line 269
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    if-nez v4, :cond_6

    .line 277
    .line 278
    const-string/jumbo v4, "power_off_reset_reason_backup.txt delete fail"

    .line 279
    .line 280
    .line 281
    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_6
    invoke-virtual {v6, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 286
    .line 287
    .line 288
    :cond_7
    :goto_6
    const/4 v4, 0x0

    .line 289
    :try_start_3
    new-instance v5, Ljava/io/FileOutputStream;

    .line 290
    .line 291
    invoke-direct {v5, v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 292
    .line 293
    .line 294
    :try_start_4
    new-instance v7, Ljava/io/PrintWriter;

    .line 295
    .line 296
    invoke-direct {v7, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v8

    .line 303
    const/16 v9, 0x1a0

    .line 304
    .line 305
    invoke-static {v8, v9}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v6

    .line 312
    const/16 v8, 0x3e8

    .line 313
    .line 314
    const/16 v9, 0x3ef

    .line 315
    .line 316
    invoke-static {v6, v8, v9}, Landroid/system/Os;->chown(Ljava/lang/String;II)V

    .line 317
    .line 318
    .line 319
    new-instance v6, Ljava/text/SimpleDateFormat;

    .line 320
    .line 321
    const-string/jumbo v8, "yy/MM/dd HH:mm:ss"

    .line 322
    .line 323
    .line 324
    invoke-direct {v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    new-instance v8, Ljava/util/Date;

    .line 328
    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 330
    .line 331
    .line 332
    move-result-wide v9

    .line 333
    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v6

    .line 340
    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    new-instance v6, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 349
    .line 350
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p0, v7}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 367
    .line 368
    .line 369
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 370
    .line 371
    .line 372
    goto :goto_8

    .line 373
    :catch_2
    move-exception p0

    .line 374
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 375
    .line 376
    .line 377
    goto :goto_8

    .line 378
    :catchall_1
    move-exception p0

    .line 379
    move-object v4, v5

    .line 380
    goto/16 :goto_15

    .line 381
    .line 382
    :catch_3
    move-exception p0

    .line 383
    goto :goto_7

    .line 384
    :catchall_2
    move-exception p0

    .line 385
    goto/16 :goto_15

    .line 386
    .line 387
    :catch_4
    move-exception p0

    .line 388
    move-object v5, v4

    .line 389
    :goto_7
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 390
    .line 391
    .line 392
    if-eqz v5, :cond_8

    .line 393
    .line 394
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 395
    .line 396
    .line 397
    :cond_8
    :goto_8
    const-wide/16 v5, 0x32

    .line 398
    .line 399
    :try_start_8
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_5

    .line 400
    .line 401
    .line 402
    goto :goto_9

    .line 403
    :catch_5
    move-exception p0

    .line 404
    const-string v0, "ShutdownThread"

    .line 405
    .line 406
    const-string v5, "InterruptedException"

    .line 407
    .line 408
    invoke-static {v0, v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    .line 410
    .line 411
    :goto_9
    new-instance p0, Ljava/text/SimpleDateFormat;

    .line 412
    .line 413
    const-string/jumbo v0, "yy/MM/dd HH:mm:ss.SSS"

    .line 414
    .line 415
    .line 416
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    new-instance v0, Ljava/util/Date;

    .line 420
    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 422
    .line 423
    .line 424
    move-result-wide v5

    .line 425
    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object p0

    .line 432
    const-string v0, "ShutdownThread"

    .line 433
    .line 434
    new-instance v5, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    const-string v6, "!@########POWEROFF START###### current time : "

    .line 437
    .line 438
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object p0

    .line 448
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    .line 450
    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 452
    .line 453
    .line 454
    move-result-wide v5

    .line 455
    sput-wide v5, Lcom/android/server/power/ShutdownThread;->currentTimeMillisStart:J

    .line 456
    .line 457
    sget-object p0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 458
    .line 459
    monitor-enter p0

    .line 460
    :try_start_9
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 461
    .line 462
    if-eqz v0, :cond_9

    .line 463
    .line 464
    monitor-exit p0

    .line 465
    goto/16 :goto_13

    .line 466
    .line 467
    :catchall_3
    move-exception v0

    .line 468
    goto/16 :goto_14

    .line 469
    .line 470
    :cond_9
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 471
    .line 472
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 473
    sget-object p0, Lcom/android/server/power/ShutdownThread$1;->delayhandler:Lcom/android/server/power/ShutdownThread$1;

    .line 474
    .line 475
    if-nez p0, :cond_a

    .line 476
    .line 477
    const-string p0, "ShutdownDelay"

    .line 478
    .line 479
    const-string v0, "Start handler"

    .line 480
    .line 481
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    .line 483
    .line 484
    new-instance p0, Lcom/android/server/power/ShutdownThread$1;

    .line 485
    .line 486
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 491
    .line 492
    .line 493
    sput-object p0, Lcom/android/server/power/ShutdownThread$1;->delayhandler:Lcom/android/server/power/ShutdownThread$1;

    .line 494
    .line 495
    :cond_a
    new-instance p0, Lcom/android/server/power/ShutdownThread$getDelayDumpstate$1;

    .line 496
    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    .line 499
    .line 500
    sput-object p0, Lcom/android/server/power/ShutdownThread$1;->delayDumpRaunnable:Lcom/android/server/power/ShutdownThread$getDelayDumpstate$1;

    .line 501
    .line 502
    sget-object p0, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 503
    .line 504
    const-string/jumbo v0, "recovery"

    .line 505
    .line 506
    .line 507
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    move-result p0

    .line 511
    if-nez p0, :cond_c

    .line 512
    .line 513
    sget-object p0, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 514
    .line 515
    const-string/jumbo v0, "recovery-update"

    .line 516
    .line 517
    .line 518
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 519
    .line 520
    .line 521
    move-result p0

    .line 522
    if-eqz p0, :cond_b

    .line 523
    .line 524
    goto :goto_a

    .line 525
    :cond_b
    sget-object p0, Lcom/android/server/power/ShutdownThread$1;->delayhandler:Lcom/android/server/power/ShutdownThread$1;

    .line 526
    .line 527
    sget-object v0, Lcom/android/server/power/ShutdownThread$1;->delayDumpRaunnable:Lcom/android/server/power/ShutdownThread$getDelayDumpstate$1;

    .line 528
    .line 529
    const-wide/32 v5, 0x1d4c0

    .line 530
    .line 531
    .line 532
    invoke-virtual {p0, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 533
    .line 534
    .line 535
    goto :goto_b

    .line 536
    :cond_c
    :goto_a
    sget-object p0, Lcom/android/server/power/ShutdownThread$1;->delayhandler:Lcom/android/server/power/ShutdownThread$1;

    .line 537
    .line 538
    sget-object v0, Lcom/android/server/power/ShutdownThread$1;->delayDumpRaunnable:Lcom/android/server/power/ShutdownThread$getDelayDumpstate$1;

    .line 539
    .line 540
    const-wide/32 v5, 0xdbba0

    .line 541
    .line 542
    .line 543
    invoke-virtual {p0, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 544
    .line 545
    .line 546
    :goto_b
    const-string p0, "Shutdown logFileWriter start"

    .line 547
    .line 548
    const-string v0, "ShutdownThread"

    .line 549
    .line 550
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    .line 552
    .line 553
    sget-object p0, Lcom/android/server/power/ShutdownThread;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    .line 554
    .line 555
    if-nez p0, :cond_12

    .line 556
    .line 557
    new-instance p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;

    .line 558
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    .line 561
    .line 562
    iput-object v4, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    .line 563
    .line 564
    new-instance v5, Ljava/io/File;

    .line 565
    .line 566
    const-string v6, "/data/log/"

    .line 567
    .line 568
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 572
    .line 573
    .line 574
    move-result-object v5

    .line 575
    const-string/jumbo v7, "shutdown_profile"

    .line 576
    .line 577
    .line 578
    if-eqz v5, :cond_10

    .line 579
    .line 580
    new-instance v8, Ljava/util/TreeMap;

    .line 581
    .line 582
    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    .line 583
    .line 584
    .line 585
    array-length v9, v5

    .line 586
    move v10, v3

    .line 587
    :goto_c
    if-ge v10, v9, :cond_e

    .line 588
    .line 589
    aget-object v11, v5, v10

    .line 590
    .line 591
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v12

    .line 595
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    .line 596
    .line 597
    .line 598
    move-result v13

    .line 599
    if-eqz v13, :cond_d

    .line 600
    .line 601
    invoke-virtual {v12, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 602
    .line 603
    .line 604
    move-result v13

    .line 605
    if-eqz v13, :cond_d

    .line 606
    .line 607
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    .line 608
    .line 609
    .line 610
    move-result-wide v13

    .line 611
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 612
    .line 613
    .line 614
    move-result-object v11

    .line 615
    invoke-virtual {v8, v11, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    :cond_d
    add-int/lit8 v10, v10, 0x1

    .line 619
    .line 620
    goto :goto_c

    .line 621
    :cond_e
    invoke-virtual {v8}, Ljava/util/TreeMap;->size()I

    .line 622
    .line 623
    .line 624
    move-result v5

    .line 625
    const/4 v9, 0x5

    .line 626
    if-ge v5, v9, :cond_f

    .line 627
    .line 628
    invoke-virtual {v8}, Ljava/util/TreeMap;->size()I

    .line 629
    .line 630
    .line 631
    move-result v5

    .line 632
    add-int/2addr v5, v1

    .line 633
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 634
    .line 635
    .line 636
    move-result-object v5

    .line 637
    const-string/jumbo v8, "txt"

    .line 638
    .line 639
    .line 640
    filled-new-array {v7, v5, v8}, [Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v5

    .line 644
    const-string v8, "%s.%d.%s"

    .line 645
    .line 646
    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v5

    .line 650
    goto :goto_d

    .line 651
    :cond_f
    invoke-virtual {v8}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 652
    .line 653
    .line 654
    move-result-object v5

    .line 655
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 656
    .line 657
    .line 658
    move-result-object v5

    .line 659
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v5

    .line 663
    check-cast v5, Ljava/lang/Long;

    .line 664
    .line 665
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 666
    .line 667
    .line 668
    invoke-virtual {v8, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    .line 670
    .line 671
    move-result-object v5

    .line 672
    check-cast v5, Ljava/lang/String;

    .line 673
    .line 674
    goto :goto_d

    .line 675
    :cond_10
    move-object v5, v4

    .line 676
    :goto_d
    if-eqz v5, :cond_11

    .line 677
    .line 678
    :try_start_a
    new-instance v8, Ljava/io/File;

    .line 679
    .line 680
    new-instance v9, Ljava/lang/StringBuilder;

    .line 681
    .line 682
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v5

    .line 695
    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    new-instance v5, Ljava/io/FileOutputStream;

    .line 699
    .line 700
    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 701
    .line 702
    .line 703
    iput-object v5, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    .line 704
    .line 705
    new-instance v5, Ljava/io/File;

    .line 706
    .line 707
    new-instance v9, Ljava/lang/StringBuilder;

    .line 708
    .line 709
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    .line 717
    .line 718
    const-string v6, "_latest.txt"

    .line 719
    .line 720
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v6

    .line 727
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 728
    .line 729
    .line 730
    new-instance v6, Ljava/io/FileOutputStream;

    .line 731
    .line 732
    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 733
    .line 734
    .line 735
    iput-object v6, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    .line 736
    .line 737
    invoke-virtual {v8, v1, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 738
    .line 739
    .line 740
    invoke-virtual {v5, v1, v3}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 741
    .line 742
    .line 743
    goto :goto_e

    .line 744
    :catch_6
    move-exception v5

    .line 745
    const-string v6, "LogFileWriter.LogFileWriter error"

    .line 746
    .line 747
    invoke-static {v0, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 748
    .line 749
    .line 750
    :cond_11
    :goto_e
    sput-object p0, Lcom/android/server/power/ShutdownThread;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    .line 751
    .line 752
    :cond_12
    const-string p0, "ShutdownThread"

    .line 753
    .line 754
    const-string v0, "!@beginShutdownSequence"

    .line 755
    .line 756
    invoke-static {p0, v0}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    const-string p0, "input"

    .line 760
    .line 761
    invoke-static {p0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 762
    .line 763
    .line 764
    move-result-object p0

    .line 765
    invoke-static {p0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    .line 766
    .line 767
    .line 768
    move-result-object p0

    .line 769
    const-string v0, "ShutdownThread"

    .line 770
    .line 771
    if-nez p0, :cond_13

    .line 772
    .line 773
    const-string p0, "ServiceManager.checkService fail"

    .line 774
    .line 775
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    .line 777
    .line 778
    goto :goto_f

    .line 779
    :cond_13
    :try_start_b
    const-string/jumbo v5, "setInputKeysDisable"

    .line 780
    .line 781
    .line 782
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    .line 784
    .line 785
    invoke-interface {p0, v1}, Landroid/hardware/input/IInputManager;->setStartedShutdown(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_7

    .line 786
    .line 787
    .line 788
    goto :goto_f

    .line 789
    :catch_7
    move-exception p0

    .line 790
    const-string v5, "error occur while input disable"

    .line 791
    .line 792
    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    .line 794
    .line 795
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 796
    .line 797
    .line 798
    :goto_f
    new-instance p0, Landroid/content/Intent;

    .line 799
    .line 800
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 801
    .line 802
    .line 803
    const-string v0, "com.sec.android.internal.ims.FLIGHT_MODE"

    .line 804
    .line 805
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 806
    .line 807
    .line 808
    const-string/jumbo v0, "powerofftriggered"

    .line 809
    .line 810
    .line 811
    invoke-virtual {p0, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 812
    .line 813
    .line 814
    const-string v0, "isShutDownForRCS"

    .line 815
    .line 816
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 817
    .line 818
    .line 819
    invoke-virtual {v2, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 820
    .line 821
    .line 822
    const-string p0, "ShutdownThread"

    .line 823
    .line 824
    const-string v0, "!@Shutdown animation will start"

    .line 825
    .line 826
    invoke-static {p0, v0}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    .line 828
    .line 829
    sget-object p0, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 830
    .line 831
    if-eqz p0, :cond_14

    .line 832
    .line 833
    const-string/jumbo v0, "recovery-update"

    .line 834
    .line 835
    .line 836
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 837
    .line 838
    .line 839
    move-result p0

    .line 840
    if-eqz p0, :cond_14

    .line 841
    .line 842
    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 843
    .line 844
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->showShutdownDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    .line 845
    .line 846
    .line 847
    move-result-object v0

    .line 848
    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 849
    .line 850
    goto :goto_10

    .line 851
    :cond_14
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->getShutdownDialog(Landroid/content/Context;)Lcom/android/server/power/shutdown/ShutdownDialog;

    .line 852
    .line 853
    .line 854
    move-result-object p0

    .line 855
    iget-object p0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->animationPlayer:Lcom/android/server/power/shutdown/AnimationPlayer;

    .line 856
    .line 857
    if-eqz p0, :cond_19

    .line 858
    .line 859
    const-string p0, "ShutdownThread"

    .line 860
    .line 861
    const-string v0, "!@play QMG animation"

    .line 862
    .line 863
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    .line 865
    .line 866
    const-string/jumbo p0, "silent.sec"

    .line 867
    .line 868
    .line 869
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 870
    .line 871
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 872
    .line 873
    .line 874
    move-result p0

    .line 875
    if-nez p0, :cond_15

    .line 876
    .line 877
    const-string p0, "/efs/sec_efs/auto_reboot/silence_LCDoff.txt"

    .line 878
    .line 879
    invoke-static {p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 880
    .line 881
    .line 882
    move-result p0

    .line 883
    if-eqz p0, :cond_16

    .line 884
    .line 885
    :cond_15
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->getShutdownDialog(Landroid/content/Context;)Lcom/android/server/power/shutdown/ShutdownDialog;

    .line 886
    .line 887
    .line 888
    move-result-object p0

    .line 889
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 890
    .line 891
    .line 892
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 893
    .line 894
    const-string/jumbo v0, "setSilentShutdown true"

    .line 895
    .line 896
    .line 897
    const-string v5, "Shutdown-ShutdownDialog"

    .line 898
    .line 899
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    .line 901
    .line 902
    iget-object p0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->soundPlayer:Lcom/android/server/power/shutdown/SoundPlayer;

    .line 903
    .line 904
    iput-boolean v1, p0, Lcom/android/server/power/shutdown/SoundPlayer;->silentShutdown:Z

    .line 905
    .line 906
    :cond_16
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->getShutdownDialog(Landroid/content/Context;)Lcom/android/server/power/shutdown/ShutdownDialog;

    .line 907
    .line 908
    .line 909
    move-result-object p0

    .line 910
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 911
    .line 912
    .line 913
    const-string v0, "Shutdown-ShutdownDialog"

    .line 914
    .line 915
    const-string/jumbo v5, "prepare shutdown dialog image and sound"

    .line 916
    .line 917
    .line 918
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    .line 920
    .line 921
    iget-object v0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->animationPlayer:Lcom/android/server/power/shutdown/AnimationPlayer;

    .line 922
    .line 923
    if-eqz v0, :cond_17

    .line 924
    .line 925
    invoke-interface {v0}, Lcom/android/server/power/shutdown/PlayerInterface;->prepare()V

    .line 926
    .line 927
    .line 928
    :cond_17
    iget-object v0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->soundPlayer:Lcom/android/server/power/shutdown/SoundPlayer;

    .line 929
    .line 930
    if-eqz v0, :cond_18

    .line 931
    .line 932
    invoke-virtual {v0}, Lcom/android/server/power/shutdown/SoundPlayer;->prepare()V

    .line 933
    .line 934
    .line 935
    :cond_18
    new-instance v0, Landroid/content/Intent;

    .line 936
    .line 937
    const-string v5, "POWER_OFF_ANIMATION_START"

    .line 938
    .line 939
    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 940
    .line 941
    .line 942
    iget-object p0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->mContext:Landroid/content/Context;

    .line 943
    .line 944
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 945
    .line 946
    .line 947
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->getShutdownDialog(Landroid/content/Context;)Lcom/android/server/power/shutdown/ShutdownDialog;

    .line 948
    .line 949
    .line 950
    move-result-object p0

    .line 951
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 952
    .line 953
    .line 954
    goto :goto_10

    .line 955
    :cond_19
    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 956
    .line 957
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->showShutdownDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    .line 958
    .line 959
    .line 960
    move-result-object v0

    .line 961
    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 962
    .line 963
    :goto_10
    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 964
    .line 965
    iput-object v2, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 966
    .line 967
    const-string/jumbo v0, "power"

    .line 968
    .line 969
    .line 970
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 971
    .line 972
    .line 973
    move-result-object v0

    .line 974
    check-cast v0, Landroid/os/PowerManager;

    .line 975
    .line 976
    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 977
    .line 978
    iput-object v4, p0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 979
    .line 980
    :try_start_c
    const-string v2, "ShutdownThread-cpu"

    .line 981
    .line 982
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 983
    .line 984
    .line 985
    move-result-object v0

    .line 986
    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 987
    .line 988
    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 989
    .line 990
    .line 991
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 992
    .line 993
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_8

    .line 994
    .line 995
    .line 996
    goto :goto_11

    .line 997
    :catch_8
    move-exception p0

    .line 998
    const-string v0, "ShutdownThread"

    .line 999
    .line 1000
    const-string v1, "No permission to acquire wake lock"

    .line 1001
    .line 1002
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1003
    .line 1004
    .line 1005
    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 1006
    .line 1007
    iput-object v4, p0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1008
    .line 1009
    :goto_11
    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 1010
    .line 1011
    iput-object v4, p0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1012
    .line 1013
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 1014
    .line 1015
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    .line 1016
    .line 1017
    .line 1018
    move-result v0

    .line 1019
    if-eqz v0, :cond_1a

    .line 1020
    .line 1021
    :try_start_d
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 1022
    .line 1023
    const-string v1, "ShutdownThread-screen"

    .line 1024
    .line 1025
    const/16 v2, 0x1a

    .line 1026
    .line 1027
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v0

    .line 1031
    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1032
    .line 1033
    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1034
    .line 1035
    .line 1036
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1037
    .line 1038
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_9

    .line 1039
    .line 1040
    .line 1041
    goto :goto_12

    .line 1042
    :catch_9
    move-exception p0

    .line 1043
    const-string v0, "ShutdownThread"

    .line 1044
    .line 1045
    const-string v1, "No permission to acquire wake lock"

    .line 1046
    .line 1047
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1048
    .line 1049
    .line 1050
    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 1051
    .line 1052
    iput-object v4, p0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1053
    .line 1054
    :cond_1a
    :goto_12
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    .line 1055
    .line 1056
    .line 1057
    move-result p0

    .line 1058
    if-eqz p0, :cond_1b

    .line 1059
    .line 1060
    const p0, 0x3345a

    .line 1061
    .line 1062
    .line 1063
    new-array v0, v3, [Ljava/lang/Object;

    .line 1064
    .line 1065
    invoke-static {p0, v0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1066
    .line 1067
    .line 1068
    :cond_1b
    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 1069
    .line 1070
    new-instance v0, Lcom/android/server/power/ShutdownThread$1;

    .line 1071
    .line 1072
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1073
    .line 1074
    .line 1075
    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Lcom/android/server/power/ShutdownThread$1;

    .line 1076
    .line 1077
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 1078
    .line 1079
    .line 1080
    :goto_13
    return-void

    .line 1081
    :goto_14
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 1082
    throw v0

    .line 1083
    :goto_15
    if-eqz v4, :cond_1c

    .line 1084
    .line 1085
    :try_start_f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    .line 1086
    .line 1087
    .line 1088
    goto :goto_16

    .line 1089
    :catch_a
    move-exception v0

    .line 1090
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1091
    .line 1092
    .line 1093
    :cond_1c
    :goto_16
    throw p0

    .line 1094
    :goto_17
    :try_start_10
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1095
    throw p0
.end method

.method public static systemShutdown(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "systemShutdown - reason: "

    .line 2
    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "ShutdownThread"

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string p0, "!@Request to shutdown already running, returning."

    .line 18
    .line 19
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 25
    .line 26
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 27
    .line 28
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    sput-boolean p1, Lcom/android/server/power/ShutdownThread;->systemRequest:Z

    .line 32
    .line 33
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static wirteLogFileWriter(Ljava/lang/String;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/android/server/power/ShutdownThread;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    .line 6
    .line 7
    const-string v10, "ShutdownThread"

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const-string/jumbo p0, "shutdownProfile is null"

    .line 12
    .line 13
    .line 14
    invoke-static {v10, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x5

    .line 34
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const/16 v4, 0xb

    .line 43
    .line 44
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    const/16 v5, 0xc

    .line 53
    .line 54
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    const/16 v6, 0xd

    .line 63
    .line 64
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    const/16 v7, 0xe

    .line 73
    .line 74
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    move-object v8, v10

    .line 83
    move-object v9, p0

    .line 84
    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const-string v1, "%02d-%02d %02d:%02d:%02d.%03d %s: %s\n"

    .line 89
    .line 90
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    :try_start_0
    iget-object v1, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 101
    .line 102
    .line 103
    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    .line 104
    .line 105
    if-eqz v0, :cond_1

    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catch_0
    move-exception p0

    .line 116
    const-string v0, "LogFileWriter.write fail"

    .line 117
    .line 118
    invoke-static {v10, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .line 120
    .line 121
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public playShutdownVibration(Landroid/content/Context;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mInjector:Lcom/android/server/power/ShutdownThread$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/os/SystemVibrator;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mInjector:Lcom/android/server/power/ShutdownThread$Injector;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const v1, 0x1040331

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const-string v2, "ShutdownThread"

    .line 39
    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    .line 43
    .line 44
    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseDocument(Ljava/io/Reader;)Landroid/os/vibrator/persistence/ParsedVibration;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/vibrator/persistence/ParsedVibration;->resolve(Landroid/os/Vibrator;)Landroid/os/VibrationEffect;

    .line 52
    .line 53
    .line 54
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p1

    .line 57
    const-string v1, "Error parsing default shutdown vibration effect."

    .line 58
    .line 59
    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .line 61
    .line 62
    :cond_1
    const/4 p1, 0x0

    .line 63
    :goto_0
    const/4 v1, -0x1

    .line 64
    const-wide/16 v3, 0x1f4

    .line 65
    .line 66
    if-nez p1, :cond_2

    .line 67
    .line 68
    invoke-static {v3, v4, v1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {p1}, Landroid/os/VibrationEffect;->getDuration()J

    .line 74
    .line 75
    .line 76
    move-result-wide v5

    .line 77
    const-wide v7, 0x7fffffffffffffffL

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    cmp-long v5, v5, v7

    .line 83
    .line 84
    if-nez v5, :cond_3

    .line 85
    .line 86
    const-string p1, "The parsed shutdown vibration is indefinite."

    .line 87
    .line 88
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    invoke-static {v3, v4, v1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    :cond_3
    :goto_1
    const/16 v1, 0x12

    .line 96
    .line 97
    invoke-static {v1}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, p1, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/os/VibrationEffect;->getDuration()J

    .line 105
    .line 106
    .line 107
    move-result-wide v0

    .line 108
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread;->mInjector:Lcom/android/server/power/ShutdownThread$Injector;

    .line 109
    .line 110
    const-wide/16 v5, 0x0

    .line 111
    .line 112
    cmp-long p1, v0, v5

    .line 113
    .line 114
    if-gez p1, :cond_4

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_4
    move-wide v3, v0

    .line 118
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    .line 123
    .line 124
    :catch_1
    return-void
.end method

.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    new-instance v4, Landroid/util/TimingsTraceLog;

    .line 6
    .line 7
    const-string v0, "ShutdownTiming"

    .line 8
    .line 9
    const-wide/32 v5, 0x80000

    .line 10
    .line 11
    .line 12
    invoke-direct {v4, v0, v5, v6}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 13
    .line 14
    .line 15
    const-string v0, "SystemServerShutdown"

    .line 16
    .line 17
    invoke-virtual {v4, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v5, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    .line 21
    .line 22
    monitor-enter v5

    .line 23
    :try_start_0
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SHUTDOWN_TIME_START:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v6

    .line 29
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-virtual {v5, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SYSTEM_SERVER:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/view/SurfaceControl;->notifyShutdown()V

    .line 43
    .line 44
    .line 45
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    const-string v0, "1"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-string v0, "0"

    .line 53
    .line 54
    :goto_0
    sget-object v5, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 55
    .line 56
    if-eqz v5, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const-string v5, ""

    .line 60
    .line 61
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string/jumbo v5, "sys.shutdown.requested"

    .line 66
    .line 67
    .line 68
    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    const-string/jumbo v0, "persist.sys.safemode"

    .line 76
    .line 77
    .line 78
    const-string v5, "1"

    .line 79
    .line 80
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    const-string v0, "DumpPreRebootInfo"

    .line 84
    .line 85
    invoke-virtual {v4, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :try_start_1
    const-string v0, "ShutdownThread"

    .line 89
    .line 90
    const-string v5, "Logging pre-reboot information..."

    .line 91
    .line 92
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    iget-object v0, v1, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 96
    .line 97
    sget-object v5, Lcom/android/server/power/PreRebootLogger;->BUFFERS_TO_DUMP:[Ljava/lang/String;

    .line 98
    .line 99
    new-instance v5, Ljava/io/File;

    .line 100
    .line 101
    invoke-static {}, Landroid/os/Environment;->getDataMiscDirectory()Ljava/io/File;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    const-string/jumbo v7, "prereboot"

    .line 106
    .line 107
    .line 108
    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_3

    .line 116
    .line 117
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    if-eqz v6, :cond_3

    .line 122
    .line 123
    invoke-static {v0, v5}, Lcom/android/server/power/PreRebootLogger;->log(Landroid/content/Context;Ljava/io/File;)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 128
    .line 129
    const-string v5, "Pre-reboot dump directory not found"

    .line 130
    .line 131
    invoke-direct {v0, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    const-string v5, "ShutdownThread"

    .line 137
    .line 138
    const-string v6, "Failed to log pre-reboot information"

    .line 139
    .line 140
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .line 142
    .line 143
    :goto_2
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 144
    .line 145
    .line 146
    const-string v0, "ShutdownThread"

    .line 147
    .line 148
    const-string v5, "!@Shutting down Hermes manager..."

    .line 149
    .line 150
    invoke-static {v0, v5}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    new-instance v0, Lcom/android/server/power/ShutdownThread$4;

    .line 154
    .line 155
    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$4;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 156
    .line 157
    .line 158
    const-string v5, "!@Shutdown HermesService start."

    .line 159
    .line 160
    const-string v6, "ShutdownThread"

    .line 161
    .line 162
    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 166
    .line 167
    .line 168
    const-wide/16 v7, 0x1e

    .line 169
    .line 170
    :try_start_2
    invoke-virtual {v0, v7, v8}, Ljava/lang/Thread;->join(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 171
    .line 172
    .line 173
    :catch_1
    const-string v0, "!@Shutdown HermesService end."

    .line 174
    .line 175
    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SEND_BROADCAST:Ljava/lang/String;

    .line 179
    .line 180
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    const-string v0, "SendShutdownBroadcast"

    .line 184
    .line 185
    invoke-virtual {v4, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    const-string v0, "ShutdownThread"

    .line 189
    .line 190
    const-string v5, "!@Sending shutdown broadcast..."

    .line 191
    .line 192
    invoke-static {v0, v5}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iput-boolean v3, v1, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 196
    .line 197
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 198
    .line 199
    const/high16 v5, 0x50000000

    .line 200
    .line 201
    invoke-static {v5, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    const/4 v5, 0x2

    .line 210
    invoke-virtual {v0, v5}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 215
    .line 216
    .line 217
    move-result-object v13

    .line 218
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 219
    .line 220
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    move-object v6, v0

    .line 225
    check-cast v6, Landroid/app/ActivityManagerInternal;

    .line 226
    .line 227
    new-instance v8, Lcom/android/server/power/ShutdownThread$2;

    .line 228
    .line 229
    invoke-direct {v8, v1}, Lcom/android/server/power/ShutdownThread$2;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 230
    .line 231
    .line 232
    const/4 v9, 0x0

    .line 233
    const/4 v10, -0x1

    .line 234
    const/4 v11, 0x0

    .line 235
    const/4 v12, 0x0

    .line 236
    invoke-virtual/range {v6 .. v13}, Landroid/app/ActivityManagerInternal;->broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    .line 237
    .line 238
    .line 239
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 240
    .line 241
    .line 242
    move-result-wide v6

    .line 243
    const-wide/16 v8, 0x2710

    .line 244
    .line 245
    add-long/2addr v6, v8

    .line 246
    iget-object v10, v1, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 247
    .line 248
    monitor-enter v10

    .line 249
    :catch_2
    :goto_3
    :try_start_3
    iget-boolean v0, v1, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 250
    .line 251
    const-wide/16 v11, 0x0

    .line 252
    .line 253
    const/4 v13, 0x0

    .line 254
    if-nez v0, :cond_6

    .line 255
    .line 256
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 257
    .line 258
    .line 259
    move-result-wide v14

    .line 260
    sub-long v14, v6, v14

    .line 261
    .line 262
    cmp-long v0, v14, v11

    .line 263
    .line 264
    if-gtz v0, :cond_4

    .line 265
    .line 266
    const-string v0, "ShutdownThread"

    .line 267
    .line 268
    const-string v6, "Shutdown broadcast timed out"

    .line 269
    .line 270
    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    goto :goto_4

    .line 274
    :catchall_0
    move-exception v0

    .line 275
    goto/16 :goto_c

    .line 276
    .line 277
    :cond_4
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 278
    .line 279
    if-eqz v0, :cond_5

    .line 280
    .line 281
    sub-long v11, v8, v14

    .line 282
    .line 283
    long-to-double v11, v11

    .line 284
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 285
    .line 286
    mul-double v11, v11, v16

    .line 287
    .line 288
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    .line 289
    .line 290
    mul-double v11, v11, v16

    .line 291
    .line 292
    const-wide v16, 0x40c3880000000000L    # 10000.0

    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    div-double v11, v11, v16

    .line 298
    .line 299
    double-to-int v0, v11

    .line 300
    sget-object v11, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 301
    .line 302
    invoke-virtual {v11, v0, v13}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 303
    .line 304
    .line 305
    :cond_5
    :try_start_4
    iget-object v0, v1, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 306
    .line 307
    const-wide/16 v11, 0x1f4

    .line 308
    .line 309
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 310
    .line 311
    .line 312
    move-result-wide v11

    .line 313
    invoke-virtual {v0, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 314
    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_6
    :goto_4
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 318
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 319
    .line 320
    if-eqz v0, :cond_7

    .line 321
    .line 322
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 323
    .line 324
    invoke-virtual {v0, v5, v13}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 325
    .line 326
    .line 327
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 328
    .line 329
    .line 330
    move-result-wide v5

    .line 331
    sget-wide v7, Lcom/android/server/power/ShutdownThread;->currentTimeMillisStart:J

    .line 332
    .line 333
    sub-long/2addr v5, v7

    .line 334
    const-string v0, "dev.shutdownbroadcast.on"

    .line 335
    .line 336
    const-string v7, ""

    .line 337
    .line 338
    invoke-static {v0, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    sget-boolean v7, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    .line 347
    .line 348
    if-eqz v7, :cond_8

    .line 349
    .line 350
    sget-boolean v7, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_DEBUG_LOW:Z

    .line 351
    .line 352
    if-nez v7, :cond_9

    .line 353
    .line 354
    :cond_8
    const-wide/16 v7, 0x1388

    .line 355
    .line 356
    cmp-long v7, v5, v7

    .line 357
    .line 358
    if-ltz v7, :cond_9

    .line 359
    .line 360
    const-string v0, "ShutdownThread"

    .line 361
    .line 362
    new-instance v7, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    const-string v8, "!@shutdown is too slow, elapsed time from POWEROFF START to BROADCAST_SHUTDOWN is "

    .line 365
    .line 366
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v5

    .line 376
    invoke-static {v0, v5}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    goto :goto_5

    .line 380
    :cond_9
    const-string v5, "On"

    .line 381
    .line 382
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 383
    .line 384
    .line 385
    :goto_5
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 386
    .line 387
    .line 388
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SEND_BROADCAST:Ljava/lang/String;

    .line 389
    .line 390
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    const-string v0, "ShutdownThread"

    .line 394
    .line 395
    const-string v5, "!@Shutting down activity manager..."

    .line 396
    .line 397
    invoke-static {v0, v5}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    const-string v0, "ShutdownActivityManager"

    .line 401
    .line 402
    invoke-virtual {v4, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_AM:Ljava/lang/String;

    .line 406
    .line 407
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    const-string v0, "activity"

    .line 411
    .line 412
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-static {v0}, Landroid/app/IActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    if-eqz v0, :cond_a

    .line 421
    .line 422
    const/16 v5, 0x2710

    .line 423
    .line 424
    :try_start_6
    invoke-interface {v0, v5}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 425
    .line 426
    .line 427
    :catch_3
    :cond_a
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 428
    .line 429
    if-eqz v0, :cond_b

    .line 430
    .line 431
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 432
    .line 433
    const/4 v5, 0x4

    .line 434
    invoke-virtual {v0, v5, v13}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 435
    .line 436
    .line 437
    :cond_b
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 438
    .line 439
    .line 440
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_AM:Ljava/lang/String;

    .line 441
    .line 442
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    const-string v0, "ShutdownThread"

    .line 446
    .line 447
    const-string v5, "!@Shutting down package manager..."

    .line 448
    .line 449
    invoke-static {v0, v5}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    const-string v0, "ShutdownPackageManager"

    .line 453
    .line 454
    invoke-virtual {v4, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_PM:Ljava/lang/String;

    .line 458
    .line 459
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    const-class v5, Landroid/content/pm/PackageManagerInternal;

    .line 463
    .line 464
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v5

    .line 468
    check-cast v5, Landroid/content/pm/PackageManagerInternal;

    .line 469
    .line 470
    if-eqz v5, :cond_c

    .line 471
    .line 472
    invoke-virtual {v5}, Landroid/content/pm/PackageManagerInternal;->shutdown()V

    .line 473
    .line 474
    .line 475
    :cond_c
    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 476
    .line 477
    if-eqz v5, :cond_d

    .line 478
    .line 479
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 480
    .line 481
    const/4 v6, 0x6

    .line 482
    invoke-virtual {v5, v6, v13}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 483
    .line 484
    .line 485
    :cond_d
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 486
    .line 487
    .line 488
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    const-string v0, "ShutdownRadios"

    .line 492
    .line 493
    invoke-virtual {v4, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIOS:Ljava/lang/String;

    .line 497
    .line 498
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 502
    .line 503
    .line 504
    move-result-wide v5

    .line 505
    const/16 v0, 0x2ee0

    .line 506
    .line 507
    int-to-long v7, v0

    .line 508
    add-long/2addr v5, v7

    .line 509
    new-array v0, v2, [Z

    .line 510
    .line 511
    new-instance v9, Lcom/android/server/power/ShutdownThread$5;

    .line 512
    .line 513
    invoke-direct {v9, v1, v5, v6, v0}, Lcom/android/server/power/ShutdownThread$5;-><init>(Lcom/android/server/power/ShutdownThread;J[Z)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 517
    .line 518
    .line 519
    :try_start_7
    invoke-virtual {v9, v7, v8}, Ljava/lang/Thread;->join(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4

    .line 520
    .line 521
    .line 522
    :catch_4
    aget-boolean v0, v0, v3

    .line 523
    .line 524
    if-nez v0, :cond_e

    .line 525
    .line 526
    const-string v0, "ShutdownThread"

    .line 527
    .line 528
    const-string v5, "Timed out waiting for Radio shutdown."

    .line 529
    .line 530
    invoke-static {v0, v5}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    :cond_e
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 534
    .line 535
    if-eqz v0, :cond_f

    .line 536
    .line 537
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 538
    .line 539
    const/16 v5, 0x12

    .line 540
    .line 541
    invoke-virtual {v0, v5, v13}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 542
    .line 543
    .line 544
    :cond_f
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 545
    .line 546
    .line 547
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIOS:Ljava/lang/String;

    .line 548
    .line 549
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 553
    .line 554
    if-eqz v0, :cond_10

    .line 555
    .line 556
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 557
    .line 558
    const/16 v4, 0x14

    .line 559
    .line 560
    invoke-virtual {v0, v4, v13}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 561
    .line 562
    .line 563
    const-string v0, "Calling uncrypt and monitoring the progress..."

    .line 564
    .line 565
    const-string v4, "ShutdownThread"

    .line 566
    .line 567
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    .line 569
    .line 570
    new-instance v0, Lcom/android/server/power/ShutdownThread$6;

    .line 571
    .line 572
    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$6;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 573
    .line 574
    .line 575
    new-array v2, v2, [Z

    .line 576
    .line 577
    aput-boolean v3, v2, v3

    .line 578
    .line 579
    new-instance v5, Lcom/android/server/power/ShutdownThread$7;

    .line 580
    .line 581
    invoke-direct {v5, v1, v0, v2}, Lcom/android/server/power/ShutdownThread$7;-><init>(Lcom/android/server/power/ShutdownThread;Lcom/android/server/power/ShutdownThread$6;[Z)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 585
    .line 586
    .line 587
    const-wide/32 v6, 0xdbba0

    .line 588
    .line 589
    .line 590
    :try_start_8
    invoke-virtual {v5, v6, v7}, Ljava/lang/Thread;->join(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_5

    .line 591
    .line 592
    .line 593
    :catch_5
    aget-boolean v0, v2, v3

    .line 594
    .line 595
    if-nez v0, :cond_10

    .line 596
    .line 597
    const-string v0, "Timed out waiting for uncrypt."

    .line 598
    .line 599
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    .line 601
    .line 602
    const/16 v0, 0x384

    .line 603
    .line 604
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    const/16 v2, 0x64

    .line 609
    .line 610
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 611
    .line 612
    .line 613
    move-result-object v2

    .line 614
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    const-string/jumbo v2, "uncrypt_time: %d\nuncrypt_error: %d\n"

    .line 619
    .line 620
    .line 621
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    :try_start_9
    sget-object v2, Landroid/os/RecoverySystem;->UNCRYPT_STATUS_FILE:Ljava/io/File;

    .line 626
    .line 627
    invoke-static {v2, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 628
    .line 629
    .line 630
    goto :goto_6

    .line 631
    :catch_6
    move-exception v0

    .line 632
    const-string v2, "Failed to write timeout message to uncrypt status"

    .line 633
    .line 634
    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 635
    .line 636
    .line 637
    :cond_10
    :goto_6
    const-string v0, "ShutdownThread"

    .line 638
    .line 639
    const-string v2, "!@waitForAnimEnd"

    .line 640
    .line 641
    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    const-string v0, "ON"

    .line 645
    .line 646
    const-string/jumbo v2, "service.poweranimation.on"

    .line 647
    .line 648
    .line 649
    const-string v4, ""

    .line 650
    .line 651
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v2

    .line 655
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 656
    .line 657
    .line 658
    move-result v0

    .line 659
    const-wide/16 v4, 0x64

    .line 660
    .line 661
    const-wide/16 v6, 0x3e8

    .line 662
    .line 663
    const/16 v2, 0xa

    .line 664
    .line 665
    if-eqz v0, :cond_12

    .line 666
    .line 667
    const-string v0, "ShutdownThread"

    .line 668
    .line 669
    const-string v8, "!@wait for PNG animation end"

    .line 670
    .line 671
    invoke-static {v0, v8}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 675
    .line 676
    .line 677
    move-result-wide v8

    .line 678
    int-to-long v13, v2

    .line 679
    mul-long/2addr v13, v6

    .line 680
    add-long/2addr v13, v8

    .line 681
    :goto_7
    const-string v0, "dev.shutdownanimation.end"

    .line 682
    .line 683
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    const-string v2, "END"

    .line 688
    .line 689
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 690
    .line 691
    .line 692
    move-result v0

    .line 693
    if-nez v0, :cond_16

    .line 694
    .line 695
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 696
    .line 697
    .line 698
    move-result-wide v6

    .line 699
    sub-long v6, v13, v6

    .line 700
    .line 701
    cmp-long v0, v6, v11

    .line 702
    .line 703
    const-string v2, "ShutdownThread"

    .line 704
    .line 705
    if-gtz v0, :cond_11

    .line 706
    .line 707
    const-string v0, "!@Animation finish wait timed out"

    .line 708
    .line 709
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    .line 711
    .line 712
    goto :goto_9

    .line 713
    :cond_11
    const-string v0, "!@wait for finish : sleep 100ms"

    .line 714
    .line 715
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    .line 717
    .line 718
    :try_start_a
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_7

    .line 719
    .line 720
    .line 721
    goto :goto_7

    .line 722
    :catch_7
    const-string v0, "InterruptedException"

    .line 723
    .line 724
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    .line 726
    .line 727
    goto :goto_7

    .line 728
    :cond_12
    sget-object v0, Lcom/android/server/power/ShutdownThread;->shutdownDialog:Lcom/android/server/power/shutdown/ShutdownDialog;

    .line 729
    .line 730
    if-eqz v0, :cond_16

    .line 731
    .line 732
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 733
    .line 734
    .line 735
    move-result v0

    .line 736
    if-eqz v0, :cond_16

    .line 737
    .line 738
    const-string v0, "ShutdownThread"

    .line 739
    .line 740
    const-string v8, "!@wait for animation end"

    .line 741
    .line 742
    invoke-static {v0, v8}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    sget-object v0, Lcom/android/server/power/ShutdownThread;->shutdownDialog:Lcom/android/server/power/shutdown/ShutdownDialog;

    .line 746
    .line 747
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 748
    .line 749
    .line 750
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 751
    .line 752
    .line 753
    move-result-wide v8

    .line 754
    int-to-long v13, v2

    .line 755
    mul-long/2addr v13, v6

    .line 756
    add-long/2addr v13, v8

    .line 757
    :goto_8
    iget-object v2, v0, Lcom/android/server/power/shutdown/ShutdownDialog;->animationPlayer:Lcom/android/server/power/shutdown/AnimationPlayer;

    .line 758
    .line 759
    if-eqz v2, :cond_13

    .line 760
    .line 761
    invoke-interface {v2}, Lcom/android/server/power/shutdown/PlayerInterface;->isPlaying()Z

    .line 762
    .line 763
    .line 764
    move-result v2

    .line 765
    if-nez v2, :cond_14

    .line 766
    .line 767
    :cond_13
    iget-object v2, v0, Lcom/android/server/power/shutdown/ShutdownDialog;->soundPlayer:Lcom/android/server/power/shutdown/SoundPlayer;

    .line 768
    .line 769
    if-eqz v2, :cond_16

    .line 770
    .line 771
    invoke-virtual {v2}, Lcom/android/server/power/shutdown/SoundPlayer;->isPlaying()Z

    .line 772
    .line 773
    .line 774
    move-result v2

    .line 775
    if-eqz v2, :cond_16

    .line 776
    .line 777
    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 778
    .line 779
    .line 780
    move-result-wide v6

    .line 781
    sub-long v6, v13, v6

    .line 782
    .line 783
    cmp-long v2, v6, v11

    .line 784
    .line 785
    const-string v6, "Shutdown-ShutdownDialog"

    .line 786
    .line 787
    if-gtz v2, :cond_15

    .line 788
    .line 789
    const-string v0, "!@Animation finish wait timed out"

    .line 790
    .line 791
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    .line 793
    .line 794
    goto :goto_9

    .line 795
    :cond_15
    const-string v2, "!@wait for finish : sleep 100ms"

    .line 796
    .line 797
    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    .line 799
    .line 800
    :try_start_b
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_8

    .line 801
    .line 802
    .line 803
    goto :goto_8

    .line 804
    :catch_8
    const-string v2, "InterruptedException"

    .line 805
    .line 806
    invoke-static {v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    .line 808
    .line 809
    goto :goto_8

    .line 810
    :cond_16
    :goto_9
    iget-object v0, v1, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 811
    .line 812
    const-string/jumbo v2, "usb"

    .line 813
    .line 814
    .line 815
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 820
    .line 821
    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbManager;->enableUsbDataSignal(Z)Z

    .line 822
    .line 823
    .line 824
    const-string v0, "ShutdownThread"

    .line 825
    .line 826
    new-instance v2, Ljava/lang/StringBuilder;

    .line 827
    .line 828
    const-string v3, "!@run, "

    .line 829
    .line 830
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 834
    .line 835
    if-eqz v3, :cond_17

    .line 836
    .line 837
    const-string/jumbo v3, "reboot"

    .line 838
    .line 839
    .line 840
    goto :goto_a

    .line 841
    :cond_17
    const-string/jumbo v3, "shutdown"

    .line 842
    .line 843
    .line 844
    :goto_a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    .line 846
    .line 847
    const-string v3, " requested reason="

    .line 848
    .line 849
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    .line 851
    .line 852
    sget-object v3, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 853
    .line 854
    if-eqz v3, :cond_18

    .line 855
    .line 856
    goto :goto_b

    .line 857
    :cond_18
    const-string/jumbo v3, "null"

    .line 858
    .line 859
    .line 860
    :goto_b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    .line 862
    .line 863
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v2

    .line 867
    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    .line 869
    .line 870
    iget-object v0, v1, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 871
    .line 872
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 873
    .line 874
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 875
    .line 876
    invoke-static {v0, v2, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 877
    .line 878
    .line 879
    return-void

    .line 880
    :goto_c
    :try_start_c
    monitor-exit v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 881
    throw v0

    .line 882
    :catchall_1
    move-exception v0

    .line 883
    :try_start_d
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 884
    throw v0
.end method

.method public final setRebootProgress(ILjava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Lcom/android/server/power/ShutdownThread$1;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/power/ShutdownThread$3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/ShutdownThread$3;-><init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
