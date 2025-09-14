.class final Lcom/android/server/display/DisplayManagerService$LocalService;
.super Landroid/hardware/display/DisplayManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerInternal;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final clearOldDisplayDevice()V
    .locals 0

    .line 1
    return-void
.end method

.method public final createSpegVirtualDisplay(Ljava/lang/String;ILandroid/hardware/display/IVirtualDisplayCallback;)I
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    sget-boolean p0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 10
    const/4 v1, -0x1

    .line 11
    if-nez p0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    move-result p0

    .line 18
    const/16 v2, 0x3e8

    .line 20
    if-eq p0, v2, :cond_1

    .line 22
    if-eqz p0, :cond_1

    .line 24
    const-string p0, "SPEG"

    .line 26
    const-string p1, "Try to create display from unprivileged uid"

    .line 28
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1, p0}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfoInternal(II)Landroid/view/DisplayInfo;

    .line 36
    move-result-object v1

    .line 37
    new-instance v2, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 39
    const-string v3, "SpegVirtualDisplay"

    .line 41
    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    .line 44
    move-result v4

    .line 45
    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    .line 48
    move-result v5

    .line 49
    iget v1, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 51
    invoke-direct {v2, v3, v4, v5, v1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    .line 54
    const v1, 0x10001c8

    .line 57
    invoke-virtual {v2, v1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 60
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v2, v1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setUniqueId(Ljava/lang/String;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 67
    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->build()Landroid/hardware/display/VirtualDisplayConfig;

    .line 70
    move-result-object v9

    .line 71
    invoke-static {p1, p0, v9}, Lcom/android/server/display/VirtualDisplayAdapter;->generateDisplayUniqueId(Ljava/lang/String;ILandroid/hardware/display/VirtualDisplayConfig;)Ljava/lang/String;

    .line 74
    move-result-object v5

    .line 75
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 78
    move-result-wide v10

    .line 79
    :try_start_0
    iget-object p0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 81
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 82
    const/4 v2, 0x0

    .line 83
    const/4 v6, 0x0

    .line 84
    const/4 v7, 0x0

    .line 85
    const v8, 0x10001c8

    .line 88
    move-object v1, p3

    .line 89
    move v3, p2

    .line 90
    move-object v4, p1

    .line 91
    :try_start_1
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/display/DisplayManagerService;->createVirtualDisplayLocked(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;Landroid/companion/virtual/IVirtualDevice;Landroid/view/Surface;ILandroid/hardware/display/VirtualDisplayConfig;)I

    .line 94
    move-result v1

    .line 95
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    :goto_0
    return v1

    .line 100
    :catchall_0
    move-exception p1

    .line 101
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 103
    :catchall_1
    move-exception p0

    .line 104
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    throw p0
.end method

.method public final createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Ljava/lang/String;)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    const/4 v3, 0x0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    move-object v6, p5

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mcreateVirtualDisplayInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Ljava/lang/String;)I

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final getAmbientLightSensorData(I)Landroid/hardware/display/DisplayManagerInternal$AmbientLightSensorData;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 14
    move-result-object p0

    .line 15
    const/4 p1, 0x0

    .line 16
    if-nez p0, :cond_0

    .line 18
    monitor-exit v0

    .line 19
    return-object p1

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 24
    if-nez p0, :cond_1

    .line 26
    monitor-exit v0

    .line 27
    return-object p1

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    .line 31
    move-result-object p0

    .line 32
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

    .line 34
    new-instance p1, Landroid/hardware/display/DisplayManagerInternal$AmbientLightSensorData;

    .line 36
    iget-object v1, p0, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    .line 38
    iget-object p0, p0, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    .line 40
    invoke-direct {p1, v1, p0}, Landroid/hardware/display/DisplayManagerInternal$AmbientLightSensorData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    monitor-exit v0

    .line 44
    return-object p1

    .line 45
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.method public final getBrightnessLearningMaxLimitCount()[I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 17
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 19
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 21
    if-eqz p0, :cond_0

    .line 23
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessLimitCount:[I

    .line 25
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, [I

    .line 31
    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v2, 0x0

    .line 36
    :goto_0
    monitor-exit v0

    .line 37
    return-object v2

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public final getCurrentScreenBrightness()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 17
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 19
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 21
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    .line 24
    move-result p0

    .line 25
    monitor-exit v0

    .line 26
    return p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final getDisplayGroupIds()Landroid/util/IntArray;
    .locals 6

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 6
    new-instance v1, Landroid/util/IntArray;

    .line 8
    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    .line 11
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 13
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 15
    monitor-enter v2

    .line 16
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 18
    iget-object v3, v3, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 20
    new-instance v4, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda2;

    .line 22
    const/4 v5, 0x1

    .line 23
    invoke-direct {v4, p0, v0, v1, v5}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 26
    const/4 p0, 0x1

    .line 27
    invoke-virtual {v3, v4, p0}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    .line 30
    monitor-exit v2

    .line 31
    return-object v1

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final getDisplayIdToMirror(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 14
    move-result-object p1

    .line 15
    const/4 v1, -0x1

    .line 16
    if-nez p1, :cond_0

    .line 18
    monitor-exit v0

    .line 19
    return v1

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_3

    .line 22
    :cond_0
    iget-object v3, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 24
    iget p1, p1, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    .line 26
    const/4 v4, 0x0

    .line 27
    if-ne p1, v2, :cond_1

    .line 29
    move p1, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move p1, v4

    .line 32
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 35
    move-result-object v5

    .line 36
    iget v5, v5, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 38
    and-int/lit16 v5, v5, 0x80

    .line 40
    if-nez v5, :cond_5

    .line 42
    if-eqz p1, :cond_2

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->isWindowManagerMirroringLocked()Z

    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_3

    .line 51
    goto :goto_2

    .line 52
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->getDisplayIdToMirrorLocked()I

    .line 55
    move-result p1

    .line 56
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 58
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 60
    invoke-virtual {p0, p1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 63
    move-result-object p0

    .line 64
    if-nez p0, :cond_4

    .line 66
    goto :goto_1

    .line 67
    :cond_4
    move v4, p1

    .line 68
    :goto_1
    monitor-exit v0

    .line 69
    return v4

    .line 70
    :cond_5
    :goto_2
    monitor-exit v0

    .line 71
    return v1

    .line 72
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw p0
.end method

.method public final getDisplayInfo(I)Landroid/view/DisplayInfo;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 6
    move-result v0

    .line 7
    sget-boolean v1, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfoInternal(II)Landroid/view/DisplayInfo;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final getDisplayNativePrimaries(I)Landroid/view/SurfaceControl$DisplayPrimaries;
    .locals 3

    .line 1
    const-string v0, "Invalid displayId="

    .line 3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 5
    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 16
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {p0}, Landroid/view/SurfaceControl;->getDisplayNativePrimaries(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayPrimaries;

    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    throw p0

    .line 42
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw p0
.end method

.method public final getDisplayPosition(I)Landroid/graphics/Point;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 17
    new-instance p1, Landroid/graphics/Point;

    .line 19
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    .line 21
    invoke-direct {p1, p0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    .line 24
    monitor-exit v0

    .line 25
    return-object p1

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    monitor-exit v0

    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0

    .line 31
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final getDisplaySurfaceDefaultSize(I)Landroid/graphics/Point;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    .line 11
    move-result-object p0

    .line 12
    if-nez p0, :cond_0

    .line 14
    monitor-exit v0

    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplaySurfaceDefaultSizeLocked()Landroid/graphics/Point;

    .line 22
    move-result-object p0

    .line 23
    monitor-exit v0

    .line 24
    return-object p0

    .line 25
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final getDisplayWindowPolicyController(I)Landroid/window/DisplayWindowPolicyController;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 16
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 18
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroid/util/Pair;

    .line 26
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 28
    check-cast p0, Landroid/window/DisplayWindowPolicyController;

    .line 30
    monitor-exit v0

    .line 31
    return-object p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    monitor-exit v0

    .line 35
    const/4 p0, 0x0

    .line 36
    return-object p0

    .line 37
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method public final getDisplayedContentSample(IJJ)Landroid/hardware/display/DisplayedContentSample;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    move v1, p1

    .line 4
    move-wide v2, p2

    .line 5
    move-wide v4, p4

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/DisplayManagerService;->getDisplayedContentSampleInternal(IJJ)Landroid/hardware/display/DisplayedContentSample;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final getDisplayedContentSamplingAttributes(I)Landroid/hardware/display/DisplayedContentSamplingAttributes;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayedContentSamplingAttributesInternal(I)Landroid/hardware/display/DisplayedContentSamplingAttributes;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getHostUsiVersion(I)Landroid/hardware/input/HostUsiVersion;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 14
    move-result-object p0

    .line 15
    if-nez p0, :cond_0

    .line 17
    monitor-exit v0

    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 24
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    .line 27
    move-result-object p0

    .line 28
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    .line 30
    monitor-exit v0

    .line 31
    return-object p0

    .line 32
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final getLastAutomaticScreenBrightness()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 17
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 19
    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mLastAutomaticScreenBrightness:F

    .line 21
    monitor-exit v0

    .line 22
    return p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final getLastUserSetScreenBrightnessTime()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 17
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    sget-wide v1, Lcom/android/server/display/DisplayPowerController;->sLastScreenBrightnessSettingChangedTime:J

    .line 24
    monitor-exit v0

    .line 25
    return-wide v1

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 15
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 17
    invoke-virtual {p2, p0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 20
    :cond_0
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final getPossibleDisplayInfo(I)Ljava/util/Set;
    .locals 7

    .line 1
    const-string/jumbo v0, "supportedStates="

    .line 4
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 6
    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    new-instance v2, Landroid/util/ArraySet;

    .line 11
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 14
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 16
    iget-object v3, v3, Lcom/android/server/display/DisplayManagerService;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManagerInternal;

    .line 18
    if-nez v3, :cond_0

    .line 20
    const-string p0, "DisplayManagerService"

    .line 22
    const-string p1, "Can\'t get supported states since DeviceStateManager not ready"

    .line 24
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    monitor-exit v1

    .line 28
    return-object v2

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {v3}, Landroid/hardware/devicestate/DeviceStateManagerInternal;->getSupportedStateIdentifiers()[I

    .line 34
    move-result-object v3

    .line 35
    const-string v4, "DisplayManagerService"

    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    invoke-static {v4, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    array-length v0, v3

    .line 57
    const/4 v4, 0x0

    .line 58
    :goto_0
    if-ge v4, v0, :cond_2

    .line 60
    aget v5, v3, v4

    .line 62
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 64
    iget-object v6, v6, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 66
    invoke-virtual {v6, v5, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayInfoForStateLocked(II)Landroid/view/DisplayInfo;

    .line 69
    move-result-object v5

    .line 70
    if-eqz v5, :cond_1

    .line 72
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    const-string p0, "DisplayManagerService"

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    const-string/jumbo v0, "possibleInfos="

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    monitor-exit v1

    .line 102
    return-object v2

    .line 103
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    throw p0
.end method

.method public final getRealDisplayToken(I)Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getRefreshRateForDisplayAndSensor(ILjava/lang/String;Ljava/lang/String;)Landroid/view/SurfaceControl$RefreshRateRange;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 14
    return-object v0

    .line 15
    :cond_0
    const/4 v2, 0x0

    .line 16
    invoke-static {v1, p3, p2, v2}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/Sensor;

    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_1

    .line 22
    return-object v0

    .line 23
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 25
    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 27
    monitor-enter v1

    .line 28
    :try_start_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 30
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-virtual {p0, p1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 36
    move-result-object p0

    .line 37
    if-nez p0, :cond_2

    .line 39
    monitor-exit v1

    .line 40
    return-object v0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 45
    if-nez p0, :cond_3

    .line 47
    monitor-exit v1

    .line 48
    return-object v0

    .line 49
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    .line 52
    move-result-object p0

    .line 53
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/config/SensorData;

    .line 55
    if-eqz p0, :cond_7

    .line 57
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    move-result p1

    .line 61
    xor-int/2addr p1, v2

    .line 62
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    move-result v3

    .line 66
    xor-int/2addr v2, v3

    .line 67
    if-nez p1, :cond_4

    .line 69
    if-eqz v2, :cond_7

    .line 71
    :cond_4
    if-eqz p1, :cond_5

    .line 73
    iget-object p1, p0, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_7

    .line 81
    :cond_5
    if-eqz v2, :cond_6

    .line 83
    iget-object p1, p0, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    .line 85
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_7

    .line 91
    :cond_6
    new-instance p1, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 93
    iget p2, p0, Lcom/android/server/display/config/SensorData;->minRefreshRate:F

    .line 95
    iget p0, p0, Lcom/android/server/display/config/SensorData;->maxRefreshRate:F

    .line 97
    invoke-direct {p1, p2, p0}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 100
    monitor-exit v1

    .line 101
    return-object p1

    .line 102
    :cond_7
    monitor-exit v1

    .line 103
    return-object v0

    .line 104
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    throw p0

    .line 106
    :catchall_1
    move-exception p0

    .line 107
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 108
    throw p0
.end method

.method public final getRefreshRateLimitations(I)Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    .line 11
    move-result-object p0

    .line 12
    if-nez p0, :cond_0

    .line 14
    monitor-exit v0

    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    .line 22
    move-result-object p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    .line 26
    return-object p0

    .line 27
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p0
.end method

.method public final getRefreshRateSwitchingType()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 5
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->getModeSwitchingType()I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final hideCutoutForFoldable(Z)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    const-string/jumbo v0, "hideCutoutForFoldableInternal, hideCutout="

    .line 6
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 16
    move-result-object v2

    .line 17
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 19
    invoke-virtual {v3, v4, v4}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 22
    move-result-object v3

    .line 23
    if-eqz v2, :cond_1

    .line 25
    if-nez v3, :cond_0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v4, "DisplayManagerService"

    .line 30
    new-instance v5, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    invoke-static {v4, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 47
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 49
    iget-object v0, v0, Lcom/android/server/display/LogicalDisplayMapper;->mSyntheticModeManager:Lcom/android/server/display/mode/SyntheticModeManager;

    .line 51
    invoke-virtual {v2, p1, v0}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/mode/SyntheticModeManager;)V

    .line 54
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 56
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 58
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyntheticModeManager:Lcom/android/server/display/mode/SyntheticModeManager;

    .line 60
    invoke-virtual {v3, p1, p0}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/mode/SyntheticModeManager;)V

    .line 63
    monitor-exit v1

    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_2

    .line 67
    :cond_1
    :goto_0
    monitor-exit v1

    .line 68
    :goto_1
    return-void

    .line 69
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p0
.end method

.method public final ignoreProximitySensorUntilChanged()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iget v2, v0, Lcom/android/server/display/DisplayManagerService;->mDualScreenPolicy:I

    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v2, v3, :cond_0

    .line 13
    iget-object p0, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 21
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 23
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 25
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    .line 27
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 33
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 42
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 44
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 46
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    .line 48
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 51
    :goto_0
    return-void
.end method

.method public final initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iput-object p1, v1, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 10
    iput-object p3, v1, Lcom/android/server/display/DisplayManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 12
    iput-object p2, v1, Lcom/android/server/display/DisplayManagerService;->mPowerHandler:Landroid/os/Handler;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    new-instance p1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;

    .line 19
    const/4 p2, 0x0

    .line 20
    invoke-direct {p1, v1, p2}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    .line 23
    iget-object p2, v1, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 25
    const/4 p3, 0x1

    .line 26
    invoke-virtual {p2, p1, p3}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 32
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 34
    const/4 p1, 0x6

    .line 35
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw p0
.end method

.method public final isProximitySensorAvailable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 17
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 19
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 21
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 23
    if-eqz p0, :cond_0

    .line 25
    const/4 v1, 0x1

    .line 26
    :cond_0
    monitor-exit v0

    .line 27
    return v1

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

.method public final onEarlyInteractivityChange(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 5
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    .line 10
    if-eq v1, p1, :cond_0

    .line 12
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->finishStateTransitionLocked(Z)V

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final onOverlayChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 10
    new-instance v1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda5;

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v1, v2}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 16
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceRepository;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final onPresentation(IZ)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayPolicy:Lcom/android/server/display/ExternalDisplayPolicy;

    .line 5
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_6

    .line 17
    invoke-static {v1}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 23
    goto/16 :goto_3

    .line 25
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 26
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 28
    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 30
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 36
    goto/16 :goto_4

    .line 38
    :cond_1
    const/16 v0, 0x326

    .line 40
    if-eqz p2, :cond_4

    .line 42
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 44
    iget-object p2, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 46
    monitor-enter p2

    .line 47
    :try_start_1
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 49
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 52
    move-result p1

    .line 53
    if-ne p1, v2, :cond_2

    .line 55
    monitor-exit p2

    .line 56
    goto/16 :goto_4

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 62
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    .line 65
    move-result v1

    .line 66
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    iget-object p2, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 69
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    :try_start_2
    iget-object p2, p2, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 77
    move-result-object p2

    .line 78
    const-string/jumbo v2, "force_desktop_mode_on_external_displays"

    .line 81
    const/4 v3, 0x0

    .line 82
    invoke-static {p2, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 85
    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 86
    if-eqz p2, :cond_3

    .line 88
    const/16 p2, 0x8

    .line 90
    goto :goto_0

    .line 91
    :catchall_1
    :cond_3
    const/4 p2, 0x7

    .line 92
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 94
    iget-boolean v3, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 96
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    invoke-static {v0, p2, v1, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ)V

    .line 102
    sget-boolean v0, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    .line 104
    if-eqz v0, :cond_7

    .line 106
    const-string v0, "ExternalDisplayStatsService"

    .line 108
    const-string/jumbo v1, "logExternalDisplayPresentationStarted state="

    .line 111
    const-string v2, " newState="

    .line 113
    const-string v3, " mIsExternalDisplayUsedForAudio="

    .line 115
    invoke-static {p1, p2, v1, v2, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    move-result-object p1

    .line 119
    iget-boolean p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 121
    invoke-static {v0, p1, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 124
    goto :goto_4

    .line 125
    :goto_1
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    throw p0

    .line 127
    :cond_4
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 129
    iget-object p2, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 131
    monitor-enter p2

    .line 132
    :try_start_4
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 134
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 137
    move-result p1

    .line 138
    if-ne p1, v2, :cond_5

    .line 140
    monitor-exit p2

    .line 141
    goto :goto_4

    .line 142
    :catchall_2
    move-exception p0

    .line 143
    goto :goto_2

    .line 144
    :cond_5
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 146
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    .line 149
    move-result v1

    .line 150
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 151
    iget-object p2, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 153
    iget-boolean v2, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 155
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    const/16 p2, 0x9

    .line 160
    invoke-static {v0, p2, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ)V

    .line 163
    sget-boolean p2, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    .line 165
    if-eqz p2, :cond_7

    .line 167
    const-string p2, "ExternalDisplayStatsService"

    .line 169
    const-string/jumbo v0, "logExternalDisplayPresentationEnded state="

    .line 172
    const-string v2, " countOfExternalDisplays="

    .line 174
    const-string v3, " mIsExternalDisplayUsedForAudio="

    .line 176
    invoke-static {p1, v1, v0, v2, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    move-result-object p1

    .line 180
    iget-boolean p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 182
    invoke-static {p2, p1, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 185
    goto :goto_4

    .line 186
    :goto_2
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 187
    throw p0

    .line 188
    :catchall_3
    move-exception p0

    .line 189
    goto :goto_5

    .line 190
    :cond_6
    :goto_3
    :try_start_6
    monitor-exit v0

    .line 191
    :cond_7
    :goto_4
    return-void

    .line 192
    :goto_5
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 193
    throw p0
.end method

.method public final performTraversal(Landroid/view/SurfaceControl$Transaction;Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->performTraversalInternal(Landroid/view/SurfaceControl$Transaction;Landroid/util/SparseArray;)V

    .line 6
    return-void
.end method

.method public final persistBrightnessTrackerState()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 17
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eqz v1, :cond_0

    .line 27
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 29
    if-eqz p0, :cond_1

    .line 31
    iget-boolean v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mWriteAdaptiveBrightnessLongtermModelBuilderStateScheduled:Z

    .line 33
    if-nez v1, :cond_1

    .line 35
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    .line 37
    new-instance v3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda1;

    .line 39
    invoke-direct {v3, p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    .line 42
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    iput-boolean v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mWriteAdaptiveBrightnessLongtermModelBuilderStateScheduled:Z

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 50
    if-eqz p0, :cond_1

    .line 52
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    .line 54
    if-nez v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Lcom/android/server/display/BrightnessTracker$TrackerHandler;

    .line 58
    new-instance v3, Lcom/android/server/display/BrightnessTracker$$ExternalSyntheticLambda1;

    .line 60
    invoke-direct {v3, p0}, Lcom/android/server/display/BrightnessTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/BrightnessTracker;)V

    .line 63
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    iput-boolean v2, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    .line 68
    :cond_1
    :goto_0
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0
.end method

.method public final registerDisplayBrightnessListener(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)F
    .locals 3

    .line 1
    const-string v0, "DisplayManagerService"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "registerDisplayBrightnessListener: "

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 23
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 25
    monitor-enter v0

    .line 26
    if-eqz p1, :cond_0

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnessListeners:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    .line 38
    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;

    .line 45
    iget p0, p0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    .line 47
    monitor-exit v0

    .line 48
    return p0

    .line 49
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0
.end method

.method public final registerDisplayGroupListener(Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayGroupListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    return-void
.end method

.method public final registerDisplayOffloader(ILandroid/hardware/display/DisplayManagerInternal$DisplayOffloader;)Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;
    .locals 6

    .line 1
    const-string/jumbo v0, "setting doze state override: DisplayPowerController for displayId="

    .line 4
    const-string/jumbo v1, "registering DisplayOffloader: LogicalDisplay for displayId="

    .line 7
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 9
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 11
    iget-object v2, v2, Lcom/android/server/display/feature/DisplayManagerFlags;->mDisplayOffloadFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 13
    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-nez v2, :cond_0

    .line 20
    return-object v3

    .line 21
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 23
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 25
    monitor-enter v2

    .line 26
    :try_start_0
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 28
    iget-object v4, v4, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 30
    const/4 v5, 0x1

    .line 31
    invoke-virtual {v4, p1, v5}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 34
    move-result-object v4

    .line 35
    if-nez v4, :cond_1

    .line 37
    const-string p0, "DisplayManagerService"

    .line 39
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string p1, " is not found. No Op."

    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    monitor-exit v2

    .line 60
    return-object v3

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 65
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 67
    iget v1, v4, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 69
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object p0

    .line 73
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 75
    if-nez p0, :cond_2

    .line 77
    const-string p0, "DisplayManagerService"

    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    const-string p1, " is unavailable. No Op."

    .line 89
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    monitor-exit v2

    .line 100
    return-object v3

    .line 101
    :cond_2
    new-instance p1, Lcom/android/server/display/DisplayOffloadSessionImpl;

    .line 103
    invoke-direct {p1, p2, p0}, Lcom/android/server/display/DisplayOffloadSessionImpl;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;Lcom/android/server/display/DisplayPowerControllerInterface;)V

    .line 106
    iput-object p1, v4, Lcom/android/server/display/LogicalDisplay;->mDisplayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    .line 108
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 110
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    .line 112
    if-ne p1, p2, :cond_3

    .line 114
    goto :goto_0

    .line 115
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOnByDisplayOffload()V

    .line 118
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    .line 120
    :goto_0
    monitor-exit v2

    .line 121
    return-object p1

    .line 122
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    throw p0
.end method

.method public final registerDisplayStateListener(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V
    .locals 3

    .line 1
    const-string v0, "DisplayManagerService"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "registerDisplayStateListener: "

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    if-eqz p1, :cond_0

    .line 23
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 25
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateListeners:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 40
    const-string/jumbo p1, "listener must not be null"

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p0
.end method

.method public final registerDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 5
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    const-string/jumbo p1, "listener must not be null"

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0
.end method

.method public final requestPowerState(ILandroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 10
    iget-object v1, v1, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/android/server/display/DisplayGroup;

    .line 18
    const/4 v1, 0x1

    .line 19
    if-nez p1, :cond_0

    .line 21
    monitor-exit v0

    .line 22
    return v1

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object v2, p1, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    .line 27
    check-cast v2, Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x0

    .line 34
    move v4, v1

    .line 35
    :goto_0
    if-ge v3, v2, :cond_2

    .line 37
    iget-object v5, p1, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    .line 39
    check-cast v5, Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v5

    .line 45
    check-cast v5, Lcom/android/server/display/LogicalDisplay;

    .line 47
    iget v5, v5, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 49
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 51
    iget-object v6, v6, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 53
    invoke-virtual {v6, v5, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 56
    move-result-object v6

    .line 57
    iget-object v6, v6, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 59
    invoke-virtual {v6}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 62
    move-result-object v6

    .line 63
    iget v6, v6, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 65
    and-int/lit8 v6, v6, 0x20

    .line 67
    if-nez v6, :cond_1

    .line 69
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 71
    iget-object v6, v6, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 73
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object v5

    .line 77
    check-cast v5, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 79
    if-eqz v5, :cond_1

    .line 81
    check-cast v5, Lcom/android/server/display/DisplayPowerController;

    .line 83
    invoke-virtual {v5, p2, p3}, Lcom/android/server/display/DisplayPowerController;->requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    .line 86
    move-result v5

    .line 87
    and-int/2addr v4, v5

    .line 88
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    monitor-exit v0

    .line 92
    return v4

    .line 93
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    throw p0
.end method

.method public final setDisplayAccessUIDs(Landroid/util/SparseArray;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 11
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 17
    :goto_0
    if-ltz v1, :cond_0

    .line 19
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 24
    move-result v3

    .line 25
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Landroid/util/IntArray;

    .line 31
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 34
    add-int/lit8 v1, v1, -0x1

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method

.method public final setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setDisplayInfoOverrideFromWindowManagerInternal(ILandroid/view/DisplayInfo;)V

    .line 6
    return-void
.end method

.method public final setDisplayOffsets(III)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    const-string v0, "Display "

    .line 5
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-virtual {v2, p1, v3}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 14
    move-result-object v2

    .line 15
    if-nez v2, :cond_0

    .line 17
    monitor-exit v1

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget v3, v2, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    .line 23
    if-ne v3, p2, :cond_1

    .line 25
    iget v3, v2, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    .line 27
    if-eq v3, p3, :cond_3

    .line 29
    :cond_1
    sget-boolean v3, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 31
    if-eqz v3, :cond_2

    .line 33
    const-string v3, "DisplayManagerService"

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string p1, " burn-in offset set to ("

    .line 45
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string p1, ", "

    .line 53
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    const-string p1, ")"

    .line 61
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-static {v3, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_2
    iput p2, v2, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    .line 73
    iput p3, v2, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    .line 75
    const/4 p1, 0x0

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 79
    :cond_3
    monitor-exit v1

    .line 80
    :goto_0
    return-void

    .line 81
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    throw p0
.end method

.method public final setDisplayProperties(IZFIFFZZZ)V
    .locals 14

    .line 1
    move v0, p1

    .line 2
    move/from16 v1, p2

    .line 4
    move-object v2, p0

    .line 5
    move/from16 v7, p9

    .line 7
    iget-object v8, v2, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 9
    const-string v2, "Display "

    .line 11
    iget-object v9, v8, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 13
    monitor-enter v9

    .line 14
    :try_start_0
    iget-object v3, v8, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 16
    const/4 v10, 0x1

    .line 17
    invoke-virtual {v3, p1, v10}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 20
    move-result-object v11

    .line 21
    if-nez v11, :cond_0

    .line 23
    monitor-exit v9

    .line 24
    goto/16 :goto_5

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto/16 :goto_6

    .line 29
    :cond_0
    iget-boolean v3, v11, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    .line 31
    const/4 v12, 0x0

    .line 32
    if-eq v3, v1, :cond_2

    .line 34
    sget-boolean v3, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 36
    if-eqz v3, :cond_1

    .line 38
    const-string v3, "DisplayManagerService"

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string v2, " hasContent flag changed: hasContent="

    .line 50
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    const-string v2, ", inTraversal="

    .line 58
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    invoke-static {v3, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1
    iput-boolean v1, v11, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    .line 73
    move v13, v10

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    move v13, v12

    .line 76
    :goto_0
    iget-object v1, v8, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 78
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;

    .line 80
    move v2, p1

    .line 81
    move/from16 v3, p4

    .line 83
    move/from16 v4, p3

    .line 85
    move/from16 v5, p5

    .line 87
    move/from16 v6, p6

    .line 89
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->setAppRequest(IIFFF)V

    .line 92
    invoke-virtual {v8}, Lcom/android/server/display/DisplayManagerService;->isMinimalPostProcessingAllowed()Z

    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_3

    .line 98
    if-eqz p7, :cond_3

    .line 100
    move v0, v10

    .line 101
    goto :goto_1

    .line 102
    :cond_3
    move v0, v12

    .line 103
    :goto_1
    if-eqz v0, :cond_6

    .line 105
    invoke-virtual {v8}, Lcom/android/server/display/DisplayManagerService;->getHdrConversionModeSettingInternal()Landroid/hardware/display/HdrConversionMode;

    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    .line 112
    move-result v2

    .line 113
    const/4 v3, 0x2

    .line 114
    if-ne v2, v3, :cond_4

    .line 116
    iget v1, v8, Lcom/android/server/display/DisplayManagerService;->mSystemPreferredHdrOutputType:I

    .line 118
    goto :goto_2

    .line 119
    :cond_4
    invoke-virtual {v1}, Landroid/hardware/display/HdrConversionMode;->getPreferredHdrOutputType()I

    .line 122
    move-result v1

    .line 123
    :goto_2
    const/4 v2, -0x1

    .line 124
    if-eq v1, v2, :cond_5

    .line 126
    iget-object v2, v8, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    .line 128
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    invoke-static {}, Lcom/android/server/display/DisplayControl;->getHdrOutputTypesWithLatency()[I

    .line 134
    move-result-object v2

    .line 135
    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 138
    move-result v1

    .line 139
    goto :goto_3

    .line 140
    :cond_5
    move v1, v12

    .line 141
    :goto_3
    if-eqz v1, :cond_6

    .line 143
    move v12, v10

    .line 144
    :cond_6
    iget-boolean v1, v11, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    .line 146
    if-eq v1, v0, :cond_7

    .line 148
    iput-boolean v0, v11, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    .line 150
    move v13, v10

    .line 151
    :cond_7
    if-eqz v13, :cond_8

    .line 153
    invoke-virtual {v8, v7}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 156
    :cond_8
    iget-object v0, v8, Lcom/android/server/display/DisplayManagerService;->mHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    .line 158
    if-nez v0, :cond_9

    .line 160
    monitor-exit v9

    .line 161
    goto :goto_5

    .line 162
    :cond_9
    iget-object v1, v8, Lcom/android/server/display/DisplayManagerService;->mOverrideHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    .line 164
    if-nez v1, :cond_b

    .line 166
    if-nez p8, :cond_a

    .line 168
    if-eqz v12, :cond_b

    .line 170
    :cond_a
    new-instance v0, Landroid/hardware/display/HdrConversionMode;

    .line 172
    invoke-direct {v0, v10}, Landroid/hardware/display/HdrConversionMode;-><init>(I)V

    .line 175
    iput-object v0, v8, Lcom/android/server/display/DisplayManagerService;->mOverrideHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    .line 177
    iget-object v0, v8, Lcom/android/server/display/DisplayManagerService;->mHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    .line 179
    invoke-virtual {v8, v0}, Lcom/android/server/display/DisplayManagerService;->setHdrConversionModeInternal(Landroid/hardware/display/HdrConversionMode;)V

    .line 182
    invoke-virtual {v8, v11}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 185
    goto :goto_4

    .line 186
    :cond_b
    if-eqz v1, :cond_c

    .line 188
    if-nez p8, :cond_c

    .line 190
    if-nez v12, :cond_c

    .line 192
    const/4 v1, 0x0

    .line 193
    iput-object v1, v8, Lcom/android/server/display/DisplayManagerService;->mOverrideHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    .line 195
    invoke-virtual {v8, v0}, Lcom/android/server/display/DisplayManagerService;->setHdrConversionModeInternal(Landroid/hardware/display/HdrConversionMode;)V

    .line 198
    invoke-virtual {v8, v11}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 201
    :cond_c
    :goto_4
    monitor-exit v9

    .line 202
    :goto_5
    return-void

    .line 203
    :goto_6
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    throw v0
.end method

.method public final setDisplayScalingDisabled(IZ)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    const-string v0, "Display "

    .line 5
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-virtual {v2, p1, v3}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 14
    move-result-object v2

    .line 15
    if-nez v2, :cond_0

    .line 17
    monitor-exit v1

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-boolean v3, v2, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    .line 23
    if-eq v3, p2, :cond_2

    .line 25
    sget-boolean v3, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 27
    if-eqz v3, :cond_1

    .line 29
    const-string v3, "DisplayManagerService"

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    const-string p1, " content scaling disabled = "

    .line 41
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    invoke-static {v3, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_1
    iput-boolean p2, v2, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    .line 56
    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 60
    :cond_2
    monitor-exit v1

    .line 61
    :goto_0
    return-void

    .line 62
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method

.method public final setDisplayStateOverride(Landroid/os/IBinder;I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "[api] setDisplayStateOverride(l): stateOverride="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {p2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, " ("

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-static {p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, ")"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const/4 v1, 0x0

    .line 33
    const-string v2, "DisplayManagerService"

    .line 35
    invoke-static {v2, v0, v1}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 38
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 40
    invoke-static {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msetDisplayStateOverrideInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;I)V

    .line 43
    return-void
.end method

.method public final setDisplayedContentSamplingEnabled(IZII)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->setDisplayedContentSamplingEnabledInternal(IZII)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final setForceListenProcess(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mForceListenProcessId:I

    .line 5
    return-void
.end method

.method public final setFreezeBrightnessMode(Z)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 17
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setFreezeBrightnessMode(Z)I

    .line 22
    move-result p0

    .line 23
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public final setWindowManagerMirroring(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayDevice;->setWindowManagerMirroringLocked(Z)V

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final systemScreenshot(I)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 13
    monitor-exit v0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {p0, p1, v3}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 23
    move-result-object p0

    .line 24
    if-nez p0, :cond_1

    .line 26
    monitor-exit v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    .line 35
    move-result p1

    .line 36
    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    .line 39
    move-result v2

    .line 40
    iget v4, p0, Landroid/view/DisplayInfo;->rotation:I

    .line 42
    if-eq v4, v3, :cond_2

    .line 44
    const/4 v5, 0x3

    .line 45
    if-ne v4, v5, :cond_3

    .line 47
    :cond_2
    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    .line 50
    move-result p1

    .line 51
    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    .line 54
    move-result v2

    .line 55
    :cond_3
    new-instance p0, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    .line 57
    invoke-direct {p0, v1}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;-><init>(Landroid/os/IBinder;)V

    .line 60
    invoke-virtual {p0, p1, v2}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setSize(II)Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0, v3}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 67
    move-result-object p0

    .line 68
    check-cast p0, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    .line 70
    invoke-virtual {p0, v3}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setAllowProtected(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    .line 76
    invoke-virtual {p0}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$DisplayCaptureArgs;

    .line 79
    move-result-object p0

    .line 80
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-static {p0}, Landroid/window/ScreenCapture;->captureDisplay(Landroid/window/ScreenCapture$DisplayCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 84
    move-result-object v2

    .line 85
    :goto_0
    return-object v2

    .line 86
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    throw p0
.end method

.method public final unregisterDisplayBrightnessListener(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)V
    .locals 3

    .line 1
    const-string v0, "DisplayManagerService"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "unregisterDisplayBrightnessListener: "

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    if-eqz p1, :cond_0

    .line 23
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 25
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnessListeners:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 40
    const-string/jumbo p1, "listener must not be null"

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p0
.end method

.method public final unregisterDisplayGroupListener(Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayGroupListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    return-void
.end method

.method public final unregisterDisplayStateListener(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V
    .locals 3

    .line 1
    const-string v0, "DisplayManagerService"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "unregisterDisplayStateListener: "

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    if-eqz p1, :cond_0

    .line 23
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 25
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateListeners:Ljava/util/ArrayList;

    .line 30
    new-instance v1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda6;

    .line 32
    invoke-direct {v1, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V

    .line 35
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 45
    const-string/jumbo p1, "listener must not be null"

    .line 48
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p0
.end method

.method public final unregisterDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 5
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    const-string/jumbo p1, "listener must not be null"

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0
.end method

.method public final updateDexDisplayState(Z)I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final userScreenshot(I)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 12
    monitor-exit v0

    .line 13
    const/4 p0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    new-instance p1, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    .line 19
    invoke-direct {p1, p0}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;-><init>(Landroid/os/IBinder;)V

    .line 22
    invoke-virtual {p1}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$DisplayCaptureArgs;

    .line 25
    move-result-object p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-static {p0}, Landroid/window/ScreenCapture;->captureDisplay(Landroid/window/ScreenCapture$DisplayCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 30
    move-result-object p0

    .line 31
    :goto_0
    return-object p0

    .line 32
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw p0
.end method
