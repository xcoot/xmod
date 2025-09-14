.class public final Lcom/android/server/timedetector/EnvironmentImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;


# instance fields
.field public final mAlarmManagerInternal:Lcom/android/server/alarm/AlarmManagerService$LocalService;

.field public final mHandler:Landroid/os/Handler;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    const-class p2, Landroid/os/PowerManager;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/os/PowerManager;

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    const-string/jumbo v0, "time_detector"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-object p2, p1

    .line 29
    check-cast p2, Landroid/os/PowerManager$WakeLock;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 32
    .line 33
    const-class p1, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 40
    .line 41
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mAlarmManagerInternal:Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final acquireWakeLock()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "WakeLock "

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " already held"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string/jumbo v1, "time_detector"

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object p0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final checkWakeLockHeld()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "WakeLock "

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p0, " not held"

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string/jumbo v0, "time_detector"

    .line 31
    .line 32
    .line 33
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final dumpDebugLog(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "elapsedRealtimeMillis()=%s (%s)\n"

    .line 18
    .line 19
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string/jumbo v1, "systemClockMillis()=%s (%s)\n"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 42
    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string/jumbo v1, "systemClockConfidence()="

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/server/timedetector/EnvironmentImpl;->systemClockConfidence()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string p0, "SystemClockTime debug log:"

    .line 67
    .line 68
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 72
    .line 73
    .line 74
    sget-object p0, Lcom/android/server/SystemClockTime;->sTimeDebugLog:Landroid/util/LocalLog;

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final releaseWakeLock()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/timedetector/EnvironmentImpl;->checkWakeLockHeld()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setSystemClockConfidence(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/timedetector/EnvironmentImpl;->checkWakeLockHeld()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lcom/android/server/SystemClockTime;->sTimeDebugLog:Landroid/util/LocalLog;

    .line 5
    .line 6
    const-class p0, Lcom/android/server/SystemClockTime;

    .line 7
    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    sput p1, Lcom/android/server/SystemClockTime;->sTimeConfidence:I

    .line 10
    .line 11
    sget-object p1, Lcom/android/server/SystemClockTime;->sTimeDebugLog:Landroid/util/LocalLog;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1
.end method

.method public final systemClockConfidence()I
    .locals 1

    .line 1
    sget-object p0, Lcom/android/server/SystemClockTime;->sTimeDebugLog:Landroid/util/LocalLog;

    .line 2
    .line 3
    const-class p0, Lcom/android/server/SystemClockTime;

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    sget v0, Lcom/android/server/SystemClockTime;->sTimeConfidence:I

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw v0
.end method
