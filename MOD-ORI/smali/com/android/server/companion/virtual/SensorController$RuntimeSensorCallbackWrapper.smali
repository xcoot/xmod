.class public final Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/sensors/SensorManagerInternal$RuntimeSensorCallback;


# instance fields
.field public final mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

.field public final synthetic this$0:Lcom/android/server/companion/virtual/SensorController;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/virtual/SensorController;Landroid/companion/virtual/sensor/IVirtualSensorCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(IZII)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    .line 2
    .line 3
    const/16 v1, -0x16

    .line 4
    .line 5
    const-string v2, "SensorController"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "No sensor callback configured for sensor handle "

    .line 10
    .line 11
    invoke-static {p1, p0, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    .line 16
    .line 17
    iget-object v3, v0, Lcom/android/server/companion/virtual/SensorController;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 18
    .line 19
    iget v4, v0, Lcom/android/server/companion/virtual/SensorController;->mVirtualDeviceId:I

    .line 20
    .line 21
    invoke-virtual {v3, v4, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getVirtualSensor(II)Landroid/companion/virtual/sensor/VirtualSensor;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string p2, "No sensor found for deviceId="

    .line 30
    .line 31
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget p2, v0, Lcom/android/server/companion/virtual/SensorController;->mVirtualDeviceId:I

    .line 35
    .line 36
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p2, " and sensor handle="

    .line 40
    .line 41
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    return v1

    .line 55
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    .line 56
    .line 57
    invoke-interface {p0, v3, p2, p3, p4}, Landroid/companion/virtual/sensor/IVirtualSensorCallback;->onConfigurationChanged(Landroid/companion/virtual/sensor/VirtualSensor;ZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    const/4 p0, 0x0

    .line 61
    return p0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    const-string p1, "Failed to call sensor callback: "

    .line 64
    .line 65
    invoke-static {p1, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/high16 p0, -0x80000000

    .line 69
    .line 70
    return p0
.end method

.method public final onDirectChannelConfigured(III)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    .line 2
    .line 3
    const/16 v1, -0x16

    .line 4
    .line 5
    const-string v2, "SensorController"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "No runtime sensor callback configured."

    .line 10
    .line 11
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    .line 16
    .line 17
    iget-object v3, v0, Lcom/android/server/companion/virtual/SensorController;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 18
    .line 19
    iget v4, v0, Lcom/android/server/companion/virtual/SensorController;->mVirtualDeviceId:I

    .line 20
    .line 21
    invoke-virtual {v3, v4, p2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getVirtualSensor(II)Landroid/companion/virtual/sensor/VirtualSensor;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string p1, "No sensor found for deviceId="

    .line 30
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget p1, v0, Lcom/android/server/companion/virtual/SensorController;->mVirtualDeviceId:I

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, " and sensor handle="

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    return v1

    .line 55
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    .line 56
    .line 57
    invoke-interface {p0, p1, v3, p3, p2}, Landroid/companion/virtual/sensor/IVirtualSensorCallback;->onDirectChannelConfigured(ILandroid/companion/virtual/sensor/VirtualSensor;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    if-nez p3, :cond_2

    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    return p0

    .line 64
    :cond_2
    return p2

    .line 65
    :catch_0
    move-exception p0

    .line 66
    const-string p1, "Failed to call sensor callback: "

    .line 67
    .line 68
    invoke-static {p1, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/high16 p0, -0x80000000

    .line 72
    .line 73
    return p0
.end method

.method public final onDirectChannelCreated(Landroid/os/ParcelFileDescriptor;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    .line 2
    .line 3
    const/16 v1, -0x16

    .line 4
    .line 5
    const-string v2, "SensorController"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v0, "No sensor callback for virtual deviceId "

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualDeviceId:I

    .line 19
    .line 20
    invoke-static {p1, p0, v2}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    if-nez p1, :cond_1

    .line 25
    .line 26
    const-string p0, "Received invalid ParcelFileDescriptor"

    .line 27
    .line 28
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return v1

    .line 32
    :cond_1
    sget-object v0, Lcom/android/server/companion/virtual/SensorController;->sNextDirectChannelHandle:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {p1}, Landroid/os/SharedMemory;->fromFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/os/SharedMemory;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    .line 43
    .line 44
    invoke-interface {p0, v0, p1}, Landroid/companion/virtual/sensor/IVirtualSensorCallback;->onDirectChannelCreated(ILandroid/os/SharedMemory;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    return v0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    const-string p1, "Failed to call sensor callback: "

    .line 50
    .line 51
    invoke-static {p1, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/high16 p0, -0x80000000

    .line 55
    .line 56
    return p0
.end method

.method public final onDirectChannelDestroyed(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    .line 2
    .line 3
    const-string v1, "SensorController"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v0, "No sensor callback for virtual deviceId "

    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    .line 15
    .line 16
    iget p0, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualDeviceId:I

    .line 17
    .line 18
    invoke-static {p1, p0, v1}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/companion/virtual/sensor/IVirtualSensorCallback;->onDirectChannelDestroyed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    const-string p1, "Failed to call sensor callback: "

    .line 28
    .line 29
    invoke-static {p1, p0, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method
