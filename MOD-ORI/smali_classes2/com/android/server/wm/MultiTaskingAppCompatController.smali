.class public final Lcom/android/server/wm/MultiTaskingAppCompatController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/IController;


# instance fields
.field public final mAspectRatioOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

.field public final mAspectRatioPolicy:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioPolicy;

.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mMultiTaskingAppCompatStatusLogger:Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger;

.field public final mOrientationOverrides:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

.field public final mOrientationPolicy:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

.field public final mReachabilityPolicy:Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;

.field public final mResizeOverrides:Lcom/android/server/wm/MultiTaskingAppCompatResizeOverrides;

.field public final mSizeCompatModePolicy:Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 5
    .line 6
    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mReachabilityPolicy:Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;

    .line 12
    .line 13
    new-instance p1, Lcom/android/server/wm/MultiTaskingAppCompatResizeOverrides;

    .line 14
    .line 15
    invoke-direct {p1}, Lcom/android/server/wm/MultiTaskingAppCompatResizeOverrides;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mResizeOverrides:Lcom/android/server/wm/MultiTaskingAppCompatResizeOverrides;

    .line 19
    .line 20
    new-instance p1, Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy$1;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    sget-object v1, Lcom/android/server/wm/PackagesChange;->sTaskChangeCallbacks:Ljava/util/List;

    .line 31
    .line 32
    check-cast v1, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;

    .line 38
    .line 39
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ASPECT_RATIO_POLICY:Z

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    new-instance p1, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    .line 44
    .line 45
    invoke-direct {p1}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAspectRatioOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    .line 49
    .line 50
    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioPolicy;

    .line 51
    .line 52
    invoke-direct {v0, p1}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioPolicy;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAspectRatioPolicy:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioPolicy;

    .line 56
    .line 57
    :cond_0
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ORIENTATION_POLICY:Z

    .line 58
    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    new-instance p1, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    .line 62
    .line 63
    invoke-direct {p1}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mOrientationOverrides:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    .line 67
    .line 68
    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    .line 69
    .line 70
    invoke-direct {v0, p1}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;)V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mOrientationPolicy:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    .line 74
    .line 75
    :cond_1
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_STATUS_LOGGING:Z

    .line 76
    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    new-instance p1, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger;

    .line 80
    .line 81
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mMultiTaskingAppCompatStatusLogger:Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger;

    .line 85
    .line 86
    :cond_2
    return-void
.end method

.method public static inAllowedWindowingMode(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-ne p0, v1, :cond_0

    .line 30
    .line 31
    return v1

    .line 32
    :cond_0
    return v3

    .line 33
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFullscreenRootForStageTask()Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    return v3

    .line 40
    :cond_2
    return v1
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final initialize()V
    .locals 0

    .line 1
    return-void
.end method

.method public final removeTaskWithoutRemoveFromRecents(ILjava/lang/String;ZLjava/util/List;)V
    .locals 9

    .line 1
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 11
    .line 12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 13
    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 19
    .line 20
    new-instance v8, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    move-object v2, v8

    .line 23
    move-object v3, p0

    .line 24
    move v4, p1

    .line 25
    move-object v5, p4

    .line 26
    move v6, p3

    .line 27
    move-object v7, p2

    .line 28
    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatController;ILjava/util/List;ZLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v8}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 32
    .line 33
    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 36
    .line 37
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
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 42
    .line 43
    .line 44
    throw p0
.end method
