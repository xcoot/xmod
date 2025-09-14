.class public final synthetic Lcom/android/server/BatteryService$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic f$0:Lcom/android/server/BatteryService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/BatteryService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final update(Lvendor/samsung/hardware/health/SehHealthInfo;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/BatteryService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 7
    .line 8
    const-string v1, "HealthInfoUpdate"

    .line 9
    .line 10
    const-wide/32 v2, 0x80000

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "BatteryChargeCounter"

    .line 17
    .line 18
    iget v4, v0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 19
    .line 20
    const-wide/32 v5, 0x20000

    .line 21
    .line 22
    .line 23
    invoke-static {v5, v6, v1, v4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    const-string v1, "BatteryCurrent"

    .line 27
    .line 28
    iget v4, v0, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    .line 29
    .line 30
    invoke-static {v5, v6, v1, v4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    const-string v1, "PlugType"

    .line 34
    .line 35
    invoke-static {p1}, Lcom/android/server/BatteryService;->plugType(Lvendor/samsung/hardware/health/SehHealthInfo;)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-static {v5, v6, v1, v4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    const-string v1, "BatteryStatus"

    .line 43
    .line 44
    iget v4, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 45
    .line 46
    invoke-static {v5, v6, v1, v4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 50
    .line 51
    monitor-enter v1

    .line 52
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 53
    .line 54
    if-nez v4, :cond_0

    .line 55
    .line 56
    iput-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 57
    .line 58
    iput-object p1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_1

    .line 72
    :cond_0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 73
    .line 74
    invoke-static {p0, p1}, Lcom/android/server/health/Utils;->copySehV1Battery(Lvendor/samsung/hardware/health/SehHealthInfo;Lvendor/samsung/hardware/health/SehHealthInfo;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    throw p0
.end method
