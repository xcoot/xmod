.class public final Lcom/android/server/wm/NaturalSwitchingController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/IController;


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mClient:Landroid/os/IBinder;

.field public final mDeathRecipient:Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient;

.field public mDragTargetArea:Lcom/android/server/wm/DisplayArea;

.field public mNaturalSwitchingPipTask:Lcom/android/server/wm/Task;

.field public mNaturalSwitchingRunning:Z

.field public final mTmpRect:Landroid/graphics/Rect;

.field public mWm:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient;-><init>(Lcom/android/server/wm/NaturalSwitchingController;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mDeathRecipient:Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingRunning:Z

    .line 13
    .line 14
    new-instance v0, Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mTmpRect:Landroid/graphics/Rect;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/wm/NaturalSwitchingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    const-string v0, "[NaturalSwitchingController]"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingRunning:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "  isRunning=true"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingPipTask:Lcom/android/server/wm/Task;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "  mNaturalSwitchingPipTask="

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingPipTask:Lcom/android/server/wm/Task;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mDragTargetArea:Lcom/android/server/wm/DisplayArea;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v1, "  mDragTargetArea="

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mDragTargetArea:Lcom/android/server/wm/DisplayArea;

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final finishNaturalSwitching()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingRunning:Z

    .line 2
    .line 3
    const-string v1, "NaturalSwitchingController"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "finishNaturalSwitching: failed, it\'s not running!"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "finishNaturalSwitching: "

    .line 16
    .line 17
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/wm/NaturalSwitchingController;->mClient:Landroid/os/IBinder;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingRunning:Z

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/wm/NaturalSwitchingController;->mClient:Landroid/os/IBinder;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    iget-object v4, p0, Lcom/android/server/wm/NaturalSwitchingController;->mDeathRecipient:Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient;

    .line 41
    .line 42
    invoke-interface {v2, v4, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 43
    .line 44
    .line 45
    iput-object v3, p0, Lcom/android/server/wm/NaturalSwitchingController;->mClient:Landroid/os/IBinder;

    .line 46
    .line 47
    :cond_1
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    iput-object v3, p0, Lcom/android/server/wm/NaturalSwitchingController;->mDragTargetArea:Lcom/android/server/wm/DisplayArea;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingPipTask:Lcom/android/server/wm/Task;

    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string/jumbo v4, "reassignPipTaskLayerIfNeeded: tid #"

    .line 60
    .line 61
    .line 62
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v4, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingPipTask:Lcom/android/server/wm/Task;

    .line 66
    .line 67
    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    .line 68
    .line 69
    invoke-static {v2, v4, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iput-object v3, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingPipTask:Lcom/android/server/wm/Task;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/server/wm/NaturalSwitchingController;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 75
    .line 76
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 77
    .line 78
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 81
    .line 82
    .line 83
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 86
    .line 87
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 88
    .line 89
    const/4 v1, 0x1

    .line 90
    iput-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final getSurfaceFreezerSnapshot(I)Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;
    .locals 9

    .line 1
    const-string v0, "getSurfaceFreezerSnapshot: failed, not attached tid="

    .line 2
    .line 3
    const-string v1, "getSurfaceFreezerSnapshot: failed, cannot find tid="

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/NaturalSwitchingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v2

    .line 13
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/NaturalSwitchingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 14
    .line 15
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-virtual {v3, p1, v4, v5, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v6, "findTaskForFreezerSnapshotLocked: failed, cannot find tid="

    .line 28
    .line 29
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const-string v6, "NaturalSwitchingController"

    .line 40
    .line 41
    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-object v3, v5

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    if-eqz v6, :cond_2

    .line 51
    .line 52
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-nez v7, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move-object v3, v6

    .line 60
    :cond_2
    :goto_0
    if-nez v3, :cond_3

    .line 61
    .line 62
    const-string p0, "NaturalSwitchingController"

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 81
    .line 82
    .line 83
    return-object v5

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    goto/16 :goto_7

    .line 86
    .line 87
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_a

    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    if-eqz v6, :cond_a

    .line 98
    .line 99
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    if-nez v6, :cond_4

    .line 104
    .line 105
    goto/16 :goto_6

    .line 106
    .line 107
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mTmpRect:Landroid/graphics/Rect;

    .line 108
    .line 109
    invoke-virtual {v3, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, v3, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 113
    .line 114
    iget-object v6, p0, Lcom/android/server/wm/NaturalSwitchingController;->mTmpRect:Landroid/graphics/Rect;

    .line 115
    .line 116
    invoke-static {v0, v6}, Lcom/android/server/wm/SurfaceFreezer;->createSnapshotBuffer(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v3, v4}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    if-eqz v3, :cond_5

    .line 125
    .line 126
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_5

    .line 131
    .line 132
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 133
    .line 134
    iget-object p0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mTmpRect:Landroid/graphics/Rect;

    .line 135
    .line 136
    invoke-virtual {v1, p0}, Lcom/android/server/wm/WallpaperController;->screenshotWallpaperLocked(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    move-object v8, p0

    .line 141
    goto :goto_1

    .line 142
    :cond_5
    move-object v8, v5

    .line 143
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 145
    .line 146
    .line 147
    if-eqz v0, :cond_6

    .line 148
    .line 149
    invoke-virtual {v0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    goto :goto_2

    .line 154
    :cond_6
    move-object p0, v5

    .line 155
    :goto_2
    if-eqz p0, :cond_9

    .line 156
    .line 157
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    const/4 v2, 0x1

    .line 162
    if-le v1, v2, :cond_9

    .line 163
    .line 164
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-gt v1, v2, :cond_7

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_7
    invoke-static {p0}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    invoke-static {p0}, Lcom/android/internal/policy/TransitionAnimation;->hasProtectedContent(Landroid/hardware/HardwareBuffer;)Z

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    if-eqz v7, :cond_8

    .line 184
    .line 185
    :goto_3
    move-object v4, v5

    .line 186
    goto :goto_4

    .line 187
    :cond_8
    invoke-static {v1}, Landroid/hardware/HardwareBuffer;->createFromGraphicBuffer(Landroid/graphics/GraphicBuffer;)Landroid/hardware/HardwareBuffer;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    invoke-static {p0, v5}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    goto :goto_3

    .line 196
    :goto_4
    new-instance p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;

    .line 197
    .line 198
    move-object v3, p0

    .line 199
    move v5, p1

    .line 200
    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;-><init>(Landroid/graphics/Bitmap;IZZLandroid/graphics/Bitmap;)V

    .line 201
    .line 202
    .line 203
    return-object p0

    .line 204
    :cond_9
    :goto_5
    const-string p0, "NaturalSwitchingController"

    .line 205
    .line 206
    const-string v0, "getSurfaceFreezerSnapshot: failed to get buffer, tid="

    .line 207
    .line 208
    invoke-static {p1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    return-object v5

    .line 212
    :cond_a
    :goto_6
    :try_start_2
    const-string p0, "NaturalSwitchingController"

    .line 213
    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 231
    .line 232
    .line 233
    return-object v5

    .line 234
    :goto_7
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 235
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 236
    .line 237
    .line 238
    throw p0
.end method

.method public final initialize()V
    .locals 0

    .line 1
    return-void
.end method

.method public final preventNaturalSwitching(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v0, p1, v2, v3, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const/4 v0, 0x1

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    return v0

    .line 29
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    iget-object p0, v1, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string p1, "com.samsung.android.multiwindow.ignore.trim.task"

    .line 42
    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 52
    .line 53
    if-eqz p0, :cond_1

    .line 54
    .line 55
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 56
    .line 57
    if-eqz p0, :cond_1

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_1

    .line 64
    .line 65
    return v0

    .line 66
    :cond_1
    iget-object p0, v1, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    .line 67
    .line 68
    if-eqz p0, :cond_4

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    if-eqz p0, :cond_4

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    if-eqz p0, :cond_4

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 83
    .line 84
    if-eqz p0, :cond_4

    .line 85
    .line 86
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 87
    .line 88
    if-eqz p0, :cond_4

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_4

    .line 95
    .line 96
    return v0

    .line 97
    :cond_2
    if-eqz p1, :cond_4

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    const/4 p1, 0x5

    .line 104
    if-ne p0, p1, :cond_4

    .line 105
    .line 106
    new-instance p0, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    new-instance p1, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda0;

    .line 112
    .line 113
    const/4 v3, 0x0

    .line 114
    invoke-direct {p1, v3, p0}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    sub-int/2addr p1, v0

    .line 125
    :goto_0
    if-ltz p1, :cond_4

    .line 126
    .line 127
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    check-cast v1, Lcom/android/server/wm/Task;

    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-ne v3, v0, :cond_3

    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindow()Z

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    xor-int/2addr p0, v0

    .line 144
    return p0

    .line 145
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_4
    return v2
.end method

.method public final setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/NaturalSwitchingController;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    return-void
.end method

.method public final startNaturalSwitching(Landroid/os/IBinder;Landroid/os/IBinder;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingRunning:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "NaturalSwitchingController"

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string/jumbo p0, "startNaturalSwitching: failed, already running!"

    .line 9
    .line 10
    .line 11
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mDeathRecipient:Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient;

    .line 16
    .line 17
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/wm/NaturalSwitchingController;->mClient:Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string/jumbo v0, "startNaturalSwitching: "

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mClient:Landroid/os/IBinder;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingRunning:Z

    .line 44
    .line 45
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 46
    .line 47
    if-eqz v0, :cond_7

    .line 48
    .line 49
    if-eqz p2, :cond_7

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    check-cast p2, Lcom/android/server/wm/WindowState;

    .line 60
    .line 61
    if-eqz p2, :cond_6

    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-nez v0, :cond_1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_2

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/NaturalSwitchingController;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 84
    .line 85
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 86
    .line 87
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget-object v1, v1, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    .line 94
    .line 95
    if-eqz v1, :cond_4

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-nez v3, :cond_3

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v4, "assignRelativeLayerForPipTask: tid #"

    .line 107
    .line 108
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget v4, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 112
    .line 113
    invoke-static {v3, v4, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iput-object v1, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingPipTask:Lcom/android/server/wm/Task;

    .line 117
    .line 118
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    iput-object p2, p0, Lcom/android/server/wm/NaturalSwitchingController;->mDragTargetArea:Lcom/android/server/wm/DisplayArea;

    .line 123
    .line 124
    new-instance p2, Landroid/view/SurfaceControl$Transaction;

    .line 125
    .line 126
    invoke-direct {p2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 127
    .line 128
    .line 129
    const v2, 0x7fffffff

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, p2, v0, v2}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_4
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v0, "assignRelativeLayerForPipTask: failed, wrong pip, "

    .line 142
    .line 143
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-static {v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_5
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v1, "assignRelativeLayerForPipTask: failed, invalid parent, "

    .line 160
    .line 161
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-static {v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_6
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string v1, "assignRelativeLayerForPipTask: failed, cannot find win, "

    .line 178
    .line 179
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    invoke-static {v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    :cond_7
    :goto_3
    iget-object p0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 193
    .line 194
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 195
    .line 196
    iget-object p2, p2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 197
    .line 198
    iput-boolean p1, p2, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 201
    .line 202
    .line 203
    return p1

    .line 204
    :catch_0
    move-exception p0

    .line 205
    const-string/jumbo p1, "startNaturalSwitching: failed, cannot link to death, "

    .line 206
    .line 207
    .line 208
    invoke-static {p1, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    return v1
.end method
