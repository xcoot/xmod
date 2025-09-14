.class public final Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;->this$0:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;->this$0:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;->this$0:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;

    .line 8
    iget-object v2, v1, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    .line 10
    if-eq v2, p0, :cond_0

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, v1, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLastLocation:Landroid/location/Location;

    .line 18
    if-nez v1, :cond_1

    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :cond_1
    new-instance v1, Landroid/location/Location;

    .line 24
    iget-object v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;->this$0:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;

    .line 26
    iget-object v2, v2, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLastLocation:Landroid/location/Location;

    .line 28
    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    move-result-wide v2

    .line 35
    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 41
    move-result-wide v2

    .line 42
    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 45
    invoke-virtual {v1}, Landroid/location/Location;->hasSpeed()Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 51
    invoke-virtual {v1}, Landroid/location/Location;->removeSpeed()V

    .line 54
    invoke-virtual {v1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_2

    .line 60
    invoke-virtual {v1}, Landroid/location/Location;->removeSpeedAccuracy()V

    .line 63
    :cond_2
    invoke-virtual {v1}, Landroid/location/Location;->hasBearing()Z

    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_3

    .line 69
    invoke-virtual {v1}, Landroid/location/Location;->removeBearing()V

    .line 72
    invoke-virtual {v1}, Landroid/location/Location;->hasBearingAccuracy()Z

    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_3

    .line 78
    invoke-virtual {v1}, Landroid/location/Location;->removeBearingAccuracy()V

    .line 81
    :cond_3
    invoke-virtual {v1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    .line 84
    move-result-object v2

    .line 85
    if-nez v2, :cond_4

    .line 87
    new-instance v2, Landroid/os/Bundle;

    .line 89
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 92
    :cond_4
    const-string/jumbo v3, "isThrottling"

    .line 95
    const/4 v4, 0x1

    .line 96
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    invoke-virtual {v1, v2}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 102
    iget-object v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;->this$0:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;

    .line 104
    iput-object v1, v2, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLastLocation:Landroid/location/Location;

    .line 106
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    .line 109
    move-result-object v2

    .line 110
    iget-object v3, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;->this$0:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;

    .line 112
    iget-wide v5, v3, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mThrottlingIntervalMs:J

    .line 114
    invoke-virtual {v2, p0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 117
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget-object p0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;->this$0:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;

    .line 120
    new-array v0, v4, [Landroid/location/Location;

    .line 122
    const/4 v2, 0x0

    .line 123
    aput-object v1, v0, v2

    .line 125
    invoke-static {v0}, Landroid/location/LocationResult;->wrap([Landroid/location/Location;)Landroid/location/LocationResult;

    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->reportLocation(Landroid/location/LocationResult;)V

    .line 132
    return-void

    .line 133
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    throw p0
.end method
