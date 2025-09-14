.class public final Lcom/android/server/timezonedetector/EnvironmentImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;


# instance fields
.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final addDebugLogEntry(Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/SystemTimeZone;->sTimeZoneDebugLog:Landroid/util/LocalLog;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final dumpDebugLog(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/SystemTimeZone;->sTimeZoneDebugLog:Landroid/util/LocalLog;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final elapsedRealtimeMillis()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final getDeviceTimeZone()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "persist.sys.timezone"

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final getDeviceTimeZoneConfidence()I
    .locals 2

    .line 1
    sget-object p0, Lcom/android/server/SystemTimeZone;->sTimeZoneDebugLog:Landroid/util/LocalLog;

    .line 2
    .line 3
    const-string/jumbo p0, "persist.sys.timezone_confidence"

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-ltz p0, :cond_0

    .line 12
    .line 13
    const/16 v1, 0x64

    .line 14
    .line 15
    if-gt p0, v1, :cond_0

    .line 16
    .line 17
    move v0, p0

    .line 18
    :cond_0
    return v0
.end method

.method public final runAsync(Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setDeviceTimeZoneAndConfidence(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-class p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/alarm/AlarmManagerService;->setTimeZoneImpl(ILjava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
