.class public final Lcom/android/server/companion/virtual/camera/VirtualCameraController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCameraPolicy:I

.field public final mCameras:Ljava/util/Map;

.field public final mDeviceId:I

.field public final mServiceLock:Ljava/lang/Object;

.field public mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;


# direct methods
.method public constructor <init>(Landroid/companion/virtualcamera/IVirtualCameraService;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    .line 18
    iput-object p1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    .line 20
    iput p2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameraPolicy:I

    .line 22
    iput p3, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mDeviceId:I

    .line 24
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    const-string v0, "VirtualCameraController"

    .line 3
    const-string v1, "Virtual camera service died."

    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    iput-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    .line 17
    monitor-enter v1

    .line 18
    :try_start_1
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    .line 20
    check-cast p0, Landroid/util/ArrayMap;

    .line 22
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 25
    monitor-exit v1

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p0

    .line 30
    :catchall_1
    move-exception p0

    .line 31
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 32
    throw p0
.end method

.method public final close()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    .line 6
    check-cast v1, Landroid/util/ArrayMap;

    .line 8
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->connectVirtualCameraServiceIfNeeded()V

    .line 17
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    .line 19
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    iget-object v2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    .line 22
    check-cast v2, Landroid/util/ArrayMap;

    .line 24
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v2

    .line 32
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    iget-object v4, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    .line 46
    check-cast v4, Landroid/companion/virtualcamera/IVirtualCameraService$Stub$Proxy;

    .line 48
    invoke-virtual {v4, v3}, Landroid/companion/virtualcamera/IVirtualCameraService$Stub$Proxy;->unregisterCamera(Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :catch_0
    move-exception v3

    .line 55
    :try_start_3
    const-string v4, "VirtualCameraController"

    .line 57
    const-string/jumbo v5, "close(): Camera failed to be removed on camera service."

    .line 60
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    :try_start_4
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    .line 67
    check-cast v1, Landroid/util/ArrayMap;

    .line 69
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 72
    goto :goto_2

    .line 73
    :catchall_1
    move-exception p0

    .line 74
    goto :goto_3

    .line 75
    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 76
    :try_start_6
    throw p0

    .line 77
    :cond_1
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 78
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    .line 80
    monitor-enter v1

    .line 81
    const/4 v0, 0x0

    .line 82
    :try_start_7
    iput-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    .line 84
    monitor-exit v1

    .line 85
    return-void

    .line 86
    :catchall_2
    move-exception p0

    .line 87
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 88
    throw p0

    .line 89
    :goto_3
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 90
    throw p0
.end method

.method public final connectVirtualCameraService()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    const-string/jumbo v2, "virtual_camera"

    .line 8
    invoke-static {v2}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 11
    move-result-object v2

    .line 12
    if-nez v2, :cond_0

    .line 14
    const-string p0, "VirtualCameraController"

    .line 16
    const-string/jumbo v2, "connectVirtualCameraService: Failed to connect to the virtual camera service"

    .line 19
    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_3

    .line 28
    :catch_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/4 v3, 0x0

    .line 31
    :try_start_1
    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 34
    invoke-static {v2}, Landroid/companion/virtualcamera/IVirtualCameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtualcamera/IVirtualCameraService;

    .line 37
    move-result-object v2

    .line 38
    iput-object v2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    goto :goto_2

    .line 44
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    goto :goto_0

    .line 48
    :goto_2
    return-void

    .line 49
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    throw p0
.end method

.method public final connectVirtualCameraServiceIfNeeded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    .line 6
    if-nez v1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->connectVirtualCameraService()V

    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    .line 16
    if-eqz p0, :cond_1

    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 22
    const-string v1, "Virtual camera service is not connected."

    .line 24
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final registerCameraWithService(Landroid/companion/virtual/camera/VirtualCameraConfig;)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;

    .line 3
    invoke-direct {v0}, Landroid/companion/virtualcamera/VirtualCameraConfiguration;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getStreamConfigs()Ljava/util/Set;

    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$$ExternalSyntheticLambda0;

    .line 16
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$$ExternalSyntheticLambda1;

    .line 25
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, [Landroid/companion/virtualcamera/SupportedStreamConfiguration;

    .line 34
    iput-object v1, v0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->supportedStreamConfigs:[Landroid/companion/virtualcamera/SupportedStreamConfiguration;

    .line 36
    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getSensorOrientation()I

    .line 39
    move-result v1

    .line 40
    iput v1, v0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->sensorOrientation:I

    .line 42
    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getLensFacing()I

    .line 45
    move-result v1

    .line 46
    iput v1, v0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->lensFacing:I

    .line 48
    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getCallback()Landroid/companion/virtual/camera/IVirtualCameraCallback;

    .line 51
    move-result-object v1

    .line 52
    new-instance v2, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$1;

    .line 54
    invoke-direct {v2, v1}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$1;-><init>(Landroid/companion/virtual/camera/IVirtualCameraCallback;)V

    .line 57
    iput-object v2, v0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->virtualCameraCallback:Landroid/companion/virtualcamera/IVirtualCameraCallback;

    .line 59
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    .line 61
    monitor-enter v1

    .line 62
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    .line 64
    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getCallback()Landroid/companion/virtual/camera/IVirtualCameraCallback;

    .line 67
    move-result-object p1

    .line 68
    invoke-interface {p1}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->asBinder()Landroid/os/IBinder;

    .line 71
    move-result-object p1

    .line 72
    iget p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mDeviceId:I

    .line 74
    check-cast v2, Landroid/companion/virtualcamera/IVirtualCameraService$Stub$Proxy;

    .line 76
    invoke-virtual {v2, p1, v0, p0}, Landroid/companion/virtualcamera/IVirtualCameraService$Stub$Proxy;->registerCamera(Landroid/os/IBinder;Landroid/companion/virtualcamera/VirtualCameraConfiguration;I)Z

    .line 79
    move-result p0

    .line 80
    monitor-exit v1

    .line 81
    return p0

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw p0
.end method

.method public final unregisterCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getCallback()Landroid/companion/virtual/camera/IVirtualCameraCallback;

    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p1}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->asBinder()Landroid/os/IBinder;

    .line 11
    move-result-object p1

    .line 12
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    .line 14
    check-cast v1, Landroid/util/ArrayMap;

    .line 16
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 22
    const-string p0, "VirtualCameraController"

    .line 24
    const-string p1, "Virtual camera was not registered."

    .line 26
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->connectVirtualCameraServiceIfNeeded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :try_start_1
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    .line 37
    monitor-enter v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :try_start_2
    iget-object v2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    .line 40
    check-cast v2, Landroid/companion/virtualcamera/IVirtualCameraService$Stub$Proxy;

    .line 42
    invoke-virtual {v2, p1}, Landroid/companion/virtualcamera/IVirtualCameraService$Stub$Proxy;->unregisterCamera(Landroid/os/IBinder;)V

    .line 45
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    .line 48
    check-cast p0, Landroid/util/ArrayMap;

    .line 50
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    goto :goto_1

    .line 54
    :catch_0
    move-exception p0

    .line 55
    goto :goto_0

    .line 56
    :catchall_1
    move-exception p0

    .line 57
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 58
    :try_start_5
    throw p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 59
    :goto_0
    :try_start_6
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 62
    :goto_1
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 65
    throw p0
.end method
