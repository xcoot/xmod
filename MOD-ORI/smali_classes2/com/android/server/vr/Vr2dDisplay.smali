.class public final Lcom/android/server/vr/Vr2dDisplay;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBootsToVr:Z

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mHandler:Landroid/os/Handler;

.field public mImageReader:Landroid/media/ImageReader;

.field public mIsPersistentVrModeEnabled:Z

.field public mIsVirtualDisplayAllowed:Z

.field public mStopVDRunnable:Lcom/android/server/vr/Vr2dDisplay$3;

.field public mSurface:Landroid/view/Surface;

.field public final mVdLock:Ljava/lang/Object;

.field public mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field public mVirtualDisplayDpi:I

.field public mVirtualDisplayHeight:I

.field public mVirtualDisplayWidth:I

.field public final mVrManager:Landroid/service/vr/IVrManager;

.field public final mVrStateCallbacks:Lcom/android/server/vr/Vr2dDisplay$1;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManager;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/vr/VrManagerService$4;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/vr/Vr2dDisplay$1;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/vr/Vr2dDisplay$1;-><init>(Lcom/android/server/vr/Vr2dDisplay;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVrStateCallbacks:Lcom/android/server/vr/Vr2dDisplay$1;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mBootsToVr:Z

    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 32
    .line 33
    iput-object p2, p0, Lcom/android/server/vr/Vr2dDisplay;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 34
    .line 35
    iput-object p3, p0, Lcom/android/server/vr/Vr2dDisplay;->mVrManager:Landroid/service/vr/IVrManager;

    .line 36
    .line 37
    const/16 p1, 0x578

    .line 38
    .line 39
    iput p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    .line 40
    .line 41
    const/16 p1, 0x708

    .line 42
    .line 43
    iput p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    .line 44
    .line 45
    const/16 p1, 0x140

    .line 46
    .line 47
    iput p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final setSurfaceLocked(Landroid/view/Surface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mSurface:Landroid/view/Surface;

    .line 2
    .line 3
    if-eq v0, p1, :cond_3

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "Setting the new surface from "

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mSurface:Landroid/view/Surface;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " to "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "Vr2dDisplay"

    .line 38
    .line 39
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mSurface:Landroid/view/Surface;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 54
    .line 55
    .line 56
    :cond_2
    iput-object p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mSurface:Landroid/view/Surface;

    .line 57
    .line 58
    :cond_3
    return-void
.end method

.method public final setVirtualDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    .locals 9

    .line 1
    const-string v0, "Ignoring Width/Height/Dpi values of "

    .line 2
    .line 3
    const-string v1, "Setting width/height/dpi to "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getDpi()I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x1

    .line 22
    if-lt v3, v7, :cond_1

    .line 23
    .line 24
    if-lt v4, v7, :cond_1

    .line 25
    .line 26
    if-ge v5, v7, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v0, "Vr2dDisplay"

    .line 30
    .line 31
    new-instance v8, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, ","

    .line 40
    .line 41
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ","

    .line 48
    .line 49
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    iput v3, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    .line 63
    .line 64
    iput v4, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    .line 65
    .line 66
    iput v5, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    .line 67
    .line 68
    move v0, v7

    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_3

    .line 72
    :cond_1
    :goto_0
    const-string v1, "Vr2dDisplay"

    .line 73
    .line 74
    new-instance v8, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v0, ","

    .line 83
    .line 84
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v0, ","

    .line 91
    .line 92
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move v0, v6

    .line 106
    :goto_1
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getAddedFlags()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    and-int/2addr v1, v7

    .line 111
    if-ne v1, v7, :cond_2

    .line 112
    .line 113
    iput-boolean v7, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_2
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getRemovedFlags()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    and-int/2addr p1, v7

    .line 121
    if-ne p1, v7, :cond_3

    .line 122
    .line 123
    iput-boolean v6, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    .line 124
    .line 125
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 126
    .line 127
    if-eqz p1, :cond_4

    .line 128
    .line 129
    if-eqz v0, :cond_4

    .line 130
    .line 131
    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    .line 132
    .line 133
    if-eqz v0, :cond_4

    .line 134
    .line 135
    iget v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    .line 136
    .line 137
    iget v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    .line 138
    .line 139
    iget v3, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    .line 140
    .line 141
    invoke-virtual {p1, v0, v1, v3}, Landroid/hardware/display/VirtualDisplay;->resize(III)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    .line 145
    .line 146
    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/android/server/vr/Vr2dDisplay;->startImageReader()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    .line 153
    .line 154
    .line 155
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/vr/Vr2dDisplay;->updateVirtualDisplay()V

    .line 156
    .line 157
    .line 158
    monitor-exit v2

    .line 159
    return-void

    .line 160
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    throw p0
.end method

.method public final startImageReader()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    .line 6
    .line 7
    iget v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x2

    .line 11
    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    .line 16
    .line 17
    const-string v0, "Vr2dDisplay"

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "VD startImageReader: res = "

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, "X"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, ", dpi = "

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    .line 47
    .line 48
    invoke-static {v1, v2, v0}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    .line 52
    .line 53
    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p0, v1}, Lcom/android/server/vr/Vr2dDisplay;->setSurfaceLocked(Landroid/view/Surface;)V

    .line 61
    .line 62
    .line 63
    monitor-exit v0

    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0
.end method

.method public final updateDisplayId(I)V
    .locals 9

    .line 1
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 8
    .line 9
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 10
    .line 11
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_TASKS_enabled:[Z

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    aget-boolean v1, v1, v2

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    int-to-long v1, p1

    .line 22
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 23
    .line 24
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    const/4 v6, 0x1

    .line 33
    const/4 v7, 0x0

    .line 34
    const-wide v4, -0xf972baf3b14cee3L    # -3.083842131713187E233

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 45
    .line 46
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 47
    .line 48
    .line 49
    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 51
    .line 52
    iput p1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mVr2dDisplayId:I

    .line 53
    .line 54
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/vr/Vr2dDisplay;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->setVr2dDisplayId(I)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 67
    .line 68
    .line 69
    throw p0
.end method

.method public final updateVirtualDisplay()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mBootsToVr:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsPersistentVrModeEnabled:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    const-string v0, "Vr2dDisplay"

    .line 16
    .line 17
    const-string v1, "Attempting to start virtual display"

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-string p0, "Vr2dDisplay"

    .line 27
    .line 28
    const-string v0, "Cannot create virtual display because mDisplayManager == null"

    .line 29
    .line 30
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    const-string p0, "Vr2dDisplay"

    .line 43
    .line 44
    const-string v1, "VD already exists, ignoring request"

    .line 45
    .line 46
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    monitor-exit v0

    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    new-instance v1, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 55
    .line 56
    const-string v2, "VR 2D Display"

    .line 57
    .line 58
    iget v3, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    .line 59
    .line 60
    iget v4, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    .line 61
    .line 62
    iget v5, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    .line 63
    .line 64
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    .line 65
    .line 66
    .line 67
    const-string v2, "277f1a09-b88d-4d1e-8716-796f114d080b"

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setUniqueId(Ljava/lang/String;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 70
    .line 71
    .line 72
    const/16 v2, 0x5cd

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->build()Landroid/hardware/display/VirtualDisplayConfig;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const/4 v3, 0x0

    .line 84
    invoke-virtual {v2, v3, v1, v3, v3}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/media/projection/MediaProjection;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iput-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 89
    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-virtual {p0, v1}, Lcom/android/server/vr/Vr2dDisplay;->updateDisplayId(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/android/server/vr/Vr2dDisplay;->startImageReader()V

    .line 104
    .line 105
    .line 106
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    const-string v0, "Vr2dDisplay"

    .line 108
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v2, "VD created: "

    .line 112
    .line 113
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 117
    .line 118
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_3
    :try_start_1
    const-string v1, "Vr2dDisplay"

    .line 130
    .line 131
    const-string v2, "Virtual display id is null after createVirtualDisplay"

    .line 132
    .line 133
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    const/4 v1, -0x1

    .line 137
    invoke-virtual {p0, v1}, Lcom/android/server/vr/Vr2dDisplay;->updateDisplayId(I)V

    .line 138
    .line 139
    .line 140
    monitor-exit v0

    .line 141
    goto :goto_2

    .line 142
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    throw p0

    .line 144
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mStopVDRunnable:Lcom/android/server/vr/Vr2dDisplay$3;

    .line 145
    .line 146
    if-nez v0, :cond_5

    .line 147
    .line 148
    new-instance v0, Lcom/android/server/vr/Vr2dDisplay$3;

    .line 149
    .line 150
    invoke-direct {v0, p0}, Lcom/android/server/vr/Vr2dDisplay$3;-><init>(Lcom/android/server/vr/Vr2dDisplay;)V

    .line 151
    .line 152
    .line 153
    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mStopVDRunnable:Lcom/android/server/vr/Vr2dDisplay$3;

    .line 154
    .line 155
    :cond_5
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mHandler:Landroid/os/Handler;

    .line 156
    .line 157
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mStopVDRunnable:Lcom/android/server/vr/Vr2dDisplay$3;

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    .line 161
    .line 162
    iget-object p0, p0, Lcom/android/server/vr/Vr2dDisplay;->mStopVDRunnable:Lcom/android/server/vr/Vr2dDisplay$3;

    .line 163
    .line 164
    const-wide/16 v1, 0x7d0

    .line 165
    .line 166
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 167
    .line 168
    .line 169
    :goto_2
    return-void
.end method
