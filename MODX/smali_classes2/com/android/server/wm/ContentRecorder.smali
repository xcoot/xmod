.class public final Lcom/android/server/wm/ContentRecorder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/WindowContainerListener;


# instance fields
.field public mContentRecordingSession:Landroid/view/ContentRecordingSession;

.field public final mCorrectForAnisotropicPixels:Z

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mLastConsumingSurfaceSize:Landroid/graphics/Point;

.field public mLastOrientation:I

.field public mLastRecordedBounds:Landroid/graphics/Rect;

.field public mLastWindowingMode:I

.field public final mMediaProjectionManager:Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;

.field public mRecordedSurface:Landroid/view/SurfaceControl;

.field public mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mLastRecordedBounds:Landroid/graphics/Rect;

    .line 12
    .line 13
    new-instance v0, Landroid/graphics/Point;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mLastConsumingSurfaceSize:Landroid/graphics/Point;

    .line 20
    .line 21
    iput v1, p0, Lcom/android/server/wm/ContentRecorder;->mLastOrientation:I

    .line 22
    .line 23
    iput v1, p0, Lcom/android/server/wm/ContentRecorder;->mLastWindowingMode:I

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/android/server/wm/ContentRecorder;->mMediaProjectionManager:Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;

    .line 28
    .line 29
    iput-boolean p3, p0, Lcom/android/server/wm/ContentRecorder;->mCorrectForAnisotropicPixels:Z

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final fetchSurfaceSizeIfPresent()Landroid/graphics/Point;
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 6
    .line 7
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplaySurfaceDefaultSize(I)Landroid/graphics/Point;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    aget-boolean v0, v0, v1

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 23
    .line 24
    int-to-long v0, p0

    .line 25
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 26
    .line 27
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    const-wide v3, 0x20592f932c1d353bL    # 7.513782880242941E-153

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    const/4 v5, 0x1

    .line 41
    const-string v6, "Content Recording: Provided surface for recording on display %d is not present, so do not update the surface"

    .line 42
    .line 43
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    const/4 p0, 0x0

    .line 47
    return-object p0

    .line 48
    :cond_1
    return-object v0
.end method

.method public final handleStartRecordingFailed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->unregisterListener()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 23
    .line 24
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mContentRecordingController:Lcom/android/server/wm/ContentRecordingController;

    .line 25
    .line 26
    invoke-virtual {v3, v0, v2}, Lcom/android/server/wm/ContentRecordingController;->setContentRecordingSessionLocked(Landroid/view/ContentRecordingSession;Lcom/android/server/wm/WindowManagerService;)V

    .line 27
    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->stopMediaProjection()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final invalidateForRecording(Z)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 4
    .line 5
    if-eqz v2, :cond_3

    .line 6
    .line 7
    instance-of v2, v2, Lcom/android/server/wm/DisplayContent;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    const-string v2, "debug.sf.hdr_capture"

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const-string/jumbo v3, "true"

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const-string v3, "false"

    .line 21
    .line 22
    :goto_0
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 26
    .line 27
    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 28
    .line 29
    new-array v3, v0, [Z

    .line 30
    .line 31
    aput-boolean v1, v3, v1

    .line 32
    .line 33
    iget-object v4, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 34
    .line 35
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 36
    .line 37
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 38
    .line 39
    .line 40
    monitor-enter v4

    .line 41
    :try_start_0
    new-instance v5, Lcom/android/server/wm/ContentRecorder$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    invoke-direct {v5, p0, p1, v3}, Lcom/android/server/wm/ContentRecorder$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ContentRecorder;Z[Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v5, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 47
    .line 48
    .line 49
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 51
    .line 52
    .line 53
    aget-boolean p0, v3, v1

    .line 54
    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    :try_start_1
    new-instance p0, Ljava/util/concurrent/CountDownLatch;

    .line 60
    .line 61
    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 62
    .line 63
    .line 64
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 65
    .line 66
    const-wide/16 v0, 0x32

    .line 67
    .line 68
    invoke-virtual {p0, v0, v1, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catch_0
    move-exception p0

    .line 73
    const-string p1, "ContentRecorder"

    .line 74
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v1, "InterruptedException "

    .line 78
    .line 79
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    :cond_2
    :goto_1
    return-void

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 100
    .line 101
    .line 102
    throw p0

    .line 103
    :cond_3
    :goto_2
    return-void
.end method

.method public final isCurrentlyRecording()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final onConfigurationChanged(II)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->isCurrentlyRecording()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_a

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mLastRecordedBounds:Landroid/graphics/Rect;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 14
    .line 15
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    aget-boolean p0, v1, v3

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    iget p0, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 27
    .line 28
    int-to-long p0, p0

    .line 29
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 30
    .line 31
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const-wide v1, -0x5be0aef84533cfcbL

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    const-string v4, "Content Recording: Unexpectedly null window container; unable to update recording for display %d"

    .line 46
    .line 47
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-ne v0, v3, :cond_4

    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    aget-boolean p1, v1, v3

    .line 72
    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    iget p1, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 76
    .line 77
    int-to-long p1, p1

    .line 78
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 79
    .line 80
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    const-wide v1, 0x644831a3168135c8L    # 1.1967771415304633E175

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    const/4 v3, 0x1

    .line 94
    const-string v4, "Content Recording: Display %d was already recording, but pause capture since the task is in PIP"

    .line 95
    .line 96
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->pauseRecording()V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eq p2, v0, :cond_5

    .line 110
    .line 111
    iget-object p2, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    .line 112
    .line 113
    invoke-virtual {p2}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    iget-object v4, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    .line 118
    .line 119
    invoke-virtual {v4}, Landroid/view/ContentRecordingSession;->getTargetUid()I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    iget-object v5, p0, Lcom/android/server/wm/ContentRecorder;->mMediaProjectionManager:Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;

    .line 124
    .line 125
    invoke-interface {v5, p2, v4, v0}, Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;->notifyWindowingModeChanged(III)V

    .line 126
    .line 127
    .line 128
    :cond_5
    aget-boolean p2, v1, v3

    .line 129
    .line 130
    if-eqz p2, :cond_6

    .line 131
    .line 132
    iget p2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 133
    .line 134
    int-to-long v4, p2

    .line 135
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 136
    .line 137
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    const-wide v7, -0x450e649b5fcc792L

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    const/4 v9, 0x1

    .line 151
    const-string v10, "Content Recording: Display %d was already recording, so apply transformations if necessary"

    .line 152
    .line 153
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    :cond_6
    iget-object p2, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 157
    .line 158
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->fetchSurfaceSizeIfPresent()Landroid/graphics/Point;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    iget-object v5, p0, Lcom/android/server/wm/ContentRecorder;->mLastRecordedBounds:Landroid/graphics/Rect;

    .line 175
    .line 176
    invoke-virtual {v5, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-eqz v5, :cond_7

    .line 181
    .line 182
    if-ne p1, v0, :cond_7

    .line 183
    .line 184
    iget-object p1, p0, Lcom/android/server/wm/ContentRecorder;->mLastConsumingSurfaceSize:Landroid/graphics/Point;

    .line 185
    .line 186
    invoke-virtual {p1, v4}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-nez p1, :cond_a

    .line 191
    .line 192
    :cond_7
    if-eqz v4, :cond_9

    .line 193
    .line 194
    aget-boolean p1, v1, v3

    .line 195
    .line 196
    if-eqz p1, :cond_8

    .line 197
    .line 198
    iget p1, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 199
    .line 200
    int-to-long v1, p1

    .line 201
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    int-to-long v5, v0

    .line 206
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 211
    .line 212
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    filled-new-array {v1, p1, v2, v0}, [Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v12

    .line 224
    const-wide v8, 0x20a003f3ca7d3425L    # 1.52894206491876E-151

    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    const/16 v10, 0x11

    .line 230
    .line 231
    const-string v11, "Content Recording: Going ahead with updating recording for display %d to new bounds %s and/or orientation %d and/or surface size %s"

    .line 232
    .line 233
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    :cond_8
    iget-object p1, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 237
    .line 238
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/wm/ContentRecorder;->updateMirroredSurface(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    .line 243
    .line 244
    .line 245
    goto :goto_0

    .line 246
    :cond_9
    aget-boolean p0, v1, v3

    .line 247
    .line 248
    if-eqz p0, :cond_a

    .line 249
    .line 250
    iget p0, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 251
    .line 252
    int-to-long p0, p0

    .line 253
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    int-to-long v0, v0

    .line 258
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 263
    .line 264
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    filled-new-array {p0, p2, p1, v2}, [Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    const-wide v4, 0x7538ea2bb40c317cL    # 4.676193748808675E256

    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    const/16 v6, 0x11

    .line 282
    .line 283
    const-string v7, "Content Recording: Unable to update recording for display %d to new bounds %s and/or orientation %d and/or surface size %s, since the surface is not available."

    .line 284
    .line 285
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    :cond_a
    :goto_0
    return-void
.end method

.method public final onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/wm/ContentRecorder;->mLastOrientation:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wm/ContentRecorder;->mLastWindowingMode:I

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ContentRecorder;->onConfigurationChanged(II)V

    .line 6
    .line 7
    .line 8
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 9
    .line 10
    iput v0, p0, Lcom/android/server/wm/ContentRecorder;->mLastOrientation:I

    .line 11
    .line 12
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, p0, Lcom/android/server/wm/ContentRecorder;->mLastWindowingMode:I

    .line 19
    .line 20
    return-void
.end method

.method public final onRemoved()V
    .locals 10

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v0, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 11
    .line 12
    int-to-long v2, v0

    .line 13
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 14
    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v9

    .line 23
    const/4 v7, 0x1

    .line 24
    const-string v8, "Content Recording: Recorded task is removed, so stop recording on display %d"

    .line 25
    .line 26
    const-wide v5, 0x6eed00ee2f523a98L    # 2.1471341689903853E226

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->unregisterListener()V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 41
    .line 42
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mContentRecordingController:Lcom/android/server/wm/ContentRecordingController;

    .line 43
    .line 44
    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/ContentRecordingController;->setContentRecordingSessionLocked(Landroid/view/ContentRecordingSession;Lcom/android/server/wm/WindowManagerService;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->stopMediaProjection()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final onVisibleRequestedChanged(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->isCurrentlyRecording()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mLastRecordedBounds:Landroid/graphics/Rect;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mMediaProjectionManager:Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;->notifyActiveProjectionCapturedContentVisibilityChanged(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    .line 32
    .line 33
    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public final pauseRecording()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    aget-boolean v0, v0, v1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget v0, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 16
    .line 17
    int-to-long v2, v0

    .line 18
    iget-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    .line 19
    .line 20
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 21
    .line 22
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    const-wide v5, -0x3bf3bccc7b9acc94L    # -6.516889920730127E19

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    const/16 v7, 0xd

    .line 40
    .line 41
    const-string v8, "Content Recording: Display %d has content (%b) so pause recording"

    .line 42
    .line 43
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 85
    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    .line 89
    .line 90
    return-void
.end method

.method public final stopMediaProjection()V
    .locals 8

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 9
    .line 10
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 11
    .line 12
    int-to-long v0, v0

    .line 13
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    const-wide v3, 0x5297be083f2335bdL    # 7.556866628430533E89

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    const/4 v5, 0x1

    .line 29
    const-string v6, "Content Recording: Stop MediaProjection on virtual display %d"

    .line 30
    .line 31
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder;->mMediaProjectionManager:Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;

    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    invoke-interface {p0}, Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;->stopActiveProjection()V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public final unregisterListener()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x1

    .line 23
    if-ne v2, v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->unregisterWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public updateMirroredSurface(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 10
    .line 11
    iget-object v3, v0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 14
    .line 15
    new-instance v5, Landroid/graphics/PointF;

    .line 16
    .line 17
    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    iget v8, v2, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 29
    .line 30
    iget v2, v2, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 31
    .line 32
    iget v9, v1, Landroid/graphics/Point;->x:I

    .line 33
    .line 34
    iget v10, v1, Landroid/graphics/Point;->y:I

    .line 35
    .line 36
    iget v11, v4, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 37
    .line 38
    iget v4, v4, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 39
    .line 40
    div-float v12, v2, v8

    .line 41
    .line 42
    div-float v13, v4, v11

    .line 43
    .line 44
    div-float/2addr v12, v13

    .line 45
    iget-boolean v13, v0, Lcom/android/server/wm/ContentRecorder;->mCorrectForAnisotropicPixels:Z

    .line 46
    .line 47
    if-eqz v13, :cond_1

    .line 48
    .line 49
    const v13, 0x3f79999a    # 0.975f

    .line 50
    .line 51
    .line 52
    cmpl-float v13, v12, v13

    .line 53
    .line 54
    if-lez v13, :cond_0

    .line 55
    .line 56
    const v13, 0x3f833333    # 1.025f

    .line 57
    .line 58
    .line 59
    cmpg-float v12, v12, v13

    .line 60
    .line 61
    if-gez v12, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    div-float/2addr v11, v8

    .line 65
    div-float/2addr v4, v2

    .line 66
    int-to-float v2, v9

    .line 67
    div-float/2addr v2, v11

    .line 68
    int-to-float v6, v6

    .line 69
    div-float/2addr v2, v6

    .line 70
    int-to-float v6, v10

    .line 71
    div-float/2addr v6, v4

    .line 72
    int-to-float v7, v7

    .line 73
    div-float/2addr v6, v7

    .line 74
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    mul-float/2addr v11, v2

    .line 79
    iput v11, v5, Landroid/graphics/PointF;->x:F

    .line 80
    .line 81
    mul-float/2addr v2, v4

    .line 82
    iput v2, v5, Landroid/graphics/PointF;->y:F

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    :goto_0
    int-to-float v2, v9

    .line 86
    int-to-float v4, v6

    .line 87
    div-float/2addr v2, v4

    .line 88
    int-to-float v4, v10

    .line 89
    int-to-float v6, v7

    .line 90
    div-float/2addr v4, v6

    .line 91
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    iput v2, v5, Landroid/graphics/PointF;->x:F

    .line 96
    .line 97
    iput v2, v5, Landroid/graphics/PointF;->y:F

    .line 98
    .line 99
    :goto_1
    iget v2, v5, Landroid/graphics/PointF;->x:F

    .line 100
    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    int-to-float v4, v4

    .line 106
    mul-float/2addr v2, v4

    .line 107
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    iget v4, v5, Landroid/graphics/PointF;->y:F

    .line 112
    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    int-to-float v6, v6

    .line 118
    mul-float/2addr v4, v6

    .line 119
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    iget v6, v1, Landroid/graphics/Point;->x:I

    .line 124
    .line 125
    const/4 v7, 0x0

    .line 126
    if-eq v2, v6, :cond_2

    .line 127
    .line 128
    sub-int/2addr v6, v2

    .line 129
    div-int/lit8 v6, v6, 0x2

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_2
    move v6, v7

    .line 133
    :goto_2
    iget v2, v1, Landroid/graphics/Point;->y:I

    .line 134
    .line 135
    if-eq v4, v2, :cond_3

    .line 136
    .line 137
    sub-int/2addr v2, v4

    .line 138
    div-int/lit8 v7, v2, 0x2

    .line 139
    .line 140
    :cond_3
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    .line 141
    .line 142
    const/4 v4, 0x1

    .line 143
    aget-boolean v2, v2, v4

    .line 144
    .line 145
    if-eqz v2, :cond_4

    .line 146
    .line 147
    int-to-long v8, v6

    .line 148
    int-to-long v10, v7

    .line 149
    iget v2, v5, Landroid/graphics/PointF;->x:F

    .line 150
    .line 151
    float-to-double v12, v2

    .line 152
    iget v2, v5, Landroid/graphics/PointF;->y:F

    .line 153
    .line 154
    float-to-double v14, v2

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    move v4, v6

    .line 160
    move/from16 v16, v7

    .line 161
    .line 162
    int-to-long v6, v2

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    move/from16 v18, v4

    .line 168
    .line 169
    move-object/from16 v17, v5

    .line 170
    .line 171
    int-to-long v4, v2

    .line 172
    iget v2, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 173
    .line 174
    move-wide/from16 v19, v4

    .line 175
    .line 176
    int-to-long v4, v2

    .line 177
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    iget v2, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 182
    .line 183
    move-wide/from16 v21, v4

    .line 184
    .line 185
    int-to-long v4, v2

    .line 186
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    iget v2, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 191
    .line 192
    int-to-long v2, v2

    .line 193
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 194
    .line 195
    move-wide/from16 v23, v2

    .line 196
    .line 197
    int-to-long v2, v0

    .line 198
    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 199
    .line 200
    int-to-long v0, v0

    .line 201
    sget-object v25, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 202
    .line 203
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 204
    .line 205
    .line 206
    move-result-object v26

    .line 207
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 208
    .line 209
    .line 210
    move-result-object v27

    .line 211
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 212
    .line 213
    .line 214
    move-result-object v28

    .line 215
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 216
    .line 217
    .line 218
    move-result-object v29

    .line 219
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 220
    .line 221
    .line 222
    move-result-object v30

    .line 223
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 224
    .line 225
    .line 226
    move-result-object v31

    .line 227
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 228
    .line 229
    .line 230
    move-result-object v32

    .line 231
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 232
    .line 233
    .line 234
    move-result-object v33

    .line 235
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 236
    .line 237
    .line 238
    move-result-object v34

    .line 239
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 240
    .line 241
    .line 242
    move-result-object v35

    .line 243
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 244
    .line 245
    .line 246
    move-result-object v36

    .line 247
    filled-new-array/range {v26 .. v36}, [Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v30

    .line 251
    const-wide v26, 0xf46630637663bb4L

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    const v28, 0x1555a5

    .line 257
    .line 258
    .line 259
    const-string v29, "Content Recording: Apply transformations of shift %d x %d, scale %f x %f, crop (aka recorded content size) %d x %d for display %d; display has size %d x %d; surface has size %d x %d"

    .line 260
    .line 261
    invoke-static/range {v25 .. v30}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    :goto_3
    move-object/from16 v0, p0

    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_4
    move-object/from16 v17, v5

    .line 268
    .line 269
    move/from16 v18, v6

    .line 270
    .line 271
    move/from16 v16, v7

    .line 272
    .line 273
    goto :goto_3

    .line 274
    :goto_4
    iget-object v1, v0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    .line 275
    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    move-object/from16 v4, p1

    .line 285
    .line 286
    invoke-virtual {v4, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    iget-object v5, v0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    .line 291
    .line 292
    move-object/from16 v1, v17

    .line 293
    .line 294
    iget v6, v1, Landroid/graphics/PointF;->x:F

    .line 295
    .line 296
    const/4 v8, 0x0

    .line 297
    iget v9, v1, Landroid/graphics/PointF;->y:F

    .line 298
    .line 299
    const/4 v7, 0x0

    .line 300
    invoke-virtual/range {v4 .. v9}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    iget-object v2, v0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    .line 305
    .line 306
    move/from16 v6, v18

    .line 307
    .line 308
    int-to-float v3, v6

    .line 309
    move/from16 v7, v16

    .line 310
    .line 311
    int-to-float v4, v7

    .line 312
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 313
    .line 314
    .line 315
    new-instance v1, Landroid/graphics/Rect;

    .line 316
    .line 317
    move-object/from16 v2, p2

    .line 318
    .line 319
    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 320
    .line 321
    .line 322
    iput-object v1, v0, Lcom/android/server/wm/ContentRecorder;->mLastRecordedBounds:Landroid/graphics/Rect;

    .line 323
    .line 324
    iget-object v2, v0, Lcom/android/server/wm/ContentRecorder;->mLastConsumingSurfaceSize:Landroid/graphics/Point;

    .line 325
    .line 326
    move-object/from16 v3, p3

    .line 327
    .line 328
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 329
    .line 330
    iput v4, v2, Landroid/graphics/Point;->x:I

    .line 331
    .line 332
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 333
    .line 334
    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 335
    .line 336
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    iget-object v2, v0, Lcom/android/server/wm/ContentRecorder;->mLastRecordedBounds:Landroid/graphics/Rect;

    .line 341
    .line 342
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 343
    .line 344
    .line 345
    move-result v2

    .line 346
    iget-object v0, v0, Lcom/android/server/wm/ContentRecorder;->mMediaProjectionManager:Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;

    .line 347
    .line 348
    invoke-interface {v0, v1, v2}, Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;->notifyActiveProjectionCapturedContentResized(II)V

    .line 349
    .line 350
    .line 351
    return-void
.end method

.method public updateRecording()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ContentRecorder;->isCurrentlyRecording()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    iget-object v3, v0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-boolean v1, v3, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v1, v3, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 17
    .line 18
    iget v1, v1, Landroid/view/DisplayInfo;->state:I

    .line 19
    .line 20
    if-ne v1, v2, :cond_1

    .line 21
    .line 22
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ContentRecorder;->pauseRecording()V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :cond_1
    iget-boolean v1, v3, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    .line 28
    .line 29
    if-nez v1, :cond_11

    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ContentRecorder;->isCurrentlyRecording()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_11

    .line 36
    .line 37
    iget-object v1, v3, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 38
    .line 39
    iget v1, v1, Landroid/view/DisplayInfo;->state:I

    .line 40
    .line 41
    if-eq v1, v2, :cond_11

    .line 42
    .line 43
    iget-object v1, v0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    .line 44
    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    goto/16 :goto_4

    .line 48
    .line 49
    :cond_2
    invoke-virtual {v1}, Landroid/view/ContentRecordingSession;->isWaitingForConsent()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    .line 54
    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    aget-boolean v0, v4, v2

    .line 58
    .line 59
    if-eqz v0, :cond_11

    .line 60
    .line 61
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 62
    .line 63
    const-wide v2, -0x2f1f87ab538ac922L    # -3.905741977683878E81

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    const/4 v4, 0x0

    .line 69
    const-string v5, "Content Recording: waiting to record, so do nothing"

    .line 70
    .line 71
    const/4 v6, 0x0

    .line 72
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :cond_3
    iget-object v1, v0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    iget-object v5, v0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    .line 84
    .line 85
    invoke-virtual {v5}, Landroid/view/ContentRecordingSession;->getTokenToRecord()Landroid/os/IBinder;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    const/4 v6, 0x0

    .line 90
    const/4 v7, 0x0

    .line 91
    if-eqz v1, :cond_8

    .line 92
    .line 93
    if-eq v1, v2, :cond_5

    .line 94
    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ContentRecorder;->handleStartRecordingFailed()V

    .line 96
    .line 97
    .line 98
    aget-boolean v1, v4, v2

    .line 99
    .line 100
    if-eqz v1, :cond_4

    .line 101
    .line 102
    iget v1, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 103
    .line 104
    int-to-long v8, v1

    .line 105
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 106
    .line 107
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v15

    .line 115
    const-string v14, "Content Recording: Unable to start recording due to invalid region for display %d"

    .line 116
    .line 117
    const-wide v11, -0x31770038aab0c69dL    # -2.1567211370427395E70

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    const/4 v13, 0x1

    .line 123
    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_4
    :goto_0
    move-object v1, v7

    .line 127
    goto/16 :goto_1

    .line 128
    .line 129
    :cond_5
    if-nez v5, :cond_6

    .line 130
    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ContentRecorder;->handleStartRecordingFailed()V

    .line 132
    .line 133
    .line 134
    aget-boolean v1, v4, v2

    .line 135
    .line 136
    if-eqz v1, :cond_4

    .line 137
    .line 138
    iget v1, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 139
    .line 140
    int-to-long v8, v1

    .line 141
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 142
    .line 143
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v15

    .line 151
    const-string v14, "Content Recording: Unable to start recording due to null token for display %d"

    .line 152
    .line 153
    const-wide v11, -0x1e380338f6dbc873L    # -1.0791729893968282E163

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    const/4 v13, 0x1

    .line 159
    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_6
    invoke-static {v5}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    if-nez v1, :cond_7

    .line 172
    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ContentRecorder;->handleStartRecordingFailed()V

    .line 174
    .line 175
    .line 176
    aget-boolean v5, v4, v2

    .line 177
    .line 178
    if-eqz v5, :cond_9

    .line 179
    .line 180
    iget v5, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 181
    .line 182
    int-to-long v8, v5

    .line 183
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 184
    .line 185
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v15

    .line 193
    const-string v14, "Content Recording: Unable to retrieve task to start recording for display %d"

    .line 194
    .line 195
    const-wide v11, -0xce2f7e5a32bce6bL

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    const/4 v13, 0x1

    .line 201
    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_7
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->registerWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    .line 206
    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_8
    iget-object v1, v3, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 210
    .line 211
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 212
    .line 213
    iget-object v5, v0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    .line 214
    .line 215
    invoke-virtual {v5}, Landroid/view/ContentRecordingSession;->getDisplayToRecord()I

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    invoke-virtual {v1, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    if-nez v1, :cond_9

    .line 224
    .line 225
    iget-object v1, v3, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 226
    .line 227
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 228
    .line 229
    iget v5, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 230
    .line 231
    invoke-virtual {v1, v5, v6}, Landroid/hardware/display/DisplayManagerInternal;->setWindowManagerMirroring(IZ)V

    .line 232
    .line 233
    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ContentRecorder;->handleStartRecordingFailed()V

    .line 235
    .line 236
    .line 237
    aget-boolean v1, v4, v2

    .line 238
    .line 239
    if-eqz v1, :cond_4

    .line 240
    .line 241
    iget v1, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 242
    .line 243
    int-to-long v8, v1

    .line 244
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 245
    .line 246
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v15

    .line 254
    const-string v14, "Unable to retrieve window container to start recording for display %d"

    .line 255
    .line 256
    const-wide v11, 0x1f7dac0487da3af0L    # 5.402916735791569E-157

    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    const/4 v13, 0x1

    .line 262
    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :cond_9
    :goto_1
    iput-object v1, v0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 268
    .line 269
    if-nez v1, :cond_a

    .line 270
    .line 271
    goto/16 :goto_4

    .line 272
    .line 273
    :cond_a
    iget-object v1, v0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    .line 274
    .line 275
    invoke-virtual {v1}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-ne v1, v2, :cond_b

    .line 280
    .line 281
    iget-object v5, v0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 282
    .line 283
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 288
    .line 289
    .line 290
    move-result v5

    .line 291
    if-eqz v5, :cond_b

    .line 292
    .line 293
    aget-boolean v0, v4, v2

    .line 294
    .line 295
    if-eqz v0, :cond_11

    .line 296
    .line 297
    iget v0, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 298
    .line 299
    int-to-long v0, v0

    .line 300
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 301
    .line 302
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v7

    .line 310
    const/4 v5, 0x1

    .line 311
    const-string v6, "Content Recording: Display %d should start recording, but don\'t yet since the task is in PIP"

    .line 312
    .line 313
    const-wide v3, 0x5e16e522a8363939L    # 1.7868155149658225E145

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    goto/16 :goto_4

    .line 322
    .line 323
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ContentRecorder;->fetchSurfaceSizeIfPresent()Landroid/graphics/Point;

    .line 324
    .line 325
    .line 326
    move-result-object v5

    .line 327
    if-nez v5, :cond_c

    .line 328
    .line 329
    aget-boolean v0, v4, v2

    .line 330
    .line 331
    if-eqz v0, :cond_11

    .line 332
    .line 333
    iget v0, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 334
    .line 335
    int-to-long v0, v0

    .line 336
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 337
    .line 338
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v7

    .line 346
    const/4 v5, 0x1

    .line 347
    const-string v6, "Content Recording: Unable to start recording for display %d since the surface is not available."

    .line 348
    .line 349
    const-wide v3, 0x61daeee590bf3e2fL    # 2.423402035558802E163

    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    goto/16 :goto_4

    .line 358
    .line 359
    :cond_c
    aget-boolean v4, v4, v2

    .line 360
    .line 361
    if-eqz v4, :cond_d

    .line 362
    .line 363
    iget v4, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 364
    .line 365
    int-to-long v8, v4

    .line 366
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 367
    .line 368
    iget v4, v4, Landroid/view/DisplayInfo;->state:I

    .line 369
    .line 370
    int-to-long v10, v4

    .line 371
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 372
    .line 373
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 374
    .line 375
    .line 376
    move-result-object v4

    .line 377
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 378
    .line 379
    .line 380
    move-result-object v8

    .line 381
    filled-new-array {v4, v8}, [Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v17

    .line 385
    const/4 v15, 0x5

    .line 386
    const-string v16, "Content Recording: Display %d has no content and is on, so start recording for state %d"

    .line 387
    .line 388
    const-wide v13, 0x1f4e1038d0503faaL    # 6.842737851919891E-158

    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    invoke-static/range {v12 .. v17}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    :cond_d
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SCREENSHOT_FOR_HDR:Z

    .line 397
    .line 398
    if-eqz v4, :cond_e

    .line 399
    .line 400
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ContentRecorder;->invalidateForRecording(Z)V

    .line 401
    .line 402
    .line 403
    :cond_e
    iget-object v4, v0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 404
    .line 405
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    invoke-static {v4}, Landroid/view/SurfaceControl;->mirrorSurface(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    iput-object v4, v0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    .line 414
    .line 415
    iget-object v4, v3, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 416
    .line 417
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 418
    .line 419
    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    check-cast v4, Landroid/view/SurfaceControl$Transaction;

    .line 424
    .line 425
    iget-object v8, v0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    .line 426
    .line 427
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 428
    .line 429
    .line 430
    move-result-object v9

    .line 431
    invoke-virtual {v4, v8, v9}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 432
    .line 433
    .line 434
    move-result-object v4

    .line 435
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    .line 436
    .line 437
    .line 438
    move-result-object v8

    .line 439
    invoke-virtual {v4, v8, v7}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 440
    .line 441
    .line 442
    move-result-object v4

    .line 443
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    .line 444
    .line 445
    invoke-virtual {v4, v3, v7}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 446
    .line 447
    .line 448
    move-result-object v3

    .line 449
    iget-object v4, v0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 450
    .line 451
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 452
    .line 453
    .line 454
    move-result-object v4

    .line 455
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/wm/ContentRecorder;->updateMirroredSurface(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 459
    .line 460
    .line 461
    iget-object v3, v0, Lcom/android/server/wm/ContentRecorder;->mMediaProjectionManager:Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;

    .line 462
    .line 463
    if-ne v1, v2, :cond_f

    .line 464
    .line 465
    iget-object v2, v0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 466
    .line 467
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 472
    .line 473
    .line 474
    move-result v2

    .line 475
    invoke-interface {v3, v2}, Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;->notifyActiveProjectionCapturedContentVisibilityChanged(Z)V

    .line 476
    .line 477
    .line 478
    goto :goto_3

    .line 479
    :cond_f
    iget-object v4, v0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 480
    .line 481
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 482
    .line 483
    .line 484
    move-result-object v4

    .line 485
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 486
    .line 487
    iget v4, v4, Landroid/view/DisplayInfo;->state:I

    .line 488
    .line 489
    if-eq v4, v2, :cond_10

    .line 490
    .line 491
    goto :goto_2

    .line 492
    :cond_10
    move v2, v6

    .line 493
    :goto_2
    invoke-interface {v3, v2}, Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;->notifyActiveProjectionCapturedContentVisibilityChanged(Z)V

    .line 494
    .line 495
    .line 496
    :goto_3
    iget-object v2, v0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    .line 497
    .line 498
    invoke-virtual {v2}, Landroid/view/ContentRecordingSession;->getTargetUid()I

    .line 499
    .line 500
    .line 501
    move-result v2

    .line 502
    iget-object v0, v0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 503
    .line 504
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 509
    .line 510
    .line 511
    move-result v0

    .line 512
    invoke-interface {v3, v1, v2, v0}, Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;->notifyWindowingModeChanged(III)V

    .line 513
    .line 514
    .line 515
    :cond_11
    :goto_4
    return-void
.end method
