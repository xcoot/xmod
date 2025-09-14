.class public final Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mAppToken:Landroid/os/IBinder;

.field public final mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

.field public mDensityDpi:I

.field public mDisplayIdToMirror:I

.field public mDisplayState:I

.field public final mFlags:I

.field public mHeight:I

.field public mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field public mIsDisplayOn:Z

.field public mIsWindowManagerMirroring:Z

.field public final mMediaProjectionCallback:Landroid/media/projection/IMediaProjectionCallback;

.field public mMode:Landroid/view/Display$Mode;

.field public final mName:Ljava/lang/String;

.field public final mOwnerPackageName:Ljava/lang/String;

.field public final mOwnerUid:I

.field public mPendingChanges:I

.field public final mProjection:Landroid/media/projection/IMediaProjection;

.field public final mRequestedRefreshRate:F

.field public mStopped:Z

.field public mSurface:Landroid/view/Surface;

.field public mWidth:I

.field public final synthetic this$0:Lcom/android/server/display/VirtualDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;Landroid/os/IBinder;ILjava/lang/String;Landroid/view/Surface;ILcom/android/server/display/VirtualDisplayAdapter$Callback;Landroid/media/projection/IMediaProjection;Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;Ljava/lang/String;Landroid/hardware/display/VirtualDisplayConfig;)V
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v7, p6

    .line 7
    iput-object v1, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 9
    iget-object v4, v1, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    .line 11
    const/4 v5, 0x0

    .line 12
    move-object/from16 v0, p0

    .line 14
    move-object/from16 v1, p1

    .line 16
    move-object/from16 v2, p2

    .line 18
    move-object/from16 v3, p11

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 23
    move-object/from16 v0, p3

    .line 25
    iput-object v0, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mAppToken:Landroid/os/IBinder;

    .line 27
    move/from16 v0, p4

    .line 29
    iput v0, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerUid:I

    .line 31
    move-object/from16 v0, p5

    .line 33
    iput-object v0, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerPackageName:Ljava/lang/String;

    .line 35
    invoke-virtual/range {p12 .. p12}, Landroid/hardware/display/VirtualDisplayConfig;->getName()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    iput-object v0, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    .line 41
    invoke-virtual/range {p12 .. p12}, Landroid/hardware/display/VirtualDisplayConfig;->getWidth()I

    .line 44
    move-result v0

    .line 45
    iput v0, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    .line 47
    invoke-virtual/range {p12 .. p12}, Landroid/hardware/display/VirtualDisplayConfig;->getHeight()I

    .line 50
    move-result v0

    .line 51
    iput v0, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    .line 53
    invoke-virtual/range {p12 .. p12}, Landroid/hardware/display/VirtualDisplayConfig;->getDensityDpi()I

    .line 56
    move-result v0

    .line 57
    iput v0, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDensityDpi:I

    .line 59
    invoke-virtual/range {p12 .. p12}, Landroid/hardware/display/VirtualDisplayConfig;->getRequestedRefreshRate()F

    .line 62
    move-result v0

    .line 63
    iput v0, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mRequestedRefreshRate:F

    .line 65
    iget v10, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    .line 67
    iget v11, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    .line 69
    const/4 v1, 0x0

    .line 70
    cmpl-float v1, v0, v1

    .line 72
    if-eqz v1, :cond_0

    .line 74
    :goto_0
    move v13, v0

    .line 75
    goto :goto_1

    .line 76
    :cond_0
    const/high16 v0, 0x42700000    # 60.0f

    .line 78
    goto :goto_0

    .line 79
    :goto_1
    const/4 v0, 0x0

    .line 80
    new-array v15, v0, [F

    .line 82
    new-array v1, v0, [I

    .line 84
    new-instance v2, Landroid/view/Display$Mode;

    .line 86
    sget-object v3, Lcom/android/server/display/DisplayAdapter;->NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 88
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 91
    move-result v9

    .line 92
    const/4 v14, 0x0

    .line 93
    move-object v8, v2

    .line 94
    move v12, v13

    .line 95
    move-object/from16 v16, v1

    .line 97
    invoke-direct/range {v8 .. v16}, Landroid/view/Display$Mode;-><init>(IIIFFZ[F[I)V

    .line 100
    iput-object v2, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    .line 102
    iput-object v7, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 104
    move/from16 v1, p7

    .line 106
    iput v1, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    .line 108
    move-object/from16 v1, p8

    .line 110
    iput-object v1, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    .line 112
    move-object/from16 v1, p9

    .line 114
    iput-object v1, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mProjection:Landroid/media/projection/IMediaProjection;

    .line 116
    move-object/from16 v1, p10

    .line 118
    iput-object v1, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMediaProjectionCallback:Landroid/media/projection/IMediaProjectionCallback;

    .line 120
    iput v0, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    .line 122
    iget v1, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    .line 124
    const/4 v2, 0x1

    .line 125
    or-int/2addr v1, v2

    .line 126
    iput v1, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    .line 128
    if-eqz v7, :cond_1

    .line 130
    move v0, v2

    .line 131
    :cond_1
    iput-boolean v0, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsDisplayOn:Z

    .line 133
    invoke-virtual/range {p12 .. p12}, Landroid/hardware/display/VirtualDisplayConfig;->getDisplayIdToMirror()I

    .line 136
    move-result v0

    .line 137
    iput v0, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayIdToMirror:I

    .line 139
    invoke-virtual/range {p12 .. p12}, Landroid/hardware/display/VirtualDisplayConfig;->isWindowManagerMirroringEnabled()Z

    .line 142
    move-result v0

    .line 143
    iput-boolean v0, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsWindowManagerMirroring:Z

    .line 145
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    .line 1
    const-string v0, "Virtual display device released because application token died: "

    .line 3
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 5
    iget-object v1, v1, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 10
    iget-object v3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mAppToken:Landroid/os/IBinder;

    .line 12
    iget-object v2, v2, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    .line 14
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v2, "VirtualDisplayAdapter"

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerPackageName:Ljava/lang/String;

    .line 26
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->destroyLocked(Z)V

    .line 40
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mProjection:Landroid/media/projection/IMediaProjection;

    .line 42
    if-eqz v0, :cond_0

    .line 44
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMediaProjectionCallback:Landroid/media/projection/IMediaProjectionCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    if-eqz v2, :cond_0

    .line 48
    :try_start_1
    invoke-interface {v0, v2}, Landroid/media/projection/IMediaProjection;->unregisterCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    :try_start_2
    const-string v2, "VirtualDisplayAdapter"

    .line 57
    const-string v3, "Failed to unregister callback in binderDied"

    .line 59
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 64
    const/4 v2, 0x3

    .line 65
    invoke-virtual {v0, p0, v2}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 68
    monitor-exit v1

    .line 69
    return-void

    .line 70
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    throw p0
.end method

.method public final destroyLocked(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 13
    iget-object v0, v0, Lcom/android/server/display/VirtualDisplayAdapter;->mSurfaceControlDisplayFactory:Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;

    .line 15
    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 17
    invoke-interface {v0, v1}, Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;->destroyDisplay(Landroid/os/IBinder;)V

    .line 20
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mProjection:Landroid/media/projection/IMediaProjection;

    .line 22
    if-eqz v0, :cond_1

    .line 24
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMediaProjectionCallback:Landroid/media/projection/IMediaProjectionCallback;

    .line 26
    if-eqz v1, :cond_1

    .line 28
    :try_start_0
    invoke-interface {v0, v1}, Landroid/media/projection/IMediaProjection;->unregisterCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    const-string v1, "VirtualDisplayAdapter"

    .line 35
    const-string v2, "Failed to unregister callback in destroy"

    .line 37
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 42
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    .line 44
    const/4 p1, 0x2

    .line 45
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 48
    :cond_2
    return-void
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "mFlags="

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    .line 14
    const-string/jumbo v2, "mDisplayState="

    .line 17
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    move-result-object v0

    .line 21
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    .line 23
    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    const-string/jumbo v1, "mStopped="

    .line 42
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    iget-boolean v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mStopped:Z

    .line 47
    const-string/jumbo v2, "mDisplayIdToMirror="

    .line 50
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    move-result-object v0

    .line 54
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayIdToMirror:I

    .line 56
    const-string/jumbo v2, "mWindowManagerMirroring="

    .line 59
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    move-result-object v0

    .line 63
    iget-boolean v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsWindowManagerMirroring:Z

    .line 65
    const-string/jumbo v2, "mRequestedRefreshRate="

    .line 68
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    move-result-object v0

    .line 72
    iget p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mRequestedRefreshRate:F

    .line 74
    invoke-static {v0, p0, p1}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;)V

    .line 77
    return-void
.end method

.method public final getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 3
    if-nez v0, :cond_1f

    .line 5
    new-instance v0, Lcom/android/server/display/DisplayDeviceInfo;

    .line 7
    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 12
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    .line 14
    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 16
    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 18
    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 20
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    .line 22
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 24
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    .line 26
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 28
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    .line 30
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    .line 33
    move-result v1

    .line 34
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 36
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 38
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    .line 40
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 43
    move-result v1

    .line 44
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->renderFrameRate:F

    .line 46
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 48
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    .line 50
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    .line 53
    move-result v1

    .line 54
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 56
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 58
    const/4 v1, 0x1

    .line 59
    new-array v2, v1, [Landroid/view/Display$Mode;

    .line 61
    iget-object v3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    .line 63
    const/4 v4, 0x0

    .line 64
    aput-object v3, v2, v4

    .line 66
    iput-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 68
    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDensityDpi:I

    .line 70
    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 72
    int-to-float v2, v2

    .line 73
    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 75
    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 77
    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mRequestedRefreshRate:F

    .line 79
    const/4 v3, 0x0

    .line 80
    cmpl-float v3, v2, v3

    .line 82
    if-eqz v3, :cond_0

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const/high16 v2, 0x42700000    # 60.0f

    .line 87
    :goto_0
    float-to-int v2, v2

    .line 88
    int-to-long v2, v2

    .line 89
    const-wide/32 v5, 0x3b9aca00

    .line 92
    div-long/2addr v5, v2

    .line 93
    iput-wide v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 95
    iput v4, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 97
    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    .line 99
    and-int/lit8 v3, v2, 0x1

    .line 101
    if-nez v3, :cond_1

    .line 103
    const/16 v5, 0x30

    .line 105
    iput v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 107
    :cond_1
    and-int/lit8 v5, v2, 0x10

    .line 109
    if-eqz v5, :cond_2

    .line 111
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 113
    and-int/lit8 v5, v5, -0x21

    .line 115
    iput v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 117
    goto :goto_1

    .line 118
    :cond_2
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 120
    or-int/lit16 v6, v5, 0x80

    .line 122
    iput v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 124
    and-int/lit16 v6, v2, 0x800

    .line 126
    if-eqz v6, :cond_3

    .line 128
    or-int/lit16 v5, v5, 0x4080

    .line 130
    iput v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 132
    :cond_3
    :goto_1
    const v5, 0x8000

    .line 135
    and-int v6, v2, v5

    .line 137
    if-eqz v6, :cond_4

    .line 139
    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 141
    const/high16 v7, 0x40000

    .line 143
    or-int/2addr v6, v7

    .line 144
    iput v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 146
    :cond_4
    and-int/lit8 v6, v2, 0x4

    .line 148
    if-eqz v6, :cond_5

    .line 150
    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 152
    or-int/lit8 v6, v6, 0x4

    .line 154
    iput v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 156
    :cond_5
    const/4 v6, 0x2

    .line 157
    and-int/2addr v2, v6

    .line 158
    const/4 v7, 0x3

    .line 159
    if-eqz v2, :cond_6

    .line 161
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 163
    or-int/lit8 v2, v2, 0x40

    .line 165
    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 167
    if-eqz v3, :cond_6

    .line 169
    const-string/jumbo v0, "persist.demo.remoterotation"

    .line 172
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    move-result-object v0

    .line 176
    const-string/jumbo v2, "portrait"

    .line 179
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_6

    .line 185
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 187
    iput v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 189
    :cond_6
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    .line 191
    and-int/lit8 v2, v0, 0x20

    .line 193
    if-eqz v2, :cond_7

    .line 195
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 197
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 199
    or-int/lit16 v3, v3, 0x200

    .line 201
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 203
    :cond_7
    and-int/lit16 v2, v0, 0x80

    .line 205
    if-eqz v2, :cond_8

    .line 207
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 209
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 211
    or-int/2addr v3, v6

    .line 212
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 214
    :cond_8
    and-int/lit16 v2, v0, 0x100

    .line 216
    if-eqz v2, :cond_9

    .line 218
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 220
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 222
    or-int/lit16 v3, v3, 0x400

    .line 224
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 226
    :cond_9
    and-int/lit16 v2, v0, 0x200

    .line 228
    if-eqz v2, :cond_a

    .line 230
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 232
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 234
    or-int/lit16 v3, v3, 0x1000

    .line 236
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 238
    :cond_a
    and-int/lit16 v2, v0, 0x400

    .line 240
    if-eqz v2, :cond_b

    .line 242
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 244
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 246
    or-int/lit16 v3, v3, 0x2000

    .line 248
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 250
    :cond_b
    and-int/lit16 v2, v0, 0x1000

    .line 252
    const-string v3, "VirtualDisplayAdapter"

    .line 254
    if-eqz v2, :cond_e

    .line 256
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 258
    iget v8, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 260
    and-int/lit16 v9, v8, 0x4000

    .line 262
    if-nez v9, :cond_d

    .line 264
    and-int/2addr v0, v5

    .line 265
    if-eqz v0, :cond_c

    .line 267
    goto :goto_2

    .line 268
    :cond_c
    const-string v0, "Ignoring VIRTUAL_DISPLAY_FLAG_ALWAYS_UNLOCKED as it requires VIRTUAL_DISPLAY_FLAG_DEVICE_DISPLAY_GROUP or VIRTUAL_DISPLAY_FLAG_OWN_DISPLAY_GROUP."

    .line 270
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    goto :goto_3

    .line 274
    :cond_d
    :goto_2
    or-int v0, v8, v5

    .line 276
    iput v0, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 278
    :cond_e
    :goto_3
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    .line 280
    and-int/lit16 v2, v0, 0x2000

    .line 282
    const/high16 v5, 0x10000

    .line 284
    if-eqz v2, :cond_f

    .line 286
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 288
    iget v8, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 290
    or-int/2addr v8, v5

    .line 291
    iput v8, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 293
    :cond_f
    and-int/lit16 v2, v0, 0x4000

    .line 295
    const/high16 v8, 0x20000

    .line 297
    if-eqz v2, :cond_11

    .line 299
    and-int/lit16 v0, v0, 0x400

    .line 301
    if-eqz v0, :cond_10

    .line 303
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 305
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 307
    or-int/2addr v2, v8

    .line 308
    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 310
    goto :goto_4

    .line 311
    :cond_10
    const-string v0, "Ignoring VIRTUAL_DISPLAY_FLAG_OWN_FOCUS as it requires VIRTUAL_DISPLAY_FLAG_TRUSTED."

    .line 313
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_11
    :goto_4
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    .line 318
    and-int v2, v0, v5

    .line 320
    if-eqz v2, :cond_13

    .line 322
    and-int/lit16 v2, v0, 0x400

    .line 324
    if-eqz v2, :cond_12

    .line 326
    and-int/lit16 v0, v0, 0x4000

    .line 328
    if-eqz v0, :cond_12

    .line 330
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 332
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 334
    const/high16 v3, 0x80000

    .line 336
    or-int/2addr v2, v3

    .line 337
    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 339
    goto :goto_5

    .line 340
    :cond_12
    const-string v0, "Ignoring VIRTUAL_DISPLAY_FLAG_STEAL_TOP_FOCUS_DISABLED as it requires VIRTUAL_DISPLAY_FLAG_OWN_FOCUS which requires VIRTUAL_DISPLAY_FLAG_TRUSTED."

    .line 342
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_13
    :goto_5
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 347
    const/4 v2, 0x5

    .line 348
    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 350
    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    .line 352
    and-int/lit8 v3, v2, 0x40

    .line 354
    if-nez v3, :cond_14

    .line 356
    move v7, v4

    .line 357
    :cond_14
    iput v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 359
    iget-boolean v3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsDisplayOn:Z

    .line 361
    if-eqz v3, :cond_15

    .line 363
    move v5, v6

    .line 364
    goto :goto_6

    .line 365
    :cond_15
    move v5, v1

    .line 366
    :goto_6
    iput v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 368
    iget v5, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerUid:I

    .line 370
    iput v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    .line 372
    iget-object v5, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerPackageName:Ljava/lang/String;

    .line 374
    iput-object v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    .line 376
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 378
    const/high16 v7, 0x40000000    # 2.0f

    .line 380
    if-eqz v5, :cond_16

    .line 382
    const v5, 0x10001c8

    .line 385
    if-ne v5, v2, :cond_16

    .line 387
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 389
    or-int/2addr v5, v7

    .line 390
    iput v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 392
    :cond_16
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    .line 394
    if-eqz v5, :cond_18

    .line 396
    const/high16 v5, 0x100000

    .line 398
    and-int/2addr v5, v2

    .line 399
    if-eqz v5, :cond_18

    .line 401
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 403
    const v9, -0x5ffffffc

    .line 406
    or-int/2addr v5, v9

    .line 407
    iput v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 409
    iget v5, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    .line 411
    if-nez v5, :cond_17

    .line 413
    move v5, v6

    .line 414
    :cond_17
    iput v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 416
    :cond_18
    iget-object v5, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 418
    iget-object v5, v5, Lcom/android/server/display/VirtualDisplayAdapter;->mDefaultDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 420
    if-nez v5, :cond_19

    .line 422
    goto :goto_7

    .line 423
    :cond_19
    and-int v9, v2, v8

    .line 425
    if-eqz v9, :cond_1a

    .line 427
    iget-object v9, v5, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 429
    iput-object v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 431
    iget-object v9, v5, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    .line 433
    iput-object v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    .line 435
    :cond_1a
    :goto_7
    and-int/2addr v7, v2

    .line 436
    if-eqz v7, :cond_1c

    .line 438
    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 440
    const/high16 v9, 0x20400000

    .line 442
    or-int/2addr v7, v9

    .line 443
    iput v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 445
    if-eqz v3, :cond_1b

    .line 447
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    .line 449
    :cond_1b
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 451
    :cond_1c
    and-int v1, v2, v8

    .line 453
    if-eqz v1, :cond_1d

    .line 455
    iput v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 457
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 459
    const v3, 0x200008a

    .line 462
    or-int/2addr v1, v3

    .line 463
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 465
    if-eqz v5, :cond_1d

    .line 467
    iget-object v1, v5, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 469
    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 471
    iget-object v1, v5, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    .line 473
    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    .line 475
    :cond_1d
    const/high16 v1, 0x200000

    .line 477
    and-int/2addr v1, v2

    .line 478
    if-eqz v1, :cond_1e

    .line 480
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 482
    const/high16 v2, 0x20000000

    .line 484
    or-int/2addr v1, v2

    .line 485
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 487
    :cond_1e
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 489
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 491
    invoke-static {v1, v2, v4}, Landroid/view/DisplayShape;->createDefaultDisplayShape(IIZ)Landroid/view/DisplayShape;

    .line 494
    move-result-object v1

    .line 495
    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->displayShape:Landroid/view/DisplayShape;

    .line 497
    :cond_1f
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 499
    return-object p0
.end method

.method public final getDisplayIdToMirrorLocked()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayIdToMirror:I

    .line 3
    return p0
.end method

.method public final getDisplaySurfaceDefaultSizeLocked()Landroid/graphics/Point;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/view/Surface;->getDefaultSize()Landroid/graphics/Point;

    .line 10
    move-result-object v0

    .line 11
    iget p0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq p0, v1, :cond_1

    .line 16
    const/4 v1, 0x3

    .line 17
    if-ne p0, v1, :cond_2

    .line 19
    :cond_1
    new-instance p0, Landroid/graphics/Point;

    .line 21
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 23
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 25
    invoke-direct {p0, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 28
    move-object v0, p0

    .line 29
    :cond_2
    return-object v0
.end method

.method public getSurfaceLocked()Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 3
    return-object p0
.end method

.method public final hasStableUniqueId()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isWindowManagerMirroringLocked()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsWindowManagerMirroring:Z

    .line 3
    return p0
.end method

.method public final performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 9
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    .line 11
    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    .line 13
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setDisplaySize(Landroid/os/IBinder;II)Landroid/view/SurfaceControl$Transaction;

    .line 16
    :cond_0
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    .line 18
    and-int/lit8 v0, v0, 0x1

    .line 20
    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 24
    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    .line 26
    if-eq v1, v0, :cond_1

    .line 28
    iput-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    .line 30
    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 32
    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)Landroid/view/SurfaceControl$Transaction;

    .line 35
    :cond_1
    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    .line 38
    return-void
.end method

.method public final requestDisplayStateLocked(IFFLcom/android/server/display/DisplayOffloadSessionImpl;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget p2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    .line 3
    const/4 p3, 0x0

    .line 4
    if-eq p1, p2, :cond_2

    .line 6
    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    .line 8
    const/4 p2, 0x1

    .line 9
    if-ne p1, p2, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    .line 20
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 23
    :goto_0
    iget p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    .line 25
    const/high16 p2, 0x40000000    # 2.0f

    .line 27
    and-int/2addr p2, p1

    .line 28
    if-eqz p2, :cond_1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    .line 33
    if-eqz p2, :cond_2

    .line 35
    const/high16 p2, 0x100000

    .line 37
    and-int/2addr p1, p2

    .line 38
    if-eqz p1, :cond_2

    .line 40
    :goto_1
    iput-object p3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 42
    iget-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 44
    const/4 p2, 0x2

    .line 45
    invoke-virtual {p1, p0, p2}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 48
    :cond_2
    return-object p3
.end method

.method public final setSurfaceLocked(Landroid/view/Surface;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mStopped:Z

    .line 3
    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 7
    if-eq v0, p1, :cond_3

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_0

    .line 13
    move v0, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    if-eqz p1, :cond_1

    .line 18
    move v3, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v3, v1

    .line 21
    :goto_1
    if-eq v0, v3, :cond_2

    .line 23
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 25
    const/4 v3, 0x2

    .line 26
    invoke-virtual {v0, p0, v3}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 31
    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    .line 34
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 36
    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 39
    iget p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    .line 41
    or-int/2addr p1, v2

    .line 42
    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    .line 44
    iget-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 46
    iget-object p1, p1, Lcom/android/server/display/VirtualDisplayAdapter;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 48
    invoke-virtual {p1, p0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_3

    .line 54
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 56
    iget-object v0, v0, Lcom/android/server/display/VirtualDisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 58
    const/16 v2, 0x1e

    .line 60
    iget p1, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 62
    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 65
    move-result-object p1

    .line 66
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 68
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 70
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 73
    :cond_3
    return-void
.end method

.method public final setWindowManagerMirroringLocked(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsWindowManagerMirroring:Z

    .line 3
    if-eq v0, p1, :cond_0

    .line 5
    iput-boolean p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsWindowManagerMirroring:Z

    .line 7
    iget-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 9
    const/4 v0, 0x2

    .line 10
    invoke-virtual {p1, p0, v0}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 13
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 15
    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    .line 18
    :cond_0
    return-void
.end method
