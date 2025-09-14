.class public final Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;
.super Landroid/view/DisplayEventReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mListener:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-direct {p0, p1, v0, v1}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;II)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFrameRateOverridesChanged(JJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 6
    .line 7
    monitor-enter p1

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    .line 11
    .line 12
    invoke-virtual {p0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    monitor-exit p1

    .line 21
    goto :goto_1

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    iget-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 25
    .line 26
    invoke-static {p5, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iput-object p5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 36
    .line 37
    .line 38
    :goto_0
    monitor-exit p1

    .line 39
    :goto_1
    return-void

    .line 40
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public final onHdcpLevelsChanged(JII)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    goto :goto_1

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    if-le p3, p4, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const-string p0, "HDCP connected level: "

    .line 30
    .line 31
    const-string p1, " is larger than max level: "

    .line 32
    .line 33
    const-string p2, ", ignoring request."

    .line 34
    .line 35
    invoke-static {p3, p4, p0, p1, p2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string p1, "LocalDisplayAdapter"

    .line 40
    .line 41
    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mConnectedHdcpLevel:I

    .line 46
    .line 47
    if-ne p1, p3, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iput p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mConnectedHdcpLevel:I

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 53
    .line 54
    .line 55
    :goto_0
    monitor-exit v0

    .line 56
    :goto_1
    return-void

    .line 57
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
.end method

.method public final onHotplug(JJZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 6
    .line 7
    monitor-enter p1

    .line 8
    if-eqz p5, :cond_0

    .line 9
    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 11
    .line 12
    invoke-virtual {p0, p3, p4}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(J)V

    .line 13
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
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 19
    .line 20
    iget-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    .line 21
    .line 22
    invoke-virtual {p2, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    iget-object p5, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    .line 31
    .line 32
    invoke-virtual {p5, p3, p4}, Landroid/util/LongSparseArray;->remove(J)V

    .line 33
    .line 34
    .line 35
    const/4 p3, 0x3

    .line 36
    invoke-virtual {p0, p2, p3}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    monitor-exit p1

    .line 40
    return-void

    .line 41
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method

.method public final onHotplugConnectionError(JI)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/display/notifications/DisplayNotificationManager;->onHotplugConnectionError()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onModeChanged(JJIJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 6
    .line 7
    monitor-enter p1

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    .line 11
    .line 12
    invoke-virtual {p0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    monitor-exit p1

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const p2, 0x4e6e6b28    # 1.0E9f

    .line 25
    .line 26
    .line 27
    long-to-float p3, p6

    .line 28
    div-float/2addr p2, p3

    .line 29
    invoke-virtual {p0, p2, p5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->onActiveDisplayModeChangedLocked(FI)V

    .line 30
    .line 31
    .line 32
    monitor-exit p1

    .line 33
    :goto_0
    return-void

    .line 34
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method
