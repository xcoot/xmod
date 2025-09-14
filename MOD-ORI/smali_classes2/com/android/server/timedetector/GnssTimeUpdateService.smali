.class public final Lcom/android/server/timedetector/GnssTimeUpdateService;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final D:Z

.field public static final GNSS_TIME_UPDATE_ALARM_INTERVAL:Ljava/time/Duration;


# instance fields
.field public mAlarmListener:Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda1;

.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mHandler:Landroid/os/Handler;

.field public volatile mLastSuggestedGnssTime:Landroid/app/time/UnixEpochTime;

.field public final mLocalLog:Landroid/util/LocalLog;

.field public mLocationListener:Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda0;

.field public final mLocationManager:Landroid/location/LocationManager;

.field public final mLocationManagerInternal:Landroid/location/LocationManagerInternal;

.field public final mLock:Ljava/lang/Object;

.field public final mTimeDetectorInternal:Lcom/android/server/timedetector/TimeDetectorInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "GnssTimeUpdateService"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/timedetector/GnssTimeUpdateService;->D:Z

    .line 9
    .line 10
    const-wide/16 v0, 0x4

    .line 11
    .line 12
    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/android/server/timedetector/GnssTimeUpdateService;->GNSS_TIME_UPDATE_ALARM_INTERVAL:Ljava/time/Duration;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Landroid/location/LocationManager;Landroid/location/LocationManagerInternal;Lcom/android/server/timedetector/TimeDetectorInternal;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/LocalLog;

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, v1, v2}, Landroid/util/LocalLog;-><init>(IZ)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    .line 13
    .line 14
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mExecutor:Ljava/util/concurrent/Executor;

    .line 19
    .line 20
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mHandler:Landroid/os/Handler;

    .line 25
    .line 26
    new-instance v0, Ljava/lang/Object;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLock:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-object v0, p1

    .line 37
    check-cast v0, Landroid/content/Context;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-object p1, p2

    .line 45
    check-cast p1, Landroid/app/AlarmManager;

    .line 46
    .line 47
    iput-object p2, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 48
    .line 49
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-object p1, p3

    .line 53
    check-cast p1, Landroid/location/LocationManager;

    .line 54
    .line 55
    iput-object p3, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    .line 56
    .line 57
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-object p1, p4

    .line 61
    check-cast p1, Landroid/location/LocationManagerInternal;

    .line 62
    .line 63
    iput-object p4, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    .line 64
    .line 65
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    check-cast p5, Lcom/android/server/timedetector/TimeDetectorInternal;

    .line 69
    .line 70
    iput-object p5, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mTimeDetectorInternal:Lcom/android/server/timedetector/TimeDetectorInternal;

    .line 71
    .line 72
    return-void
.end method

.method public static logDebug(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/timedetector/GnssTimeUpdateService;->D:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "GnssTimeUpdateService"

    .line 6
    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string p3, "GnssTimeUpdateService"

    .line 4
    .line 5
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string p3, "mLastSuggestedGnssTime: "

    .line 15
    .line 16
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p3, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLastSuggestedGnssTime:Landroid/app/time/UnixEpochTime;

    .line 20
    .line 21
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter p1

    .line 34
    :try_start_0
    const-string/jumbo p3, "state: "

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p3, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    if-eqz p3, :cond_1

    .line 43
    .line 44
    const-string/jumbo p3, "time updates enabled"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const-string p3, "alarm enabled"

    .line 54
    .line 55
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    const-string p1, "Log:"

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    .line 65
    .line 66
    invoke-virtual {p0, p2}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/timedetector/GnssTimeUpdateServiceShellCommand;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/timedetector/GnssTimeUpdateServiceShellCommand;-><init>(Lcom/android/server/timedetector/GnssTimeUpdateService;)V

    .line 4
    .line 5
    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move-object v4, p3

    .line 10
    move-object v5, p4

    .line 11
    move-object v6, p5

    .line 12
    move-object v7, p6

    .line 13
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public startGnssListeningInternal()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    .line 2
    .line 3
    const-string v1, "gps"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->hasProvider(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "GPS provider does not exist on this device"

    .line 12
    .line 13
    const-string v1, "GnssTimeUpdateService"

    .line 14
    .line 15
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const-string p0, "Already listening for GNSS updates"

    .line 34
    .line 35
    invoke-static {p0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logDebug(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return v2

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmListener:Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda1;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget-object v3, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 47
    .line 48
    invoke-virtual {v3, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 49
    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmListener:Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda1;

    .line 53
    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->startGnssListeningLocked()V

    .line 55
    .line 56
    .line 57
    monitor-exit v0

    .line 58
    return v2

    .line 59
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
.end method

.method public final startGnssListeningLocked()V
    .locals 4

    .line 1
    const-string/jumbo v0, "startGnssListeningLocked()"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logDebug(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/GnssTimeUpdateService;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    .line 15
    .line 16
    new-instance v1, Landroid/location/LocationRequest$Builder;

    .line 17
    .line 18
    const-wide v2, 0x7fffffffffffffffL

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v2, v3}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    .line 24
    .line 25
    .line 26
    const-wide/16 v2, 0x0

    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Landroid/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mExecutor:Ljava/util/concurrent/Executor;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    const-string v3, "gps"

    .line 41
    .line 42
    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
